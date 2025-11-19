@interface RTTUITextView
- (BOOL)_isKeyboardPredictionsEnabled;
- (BOOL)_shouldShowTTYPredictions;
- (BOOL)disableInputBars;
- (RTTUITextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (double)ttyBarHeight;
- (float)_predictionsCellBuffer;
- (float)_predictionsCellHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)inputAccessoryView;
- (id)keyCommands;
- (int)_predictionsPerPage;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)accessibilityTraits;
- (void)_didPanPredictions:(id)a3;
- (void)_didSwipeLeft:(id)a3;
- (void)_inlineTTYAbbreviationSelected:(id)a3;
- (void)_insertWhitespaceIfNeeded;
- (void)_kbFrameChanged:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_loadTTYAbbreviations;
- (void)_resetTTYBarPosition;
- (void)_setupOverlayPredictions;
- (void)_showInlineRTTAbbreviations:(BOOL)a3;
- (void)_tapTTYBarCell:(id)a3;
- (void)_updateBlackBarPositioning;
- (void)_updateTTYBarFrame;
- (void)_updateTTYBarPosition;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)overrideTTYPredictionsHidden:(BOOL)a3;
- (void)setShowTTYPredictions:(BOOL)a3;
- (void)updateTTYBar;
@end

@implementation RTTUITextView

- (RTTUITextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v9.receiver = self;
  v9.super_class = RTTUITextView;
  v4 = [(RTTUITextView *)&v9 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(RTTUITextView *)v4 setKeyboardType:1];
    [(RTTUITextView *)v5 _loadTTYAbbreviations];
    v6 = [MEMORY[0x277D440D8] sharedInstance];
    v7 = [v6 rttInlineAbbreviationBarEnabled];

    if (v7)
    {
      [(RTTUITextView *)v5 _showInlineRTTAbbreviations:1];
    }

    else
    {
      [(RTTUITextView *)v5 _setupOverlayPredictions];
      v5->_showTTYPredictions = 1;
      [(RTTUITextView *)v5 setShowTTYPredictions:0];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(RTTUITextView *)self setPredictionsCollectionView:0];
  [(RTTUITextView *)self setTtyAbbreviations:0];
  v4.receiver = self;
  v4.super_class = RTTUITextView;
  [(RTTUITextView *)&v4 dealloc];
}

- (void)_setupOverlayPredictions
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__kbFrameChanged_ name:*MEMORY[0x277D76C48] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  self->_currentKeyboardWidth = -1.0;
  v5 = objc_alloc_init(MEMORY[0x277D752F0]);
  flowLayout = self->_flowLayout;
  self->_flowLayout = v5;

  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumInteritemSpacing:3.0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:1.0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:1];
  v7 = objc_alloc(MEMORY[0x277D752A0]);
  [(RTTUITextView *)self _predictionsCellHeight];
  v24 = [v7 initWithFrame:self->_flowLayout collectionViewLayout:{0.0, 0.0, 768.0, v8}];
  [(RTTUITextView *)self setPredictionsCollectionView:v24];
  v9 = [(RTTUITextView *)self predictionsCollectionView];
  [v9 setDataSource:self];

  v10 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  v11 = [(RTTUITextView *)self predictionsCollectionView];
  [v11 setBackgroundColor:v10];

  v12 = [(RTTUITextView *)self predictionsCollectionView];
  [v12 setDelegate:self];

  v13 = [(RTTUITextView *)self predictionsCollectionView];
  [v13 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ttyAbbreviationsCell"];

  v14 = [(RTTUITextView *)self predictionsCollectionView];
  [v14 setScrollEnabled:0];

  v15 = [(RTTUITextView *)self predictionsCollectionView];
  [v15 setAccessibilityIdentifier:@"TTYAbbreviationsBar"];

  [(RTTUITextView *)self setIsHandlingKeyboardFrameChanged:0];
  v16 = objc_alloc(MEMORY[0x277D75D18]);
  v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  inputAccessoryPlaceholderView = self->_inputAccessoryPlaceholderView;
  self->_inputAccessoryPlaceholderView = v17;

  [(UIView *)self->_inputAccessoryPlaceholderView setUserInteractionEnabled:0];
  [(UIView *)self->_inputAccessoryPlaceholderView setAlpha:0.0];
  v19 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self->_inputAccessoryPlaceholderView setBackgroundColor:v19];

  v20 = [(RTTUITextView *)self predictionsCollectionView];
  [v20 setAutoresizesSubviews:1];

  v21 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__didPanPredictions_];
  [v21 setDelegate:self];
  v22 = [(RTTUITextView *)self predictionsCollectionView];
  [v22 addGestureRecognizer:v21];

  [(RTTUITextView *)self reloadInputViews];
  v23 = [(RTTUITextView *)self predictionsCollectionView];
  [v23 reloadData];
}

- (double)ttyBarHeight
{
  v3 = [MEMORY[0x277D440D8] sharedInstance];
  v4 = [v3 rttInlineAbbreviationBarEnabled];

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = [(RTTUITextView *)self predictionsCollectionView];
    if (([v6 isHidden] & 1) == 0)
    {
      v7 = [(RTTUITextView *)self predictionsCollectionView];
      [v7 frame];
      Height = CGRectGetHeight(v11);
      [(RTTUITextView *)self _predictionsCellBuffer];
      v5 = Height + v9;
    }
  }

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [a3 cellForItemAtIndexPath:a4];
  [(RTTUITextView *)self _tapTTYBarCell:v5];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(RTTUITextView *)self ttyAbbreviations:a3];
  v6 = [v5 count];

  v7 = [(RTTUITextView *)self text];
  v8 = [v7 length];

  if (v8)
  {
    return v6;
  }

  v10 = [(RTTUITextView *)self ttyAbbreviations];
  v11 = [v10 indexesOfObjectsPassingTest:&__block_literal_global_3];

  v12 = [v11 count];
  return v12;
}

uint64_t __55__RTTUITextView_collectionView_numberOfItemsInSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"requiresStringContent"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"ttyAbbreviationsCell" forIndexPath:v6];
  v8 = [(RTTUITextView *)self ttyAbbreviations];
  v9 = [(RTTUITextView *)self text];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [v8 indexesOfObjectsPassingTest:&__block_literal_global_326];
    v12 = [v8 objectsAtIndexes:v11];

    v8 = v12;
  }

  v13 = [v8 count];
  if (v13 > [v6 row])
  {
    v14 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];
    [v7 setAbbreviationData:v14];
  }

  return v7;
}

uint64_t __55__RTTUITextView_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"requiresStringContent"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (void)_didPanPredictions:(id)a3
{
  v15 = a3;
  v4 = [(RTTUITextView *)self predictionsCollectionView];
  if ([v15 state] == 3)
  {
    [v15 translationInView:v4];
    v6 = v5;
    [v15 velocityInView:v4];
    v8 = self->_panContentOffset.x + v7 * -0.25 - v6;
    [v4 contentSize];
    v10 = v9 + -1.0;
    if (v8 < v10)
    {
      v10 = v8;
    }

    v11 = [v4 indexPathForItemAtPoint:{fmax(v10, 0.0)}];
    self->_leftIndex = [v11 row];
    [(RTTUITextView *)self _updateTTYBarPosition];
  }

  else
  {
    if ([v15 state] == 1)
    {
      [v4 contentOffset];
      self->_panContentOffset.x = v12;
      self->_panContentOffset.y = v13;
    }

    [v15 translationInView:v4];
    [v4 setContentOffset:{self->_panContentOffset.x - v14, 0.0}];
  }
}

- (void)_didSwipeLeft:(id)a3
{
  v4 = self->_leftIndex + [(RTTUITextView *)self _predictionsPerPage];
  self->_leftIndex = v4;
  v5 = [(RTTUITextView *)self ttyAbbreviations];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v7 = [(RTTUITextView *)self ttyAbbreviations];
    v8 = [v7 count];
    self->_leftIndex = v8 - [(RTTUITextView *)self _predictionsPerPage];
  }

  [(RTTUITextView *)self _updateTTYBarPosition];
}

- (void)_kbFrameChanged:(id)a3
{
  v8 = a3;
  if (![(RTTUITextView *)self isHandlingKeyboardFrameChanged])
  {
    [(RTTUITextView *)self setIsHandlingKeyboardFrameChanged:1];
    v4 = [v8 userInfo];
    v5 = [v4 valueForKey:*MEMORY[0x277D76BB8]];
    [v5 CGRectValue];
    v7 = v6;

    if ([(RTTUITextView *)self _shouldShowTTYPredictions])
    {
      if (self->_currentKeyboardWidth != v7)
      {
        [(RTTUITextView *)self updateTTYBar];
      }
    }

    else
    {
      [(RTTUITextView *)self setShowTTYPredictions:0];
    }

    [(RTTUITextView *)self setIsHandlingKeyboardFrameChanged:0];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  self->_showTTYPredictions = 0;
  [(UICollectionView *)self->_predictionsCollectionView setHidden:1];
  iPadBufferView = self->_iPadBufferView;

  [(UIView *)iPadBufferView setHidden:1];
}

- (id)keyCommands
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_gaButtonPressed_];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)inputAccessoryView
{
  v3 = [MEMORY[0x277D440D8] sharedInstance];
  v4 = [v3 rttInlineAbbreviationBarEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    [(RTTUITextView *)self _resetTTYBarPosition];
    [(RTTUITextView *)self _updateTTYBarFrame];
    v5 = self->_inputAccessoryPlaceholderView;
  }

  return v5;
}

- (BOOL)disableInputBars
{
  v3 = [MEMORY[0x277D440D8] sharedInstance];
  v4 = [v3 rttInlineAbbreviationBarEnabled];

  if ((v4 & 1) != 0 || !self->_showTTYPredictions)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D75678] activeInstance];
    v6 = [v5 accessibilityUsesExtendedKeyboardPredictionsEnabled] ^ 1;
  }

  return v6;
}

- (void)overrideTTYPredictionsHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D440D8] sharedInstance];
  v6 = [v5 rttInlineAbbreviationBarEnabled];

  if ((v6 & 1) == 0 && self->_showTTYPredictions == v3)
  {
    self->_showTTYPredictions = !v3;
    [(RTTUITextView *)self _resetTTYBarPosition];

    [(RTTUITextView *)self updateTTYBar];
  }
}

- (void)_showInlineRTTAbbreviations:(BOOL)a3
{
  v3 = a3;
  v5 = [(RTTUITextView *)self inputAssistantItem];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 trailingBarButtonGroups];
    v8 = [v7 ax_containsObjectUsingBlock:&__block_literal_global_337];

    if ((v8 & 1) == 0)
    {
      [v6 _setShowsBarButtonItemsInline:1];
      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v11 = [v6 trailingBarButtonGroups];
        v12 = [v11 mutableCopy];
      }

      else
      {
        v12 = [MEMORY[0x277CBEB18] array];
      }

      v14 = [MEMORY[0x277CBEB18] array];
      v15 = [MEMORY[0x277D75678] activeInstance];
      [v15 frame];
      v17 = v16;

      if (v17 == 0.0)
      {
        v18 = [MEMORY[0x277D759A0] mainScreen];
        [v18 bounds];
        v17 = v19;
      }

      v20 = [RTTUIAbbreviationViewContainer alloc];
      [(RTTUITextView *)self _predictionsCellHeight];
      v22 = [(RTTUIAbbreviationViewContainer *)v20 initWithFrame:0.0, 0.0, v17, v21];
      [(RTTUIAbbreviationViewContainer *)v22 setDelaysContentTouches:0];
      [(RTTUIAbbreviationViewContainer *)v22 setShowsHorizontalScrollIndicator:0];
      [(RTTUIAbbreviationViewContainer *)v22 setDirectionalLockEnabled:1];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v23 = [(RTTUITextView *)self ttyAbbreviations];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __45__RTTUITextView__showInlineRTTAbbreviations___block_invoke_2;
      v29[3] = &unk_279AE5410;
      v29[4] = self;
      v31 = &v32;
      v24 = v22;
      v30 = v24;
      [v23 enumerateObjectsUsingBlock:v29];

      v25 = v33[3];
      [(RTTUITextView *)self _predictionsCellHeight];
      [(RTTUIAbbreviationViewContainer *)v24 setContentSize:v25, v26];
      v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
      [v14 addObject:v27];

      v28 = [objc_alloc(MEMORY[0x277D751F0]) initWithBarButtonItems:v14 representativeItem:0];
      [v28 setAccessibilityIdentifier:@"RTTGroup"];
      [v12 addObject:v28];
      [v6 setLeadingBarButtonGroups:MEMORY[0x277CBEBF8]];
      [v6 setTrailingBarButtonGroups:v12];

      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    [v5 _setShowsBarButtonItemsInline:0];
    v13 = MEMORY[0x277CBEBF8];
    [v6 setTrailingBarButtonGroups:MEMORY[0x277CBEBF8]];
    [v6 setLeadingBarButtonGroups:v13];
  }
}

uint64_t __45__RTTUITextView__showInlineRTTAbbreviations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"RTTGroup"];

  return v3;
}

void __45__RTTUITextView__showInlineRTTAbbreviations___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [RTTUIAbbreviationView alloc];
  v13 = [(RTTUIAbbreviationView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(RTTUIAbbreviationView *)v13 setAbbreviationData:v5];

  [*(a1 + 32) _predictionsCellHeight];
  [(RTTUIAbbreviationView *)v13 sizeThatFits:0.0, v7];
  v9 = v8;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) _predictionsCellHeight];
  [(RTTUIAbbreviationView *)v13 setFrame:v10, 0.0, v9, v11];
  [(RTTUIAbbreviationView *)v13 setDrawLeftBorder:a3 != 0];
  v12 = [[RTTAbbreviationTapGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:sel__inlineTTYAbbreviationSelected_];
  [(RTTAbbreviationTapGestureRecognizer *)v12 setAbbrevationView:v13];
  [(RTTUIAbbreviationView *)v13 addGestureRecognizer:v12];
  [*(a1 + 40) addSubview:v13];
  *(*(*(a1 + 48) + 8) + 24) = v9 + *(*(*(a1 + 48) + 8) + 24);
}

- (void)_inlineTTYAbbreviationSelected:(id)a3
{
  v4 = [a3 view];
  v5 = MEMORY[0x277CCACA8];
  v19 = v4;
  v6 = [v4 abbreviationText];
  v7 = [v5 stringWithFormat:@"%@ ", v6];

  [(RTTUITextView *)self _insertWhitespaceIfNeeded];
  [(RTTUITextView *)self insertText:v7];
  [(RTTUITextView *)self setShowTTYPredictions:0];
  v8 = [(RTTUITextView *)self inputAssistantItem];
  v9 = [v8 trailingBarButtonGroups];
  v10 = [v9 ax_containsObjectUsingBlock:&__block_literal_global_356];

  if (v10)
  {
    v11 = [(RTTUITextView *)self inputAssistantItem];
    v12 = [v11 trailingBarButtonGroups];
    v13 = [v12 firstObject];

    v14 = [v13 barButtonItems];
    v15 = [v14 firstObject];

    v16 = [v15 customView];
    [v16 scrollRectToVisible:0 animated:{0.0, 0.0, 1.0, 1.0}];
    v17 = [(RTTUITextView *)self inputAssistantItem];
    [v17 _setShowsBarButtonItemsInline:0];

    [(RTTUITextView *)self reloadInputViews];
    v18 = [(RTTUITextView *)self inputAssistantItem];
    [v18 _setShowsBarButtonItemsInline:1];

    [(RTTUITextView *)self reloadInputViews];
  }
}

uint64_t __48__RTTUITextView__inlineTTYAbbreviationSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"RTTGroup"];

  return v3;
}

- (void)setShowTTYPredictions:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D440D8] sharedInstance];
  v6 = [v5 rttInlineAbbreviationBarEnabled];

  if ((v6 & 1) == 0 && self->_showTTYPredictions != v3)
  {
    if (v3 && [(RTTUITextView *)self _shouldShowTTYPredictions])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = ![(RTTUITextView *)self _isKeyboardPredictionsEnabled];
    }

    self->_showTTYPredictions = v7;
    [(RTTUITextView *)self _resetTTYBarPosition];

    [(RTTUITextView *)self updateTTYBar];
  }
}

- (BOOL)_shouldShowTTYPredictions
{
  if ([MEMORY[0x277D75678] isSplit])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D75678] isFloating] ^ 1;
  }
}

- (BOOL)_isKeyboardPredictionsEnabled
{
  v2 = CFPreferencesCopyValue(@"KeyboardShowPredictionBar", @"com.apple.Preferences", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 != CFBooleanGetTypeID() || CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

- (void)_updateBlackBarPositioning
{
  v3 = [(RTTUITextView *)self predictionsCollectionView];
  [v3 frame];
  v5 = v4;

  v6 = [(RTTUITextView *)self predictionsCollectionView];
  [v6 contentOffset];
  v8 = v5 + v7 + -1.0;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_rightBackgroundColorEdge setFrame:v8, 0.0, 1.0, v9];

  v10 = [(RTTUITextView *)self predictionsCollectionView];
  [v10 contentOffset];
  v12 = v11;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_leftBackgroundColorEdge setFrame:v12, 0.0, 1.0, v13];

  v14 = [(RTTUITextView *)self predictionsCollectionView];
  [v14 contentOffset];
  v16 = v5 * 0.5 + v15 + -2.0;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_middleBackgroundColorEdge setFrame:v16, 0.0, 4.0, v17];

  v18 = [(UIView *)self->_middleBackgroundColorEdge superview];
  [v18 sendSubviewToBack:self->_middleBackgroundColorEdge];
}

- (void)updateTTYBar
{
  v3 = [MEMORY[0x277D440D8] sharedInstance];
  v4 = [v3 rttInlineAbbreviationBarEnabled];

  if ((v4 & 1) == 0)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v5 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0;
    v35 = getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0;
    if (!getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke_0;
      v30 = &unk_279AE4F10;
      v31 = &v32;
      v6 = AccessibilityUIUtilitiesLibrary();
      v33[3] = dlsym(v6, "AXUIKeyboardIsOnScreen");
      getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0 = *(v31[1] + 24);
      v5 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (v5)
    {
      if (!v5(v7, v8, v9, v10))
      {
        goto LABEL_10;
      }

      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v11 = getAXUIKeyboardScreenFrameSymbolLoc_ptr;
      v35 = getAXUIKeyboardScreenFrameSymbolLoc_ptr;
      if (!getAXUIKeyboardScreenFrameSymbolLoc_ptr)
      {
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __getAXUIKeyboardScreenFrameSymbolLoc_block_invoke;
        v30 = &unk_279AE4F10;
        v31 = &v32;
        v12 = AccessibilityUIUtilitiesLibrary();
        v33[3] = dlsym(v12, "AXUIKeyboardScreenFrame");
        getAXUIKeyboardScreenFrameSymbolLoc_ptr = *(v31[1] + 24);
        v11 = v33[3];
      }

      _Block_object_dispose(&v32, 8);
      if (v11)
      {
        v11(v13, v14, v15, v16);
        if (v17 != 0.0)
        {
          v20 = [(RTTUITextView *)self predictionsCollectionView];
          v21 = [v20 window];

          if (v21)
          {
            v22 = [(RTTUITextView *)self predictionsCollectionView];
            v23 = [v22 superview];
            v24 = [(RTTUITextView *)self predictionsCollectionView];
            [v23 bringSubviewToFront:v24];
          }

          else
          {
            v22 = [(RTTUITextView *)self window];
            v23 = [v22 rootViewController];
            v24 = [v23 view];
            v25 = [(RTTUITextView *)self predictionsCollectionView];
            [v24 addSubview:v25];
          }

          [(RTTUITextView *)self reloadInputViews];
          [(RTTUITextView *)self _updateTTYBarFrame];
          v19 = [(RTTUITextView *)self predictionsCollectionView];
          [v19 reloadData];
          goto LABEL_13;
        }

LABEL_10:
        v18 = AXLogRTT();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_261725000, v18, OS_LOG_TYPE_DEFAULT, "No keyboard on screen, removing predictions", &v27, 2u);
        }

        v19 = [(RTTUITextView *)self predictionsCollectionView];
        [v19 removeFromSuperview];
LABEL_13:

        return;
      }
    }

    else
    {
      [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    }

    v26 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    _Block_object_dispose(&v32, 8);
    _Unwind_Resume(v26);
  }
}

- (void)_updateTTYBarFrame
{
  v3 = [MEMORY[0x277D75678] activeInstance];
  [v3 frame];
  self->_currentKeyboardWidth = v4;

  currentKeyboardWidth = self->_currentKeyboardWidth;
  if (currentKeyboardWidth > 0.0)
  {
    v6 = currentKeyboardWidth / [(RTTUITextView *)self _predictionsPerPage]+ -1.0;
    [(RTTUITextView *)self _predictionsCellHeight];
    [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:v6, v7];
  }

  v8 = [(RTTUITextView *)self predictionsCollectionView];
  [v8 setHidden:!self->_showTTYPredictions];

  inputAccessoryPlaceholderView = self->_inputAccessoryPlaceholderView;
  [(UIView *)inputAccessoryPlaceholderView bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(RTTUITextView *)self predictionsCollectionView];
  v19 = [v18 superview];
  [(UIView *)inputAccessoryPlaceholderView convertRect:v19 toView:v11, v13, v15, v17];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [(RTTUITextView *)self _predictionsCellHeight];
  v29 = v23 - v28;
  [(RTTUITextView *)self _predictionsCellBuffer];
  v31 = v29 - v30;
  v32 = self->_currentKeyboardWidth;
  [(RTTUITextView *)self _predictionsCellHeight];
  v34 = v33;
  v35 = [(RTTUITextView *)self predictionsCollectionView];
  [v35 setFrame:{v21, v31, v32, v34}];

  if ([MEMORY[0x277D12B60] deviceIsPad])
  {
    rect = v27;
    if (!self->_iPadBufferView)
    {
      v36 = objc_alloc_init(MEMORY[0x277D75D18]);
      iPadBufferView = self->_iPadBufferView;
      self->_iPadBufferView = v36;

      v38 = self->_iPadBufferView;
      v39 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.5];
      [(UIView *)v38 setBackgroundColor:v39];
    }

    v40 = v25;
    v41 = [(RTTUITextView *)self predictionsCollectionView];
    if (([v41 isHidden] & 1) == 0)
    {
      v42 = [(UIView *)self->_iPadBufferView superview];

      if (v42)
      {
LABEL_10:
        v44 = self->_iPadBufferView;
        v70.origin.x = v21;
        v70.origin.y = v31;
        v70.size.width = v32;
        v70.size.height = v34;
        MaxY = CGRectGetMaxY(v70);
        v46 = self->_currentKeyboardWidth;
        v71.origin.x = v21;
        v71.origin.y = v23;
        v71.size.width = v40;
        v71.size.height = rect;
        MinY = CGRectGetMinY(v71);
        v72.origin.x = v21;
        v72.origin.y = v31;
        v72.size.width = v32;
        v72.size.height = v34;
        [(UIView *)v44 setFrame:v21, MaxY, v46, MinY - CGRectGetMaxY(v72)];
        v48 = self->_iPadBufferView;
        v49 = [(RTTUITextView *)self predictionsCollectionView];
        -[UIView setHidden:](v48, "setHidden:", [v49 isHidden]);

        goto LABEL_16;
      }

      v41 = [(RTTUITextView *)self predictionsCollectionView];
      v43 = [v41 superview];
      [v43 addSubview:self->_iPadBufferView];
    }

    goto LABEL_10;
  }

  v50 = [(RTTUITextView *)self predictionsCollectionView];
  v51 = [v50 superview];
  if (!v51)
  {
    goto LABEL_14;
  }

  leftBackgroundColorEdge = self->_leftBackgroundColorEdge;

  if (!leftBackgroundColorEdge)
  {
    v50 = [MEMORY[0x277D75348] colorWithRed:0.15 green:0.15 blue:0.15 alpha:1.0];
    v53 = objc_alloc(MEMORY[0x277D75D18]);
    v54 = *MEMORY[0x277CBF3A0];
    v55 = *(MEMORY[0x277CBF3A0] + 8);
    v56 = *(MEMORY[0x277CBF3A0] + 16);
    v57 = *(MEMORY[0x277CBF3A0] + 24);
    v58 = [v53 initWithFrame:{*MEMORY[0x277CBF3A0], v55, v56, v57}];
    v59 = self->_leftBackgroundColorEdge;
    self->_leftBackgroundColorEdge = v58;

    v60 = [(RTTUITextView *)self predictionsCollectionView];
    [v60 addSubview:self->_leftBackgroundColorEdge];

    [(UIView *)self->_leftBackgroundColorEdge setBackgroundColor:v50];
    v61 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v54, v55, v56, v57}];
    rightBackgroundColorEdge = self->_rightBackgroundColorEdge;
    self->_rightBackgroundColorEdge = v61;

    v63 = [(RTTUITextView *)self predictionsCollectionView];
    [v63 addSubview:self->_rightBackgroundColorEdge];

    [(UIView *)self->_rightBackgroundColorEdge setBackgroundColor:v50];
    v64 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v54, v55, v56, v57}];
    middleBackgroundColorEdge = self->_middleBackgroundColorEdge;
    self->_middleBackgroundColorEdge = v64;

    v66 = [(RTTUITextView *)self predictionsCollectionView];
    [v66 insertSubview:self->_middleBackgroundColorEdge atIndex:0];

    [(UIView *)self->_middleBackgroundColorEdge setBackgroundColor:v50];
LABEL_14:
  }

  [(RTTUITextView *)self _updateBlackBarPositioning];
LABEL_16:
  recta = [(RTTUITextView *)self predictionsCollectionView];
  [recta reloadData];
}

- (void)_resetTTYBarPosition
{
  self->_leftIndex = 0;
  if (self->_showTTYPredictions)
  {
    v3 = [(RTTUITextView *)self predictionsCollectionView];
    v4 = [v3 numberOfItemsInSection:0];
    leftIndex = self->_leftIndex;

    if (v4 > leftIndex)
    {
      v7 = [(RTTUITextView *)self predictionsCollectionView];
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:self->_leftIndex inSection:0];
      [v7 scrollToItemAtIndexPath:v6 atScrollPosition:8 animated:0];
    }
  }
}

- (void)_updateTTYBarPosition
{
  if (self->_showTTYPredictions)
  {
    v4 = [(RTTUITextView *)self predictionsCollectionView];
    v5 = [MEMORY[0x277CCAA70] indexPathForRow:self->_leftIndex inSection:0];
    [v4 scrollToItemAtIndexPath:v5 atScrollPosition:8 animated:1];

    [(RTTUITextView *)self _updateBlackBarPositioning];
  }
}

- (void)_tapTTYBarCell:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 abbreviationText];
  v6 = [v4 stringWithFormat:@"%@ ", v5];

  [(RTTUITextView *)self _insertWhitespaceIfNeeded];
  [(RTTUITextView *)self insertText:v6];
  [(RTTUITextView *)self setShowTTYPredictions:0];
}

- (void)_insertWhitespaceIfNeeded
{
  v3 = [(RTTUITextView *)self beginningOfDocument];
  v4 = [(RTTUITextView *)self selectedTextRange];
  v5 = [v4 start];
  v6 = [(RTTUITextView *)self offsetFromPosition:v3 toPosition:v5];

  v7 = [(RTTUITextView *)self text];
  v8 = [v7 length];

  if (v6 >= 1 && v6 - 1 < v8)
  {
    v9 = [(RTTUITextView *)self text];
    v10 = [v9 characterAtIndex:v6 - 1];

    v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    LOBYTE(v10) = [v11 characterIsMember:v10];

    if ((v10 & 1) == 0)
    {

      [(RTTUITextView *)self insertText:@" "];
    }
  }
}

- (void)_loadTTYAbbreviations
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v2 pathForResource:@"TTYAbbreviationsOrder" ofType:@"plist"];
  v20 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:?];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [&unk_2873FB908 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(&unk_2873FB908);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        if (!v9)
        {
          v9 = [MEMORY[0x277CBEB38] dictionary];
          [v3 setObject:v9 forKeyedSubscript:v8];
        }

        v10 = [v8 stringByAppendingString:@"_Abbrevation"];
        v11 = [v2 localizedStringForKey:v10 value:&stru_2873F89E0 table:@"TTYAbbreviations"];

        if ([v11 length])
        {
          [v9 setObject:v11 forKeyedSubscript:@"abbr"];
        }

        v12 = [v8 stringByAppendingString:@"_Definition"];
        v13 = [v2 localizedStringForKey:v12 value:&stru_2873F89E0 table:@"TTYAbbreviations"];

        if ([v13 length])
        {
          [v9 setObject:v13 forKeyedSubscript:@"hint"];
        }
      }

      v5 = [&unk_2873FB908 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  v14 = v3;
  v15 = [v3 allKeys];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__RTTUITextView__loadTTYAbbreviations__block_invoke;
  v23[3] = &unk_279AE5438;
  v24 = v20;
  v16 = v20;
  v17 = [v15 sortedArrayUsingComparator:v23];
  v18 = [MEMORY[0x277CBEB68] null];
  v19 = [v3 objectsForKeys:v17 notFoundMarker:v18];

  [(RTTUITextView *)self setTtyAbbreviations:v19];
}

uint64_t __38__RTTUITextView__loadTTYAbbreviations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (float)_predictionsCellBuffer
{
  v2 = [MEMORY[0x277D12B60] deviceIsPad];
  result = 0.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (float)_predictionsCellHeight
{
  if ([MEMORY[0x277D12B60] deviceIsPad])
  {
    return 50.0;
  }

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  Width = CGRectGetWidth(v5);

  result = 38.0;
  if (Width > 320.0)
  {
    return 39.0;
  }

  return result;
}

- (int)_predictionsPerPage
{
  if ([MEMORY[0x277D12B60] deviceIsPad])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RTTUITextView;
  [(RTTUITextView *)&v3 accessibilityTraits];
  return _AXTraitsRemoveTrait();
}

@end