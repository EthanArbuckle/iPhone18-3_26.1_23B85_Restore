@interface SCROBrailleUIDisplayManager
+ (id)sharedManager;
- (BOOL)_isFirstViewEqualTo:(id)a3;
- (SCROBrailleUIDisplayManager)init;
- (SCROBrailleUIView)visibleView;
- (id)_brailleUILineForCurrentBraille;
- (id)lineForView:(id)a3;
- (void)_commitDisplayedBrailleToTopMostView;
- (void)_speakFocusedListItem;
- (void)_updateBrailleModel;
- (void)_updateIsHidingViews;
- (void)dismissAll;
- (void)dismissLineForView:(id)a3;
- (void)hideViews;
- (void)showFirstLineForView:(id)a3;
- (void)showLastLineForView:(id)a3;
- (void)showNextLineForView:(id)a3;
- (void)showPreviousLineForView:(id)a3;
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

- (void)dismissLineForView:(id)a3
{
  v14 = a3;
  v4 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  v5 = [v4 count];

  v6 = v5 - 1;
  if (v5 - 1 >= 0)
  {
    v7 = 0;
    do
    {
      v8 = [(SCROBrailleUIDisplayManager *)self viewQueue];
      v9 = [v8 objectAtIndex:v6];
      v10 = [v9 isEqual:v14];

      if (v10)
      {
        v11 = [(SCROBrailleUIDisplayManager *)self lineQueue];
        [v11 removeObjectAtIndex:v6];

        v12 = [(SCROBrailleUIDisplayManager *)self viewQueue];
        [v12 removeObjectAtIndex:v6];

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
  v3 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  [v3 removeAllObjects];

  v4 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  [v4 removeAllObjects];

  [(SCROBrailleUIDisplayManager *)self _updateIsHidingViews];

  [(SCROBrailleUIDisplayManager *)self _updateBrailleModel];
}

- (void)hideViews
{
  if (![(SCROBrailleUIDisplayManager *)self isHidingViews])
  {
    v3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v4 = [v3 count];

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

- (void)showPreviousLineForView:(id)a3
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:a3])
  {
    v3 = [MEMORY[0x277CF3318] sharedModel];
    [v3 showPreviousLine];
  }
}

- (void)showNextLineForView:(id)a3
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:a3])
  {
    v3 = [MEMORY[0x277CF3318] sharedModel];
    [v3 showNextLine];
  }
}

- (void)showFirstLineForView:(id)a3
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:a3])
  {
    v3 = [MEMORY[0x277CF3318] sharedModel];
    [v3 showFirstLine];
  }
}

- (void)showLastLineForView:(id)a3
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:a3])
  {
    v3 = [MEMORY[0x277CF3318] sharedModel];
    [v3 showLastLine];
  }
}

- (SCROBrailleUIView)visibleView
{
  v3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lineForView:(id)a3
{
  if ([(SCROBrailleUIDisplayManager *)self _isFirstViewEqualTo:a3])
  {
    v4 = [(SCROBrailleUIDisplayManager *)self _brailleUILineForCurrentBraille];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isFirstViewEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  if ([v5 count])
  {
    v6 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v7 = [v6 firstObject];
    v8 = [v7 isEqual:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_brailleUILineForCurrentBraille
{
  v3 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  if (![v3 count])
  {

    goto LABEL_6;
  }

  v4 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  v5 = [v4 firstObject];
  v6 = [v5 isMultiLine];

  if (!v6)
  {
LABEL_6:
    v20 = [(SCROBrailleUIDisplayManager *)self lineQueue];
    if ([v20 count])
    {
      v21 = [(SCROBrailleUIDisplayManager *)self lineQueue];
      v22 = [v21 firstObject];
      v23 = [v22 shouldTruncateAtPanBoundary];
    }

    else
    {
      v23 = 0;
    }

    v24 = [MEMORY[0x277CF3318] sharedModel];
    v8 = [v24 displayedBraille];

    v25 = [v8 string];
    v27 = [v8 selection];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [SCROBrailleUIBraille lineWithBraille:v25 shouldTruncateAtPanBoundary:v23];
    }

    else
    {
      [SCROBrailleUIBraille lineWithEditableBraille:v25 selection:v27, v26];
    }
    v28 = ;

    goto LABEL_15;
  }

  v7 = [MEMORY[0x277CF3318] sharedModel];
  v8 = [v7 uiBraille];

  v9 = [MEMORY[0x277CF3318] sharedModel];
  v10 = [v9 uiSelection];
  v12 = v11;

  v13 = [MEMORY[0x277CF3318] sharedModel];
  v14 = [v13 uiDisplayRange];
  v16 = v15;

  v17 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  v18 = [v17 firstObject];
  v19 = [v18 isEditable];

  if (v19)
  {
    [SCROBrailleUIBraille multiLineEditableBraille:v8 selection:v10, v12];
  }

  else
  {
    [SCROBrailleUIBraille multiLineBraille:v8 focus:v14, v16];
  }
  v28 = ;
LABEL_15:

  return v28;
}

- (void)_commitDisplayedBrailleToTopMostView
{
  v3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [v3 count];

  if (v4)
  {
    v6 = [(SCROBrailleUIDisplayManager *)self _brailleUILineForCurrentBraille];
    v5 = [(SCROBrailleUIDisplayManager *)self lineQueue];
    [v5 setObject:v6 atIndexedSubscript:0];
  }
}

- (void)_speakFocusedListItem
{
  v13 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  if ([v13 count])
  {
    v3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v4 = [v3 objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v6 = [(SCROBrailleUIDisplayManager *)self viewQueue];
    v13 = [v6 objectAtIndex:0];

    v7 = [v13 focusedItem];
    v8 = [v7 speakableLabel];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = v8;
    v10 = +[SCROBrailleUISettingsManager sharedInstance];
    v11 = [v10 isReadListItemsEnabled];

    if (v11)
    {
      v7 = [v13 focusedItem];
      v12 = [v7 speakableLabel];
      [(SCROBrailleUIDisplayManager *)self requestSpeech:v12 language:0 shouldQueue:0];

LABEL_6:
    }
  }
}

- (void)_updateBrailleModel
{
  v3 = [(SCROBrailleUIDisplayManager *)self lineQueue];
  if ([v3 count])
  {
    v4 = [(SCROBrailleUIDisplayManager *)self isHidingViews];

    if (!v4)
    {
      v5 = [MEMORY[0x277CF3318] sharedModel];
      [v5 setBrailleUIActive:1];

      v6 = [(SCROBrailleUIDisplayManager *)self lineQueue];
      v19 = [v6 firstObject];

      v7 = objc_alloc(MEMORY[0x277CF3330]);
      v8 = [v19 braille];
      v9 = [v19 selection];
      v11 = v10;
      v12 = [v19 focus];
      v14 = [v7 initWithString:v8 selection:v9 focus:v11 token:v12 suggestion:v13 textFormattingRanges:{0, 0x7FFFFFFFFFFFFFFFLL, 0, 0}];

      v15 = [MEMORY[0x277CF3318] sharedModel];
      [v15 setUIBraille:v14 truncateAtPanBoundary:{objc_msgSend(v19, "shouldTruncateAtPanBoundary")}];

      v16 = [MEMORY[0x277CF3318] sharedModel];
      [v16 setEditable:{objc_msgSend(v19, "isEditable")}];

      v17 = [MEMORY[0x277CF3318] sharedModel];
      if ([v19 isMultiLine])
      {
        v18 = [v19 isEditable];
      }

      else
      {
        v18 = 0;
      }

      [v17 setHandleReturnInternally:v18];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v19 = [MEMORY[0x277CF3318] sharedModel];
  [v19 setBrailleUIActive:0];
LABEL_9:
}

- (void)_updateIsHidingViews
{
  v3 = [(SCROBrailleUIDisplayManager *)self viewQueue];
  v4 = [v3 count];

  if (!v4)
  {
    self->_isHidingViews = 0;
  }
}

@end