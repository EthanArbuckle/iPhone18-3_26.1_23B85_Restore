@interface SCROBrailleUIDisplayManager
+ (id)sharedManager;
- (BOOL)_isFirstViewEqualTo:(id)to;
- (SCROBrailleUIDisplayManager)init;
- (SCROBrailleUIView)visibleView;
- (id)_brailleUILineForCurrentBraille;
- (id)lineForView:(id)view;
- (void)_commitDisplayedBrailleToTopMostView;
- (void)_speakFocusedListItem;
- (void)_updateBrailleModel;
- (void)_updateIsHidingViews;
- (void)dismissAll;
- (void)dismissLineForView:(id)view;
- (void)hideViews;
- (void)showFirstLineForView:(id)view;
- (void)showLastLineForView:(id)view;
- (void)showNextLineForView:(id)view;
- (void)showPreviousLineForView:(id)view;
- (void)showViews;
@end

@implementation SCROBrailleUIDisplayManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[SCROBrailleUIDisplayManager sharedManager];
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

uint64_t __44__SCROBrailleUIDisplayManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleUIDisplayManager);
  sharedManager__sharedManager = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROBrailleUIDisplayManager)init
{
  v8.receiver = self;
  v8.super_class = SCROBrailleUIDisplayManager;
  v2 = [(SCROBrailleUIDisplayManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lineQueue = v2->_lineQueue;
    v2->_lineQueue = v3;

    v5 = objc_opt_new();
    viewQueue = v2->_viewQueue;
    v2->_viewQueue = v5;
  }

  return v2;
}

- (void)dismissLineForView:(id)view
{
  viewCopy = view;
  lineQueue = [(SCROBrailleUIDisplayManager *)self lineQueue];
  v5 = [lineQueue count];

  v6 = v5 - 1;
  if (v5 - 1 >= 0)
  {
    v7 = 0;
    do
    {
      viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
      v9 = [viewQueue objectAtIndex:v6];
      v10 = [v9 isEqual:viewCopy];

      if (v10)
      {
        lineQueue2 = [(SCROBrailleUIDisplayManager *)self lineQueue];
        [lineQueue2 removeObjectAtIndex:v6];

        viewQueue2 = [(SCROBrailleUIDisplayManager *)self viewQueue];
        [viewQueue2 removeObjectAtIndex:v6];

        v7 |= v6 == 0;
      }
    }

    while (v6-- > 0);
    if (v7)
    {
      [(SCROBrailleUIDisplayManager *)self _speakFocusedListItem];
    }
  }

  [(SCROBrailleUIDisplayManager *)self _updateIsHidingViews];
  [(SCROBrailleUIDisplayManager *)self _updateBrailleModel];
}

- (void)dismissAll
{
  lineQueue = [(SCROBrailleUIDisplayManager *)self lineQueue];
  [lineQueue removeAllObjects];

  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  [viewQueue removeAllObjects];

  [(SCROBrailleUIDisplayManager *)self _updateIsHidingViews];

  [(SCROBrailleUIDisplayManager *)self _updateBrailleModel];
}

- (void)hideViews
{
  if (![(SCROBrailleUIDisplayManager *)self isHidingViews])
  {
    viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v4 = [viewQueue count];

    if (v4)
    {
      [(SCROBrailleUIDisplayManager *)self _commitDisplayedBrailleToTopMostView];
      self->_isHidingViews = 1;

      [(SCROBrailleUIDisplayManager *)self _updateBrailleModel];
    }
  }
}

- (void)showViews
{
  if ([(SCROBrailleUIDisplayManager *)self isHidingViews])
  {
    self->_isHidingViews = 0;
    [(SCROBrailleUIDisplayManager *)self _speakFocusedListItem];

    [(SCROBrailleUIDisplayManager *)self _updateBrailleModel];
  }
}

- (void)showPreviousLineForView:(id)view
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:view])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] showPreviousLine];
  }
}

- (void)showNextLineForView:(id)view
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:view])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] showNextLine];
  }
}

- (void)showFirstLineForView:(id)view
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:view])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] showFirstLine];
  }
}

- (void)showLastLineForView:(id)view
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:view])
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] showLastLine];
  }
}

- (SCROBrailleUIView)visibleView
{
  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [viewQueue count];

  if (v4)
  {
    viewQueue2 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    firstObject = [viewQueue2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)lineForView:(id)view
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:view])
  {
    _brailleUILineForCurrentBraille = [(SCROBrailleUIDisplayManager *)self _brailleUILineForCurrentBraille];
  }

  else
  {
    _brailleUILineForCurrentBraille = 0;
  }

  return _brailleUILineForCurrentBraille;
}

- (BOOL)_isFirstViewEqualTo:(id)to
{
  toCopy = to;
  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  if ([viewQueue count])
  {
    viewQueue2 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    firstObject = [viewQueue2 firstObject];
    v8 = [firstObject isEqual:toCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_brailleUILineForCurrentBraille
{
  lineQueue = [(SCROBrailleUIDisplayManager *)self lineQueue];
  if (![lineQueue count])
  {

    goto LABEL_6;
  }

  lineQueue2 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  firstObject = [lineQueue2 firstObject];
  isMultiLine = [firstObject isMultiLine];

  if (!isMultiLine)
  {
LABEL_6:
    lineQueue3 = [(SCROBrailleUIDisplayManager *)self lineQueue];
    if ([lineQueue3 count])
    {
      lineQueue4 = [(SCROBrailleUIDisplayManager *)self lineQueue];
      firstObject2 = [lineQueue4 firstObject];
      shouldTruncateAtPanBoundary = [firstObject2 shouldTruncateAtPanBoundary];
    }

    else
    {
      shouldTruncateAtPanBoundary = 0;
    }

    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    displayedBraille = [mEMORY[0x277CF3318] displayedBraille];

    string = [displayedBraille string];
    selection = [displayedBraille selection];
    if (selection == 0x7FFFFFFFFFFFFFFFLL)
    {
      [SCROBrailleUIBraille lineWithBraille:string shouldTruncateAtPanBoundary:shouldTruncateAtPanBoundary];
    }

    else
    {
      [SCROBrailleUIBraille lineWithEditableBraille:string selection:selection, v26];
    }
    v28 = ;

    goto LABEL_15;
  }

  mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
  displayedBraille = [mEMORY[0x277CF3318]2 uiBraille];

  mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
  uiSelection = [mEMORY[0x277CF3318]3 uiSelection];
  v12 = v11;

  mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
  uiDisplayRange = [mEMORY[0x277CF3318]4 uiDisplayRange];
  v16 = v15;

  lineQueue5 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  firstObject3 = [lineQueue5 firstObject];
  isEditable = [firstObject3 isEditable];

  if (isEditable)
  {
    [SCROBrailleUIBraille multiLineEditableBraille:displayedBraille selection:uiSelection, v12];
  }

  else
  {
    [SCROBrailleUIBraille multiLineBraille:displayedBraille focus:uiDisplayRange, v16];
  }
  v28 = ;
LABEL_15:

  return v28;
}

- (void)_commitDisplayedBrailleToTopMostView
{
  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [viewQueue count];

  if (v4)
  {
    _brailleUILineForCurrentBraille = [(SCROBrailleUIDisplayManager *)self _brailleUILineForCurrentBraille];
    lineQueue = [(SCROBrailleUIDisplayManager *)self lineQueue];
    [lineQueue setObject:_brailleUILineForCurrentBraille atIndexedSubscript:0];
  }
}

- (void)_speakFocusedListItem
{
  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  if ([viewQueue count])
  {
    viewQueue2 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v4 = [viewQueue2 objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    viewQueue3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    viewQueue = [viewQueue3 objectAtIndex:0];

    focusedItem = [viewQueue focusedItem];
    speakableLabel = [focusedItem speakableLabel];
    if (!speakableLabel)
    {
      goto LABEL_6;
    }

    v9 = speakableLabel;
    v10 = +[SCROBrailleUISettingsManager sharedInstance];
    isReadListItemsEnabled = [v10 isReadListItemsEnabled];

    if (isReadListItemsEnabled)
    {
      focusedItem = [viewQueue focusedItem];
      speakableLabel2 = [focusedItem speakableLabel];
      [(SCROBrailleUIDisplayManager *)self requestSpeech:speakableLabel2 language:0 shouldQueue:0];

LABEL_6:
    }
  }
}

- (void)_updateBrailleModel
{
  lineQueue = [(SCROBrailleUIDisplayManager *)self lineQueue];
  if ([lineQueue count])
  {
    isHidingViews = [(SCROBrailleUIDisplayManager *)self isHidingViews];

    if (!isHidingViews)
    {
      mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318] setBrailleUIActive:1];

      lineQueue2 = [(SCROBrailleUIDisplayManager *)self lineQueue];
      firstObject = [lineQueue2 firstObject];

      v7 = objc_alloc(MEMORY[0x277CF3330]);
      braille = [firstObject braille];
      selection = [firstObject selection];
      v11 = v10;
      focus = [firstObject focus];
      v14 = [v7 initWithString:braille selection:selection focus:v11 token:focus suggestion:v13 textFormattingRanges:{0, 0x7FFFFFFFFFFFFFFFLL, 0, 0}];

      mEMORY[0x277CF3318]2 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]2 setUIBraille:v14 truncateAtPanBoundary:{objc_msgSend(firstObject, "shouldTruncateAtPanBoundary")}];

      mEMORY[0x277CF3318]3 = [MEMORY[0x277CF3318] sharedModel];
      [mEMORY[0x277CF3318]3 setEditable:{objc_msgSend(firstObject, "isEditable")}];

      mEMORY[0x277CF3318]4 = [MEMORY[0x277CF3318] sharedModel];
      if ([firstObject isMultiLine])
      {
        isEditable = [firstObject isEditable];
      }

      else
      {
        isEditable = 0;
      }

      [mEMORY[0x277CF3318]4 setHandleReturnInternally:isEditable];

      goto LABEL_9;
    }
  }

  else
  {
  }

  firstObject = [MEMORY[0x277CF3318] sharedModel];
  [firstObject setBrailleUIActive:0];
LABEL_9:
}

- (void)_updateIsHidingViews
{
  viewQueue = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [viewQueue count];

  if (!v4)
  {
    self->_isHidingViews = 0;
  }
}

@end