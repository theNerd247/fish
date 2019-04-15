function gclean -d "cleans remote tracking branches"
  git fetch upstream
  git fetch origin

  git checkout master
  git merge upstream/master

  git remote prune upstream
    and git branch -vv | grep 'upstream/.*: gone]' | awk '{print $1}' | xargs git branch -d

  git remote prune origin
    and git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
end
