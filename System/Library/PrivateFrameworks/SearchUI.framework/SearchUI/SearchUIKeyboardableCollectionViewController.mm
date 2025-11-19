@interface SearchUIKeyboardableCollectionViewController
- (BOOL)contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField;
- (BOOL)isOnCard;
- (SearchUIKeyboardableCollectionViewController)init;
- (SearchUIKeyboardableTableViewDelegate)interactionDelegate;
- (UITextField)textField;
- (double)adjustedVerticalOffset;
- (double)contentHeight;
- (id)indexPathForNextSelectableIndexPath:(id)a3 upward:(BOOL)a4;
- (void)addKeyCommandForKey:(id)a3 action:(SEL)a4;
- (void)dealloc;
- (void)downArrowPressed:(id)a3;
- (void)escapeButtonPressed;
- (void)goBack;
- (void)highlightNextRowAtIndexPath:(id)a3 upward:(BOOL)a4;
- (void)highlightRowAtIndexPath:(id)a3;
- (void)keyboardFrameChanged:(id)a3;
- (void)leftArrowPressed;
- (void)moveCursorToBeginning;
- (void)moveCursorToEnd;
- (void)moveCursorToPosition:(id)a3;
- (void)returnKeyPressed;
- (void)rightArrowPressed;
- (void)scrollIndexPathToVisible:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectAllTextInTextField;
- (void)selectHighlightedRow;
- (void)setCollectionView:(id)a3;
- (void)showKeyboard;
- (void)upArrowPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation SearchUIKeyboardableCollectionViewController

- (SearchUIKeyboardableCollectionViewController)init
{
  v5.receiver = self;
  v5.super_class = SearchUIKeyboardableCollectionViewController;
  v2 = [(SearchUIKeyboardableCollectionViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x1E69DE068] object:0];
  }

  return v2;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (double)adjustedVerticalOffset
{
  v2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [v2 contentOffset];
  v4 = v3;
  [v2 adjustedContentInset];
  v6 = v4 + v5;

  return v6;
}

- (SearchUIKeyboardableTableViewDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];

  v4.receiver = self;
  v4.super_class = SearchUIKeyboardableCollectionViewController;
  [(SearchUIKeyboardableCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SearchUIKeyboardableCollectionViewController;
  [(SearchUIKeyboardableCollectionViewController *)&v2 viewDidLoad];
}

- (void)setCollectionView:(id)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIKeyboardableCollectionViewController;
  v4 = a3;
  [(SearchUIKeyboardableCollectionViewController *)&v7 setCollectionView:v4];
  v5 = objc_opt_new();
  [v5 setDelegate:{self, v7.receiver, v7.super_class}];
  [v4 addGestureRecognizer:v5];
  v6 = [v4 panGestureRecognizer];

  [v6 requireGestureRecognizerToFail:v5];
}

- (void)addKeyCommandForKey:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x1E69DCBA0];
  v7 = a3;
  v8 = [v6 keyCommandWithInput:v7 modifierFlags:0 action:a4];
  [(SearchUIKeyboardableCollectionViewController *)self addKeyCommand:v8];

  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v7 modifierFlags:0x100000 action:a4];

  [(SearchUIKeyboardableCollectionViewController *)self addKeyCommand:v9];
}

- (BOOL)isOnCard
{
  v2 = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)escapeButtonPressed
{
  v2 = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  v3 = [v2 topViewController];
  v4 = [v3 navigationItem];
  v8 = [v4 rightBarButtonItem];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v8 action];
  v7 = [v8 target];
  [v5 sendAction:v6 to:v7 from:0 forEvent:0];
}

- (void)rightArrowPressed
{
  if ([MEMORY[0x1E69D91A8] isLTR])
  {

    [(SearchUIKeyboardableCollectionViewController *)self selectHighlightedRow];
  }

  else
  {

    [(SearchUIKeyboardableCollectionViewController *)self goBack];
  }
}

- (void)leftArrowPressed
{
  if ([MEMORY[0x1E69D91A8] isLTR])
  {

    [(SearchUIKeyboardableCollectionViewController *)self goBack];
  }

  else
  {

    [(SearchUIKeyboardableCollectionViewController *)self selectHighlightedRow];
  }
}

- (void)goBack
{
  v3 = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)returnKeyPressed
{
  v3 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(SearchUIKeyboardableCollectionViewController *)self indexPathToSelectForKeyboardOnQuickReturn];
    [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:v6 upward:0];
  }

  [(SearchUIKeyboardableCollectionViewController *)self selectHighlightedRow];
}

- (void)highlightRowAtIndexPath:(id)a3
{
  v5 = a3;
  if (v5 || [0 section] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }
}

- (void)upArrowPressed:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v17 = [v6 firstObject];

  v7 = [v4 modifierFlags];
  v8 = [v17 section];
  v9 = [v17 row];
  if (v17)
  {
    if ([v17 row] < 1)
    {
      v10 = [v17 section];
      v11 = v10 - 1;
      if (v10 < 1)
      {
        v13 = [(SearchUIKeyboardableCollectionViewController *)self textField];

        if (v13)
        {
          v8 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        if ((v7 & 0x100000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v12 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
          v9 = [v12 numberOfItemsInSection:v11] - 1;
        }

        v8 = v11;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v17 row] - 1;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:v8];
  [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:v14 upward:1];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [v15 becomeFirstResponder];

    if ([v17 section] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SearchUIKeyboardableCollectionViewController *)self moveCursorToBeginning];
    }

    else
    {
      v16 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [v16 selectAll:0];
    }
  }
}

- (void)downArrowPressed:(id)a3
{
  v4 = a3;
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToEnd];
  v5 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v20 = [v6 firstObject];

  v7 = [v4 modifierFlags];
  v8 = [v20 section];
  [v20 row];
  if (v20)
  {
    v9 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    v10 = [v9 numberOfItemsInSection:{objc_msgSend(v20, "section")}];
    v11 = [v20 row] + 1;

    if (v10 <= v11)
    {
      v12 = 0;
      v8 = [v20 section] + 1;
    }

    else if ((v7 & 0x100000) != 0)
    {
      v16 = [v20 section] + 1;
      v17 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      v18 = [v17 numberOfSections];

      if (v16 >= v18)
      {
        v19 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
        v12 = [v19 numberOfItemsInSection:{objc_msgSend(v20, "section")}] - 1;
      }

      else
      {
        v12 = 0;
        v8 = v16;
      }
    }

    else
    {
      v12 = [v20 row] + 1;
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

  v13 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  if (v8 < [v13 numberOfSections])
  {
    v14 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    v15 = [v14 numberOfItemsInSection:v8];

    if (v12 >= v15)
    {
      goto LABEL_11;
    }

    v13 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:v8];
    [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:v13 upward:0];
  }

LABEL_11:
}

- (void)highlightNextRowAtIndexPath:(id)a3 upward:(BOOL)a4
{
  v5 = [(SearchUIKeyboardableCollectionViewController *)self indexPathForNextSelectableIndexPath:a3 upward:a4];
  if ([v5 section] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SearchUIKeyboardableCollectionViewController *)self scrollIndexPathToVisible:v5];
  }

  [(SearchUIKeyboardableCollectionViewController *)self highlightRowAtIndexPath:v5];
}

- (id)indexPathForNextSelectableIndexPath:(id)a3 upward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    goto LABEL_4;
  }

  v9 = [v6 section];
  v10 = v9;
  if (v4)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if (v10 == [v6 section])
        {
          v11 = [v6 row];
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v12 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
          v11 = [v12 numberOfItemsInSection:v10] - 1;

          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_13:
            do
            {
              v7 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v10];
              if ([(SearchUIKeyboardableCollectionViewController *)self canHighlightRowAtIndexPath:v7])
              {
                goto LABEL_4;
              }

              v13 = v11-- <= 0;
            }

            while (!v13);
          }
        }

        v7 = 0;
        v13 = v10-- < 1;
        if (v13)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_28:
    v7 = 0;
    goto LABEL_4;
  }

  v14 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  v15 = [v14 numberOfSections];

  if (v10 >= v15)
  {
    goto LABEL_28;
  }

  do
  {
    if (v10 == [v6 section])
    {
      v16 = [v6 row];
    }

    else
    {
      v16 = 0;
    }

    while (1)
    {
      v17 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      v18 = [v17 numberOfItemsInSection:v10];

      if (v16 >= v18)
      {
        break;
      }

      v7 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:v10];
      if ([(SearchUIKeyboardableCollectionViewController *)self canHighlightRowAtIndexPath:v7])
      {
        goto LABEL_4;
      }

      ++v16;
    }

    ++v10;
    v19 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    v20 = [v19 numberOfSections];

    v7 = 0;
  }

  while (v10 < v20);
LABEL_4:

  return v7;
}

- (void)selectHighlightedRow
{
  v3 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v6 = [v4 firstObject];

  if (v6)
  {
    [(SearchUIKeyboardableCollectionViewController *)self scrollIndexPathToVisible:v6];
    v5 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    [v5 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
  }
}

- (void)moveCursorToBeginning
{
  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v3 = [v4 beginningOfDocument];
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToPosition:v3];
}

- (void)moveCursorToEnd
{
  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v3 = [v4 endOfDocument];
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToPosition:v3];
}

- (void)moveCursorToPosition:(id)a3
{
  v4 = a3;
  v7 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v5 = [v7 textRangeFromPosition:v4 toPosition:v4];

  v6 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [v6 setSelectedTextRange:v5];
}

- (void)scrollIndexPathToVisible:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [v5 scrollToItemAtIndexPath:v4 atScrollPosition:0 animated:0];

  v6 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  [v6 didBeginScrolling];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(SearchUIKeyboardableCollectionViewController *)self adjustedVerticalOffset];
  v6 = v5;
  v7 = [v4 isTracking];

  if (v7)
  {
    if (v6 > 0.0 && [(SearchUIKeyboardableCollectionViewController *)self contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField]&& !+[SearchUIUtilities isMinimizedHardwareKeyboardMode])
    {
      v8 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [v8 resignFirstResponder];
    }

    else if (v6 < -50.0)
    {

      [(SearchUIKeyboardableCollectionViewController *)self showKeyboard];
    }
  }
}

- (double)contentHeight
{
  v2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [v2 contentSize];
  v4 = v3;

  return v4;
}

- (BOOL)contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField
{
  v3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [v4 bounds];
  [v3 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(SearchUIKeyboardableCollectionViewController *)self view];
  v14 = [v13 window];
  v15 = [v14 screen];
  [v15 bounds];
  Height = CGRectGetHeight(v30);

  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  MinY = CGRectGetMinY(v31);
  [(SearchUIKeyboardableCollectionViewController *)self additionalKeyboardHeight];
  if (v18 <= 0.0)
  {
    [(SearchUIKeyboardableCollectionViewController *)self currentKeyboardHeight];
    v19 = v20;
  }

  else
  {
    v19 = Height - MinY;
  }

  v21 = [(SearchUIKeyboardableCollectionViewController *)self view];
  v22 = [(SearchUIKeyboardableCollectionViewController *)self view];
  [v22 bounds];
  [v21 convertRect:0 toView:?];
  v23 = CGRectGetMinY(v32);

  if (v19 == 0.0)
  {
    return 0;
  }

  [(SearchUIKeyboardableCollectionViewController *)self contentHeight];
  v25 = v23 + v24;
  v26 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [v26 adjustedContentInset];
  v28 = v25 + v27 + 2.0 > Height - v19;

  return v28;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v21 = a3;
  v4 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];

  if (v4)
  {
    v5 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    [v5 didBeginScrolling];

    v6 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    v7 = [v6 shouldMonitorScrollingPastBottomOfContent];

    if (v7)
    {
      v8 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      [v8 contentOffset];
      v10 = v9;
      [v8 contentSize];
      v12 = v11;
      [v8 bounds];
      Height = CGRectGetHeight(v23);
      [v8 adjustedContentInset];
      v15 = v14;
      v16 = [v8 panGestureRecognizer];
      v17 = [v21 window];
      [v16 velocityInView:v17];
      if (v18 < 0.0)
      {
        if ([(SearchUIKeyboardableCollectionViewController *)self contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField])
        {
          if (v10 < v12 - Height + v15)
          {
            goto LABEL_6;
          }

          [(SearchUIKeyboardableCollectionViewController *)self currentKeyboardHeight];
          v20 = v19;

          if (v20 != 0.0)
          {
LABEL_11:

            goto LABEL_12;
          }
        }

        else
        {
        }

        [v21 setScrollEnabled:0];
        [v21 setScrollEnabled:1];
        v16 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
        [v16 didScrollPastBottomOfContent];
        goto LABEL_10;
      }

LABEL_6:

LABEL_10:
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (a4.y > 0.0 && ![(SearchUIKeyboardableCollectionViewController *)self shouldHideTableCellsUnderKeyboard:a3]&& [(SearchUIKeyboardableCollectionViewController *)self contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField]&& !+[SearchUIUtilities isMinimizedHardwareKeyboardMode])
  {
    v6 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [v6 resignFirstResponder];
  }
}

- (void)showKeyboard
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 isRunningTest];

  if ((v4 & 1) == 0 && [(SearchUIKeyboardableCollectionViewController *)self _appearState]- 1 <= 1)
  {
    v5 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    v6 = [v5 isFirstResponder];

    if (v6)
    {

      [(SearchUIKeyboardableCollectionViewController *)self selectAllTextInTextField];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SearchUIKeyboardableCollectionViewController_showKeyboard__block_invoke;
      block[3] = &unk_1E85B24C8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__SearchUIKeyboardableCollectionViewController_showKeyboard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textField];
  v3 = [v2 becomeFirstResponder];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 selectAllTextInTextField];
  }
}

- (void)selectAllTextInTextField
{
  v3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v4 = [v3 selectedTextRange];
  if (([v4 isEmpty] & 1) == 0)
  {
    v5 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    v6 = [v5 selectedTextRange];
    v7 = [v6 start];
    v8 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    v9 = [v8 beginningOfDocument];
    if ([v7 isEqual:v9])
    {
      v15 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      v10 = [v15 selectedTextRange];
      [v10 end];
      v11 = v17 = v5;
      v12 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [v12 endOfDocument];
      v13 = v14 = v6;
      v16 = [v11 isEqual:v13];

      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v18 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [v18 selectAll:0];
}

- (void)keyboardFrameChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SearchUIKeyboardableCollectionViewController *)self view];
  v15 = [v14 tlks_screen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  v27 = CGRectIntersection(v26, v28);
  Height = CGRectGetHeight(v27);

  [(SearchUIKeyboardableCollectionViewController *)self setCurrentKeyboardHeight:Height];
}

@end