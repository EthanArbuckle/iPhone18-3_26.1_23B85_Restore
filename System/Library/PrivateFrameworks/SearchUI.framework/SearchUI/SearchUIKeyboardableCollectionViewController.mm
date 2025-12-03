@interface SearchUIKeyboardableCollectionViewController
- (BOOL)contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField;
- (BOOL)isOnCard;
- (SearchUIKeyboardableCollectionViewController)init;
- (SearchUIKeyboardableTableViewDelegate)interactionDelegate;
- (UITextField)textField;
- (double)adjustedVerticalOffset;
- (double)contentHeight;
- (id)indexPathForNextSelectableIndexPath:(id)path upward:(BOOL)upward;
- (void)addKeyCommandForKey:(id)key action:(SEL)action;
- (void)dealloc;
- (void)downArrowPressed:(id)pressed;
- (void)escapeButtonPressed;
- (void)goBack;
- (void)highlightNextRowAtIndexPath:(id)path upward:(BOOL)upward;
- (void)highlightRowAtIndexPath:(id)path;
- (void)keyboardFrameChanged:(id)changed;
- (void)leftArrowPressed;
- (void)moveCursorToBeginning;
- (void)moveCursorToEnd;
- (void)moveCursorToPosition:(id)position;
- (void)returnKeyPressed;
- (void)rightArrowPressed;
- (void)scrollIndexPathToVisible:(id)visible;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)selectAllTextInTextField;
- (void)selectHighlightedRow;
- (void)setCollectionView:(id)view;
- (void)showKeyboard;
- (void)upArrowPressed:(id)pressed;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x1E69DE068] object:0];
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
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v4 = v3;
  [collectionView adjustedContentInset];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE068] object:0];

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

- (void)setCollectionView:(id)view
{
  v7.receiver = self;
  v7.super_class = SearchUIKeyboardableCollectionViewController;
  viewCopy = view;
  [(SearchUIKeyboardableCollectionViewController *)&v7 setCollectionView:viewCopy];
  v5 = objc_opt_new();
  [v5 setDelegate:{self, v7.receiver, v7.super_class}];
  [viewCopy addGestureRecognizer:v5];
  panGestureRecognizer = [viewCopy panGestureRecognizer];

  [panGestureRecognizer requireGestureRecognizerToFail:v5];
}

- (void)addKeyCommandForKey:(id)key action:(SEL)action
{
  v6 = MEMORY[0x1E69DCBA0];
  keyCopy = key;
  v8 = [v6 keyCommandWithInput:keyCopy modifierFlags:0 action:action];
  [(SearchUIKeyboardableCollectionViewController *)self addKeyCommand:v8];

  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:keyCopy modifierFlags:0x100000 action:action];

  [(SearchUIKeyboardableCollectionViewController *)self addKeyCommand:v9];
}

- (BOOL)isOnCard
{
  navigationController = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v4 = [viewControllers count] > 1;

  return v4;
}

- (void)escapeButtonPressed
{
  navigationController = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationItem = [topViewController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  action = [rightBarButtonItem action];
  target = [rightBarButtonItem target];
  [mEMORY[0x1E69DC668] sendAction:action to:target from:0 forEvent:0];
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
  navigationController = [(SearchUIKeyboardableCollectionViewController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (void)returnKeyPressed
{
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];

  if (!v5)
  {
    indexPathToSelectForKeyboardOnQuickReturn = [(SearchUIKeyboardableCollectionViewController *)self indexPathToSelectForKeyboardOnQuickReturn];
    [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:indexPathToSelectForKeyboardOnQuickReturn upward:0];
  }

  [(SearchUIKeyboardableCollectionViewController *)self selectHighlightedRow];
}

- (void)highlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy || [0 section] == 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }
}

- (void)upArrowPressed:(id)pressed
{
  pressedCopy = pressed;
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  modifierFlags = [pressedCopy modifierFlags];
  section = [firstObject section];
  v9 = [firstObject row];
  if (firstObject)
  {
    if ([firstObject row] < 1)
    {
      section2 = [firstObject section];
      v11 = section2 - 1;
      if (section2 < 1)
      {
        textField = [(SearchUIKeyboardableCollectionViewController *)self textField];

        if (textField)
        {
          section = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        if ((modifierFlags & 0x100000) != 0)
        {
          v9 = 0;
        }

        else
        {
          collectionView2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
          v9 = [collectionView2 numberOfItemsInSection:v11] - 1;
        }

        section = v11;
      }
    }

    else if ((modifierFlags & 0x100000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [firstObject row] - 1;
    }
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:section];
  [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:v14 upward:1];

  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [textField2 becomeFirstResponder];

    if ([firstObject section] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SearchUIKeyboardableCollectionViewController *)self moveCursorToBeginning];
    }

    else
    {
      textField3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [textField3 selectAll:0];
    }
  }
}

- (void)downArrowPressed:(id)pressed
{
  pressedCopy = pressed;
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToEnd];
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  modifierFlags = [pressedCopy modifierFlags];
  section = [firstObject section];
  [firstObject row];
  if (firstObject)
  {
    collectionView2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    v10 = [collectionView2 numberOfItemsInSection:{objc_msgSend(firstObject, "section")}];
    v11 = [firstObject row] + 1;

    if (v10 <= v11)
    {
      v12 = 0;
      section = [firstObject section] + 1;
    }

    else if ((modifierFlags & 0x100000) != 0)
    {
      v16 = [firstObject section] + 1;
      collectionView3 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      numberOfSections = [collectionView3 numberOfSections];

      if (v16 >= numberOfSections)
      {
        collectionView4 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
        v12 = [collectionView4 numberOfItemsInSection:{objc_msgSend(firstObject, "section")}] - 1;
      }

      else
      {
        v12 = 0;
        section = v16;
      }
    }

    else
    {
      v12 = [firstObject row] + 1;
    }
  }

  else
  {
    v12 = 0;
    section = 0;
  }

  collectionView5 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  if (section < [collectionView5 numberOfSections])
  {
    collectionView6 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    v15 = [collectionView6 numberOfItemsInSection:section];

    if (v12 >= v15)
    {
      goto LABEL_11;
    }

    collectionView5 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:section];
    [(SearchUIKeyboardableCollectionViewController *)self highlightNextRowAtIndexPath:collectionView5 upward:0];
  }

LABEL_11:
}

- (void)highlightNextRowAtIndexPath:(id)path upward:(BOOL)upward
{
  v5 = [(SearchUIKeyboardableCollectionViewController *)self indexPathForNextSelectableIndexPath:path upward:upward];
  if ([v5 section] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SearchUIKeyboardableCollectionViewController *)self scrollIndexPathToVisible:v5];
  }

  [(SearchUIKeyboardableCollectionViewController *)self highlightRowAtIndexPath:v5];
}

- (id)indexPathForNextSelectableIndexPath:(id)path upward:(BOOL)upward
{
  upwardCopy = upward;
  pathCopy = path;
  if ([pathCopy row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(pathCopy, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = pathCopy;
    goto LABEL_4;
  }

  section = [pathCopy section];
  v10 = section;
  if (upwardCopy)
  {
    if ((section & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if (v10 == [pathCopy section])
        {
          v11 = [pathCopy row];
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
          v11 = [collectionView numberOfItemsInSection:v10] - 1;

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

  collectionView2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  numberOfSections = [collectionView2 numberOfSections];

  if (v10 >= numberOfSections)
  {
    goto LABEL_28;
  }

  do
  {
    if (v10 == [pathCopy section])
    {
      v16 = [pathCopy row];
    }

    else
    {
      v16 = 0;
    }

    while (1)
    {
      collectionView3 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      v18 = [collectionView3 numberOfItemsInSection:v10];

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
    collectionView4 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    numberOfSections2 = [collectionView4 numberOfSections];

    v7 = 0;
  }

  while (v10 < numberOfSections2);
LABEL_4:

  return v7;
}

- (void)selectHighlightedRow
{
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    [(SearchUIKeyboardableCollectionViewController *)self scrollIndexPathToVisible:firstObject];
    collectionView2 = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
    [collectionView2 selectItemAtIndexPath:firstObject animated:0 scrollPosition:0];
  }
}

- (void)moveCursorToBeginning
{
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  beginningOfDocument = [textField beginningOfDocument];
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToPosition:beginningOfDocument];
}

- (void)moveCursorToEnd
{
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  endOfDocument = [textField endOfDocument];
  [(SearchUIKeyboardableCollectionViewController *)self moveCursorToPosition:endOfDocument];
}

- (void)moveCursorToPosition:(id)position
{
  positionCopy = position;
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  v5 = [textField textRangeFromPosition:positionCopy toPosition:positionCopy];

  textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [textField2 setSelectedTextRange:v5];
}

- (void)scrollIndexPathToVisible:(id)visible
{
  visibleCopy = visible;
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:visibleCopy atScrollPosition:0 animated:0];

  interactionDelegate = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  [interactionDelegate didBeginScrolling];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(SearchUIKeyboardableCollectionViewController *)self adjustedVerticalOffset];
  v6 = v5;
  isTracking = [scrollCopy isTracking];

  if (isTracking)
  {
    if (v6 > 0.0 && [(SearchUIKeyboardableCollectionViewController *)self contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField]&& !+[SearchUIUtilities isMinimizedHardwareKeyboardMode])
    {
      textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [textField resignFirstResponder];
    }

    else if (v6 < -50.0)
    {

      [(SearchUIKeyboardableCollectionViewController *)self showKeyboard];
    }
  }
}

- (double)contentHeight
{
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [collectionView contentSize];
  v4 = v3;

  return v4;
}

- (BOOL)contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField
{
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [textField2 bounds];
  [textField convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view = [(SearchUIKeyboardableCollectionViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
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

  view2 = [(SearchUIKeyboardableCollectionViewController *)self view];
  view3 = [(SearchUIKeyboardableCollectionViewController *)self view];
  [view3 bounds];
  [view2 convertRect:0 toView:?];
  v23 = CGRectGetMinY(v32);

  if (v19 == 0.0)
  {
    return 0;
  }

  [(SearchUIKeyboardableCollectionViewController *)self contentHeight];
  v25 = v23 + v24;
  collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
  [collectionView adjustedContentInset];
  v28 = v25 + v27 + 2.0 > Height - v19;

  return v28;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  interactionDelegate = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];

  if (interactionDelegate)
  {
    interactionDelegate2 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    [interactionDelegate2 didBeginScrolling];

    interactionDelegate3 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    shouldMonitorScrollingPastBottomOfContent = [interactionDelegate3 shouldMonitorScrollingPastBottomOfContent];

    if (shouldMonitorScrollingPastBottomOfContent)
    {
      collectionView = [(SearchUIKeyboardableCollectionViewController *)self collectionView];
      [collectionView contentOffset];
      v10 = v9;
      [collectionView contentSize];
      v12 = v11;
      [collectionView bounds];
      Height = CGRectGetHeight(v23);
      [collectionView adjustedContentInset];
      v15 = v14;
      panGestureRecognizer = [collectionView panGestureRecognizer];
      window = [draggingCopy window];
      [panGestureRecognizer velocityInView:window];
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

        [draggingCopy setScrollEnabled:0];
        [draggingCopy setScrollEnabled:1];
        panGestureRecognizer = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
        [panGestureRecognizer didScrollPastBottomOfContent];
        goto LABEL_10;
      }

LABEL_6:

LABEL_10:
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (velocity.y > 0.0 && ![(SearchUIKeyboardableCollectionViewController *)self shouldHideTableCellsUnderKeyboard:dragging]&& [(SearchUIKeyboardableCollectionViewController *)self contentIsTallEnoughToBeOccludedByCurrentKeyboardHeightAndTextField]&& !+[SearchUIUtilities isMinimizedHardwareKeyboardMode])
  {
    textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [textField resignFirstResponder];
  }
}

- (void)showKeyboard
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

  if ((isRunningTest & 1) == 0 && [(SearchUIKeyboardableCollectionViewController *)self _appearState]- 1 <= 1)
  {
    textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
    isFirstResponder = [textField isFirstResponder];

    if (isFirstResponder)
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
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  selectedTextRange = [textField selectedTextRange];
  if (([selectedTextRange isEmpty] & 1) == 0)
  {
    textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    selectedTextRange2 = [textField2 selectedTextRange];
    start = [selectedTextRange2 start];
    textField3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    beginningOfDocument = [textField3 beginningOfDocument];
    if ([start isEqual:beginningOfDocument])
    {
      textField4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      selectedTextRange3 = [textField4 selectedTextRange];
      [selectedTextRange3 end];
      v11 = v17 = textField2;
      textField5 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [textField5 endOfDocument];
      v13 = v14 = selectedTextRange2;
      v16 = [v11 isEqual:v13];

      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  textField6 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [textField6 selectAll:0];
}

- (void)keyboardFrameChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(SearchUIKeyboardableCollectionViewController *)self view];
  tlks_screen = [view tlks_screen];
  [tlks_screen bounds];
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