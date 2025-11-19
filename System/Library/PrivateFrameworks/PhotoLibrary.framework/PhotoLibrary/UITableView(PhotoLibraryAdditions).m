@interface UITableView(PhotoLibraryAdditions)
- (uint64_t)pl_indexPathForLastRow;
- (uint64_t)pl_lastRowIsVisible;
- (uint64_t)pl_resetContentOffsetFromContentInsets;
- (uint64_t)pl_scrollToBottom:()PhotoLibraryAdditions;
- (uint64_t)pl_scrollToVisibleRowAtIndexPath:()PhotoLibraryAdditions animated:;
@end

@implementation UITableView(PhotoLibraryAdditions)

- (uint64_t)pl_resetContentOffsetFromContentInsets
{
  [a1 contentInset];
  v3 = v2;
  v5 = v4;
  [a1 contentOffset];
  v8 = v7 - v5;
  if (v8 < -v5)
  {
    v8 = -v5;
  }

  v9 = v6 - v3;
  if (v9 < -v3)
  {
    v9 = -v3;
  }

  return [a1 setContentOffset:{v8, v9}];
}

- (uint64_t)pl_indexPathForLastRow
{
  v2 = [a1 numberOfSections];
  if (!v2)
  {
    return 0;
  }

  v3 = v2 - 1;
  v4 = [a1 numberOfRowsInSection:v2 - 1];
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  v6 = MEMORY[0x277CCAA70];

  return [v6 indexPathForRow:v5 inSection:v3];
}

- (uint64_t)pl_lastRowIsVisible
{
  v2 = [a1 pl_indexPathForLastRow];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(a1 "indexPathsForVisibleRows")];
  if (!v4)
  {
    return 0;
  }

  return [v3 isEqual:v4];
}

- (uint64_t)pl_scrollToBottom:()PhotoLibraryAdditions
{
  v5 = [a1 tableFooterView];
  if (v5)
  {
    [v5 frame];

    return [a1 scrollRectToVisible:a3 animated:?];
  }

  else
  {
    result = [a1 pl_indexPathForLastRow];
    if (result)
    {

      return [a1 scrollToRowAtIndexPath:result atScrollPosition:3 animated:a3];
    }
  }

  return result;
}

- (uint64_t)pl_scrollToVisibleRowAtIndexPath:()PhotoLibraryAdditions animated:
{
  v8 = [a3 section];
  v9 = [a3 row];
  if (v9 >= [a1 numberOfRowsInSection:v8])
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  [a1 rectForRowAtIndexPath:a3];
  v37 = v11;
  v38 = v10;
  v35 = v13;
  v36 = v12;
  [a1 contentInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if ([a3 isEqual:{objc_msgSend(a1, "pl_indexPathForLastRow")}])
  {

    return [a1 pl_scrollToBottom:a4];
  }

  else
  {
    v31 = v17 + v23;
    v32 = v15 + v25;
    v33 = v27 - (v17 + v21);
    v34 = v29 - (v15 + v19);
    v40.origin.x = v31;
    v40.origin.y = v32;
    v40.size.width = v33;
    v40.size.height = v34;
    v42.origin.x = v38;
    v42.origin.y = v37;
    v42.size.width = v36;
    v42.size.height = v35;
    result = CGRectContainsRect(v40, v42);
    if ((result & 1) == 0)
    {
      v41.origin.x = v31;
      v41.origin.y = v32;
      v41.size.width = v33;
      v41.size.height = v34;
      v43.origin.x = v38;
      v43.origin.y = v37;
      v43.size.width = v36;
      v43.size.height = v35;
      if (CGRectIntersectsRect(v41, v43))
      {

        return [a1 scrollRectToVisible:a4 animated:{v38, v37, v36, v35}];
      }

      else
      {
        [a1 scrollToRowAtIndexPath:a3 atScrollPosition:2 animated:a4];

        return [a1 pl_resetContentOffsetFromContentInsets];
      }
    }
  }

  return result;
}

@end