@interface UITableView(TVVSAdditions)
- (BOOL)vs_containsIndexPath:()TVVSAdditions;
- (BOOL)vs_hasRowAtIndexPath:()TVVSAdditions;
- (double)vs_scrollToTopContentOffset;
- (id)vs_indexPathForFirstFocusableRow;
- (uint64_t)vs_canFocusRowAtIndexPath:()TVVSAdditions;
- (uint64_t)vs_scrollToTopAnimated:()TVVSAdditions;
- (void)vs_scrollToIndexPath:()TVVSAdditions atScrollPosition:animated:withCompletion:;
- (void)vs_scrollToTopAnimated:()TVVSAdditions completion:;
- (void)vs_scrollViewDidEndScrollingAnimation;
@end

@implementation UITableView(TVVSAdditions)

- (id)vs_indexPathForFirstFocusableRow
{
  if ([self numberOfSections] < 1)
  {
LABEL_10:
    v4 = 0;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      if ([self numberOfRowsInSection:v2] >= 1)
      {
        v3 = 0;
        while (1)
        {
          v4 = [MEMORY[0x277CCAA70] indexPathForRow:v3 inSection:v2];
          if ([self vs_canFocusRowAtIndexPath:v4])
          {
            break;
          }

          if (++v3 >= [self numberOfRowsInSection:v2])
          {
            goto LABEL_9;
          }
        }

        if (v4)
        {
          break;
        }
      }

LABEL_9:
      if (++v2 >= [self numberOfSections])
      {
        goto LABEL_10;
      }
    }
  }

  return v4;
}

- (BOOL)vs_containsIndexPath:()TVVSAdditions
{
  v4 = a3;
  section = [v4 section];
  if (section >= [self numberOfSections])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 row];
    v7 = v6 < [self numberOfRowsInSection:{objc_msgSend(v4, "section")}];
  }

  return v7;
}

- (uint64_t)vs_canFocusRowAtIndexPath:()TVVSAdditions
{
  v4 = a3;
  if ([self vs_hasRowAtIndexPath:v4])
  {
    delegate = [self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [delegate tableView:self canFocusRowAtIndexPath:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)vs_hasRowAtIndexPath:()TVVSAdditions
{
  v4 = a3;
  v5 = v4;
  v8 = 0;
  if (v4)
  {
    if (([v4 section] & 0x8000000000000000) == 0 && (objc_msgSend(v5, "row") & 0x8000000000000000) == 0)
    {
      section = [v5 section];
      if (section < [self numberOfSections])
      {
        v7 = [v5 row];
        if (v7 < [self numberOfRowsInSection:{objc_msgSend(v5, "section")}])
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (double)vs_scrollToTopContentOffset
{
  [self contentOffset];
  v3 = v2;
  [self adjustedContentInset];
  return v3;
}

- (uint64_t)vs_scrollToTopAnimated:()TVVSAdditions
{
  [self vs_scrollToTopContentOffset];

  return [self setContentOffset:a3 animated:?];
}

- (void)vs_scrollViewDidEndScrollingAnimation
{
  v11 = *MEMORY[0x277D85DE8];
  vs_scrollCompletionOperations = [self vs_scrollCompletionOperations];
  v3 = [vs_scrollCompletionOperations count];

  if (v3)
  {
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[UITableView(TVVSAdditions) vs_scrollViewDidEndScrollingAnimation]";
      _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v9, 0xCu);
    }

    vs_scrollCompletionOperations2 = [self vs_scrollCompletionOperations];
    firstObject = [vs_scrollCompletionOperations2 firstObject];

    vs_scrollCompletionOperations3 = [self vs_scrollCompletionOperations];
    [vs_scrollCompletionOperations3 removeObjectAtIndex:0];

    [firstObject start];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)vs_scrollToTopAnimated:()TVVSAdditions completion:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[UITableView(TVVSAdditions) vs_scrollToTopAnimated:completion:]";
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  vs_scrollCompletionOperations = [self vs_scrollCompletionOperations];

  if (!vs_scrollCompletionOperations)
  {
    array = [MEMORY[0x277CBEB18] array];
    [self vs_setScrollCompletionOperations:array];
  }

  [self vs_scrollToTopAnimated:a3];
  if ([self isScrollAnimating])
  {
    v10 = MEMORY[0x277CCA8C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__UITableView_TVVSAdditions__vs_scrollToTopAnimated_completion___block_invoke;
    v14[3] = &unk_279E19698;
    v15 = v6;
    v11 = [v10 blockOperationWithBlock:v14];
    vs_scrollCompletionOperations2 = [self vs_scrollCompletionOperations];
    [vs_scrollCompletionOperations2 addObject:v11];
  }

  else
  {
    v6[2](v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)vs_scrollToIndexPath:()TVVSAdditions atScrollPosition:animated:withCompletion:
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[UITableView(TVVSAdditions) vs_scrollToIndexPath:atScrollPosition:animated:withCompletion:]";
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  vs_scrollCompletionOperations = [self vs_scrollCompletionOperations];

  if (!vs_scrollCompletionOperations)
  {
    array = [MEMORY[0x277CBEB18] array];
    [self vs_setScrollCompletionOperations:array];
  }

  [self scrollToRowAtIndexPath:v10 atScrollPosition:a4 animated:a5];
  if ([self isScrollAnimating])
  {
    v15 = MEMORY[0x277CCA8C8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__UITableView_TVVSAdditions__vs_scrollToIndexPath_atScrollPosition_animated_withCompletion___block_invoke;
    v19[3] = &unk_279E19698;
    v20 = v11;
    v16 = [v15 blockOperationWithBlock:v19];
    vs_scrollCompletionOperations2 = [self vs_scrollCompletionOperations];
    [vs_scrollCompletionOperations2 addObject:v16];
  }

  else
  {
    v11[2](v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end