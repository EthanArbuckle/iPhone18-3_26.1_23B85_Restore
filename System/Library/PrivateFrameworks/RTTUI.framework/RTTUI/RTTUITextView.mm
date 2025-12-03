@interface RTTUITextView
- (BOOL)_isKeyboardPredictionsEnabled;
- (BOOL)_shouldShowTTYPredictions;
- (BOOL)disableInputBars;
- (RTTUITextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (double)ttyBarHeight;
- (float)_predictionsCellBuffer;
- (float)_predictionsCellHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)inputAccessoryView;
- (id)keyCommands;
- (int)_predictionsPerPage;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)accessibilityTraits;
- (void)_didPanPredictions:(id)predictions;
- (void)_didSwipeLeft:(id)left;
- (void)_inlineTTYAbbreviationSelected:(id)selected;
- (void)_insertWhitespaceIfNeeded;
- (void)_kbFrameChanged:(id)changed;
- (void)_keyboardWillHide:(id)hide;
- (void)_loadTTYAbbreviations;
- (void)_resetTTYBarPosition;
- (void)_setupOverlayPredictions;
- (void)_showInlineRTTAbbreviations:(BOOL)abbreviations;
- (void)_tapTTYBarCell:(id)cell;
- (void)_updateBlackBarPositioning;
- (void)_updateTTYBarFrame;
- (void)_updateTTYBarPosition;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)overrideTTYPredictionsHidden:(BOOL)hidden;
- (void)setShowTTYPredictions:(BOOL)predictions;
- (void)updateTTYBar;
@end

@implementation RTTUITextView

- (RTTUITextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = RTTUITextView;
  v4 = [(RTTUITextView *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(RTTUITextView *)v4 setKeyboardType:1];
    [(RTTUITextView *)v5 _loadTTYAbbreviations];
    mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
    rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

    if (rttInlineAbbreviationBarEnabled)
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RTTUITextView *)self setPredictionsCollectionView:0];
  [(RTTUITextView *)self setTtyAbbreviations:0];
  v4.receiver = self;
  v4.super_class = RTTUITextView;
  [(RTTUITextView *)&v4 dealloc];
}

- (void)_setupOverlayPredictions
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__kbFrameChanged_ name:*MEMORY[0x277D76C48] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

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
  predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView setDataSource:self];

  v10 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView2 setBackgroundColor:v10];

  predictionsCollectionView3 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView3 setDelegate:self];

  predictionsCollectionView4 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ttyAbbreviationsCell"];

  predictionsCollectionView5 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView5 setScrollEnabled:0];

  predictionsCollectionView6 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView6 setAccessibilityIdentifier:@"TTYAbbreviationsBar"];

  [(RTTUITextView *)self setIsHandlingKeyboardFrameChanged:0];
  v16 = objc_alloc(MEMORY[0x277D75D18]);
  v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  inputAccessoryPlaceholderView = self->_inputAccessoryPlaceholderView;
  self->_inputAccessoryPlaceholderView = v17;

  [(UIView *)self->_inputAccessoryPlaceholderView setUserInteractionEnabled:0];
  [(UIView *)self->_inputAccessoryPlaceholderView setAlpha:0.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self->_inputAccessoryPlaceholderView setBackgroundColor:clearColor];

  predictionsCollectionView7 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView7 setAutoresizesSubviews:1];

  v21 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__didPanPredictions_];
  [v21 setDelegate:self];
  predictionsCollectionView8 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView8 addGestureRecognizer:v21];

  [(RTTUITextView *)self reloadInputViews];
  predictionsCollectionView9 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView9 reloadData];
}

- (double)ttyBarHeight
{
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  v5 = 0.0;
  if ((rttInlineAbbreviationBarEnabled & 1) == 0)
  {
    predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
    if (([predictionsCollectionView isHidden] & 1) == 0)
    {
      predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
      [predictionsCollectionView2 frame];
      Height = CGRectGetHeight(v11);
      [(RTTUITextView *)self _predictionsCellBuffer];
      v5 = Height + v9;
    }
  }

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  [(RTTUITextView *)self _tapTTYBarCell:v5];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(RTTUITextView *)self ttyAbbreviations:view];
  v6 = [v5 count];

  text = [(RTTUITextView *)self text];
  v8 = [text length];

  if (v8)
  {
    return v6;
  }

  ttyAbbreviations = [(RTTUITextView *)self ttyAbbreviations];
  v11 = [ttyAbbreviations indexesOfObjectsPassingTest:&__block_literal_global_3];

  v12 = [v11 count];
  return v12;
}

uint64_t __55__RTTUITextView_collectionView_numberOfItemsInSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"requiresStringContent"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"ttyAbbreviationsCell" forIndexPath:pathCopy];
  ttyAbbreviations = [(RTTUITextView *)self ttyAbbreviations];
  text = [(RTTUITextView *)self text];
  v10 = [text length];

  if (!v10)
  {
    v11 = [ttyAbbreviations indexesOfObjectsPassingTest:&__block_literal_global_326];
    v12 = [ttyAbbreviations objectsAtIndexes:v11];

    ttyAbbreviations = v12;
  }

  v13 = [ttyAbbreviations count];
  if (v13 > [pathCopy row])
  {
    v14 = [ttyAbbreviations objectAtIndex:{objc_msgSend(pathCopy, "row")}];
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

- (void)_didPanPredictions:(id)predictions
{
  predictionsCopy = predictions;
  predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
  if ([predictionsCopy state] == 3)
  {
    [predictionsCopy translationInView:predictionsCollectionView];
    v6 = v5;
    [predictionsCopy velocityInView:predictionsCollectionView];
    v8 = self->_panContentOffset.x + v7 * -0.25 - v6;
    [predictionsCollectionView contentSize];
    v10 = v9 + -1.0;
    if (v8 < v10)
    {
      v10 = v8;
    }

    v11 = [predictionsCollectionView indexPathForItemAtPoint:{fmax(v10, 0.0)}];
    self->_leftIndex = [v11 row];
    [(RTTUITextView *)self _updateTTYBarPosition];
  }

  else
  {
    if ([predictionsCopy state] == 1)
    {
      [predictionsCollectionView contentOffset];
      self->_panContentOffset.x = v12;
      self->_panContentOffset.y = v13;
    }

    [predictionsCopy translationInView:predictionsCollectionView];
    [predictionsCollectionView setContentOffset:{self->_panContentOffset.x - v14, 0.0}];
  }
}

- (void)_didSwipeLeft:(id)left
{
  v4 = self->_leftIndex + [(RTTUITextView *)self _predictionsPerPage];
  self->_leftIndex = v4;
  ttyAbbreviations = [(RTTUITextView *)self ttyAbbreviations];
  v6 = [ttyAbbreviations count];

  if (v4 >= v6)
  {
    ttyAbbreviations2 = [(RTTUITextView *)self ttyAbbreviations];
    v8 = [ttyAbbreviations2 count];
    self->_leftIndex = v8 - [(RTTUITextView *)self _predictionsPerPage];
  }

  [(RTTUITextView *)self _updateTTYBarPosition];
}

- (void)_kbFrameChanged:(id)changed
{
  changedCopy = changed;
  if (![(RTTUITextView *)self isHandlingKeyboardFrameChanged])
  {
    [(RTTUITextView *)self setIsHandlingKeyboardFrameChanged:1];
    userInfo = [changedCopy userInfo];
    v5 = [userInfo valueForKey:*MEMORY[0x277D76BB8]];
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

- (void)_keyboardWillHide:(id)hide
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
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  if (rttInlineAbbreviationBarEnabled)
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
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  if ((rttInlineAbbreviationBarEnabled & 1) != 0 || !self->_showTTYPredictions)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    activeInstance = [MEMORY[0x277D75678] activeInstance];
    v6 = [activeInstance accessibilityUsesExtendedKeyboardPredictionsEnabled] ^ 1;
  }

  return v6;
}

- (void)overrideTTYPredictionsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  if ((rttInlineAbbreviationBarEnabled & 1) == 0 && self->_showTTYPredictions == hiddenCopy)
  {
    self->_showTTYPredictions = !hiddenCopy;
    [(RTTUITextView *)self _resetTTYBarPosition];

    [(RTTUITextView *)self updateTTYBar];
  }
}

- (void)_showInlineRTTAbbreviations:(BOOL)abbreviations
{
  abbreviationsCopy = abbreviations;
  inputAssistantItem = [(RTTUITextView *)self inputAssistantItem];
  v6 = inputAssistantItem;
  if (abbreviationsCopy)
  {
    trailingBarButtonGroups = [inputAssistantItem trailingBarButtonGroups];
    v8 = [trailingBarButtonGroups ax_containsObjectUsingBlock:&__block_literal_global_337];

    if ((v8 & 1) == 0)
    {
      [v6 _setShowsBarButtonItemsInline:1];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        trailingBarButtonGroups2 = [v6 trailingBarButtonGroups];
        array = [trailingBarButtonGroups2 mutableCopy];
      }

      else
      {
        array = [MEMORY[0x277CBEB18] array];
      }

      array2 = [MEMORY[0x277CBEB18] array];
      activeInstance = [MEMORY[0x277D75678] activeInstance];
      [activeInstance frame];
      v17 = v16;

      if (v17 == 0.0)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
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
      ttyAbbreviations = [(RTTUITextView *)self ttyAbbreviations];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __45__RTTUITextView__showInlineRTTAbbreviations___block_invoke_2;
      v29[3] = &unk_279AE5410;
      v29[4] = self;
      v31 = &v32;
      v24 = v22;
      v30 = v24;
      [ttyAbbreviations enumerateObjectsUsingBlock:v29];

      v25 = v33[3];
      [(RTTUITextView *)self _predictionsCellHeight];
      [(RTTUIAbbreviationViewContainer *)v24 setContentSize:v25, v26];
      v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
      [array2 addObject:v27];

      v28 = [objc_alloc(MEMORY[0x277D751F0]) initWithBarButtonItems:array2 representativeItem:0];
      [v28 setAccessibilityIdentifier:@"RTTGroup"];
      [array addObject:v28];
      [v6 setLeadingBarButtonGroups:MEMORY[0x277CBEBF8]];
      [v6 setTrailingBarButtonGroups:array];

      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    [inputAssistantItem _setShowsBarButtonItemsInline:0];
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

- (void)_inlineTTYAbbreviationSelected:(id)selected
{
  view = [selected view];
  v5 = MEMORY[0x277CCACA8];
  v19 = view;
  abbreviationText = [view abbreviationText];
  v7 = [v5 stringWithFormat:@"%@ ", abbreviationText];

  [(RTTUITextView *)self _insertWhitespaceIfNeeded];
  [(RTTUITextView *)self insertText:v7];
  [(RTTUITextView *)self setShowTTYPredictions:0];
  inputAssistantItem = [(RTTUITextView *)self inputAssistantItem];
  trailingBarButtonGroups = [inputAssistantItem trailingBarButtonGroups];
  v10 = [trailingBarButtonGroups ax_containsObjectUsingBlock:&__block_literal_global_356];

  if (v10)
  {
    inputAssistantItem2 = [(RTTUITextView *)self inputAssistantItem];
    trailingBarButtonGroups2 = [inputAssistantItem2 trailingBarButtonGroups];
    firstObject = [trailingBarButtonGroups2 firstObject];

    barButtonItems = [firstObject barButtonItems];
    firstObject2 = [barButtonItems firstObject];

    customView = [firstObject2 customView];
    [customView scrollRectToVisible:0 animated:{0.0, 0.0, 1.0, 1.0}];
    inputAssistantItem3 = [(RTTUITextView *)self inputAssistantItem];
    [inputAssistantItem3 _setShowsBarButtonItemsInline:0];

    [(RTTUITextView *)self reloadInputViews];
    inputAssistantItem4 = [(RTTUITextView *)self inputAssistantItem];
    [inputAssistantItem4 _setShowsBarButtonItemsInline:1];

    [(RTTUITextView *)self reloadInputViews];
  }
}

uint64_t __48__RTTUITextView__inlineTTYAbbreviationSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"RTTGroup"];

  return v3;
}

- (void)setShowTTYPredictions:(BOOL)predictions
{
  predictionsCopy = predictions;
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  if ((rttInlineAbbreviationBarEnabled & 1) == 0 && self->_showTTYPredictions != predictionsCopy)
  {
    if (predictionsCopy && [(RTTUITextView *)self _shouldShowTTYPredictions])
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
  predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView frame];
  v5 = v4;

  predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView2 contentOffset];
  v8 = v5 + v7 + -1.0;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_rightBackgroundColorEdge setFrame:v8, 0.0, 1.0, v9];

  predictionsCollectionView3 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView3 contentOffset];
  v12 = v11;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_leftBackgroundColorEdge setFrame:v12, 0.0, 1.0, v13];

  predictionsCollectionView4 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView4 contentOffset];
  v16 = v5 * 0.5 + v15 + -2.0;
  [(RTTUITextView *)self _predictionsCellHeight];
  [(UIView *)self->_middleBackgroundColorEdge setFrame:v16, 0.0, 4.0, v17];

  superview = [(UIView *)self->_middleBackgroundColorEdge superview];
  [superview sendSubviewToBack:self->_middleBackgroundColorEdge];
}

- (void)updateTTYBar
{
  mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
  rttInlineAbbreviationBarEnabled = [mEMORY[0x277D440D8] rttInlineAbbreviationBarEnabled];

  if ((rttInlineAbbreviationBarEnabled & 1) == 0)
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
          predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
          window = [predictionsCollectionView window];

          if (window)
          {
            predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
            superview = [predictionsCollectionView2 superview];
            predictionsCollectionView3 = [(RTTUITextView *)self predictionsCollectionView];
            [superview bringSubviewToFront:predictionsCollectionView3];
          }

          else
          {
            predictionsCollectionView2 = [(RTTUITextView *)self window];
            superview = [predictionsCollectionView2 rootViewController];
            predictionsCollectionView3 = [superview view];
            predictionsCollectionView4 = [(RTTUITextView *)self predictionsCollectionView];
            [predictionsCollectionView3 addSubview:predictionsCollectionView4];
          }

          [(RTTUITextView *)self reloadInputViews];
          [(RTTUITextView *)self _updateTTYBarFrame];
          predictionsCollectionView5 = [(RTTUITextView *)self predictionsCollectionView];
          [predictionsCollectionView5 reloadData];
          goto LABEL_13;
        }

LABEL_10:
        v18 = AXLogRTT();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_261725000, v18, OS_LOG_TYPE_DEFAULT, "No keyboard on screen, removing predictions", &v27, 2u);
        }

        predictionsCollectionView5 = [(RTTUITextView *)self predictionsCollectionView];
        [predictionsCollectionView5 removeFromSuperview];
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
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  [activeInstance frame];
  self->_currentKeyboardWidth = v4;

  currentKeyboardWidth = self->_currentKeyboardWidth;
  if (currentKeyboardWidth > 0.0)
  {
    v6 = currentKeyboardWidth / [(RTTUITextView *)self _predictionsPerPage]+ -1.0;
    [(RTTUITextView *)self _predictionsCellHeight];
    [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:v6, v7];
  }

  predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView setHidden:!self->_showTTYPredictions];

  inputAccessoryPlaceholderView = self->_inputAccessoryPlaceholderView;
  [(UIView *)inputAccessoryPlaceholderView bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
  superview = [predictionsCollectionView2 superview];
  [(UIView *)inputAccessoryPlaceholderView convertRect:superview toView:v11, v13, v15, v17];
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
  predictionsCollectionView3 = [(RTTUITextView *)self predictionsCollectionView];
  [predictionsCollectionView3 setFrame:{v21, v31, v32, v34}];

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
    predictionsCollectionView4 = [(RTTUITextView *)self predictionsCollectionView];
    if (([predictionsCollectionView4 isHidden] & 1) == 0)
    {
      superview2 = [(UIView *)self->_iPadBufferView superview];

      if (superview2)
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
        predictionsCollectionView5 = [(RTTUITextView *)self predictionsCollectionView];
        -[UIView setHidden:](v48, "setHidden:", [predictionsCollectionView5 isHidden]);

        goto LABEL_16;
      }

      predictionsCollectionView4 = [(RTTUITextView *)self predictionsCollectionView];
      superview3 = [predictionsCollectionView4 superview];
      [superview3 addSubview:self->_iPadBufferView];
    }

    goto LABEL_10;
  }

  predictionsCollectionView6 = [(RTTUITextView *)self predictionsCollectionView];
  superview4 = [predictionsCollectionView6 superview];
  if (!superview4)
  {
    goto LABEL_14;
  }

  leftBackgroundColorEdge = self->_leftBackgroundColorEdge;

  if (!leftBackgroundColorEdge)
  {
    predictionsCollectionView6 = [MEMORY[0x277D75348] colorWithRed:0.15 green:0.15 blue:0.15 alpha:1.0];
    v53 = objc_alloc(MEMORY[0x277D75D18]);
    v54 = *MEMORY[0x277CBF3A0];
    v55 = *(MEMORY[0x277CBF3A0] + 8);
    v56 = *(MEMORY[0x277CBF3A0] + 16);
    v57 = *(MEMORY[0x277CBF3A0] + 24);
    v58 = [v53 initWithFrame:{*MEMORY[0x277CBF3A0], v55, v56, v57}];
    v59 = self->_leftBackgroundColorEdge;
    self->_leftBackgroundColorEdge = v58;

    predictionsCollectionView7 = [(RTTUITextView *)self predictionsCollectionView];
    [predictionsCollectionView7 addSubview:self->_leftBackgroundColorEdge];

    [(UIView *)self->_leftBackgroundColorEdge setBackgroundColor:predictionsCollectionView6];
    v61 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v54, v55, v56, v57}];
    rightBackgroundColorEdge = self->_rightBackgroundColorEdge;
    self->_rightBackgroundColorEdge = v61;

    predictionsCollectionView8 = [(RTTUITextView *)self predictionsCollectionView];
    [predictionsCollectionView8 addSubview:self->_rightBackgroundColorEdge];

    [(UIView *)self->_rightBackgroundColorEdge setBackgroundColor:predictionsCollectionView6];
    v64 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v54, v55, v56, v57}];
    middleBackgroundColorEdge = self->_middleBackgroundColorEdge;
    self->_middleBackgroundColorEdge = v64;

    predictionsCollectionView9 = [(RTTUITextView *)self predictionsCollectionView];
    [predictionsCollectionView9 insertSubview:self->_middleBackgroundColorEdge atIndex:0];

    [(UIView *)self->_middleBackgroundColorEdge setBackgroundColor:predictionsCollectionView6];
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
    predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
    v4 = [predictionsCollectionView numberOfItemsInSection:0];
    leftIndex = self->_leftIndex;

    if (v4 > leftIndex)
    {
      predictionsCollectionView2 = [(RTTUITextView *)self predictionsCollectionView];
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:self->_leftIndex inSection:0];
      [predictionsCollectionView2 scrollToItemAtIndexPath:v6 atScrollPosition:8 animated:0];
    }
  }
}

- (void)_updateTTYBarPosition
{
  if (self->_showTTYPredictions)
  {
    predictionsCollectionView = [(RTTUITextView *)self predictionsCollectionView];
    v5 = [MEMORY[0x277CCAA70] indexPathForRow:self->_leftIndex inSection:0];
    [predictionsCollectionView scrollToItemAtIndexPath:v5 atScrollPosition:8 animated:1];

    [(RTTUITextView *)self _updateBlackBarPositioning];
  }
}

- (void)_tapTTYBarCell:(id)cell
{
  v4 = MEMORY[0x277CCACA8];
  abbreviationText = [cell abbreviationText];
  v6 = [v4 stringWithFormat:@"%@ ", abbreviationText];

  [(RTTUITextView *)self _insertWhitespaceIfNeeded];
  [(RTTUITextView *)self insertText:v6];
  [(RTTUITextView *)self setShowTTYPredictions:0];
}

- (void)_insertWhitespaceIfNeeded
{
  beginningOfDocument = [(RTTUITextView *)self beginningOfDocument];
  selectedTextRange = [(RTTUITextView *)self selectedTextRange];
  start = [selectedTextRange start];
  v6 = [(RTTUITextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

  text = [(RTTUITextView *)self text];
  v8 = [text length];

  if (v6 >= 1 && v6 - 1 < v8)
  {
    text2 = [(RTTUITextView *)self text];
    v10 = [text2 characterAtIndex:v6 - 1];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    LOBYTE(v10) = [whitespaceCharacterSet characterIsMember:v10];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        dictionary2 = [dictionary objectForKeyedSubscript:v8];
        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v8];
        }

        v10 = [v8 stringByAppendingString:@"_Abbrevation"];
        v11 = [v2 localizedStringForKey:v10 value:&stru_2873F89E0 table:@"TTYAbbreviations"];

        if ([v11 length])
        {
          [dictionary2 setObject:v11 forKeyedSubscript:@"abbr"];
        }

        v12 = [v8 stringByAppendingString:@"_Definition"];
        v13 = [v2 localizedStringForKey:v12 value:&stru_2873F89E0 table:@"TTYAbbreviations"];

        if ([v13 length])
        {
          [dictionary2 setObject:v13 forKeyedSubscript:@"hint"];
        }
      }

      v5 = [&unk_2873FB908 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  v14 = dictionary;
  allKeys = [dictionary allKeys];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__RTTUITextView__loadTTYAbbreviations__block_invoke;
  v23[3] = &unk_279AE5438;
  v24 = v20;
  v16 = v20;
  v17 = [allKeys sortedArrayUsingComparator:v23];
  null = [MEMORY[0x277CBEB68] null];
  v19 = [dictionary objectsForKeys:v17 notFoundMarker:null];

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
  deviceIsPad = [MEMORY[0x277D12B60] deviceIsPad];
  result = 0.0;
  if (deviceIsPad)
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

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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