@interface TUIEmojiSearchInputViewController
- (TUIEmojiSearchInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TUIEmojiSearchInputViewControllerDelegate)delegate;
- (UIEdgeInsets)_keyboardInsets;
- (double)preferredHeightForTraitCollection:(id)collection;
- (id)remoteSearchViewController;
- (void)_dismissVariantSelector;
- (void)_displayResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (void)_keyboardInputModeDidChange:(id)change;
- (void)_selectedEmojiString:(id)string query:(id)query indexPath:(id)path completion:(id)completion;
- (void)_showGenmojiCreation:(id)creation;
- (void)autocorrectionListDidBecomeAvailable:(id)available;
- (void)beginSearchForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (void)emojiSearchResultsController:(id)controller didRequestVariantSelectorForEmojiToken:(id)token fromRect:(CGRect)rect;
- (void)emojiSearchSource:(id)source didProduceResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (void)emojiSearchTextField:(id)field didChangeSearchString:(id)string;
- (void)emojiSearchTextFieldDidBecomeActive:(id)active;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillBecomeActive:(id)active;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillClear:(id)clear;
- (void)loadView;
- (void)setChildPredictionViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfigurationForRemoteSearchController;
- (void)variantSelectorValueChanged:(id)changed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TUIEmojiSearchInputViewController

- (TUIEmojiSearchInputViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)variantSelectorValueChanged:(id)changed
{
  selectedVariant = [changed selectedVariant];
  v5 = selectedVariant;
  if (selectedVariant)
  {
    string = [selectedVariant string];
    autocorrectedSearchQuery = self->_autocorrectedSearchQuery;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__TUIEmojiSearchInputViewController_variantSelectorValueChanged___block_invoke;
    v8[3] = &unk_1E72D83A0;
    v8[4] = self;
    [(TUIEmojiSearchInputViewController *)self _selectedEmojiString:string query:autocorrectedSearchQuery indexPath:0 completion:v8];
  }
}

void __65__TUIEmojiSearchInputViewController_variantSelectorValueChanged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _dismissVariantSelector];
  v2 = [*(*(a1 + 32) + 1040) collectionView];
  [v2 reloadData];
}

- (void)_dismissVariantSelector
{
  [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController setCellHighlightFrozen:0];
  [(TouchExclusionView *)self->_variantSelectorDismissOverlayView removeFromSuperview];
  variantSelectorDismissOverlayView = self->_variantSelectorDismissOverlayView;
  self->_variantSelectorDismissOverlayView = 0;

  [(TUIEmojiVariantSelectorView *)self->_variantSelectorView removeFromSuperview];
  variantSelectorView = self->_variantSelectorView;
  self->_variantSelectorView = 0;
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive
{
  inactiveCopy = inactive;
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  [delegate emojiSearchTextFieldDidBecomeInactive:inactiveCopy];

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession endSession];
  v6 = +[TUIInputAnalytics getIASignalGenmojiCreationEmojiSearchDismissed];
  [TUIInputAnalytics sendGenmojiCreationSignal:v6 payload:0];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive
{
  inactiveCopy = inactive;
  [(TUIEmojiSearchInputViewController *)self _dismissVariantSelector];
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  [delegate emojiSearchTextFieldWillBecomeInactive:inactiveCopy];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)active
{
  activeCopy = active;
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  [delegate emojiSearchTextFieldDidBecomeActive:activeCopy];

  collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  emojiSearchView = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  [MEMORY[0x1E69DCBB8] keyplanePadding];
  [emojiSearchView updateInsetsIfNeeded:?];

  [(TUIEmojiSearchInputViewController *)self updateConfigurationForRemoteSearchController];
  emojiSearchView2 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  searchTextField = [emojiSearchView2 searchTextField];
  text = [searchTextField text];

  if ([text length])
  {
    [(TUIEmojiSearchInputViewController *)self beginSearchForExactQuery:text autocorrectedQuery:&stru_1F03BA8F8];
  }

  date = [MEMORY[0x1E695DF00] date];
  lastActivationDate = self->_lastActivationDate;
  self->_lastActivationDate = date;

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession beginSessionWithInitialSearchQuery:text];
  v13 = +[TUIInputAnalytics getIASignalGenmojiCreationEmojiSearchInvoked];
  [TUIInputAnalytics sendGenmojiCreationSignal:v13 payload:0];
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)active
{
  activeCopy = active;
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  [delegate emojiSearchTextFieldWillBecomeActive:activeCopy];
}

- (void)emojiSearchResultsController:(id)controller didRequestVariantSelectorForEmojiToken:(id)token fromRect:(CGRect)rect
{
  if (!self->_variantSelectorView)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    tokenCopy = token;
    view = [(TUIEmojiSearchInputViewController *)self view];
    window = [view window];
    collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController collectionView];
    [window convertRect:collectionView fromView:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [[TUIEmojiVariantSelectorView alloc] initWithFrame:tokenCopy emojiToken:v10 originRect:v11, v12, v13, v19, v21, v23, v25];
    variantSelectorView = self->_variantSelectorView;
    self->_variantSelectorView = v26;

    [(TUIEmojiVariantSelectorView *)self->_variantSelectorView setDelegate:self];
    v28 = self->_variantSelectorView;
    emojiSearchView = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
    [emojiSearchView bounds];
    [(TUIEmojiVariantSelectorView *)v28 sizeThatFits:v30, v31];
    v33 = v32;
    v35 = v34;

    v76.origin.x = v19;
    v76.origin.y = v21;
    v76.size.width = v23;
    v76.size.height = v25;
    v36 = CGRectGetMaxY(v76) - v35;
    UIRectGetCenter();
    v38 = v37 + v33 * -0.5;
    if (v38 >= 0.0)
    {
      v78.origin.x = v37 + v33 * -0.5;
      v78.origin.y = v36;
      v78.size.width = v33;
      v78.size.height = v35;
      v72 = v36;
      MaxX = CGRectGetMaxX(v78);
      view2 = [(TUIEmojiSearchInputViewController *)self view];
      [view2 bounds];
      v73 = v35;
      v42 = v41;

      v43 = MaxX <= v42;
      v36 = v72;
      v35 = v73;
      if (!v43)
      {
        view3 = [(TUIEmojiSearchInputViewController *)self view];
        [view3 bounds];
        v46 = v45;
        v79.origin.x = v19;
        v79.origin.y = v21;
        v79.size.width = v23;
        v79.size.height = v25;
        v47 = v46 - CGRectGetMaxX(v79);
        v48 = *&TUIEmojiVariantSelectorBubbleRadius;

        if (v47 >= v48)
        {
          view4 = [(TUIEmojiSearchInputViewController *)self view];
          [view4 bounds];
          v38 = v50 - v33;
        }

        else
        {
          v80.origin.x = v19;
          v80.origin.y = v21;
          v80.size.width = v23;
          v80.size.height = v25;
          v38 = CGRectGetMaxX(v80) - v33;
        }

        v36 = v72;
        v35 = v73;
      }
    }

    else
    {
      v77.origin.x = v19;
      v77.origin.y = v21;
      v77.size.width = v23;
      v77.size.height = v25;
      if (CGRectGetMinX(v77) >= *&TUIEmojiVariantSelectorBubbleRadius)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v19;
      }
    }

    [(TUIEmojiVariantSelectorView *)self->_variantSelectorView setFrame:v38, v36, v33, v35];
    view5 = [(TUIEmojiSearchInputViewController *)self view];
    window2 = [view5 window];
    [window2 addSubview:self->_variantSelectorView];

    v53 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__didRecognizeVariantDismissGesture_];
    variantSelectorDismissGesture = self->_variantSelectorDismissGesture;
    self->_variantSelectorDismissGesture = v53;

    [(UITapGestureRecognizer *)self->_variantSelectorDismissGesture setCancelsTouchesInView:1];
    v55 = [TouchExclusionView alloc];
    view6 = [(TUIEmojiSearchInputViewController *)self view];
    window3 = [view6 window];
    [window3 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    variantCellContainerView = [(TUIEmojiVariantSelectorView *)self->_variantSelectorView variantCellContainerView];
    v67 = [(TouchExclusionView *)v55 initWithFrame:variantCellContainerView excludingView:v59, v61, v63, v65];
    variantSelectorDismissOverlayView = self->_variantSelectorDismissOverlayView;
    self->_variantSelectorDismissOverlayView = v67;

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v70 = [systemGrayColor colorWithAlphaComponent:0.01];
    [(TouchExclusionView *)self->_variantSelectorDismissOverlayView setBackgroundColor:v70];

    [(TouchExclusionView *)self->_variantSelectorDismissOverlayView addGestureRecognizer:self->_variantSelectorDismissGesture];
    view7 = [(TUIEmojiSearchInputViewController *)self view];
    window4 = [view7 window];
    [window4 addSubview:self->_variantSelectorDismissOverlayView];
  }
}

- (void)_selectedEmojiString:(id)string query:(id)query indexPath:(id)path completion:(id)completion
{
  stringCopy = string;
  queryCopy = query;
  pathCopy = path;
  completionCopy = completion;
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  lastUsedInputModeForCurrentContext = [mEMORY[0x1E69DCBF0] lastUsedInputModeForCurrentContext];
  primaryLanguage = [lastUsedInputModeForCurrentContext primaryLanguage];
  v16 = [primaryLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"en_US";
  }

  v18 = [MEMORY[0x1E69DCBC8] hasVariantsForEmoji:stringCopy];
  v19 = [MEMORY[0x1E69DCBC0] emojiWithString:stringCopy withVariantMask:v18];
  mEMORY[0x1E69DCBD8] = [MEMORY[0x1E69DCBD8] sharedInstance];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    if (pathCopy)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
    }

    else
    {
      v22 = &unk_1F03D8E10;
    }

    mEMORY[0x1E69DCBD8]2 = [MEMORY[0x1E69DCBD8] sharedInstance];
    [mEMORY[0x1E69DCBD8]2 emojiUsedFromEmojiKeyboardSearch:v19 inputModeIdentifier:v17 resultIndex:v22 query:queryCopy completionHandler:completionCopy];
  }

  else
  {
    mEMORY[0x1E69DCBD8]3 = [MEMORY[0x1E69DCBD8] sharedInstance];
    [mEMORY[0x1E69DCBD8]3 emojiUsed:v19 language:v17];

    if (completionCopy)
    {
      dispatch_async(MEMORY[0x1E69E96A0], completionCopy);
    }
  }

  [(_UIKBFeedbackGenerating *)self->_feedbackGenerator actionOccurred:1];
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    delegate2 = [(TUIEmojiSearchInputViewController *)self delegate];
    [delegate2 emojiSearchWillInsertEmoji:stringCopy forSearchQuery:self->_autocorrectedSearchQuery];
  }

  textDocumentProxy = [(UIInputViewController *)self textDocumentProxy];
  [textDocumentProxy insertText:stringCopy];

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession emojiInserted:stringCopy];
}

- (void)emojiSearchSource:(id)source didProduceResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  resultsCopy = results;
  queryCopy = query;
  autocorrectedQueryCopy = autocorrectedQuery;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__TUIEmojiSearchInputViewController_emojiSearchSource_didProduceResults_forExactQuery_autocorrectedQuery___block_invoke;
  aBlock[3] = &unk_1E72D8030;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  if (self->_resultsUpdateRateLimitTimer)
  {
    objc_storeStrong(&self->_rateLimitedResults, results);
    v14 = queryCopy;
    rateLimitedSearchQuery = self->_rateLimitedSearchQuery;
    self->_rateLimitedSearchQuery = v14;
LABEL_5:

    goto LABEL_6;
  }

  [(TUIEmojiSearchInputViewController *)self _displayResults:resultsCopy forExactQuery:queryCopy autocorrectedQuery:autocorrectedQueryCopy];
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    rateLimitedSearchQuery = [(TUIEmojiSearchInputViewController *)self delegate];
    [rateLimitedSearchQuery emojiSearchDidReceiveResults:resultsCopy forExactQuery:queryCopy autocorrectedQuery:autocorrectedQueryCopy];
    goto LABEL_5;
  }

LABEL_6:
  [(NSTimer *)self->_resultsUpdateRateLimitTimer invalidate];
  v18 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v13 block:0.15];
  resultsUpdateRateLimitTimer = self->_resultsUpdateRateLimitTimer;
  self->_resultsUpdateRateLimitTimer = v18;
}

void __106__TUIEmojiSearchInputViewController_emojiSearchSource_didProduceResults_forExactQuery_autocorrectedQuery___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  v4 = v3[137];
  if (v4)
  {
    [v3 _displayResults:v4 forExactQuery:v3[138] autocorrectedQuery:v3[142]];
    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    v3 = *(a1 + 32);
    if (v6)
    {
      v7 = [v3 delegate];
      [v7 emojiSearchDidReceiveResults:*(*(a1 + 32) + 1096) forExactQuery:*(*(a1 + 32) + 1104) autocorrectedQuery:*(*(a1 + 32) + 1136)];

      v3 = *(a1 + 32);
    }
  }

  v8 = v3[137];
  v3[137] = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 1104);
  *(v9 + 1104) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 1088);
  *(v11 + 1088) = 0;
}

- (void)emojiSearchTextFieldWillClear:(id)clear
{
  clearCopy = clear;
  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession clearButtonPressed];
  delegate = [(TUIEmojiSearchInputViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUIEmojiSearchInputViewController *)self delegate];
    [delegate2 emojiSearchTextFieldDidReset:clearCopy];
  }
}

- (void)emojiSearchTextField:(id)field didChangeSearchString:(id)string
{
  fieldCopy = field;
  v7 = MEMORY[0x1E696AEC0];
  v20 = -4;
  stringCopy = string;
  v9 = [v7 stringWithCharacters:&v20 length:1];
  v10 = [stringCopy stringByReplacingOccurrencesOfString:v9 withString:&stru_1F03BA8F8];

  autocorrectedSearchQuery = self->_autocorrectedSearchQuery;
  self->_autocorrectedSearchQuery = 0;

  v12 = [v10 copy];
  exactSearchQuery = self->_exactSearchQuery;
  self->_exactSearchQuery = v12;

  if ([v10 length] >= 2 && self->_canAutocorrectWithCurrentInputMode)
  {
    [(NSTimer *)self->_waitForAutocorrectionDelayTimer invalidate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__TUIEmojiSearchInputViewController_emojiSearchTextField_didChangeSearchString___block_invoke;
    v19[3] = &unk_1E72D8030;
    v19[4] = self;
    v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v19 block:0.15];
    waitForAutocorrectionDelayTimer = self->_waitForAutocorrectionDelayTimer;
    self->_waitForAutocorrectionDelayTimer = v14;
  }

  else
  {
    [(TUIEmojiSearchInputViewController *)self beginSearchForExactQuery:v10 autocorrectedQuery:&stru_1F03BA8F8];
  }

  if (![v10 length])
  {
    delegate = [(TUIEmojiSearchInputViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate2 = [(TUIEmojiSearchInputViewController *)self delegate];
      [delegate2 emojiSearchTextFieldDidReset:fieldCopy];
    }
  }

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession searchQueryWasChangedTo:v10];
}

uint64_t __80__TUIEmojiSearchInputViewController_emojiSearchTextField_didChangeSearchString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[142])
  {
    [v2 beginSearchForExactQuery:v2[141] autocorrectedQuery:&stru_1F03BA8F8];
    v2 = *(a1 + 32);
  }

  v3 = v2[140];
  v2[140] = 0;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)beginSearchForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  queryCopy = query;
  autocorrectedQueryCopy = autocorrectedQuery;
  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = getSTKStickerSearchQueryClass_softClass;
    v23 = getSTKStickerSearchQueryClass_softClass;
    if (!getSTKStickerSearchQueryClass_softClass)
    {
      StickerKitLibraryCore();
      v21[3] = objc_getClass("STKStickerSearchQuery");
      getSTKStickerSearchQueryClass_softClass = v21[3];
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    v10 = objc_alloc_init(v8);
    [v10 setExactQuery:queryCopy];
    [v10 setAutocorrectedQuery:autocorrectedQueryCopy];
    locale = [(TUIEmojiSearchSource *)self->_emojiSearchSource locale];
    localeIdentifier = [locale localeIdentifier];
    [v10 setLocale:localeIdentifier];

    multilingualSearchLocales = [(TUIEmojiSearchSource *)self->_emojiSearchSource multilingualSearchLocales];
    [v10 setMultilingualSearchLocales:multilingualSearchLocales];

    [v10 setSupportsImages:{+[TUIEmojiSearchView shouldShowImages](TUIEmojiSearchView, "shouldShowImages")}];
    if (objc_opt_respondsToSelector())
    {
      [v10 setSupportsGenmoji:{+[TUIEmojiSearchView shouldShowGenmoji](TUIEmojiSearchView, "shouldShowGenmoji")}];
    }

    delegate = [(TUIEmojiSearchInputViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0 || (-[TUIEmojiSearchInputViewController delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), -[TUIEmojiSearchView searchTextField](self->_emojiSearchView, "searchTextField"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 emojiSearchTextField:v17 shouldSendQuery:v10], v17, v16, v18))
    {
      remoteSearchViewController = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
      [remoteSearchViewController searchWithQuery:v10];
    }
  }

  else
  {
    [(TUIEmojiSearchSource *)self->_emojiSearchSource beginSearchForExactQuery:queryCopy autocorrectedQuery:autocorrectedQueryCopy];
  }
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  +[TUIEmojiSearchTextField preferredHeight];
  v6 = v5;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  emojiSearchView = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  isCollapsed = [emojiSearchView isCollapsed];

  if (userInterfaceIdiom == 1 && horizontalSizeClass != 1)
  {
    if (isCollapsed)
    {
      if (!TUIRemoteEmojiSearchViewControllerEnabled())
      {
        v6 = 0.0;
      }

      goto LABEL_15;
    }

    v13 = 2.0;
LABEL_14:
    v6 = v6 + v13;
    goto LABEL_15;
  }

  if (isCollapsed)
  {
    goto LABEL_15;
  }

  childPredictionViewController = self->_childPredictionViewController;
  if (!childPredictionViewController)
  {
    +[TUIEmojiSearchTextField preferredHeight];
    goto LABEL_14;
  }

  [(UIPredictiveViewController *)childPredictionViewController preferredHeightForTraitCollection:collectionCopy];
  v6 = v6 + v12;
  if ([(TUIEmojiSearchInputViewController *)self usesFloatingStyle])
  {
    v6 = v6 + -7.0;
  }

LABEL_15:

  return v6;
}

- (void)updateConfigurationForRemoteSearchController
{
  if (self->_remoteSearchViewController)
  {
    self->_delayedUpdateConfigurationForRemoteSearchController = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getSTKStickerSearchConfigurationClass_softClass;
    v13 = getSTKStickerSearchConfigurationClass_softClass;
    if (!getSTKStickerSearchConfigurationClass_softClass)
    {
      StickerKitLibraryCore();
      v11[3] = objc_getClass("STKStickerSearchConfiguration");
      getSTKStickerSearchConfigurationClass_softClass = v11[3];
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    +[TUIEmojiSearchResultsCollectionViewController emojiFontSize];
    [v5 setFontSize:?];
    view = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
    [view layoutMargins];
    [v5 setMargin:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v8 minimumLineSpacing];
    [v5 setSpacing:?];

    if (objc_opt_respondsToSelector())
    {
      view2 = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
      [v5 setVisible:{objc_msgSend(view2, "isHiddenOrHasHiddenAncestor") ^ 1}];
    }

    [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController configureWithConfiguration:v5];
  }

  else
  {
    self->_delayedUpdateConfigurationForRemoteSearchController = 1;
  }
}

- (void)autocorrectionListDidBecomeAvailable:(id)available
{
  autocorrection = [available autocorrection];
  if (autocorrection)
  {
    exactSearchQuery = self->_exactSearchQuery;
    v11 = autocorrection;
    input = [autocorrection input];
    candidate = [v11 candidate];
    v8 = [(NSString *)exactSearchQuery stringByReplacingOccurrencesOfString:input withString:candidate options:12 range:0, [(NSString *)self->_exactSearchQuery length]];

    autocorrectedSearchQuery = self->_autocorrectedSearchQuery;
    self->_autocorrectedSearchQuery = v8;
    v10 = v8;

    [(TUIEmojiSearchInputViewController *)self beginSearchForExactQuery:self->_exactSearchQuery autocorrectedQuery:v10];
    autocorrection = v11;
  }
}

- (void)_displayResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  resultsCopy = results;
  autocorrectedQueryCopy = autocorrectedQuery;
  v9 = [query length];
  v10 = [autocorrectedQueryCopy length];

  if (!(v9 + v10))
  {
    suggestedEmojis = [(TUIEmojiSearchSource *)self->_emojiSearchSource suggestedEmojis];

    resultsCopy = suggestedEmojis;
  }

  displayedEmojis = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController displayedEmojis];
  v13 = [resultsCopy isEqualToArray:displayedEmojis];

  if ((v13 & 1) == 0)
  {
    [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController resetScrollPositionAnimated:0];
  }

  [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController setDisplayedEmojis:resultsCopy verbatimSkinTones:[(TUIEmojiSearchSource *)self->_emojiSearchSource shouldSupplyVerbatimResultsFor:resultsCopy] animated:1];
}

- (void)setChildPredictionViewController:(id)controller
{
  controllerCopy = controller;
  [(UIPredictiveViewController *)self->_childPredictionViewController removeFromParentViewController];
  view = [(UIPredictiveViewController *)self->_childPredictionViewController view];
  [view removeFromSuperview];

  childPredictionViewController = self->_childPredictionViewController;
  self->_childPredictionViewController = controllerCopy;
  v8 = controllerCopy;

  view2 = [(UIPredictiveViewController *)v8 view];
  [(TUIEmojiSearchView *)self->_emojiSearchView setPredictionView:view2];

  [(TUIEmojiSearchInputViewController *)self addChildViewController:v8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = TUIEmojiSearchInputViewController;
  coordinatorCopy = coordinator;
  [(TUIEmojiSearchInputViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__TUIEmojiSearchInputViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72D8008;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

uint64_t __88__TUIEmojiSearchInputViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1200);
  [MEMORY[0x1E69DCBB8] keyplanePadding];

  return [v1 updateInsetsIfNeeded:?];
}

- (void)traitCollectionDidChange:(id)change
{
  horizontalSizeClass = [change horizontalSizeClass];
  traitCollection = [(TUIEmojiSearchInputViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    traitCollection2 = [(TUIEmojiSearchInputViewController *)self traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 1)
    {
      traitCollection3 = [(TUIEmojiSearchInputViewController *)self traitCollection];
      -[TUIEmojiSearchInputViewController setUsesFloatingStyle:](self, "setUsesFloatingStyle:", [traitCollection3 horizontalSizeClass] == 1);
    }

    else
    {
      [(TUIEmojiSearchInputViewController *)self setUsesFloatingStyle:0];
    }

    emojiSearchView = self->_emojiSearchView;
    traitCollection4 = [(TUIEmojiSearchInputViewController *)self traitCollection];
    -[TUIEmojiSearchView transitionToCompactLayout:](emojiSearchView, "transitionToCompactLayout:", [traitCollection4 horizontalSizeClass] == 1);
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = TUIEmojiSearchInputViewController;
  [(TUIEmojiSearchInputViewController *)&v7 viewDidLayoutSubviews];
  [(TUIEmojiSearchInputViewController *)self _keyboardInsets];
  v4 = v3;
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:v3];
  [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-v4];
  emojiSearchView = self->_emojiSearchView;
  traitCollection = [(TUIEmojiSearchInputViewController *)self traitCollection];
  -[TUIEmojiSearchView transitionToCompactLayout:](emojiSearchView, "transitionToCompactLayout:", [traitCollection horizontalSizeClass] == 1);
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchInputViewController;
  [(TUIEmojiSearchInputViewController *)&v15 viewWillAppear:appear];
  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__TUIEmojiSearchInputViewController_viewWillAppear___block_invoke;
    block[3] = &unk_1E72D83A0;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    searchTextField = [(TUIEmojiSearchView *)self->_emojiSearchView searchTextField];
    if (!searchTextField || (v6 = searchTextField, -[TUIEmojiSearchView searchTextField](self->_emojiSearchView, "searchTextField"), v7 = objc_claimAutoreleasedReturnValue(), [v7 text], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v6, !v9))
    {
      [(TUIEmojiSearchInputViewController *)self _displayResults:MEMORY[0x1E695E0F0] forExactQuery:&stru_1F03BA8F8 autocorrectedQuery:&stru_1F03BA8F8];
    }
  }

  if (([(_UIKBFeedbackGenerating *)self->_feedbackGenerator isActive]& 1) == 0)
  {
    [(_UIKBFeedbackGenerating *)self->_feedbackGenerator activateWithCompletionBlock:0];
  }

  lastActivationDate = self->_lastActivationDate;
  if (lastActivationDate)
  {
    [(NSDate *)lastActivationDate timeIntervalSinceNow];
    if (v11 < -480.0)
    {
      searchTextField2 = [(TUIEmojiSearchView *)self->_emojiSearchView searchTextField];
      [searchTextField2 setText:&stru_1F03BA8F8];
    }
  }

  v13 = +[TUIInputAnalytics getIASignalGenmojiCreationEmojiKeyPlaneSwitched];
  [TUIInputAnalytics sendGenmojiCreationSignal:v13 payload:0];
}

void __52__TUIEmojiSearchInputViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1[150] searchTextField];
  v2 = [v3 text];
  [v1 beginSearchForExactQuery:v2 autocorrectedQuery:&stru_1F03BA8F8];
}

- (void)_showGenmojiCreation:(id)creation
{
  v14 = *MEMORY[0x1E69E9840];
  creationCopy = creation;
  v5 = TUIEmojiSearchInputViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [creationCopy name];
    v12 = 138412290;
    v13 = name;
    _os_log_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEFAULT, "received %@ notification", &v12, 0xCu);
  }

  remoteSearchViewController = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    remoteSearchViewController2 = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
    [remoteSearchViewController2 presentEmojiGenerationControllerWithInputString:&stru_1F03BA8F8];

    [TUIInputAnalytics sendGenmojiCreationSignal:@"MessagesSendMenuButtonPressed" payload:0];
  }

  else
  {
    v10 = TUIEmojiSearchInputViewLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      remoteSearchViewController = self->_remoteSearchViewController;
      v12 = 138412290;
      v13 = remoteSearchViewController;
      _os_log_error_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_ERROR, "Cannot show Genmoji creation view. %@ does not respond to the present method.", &v12, 0xCu);
    }
  }
}

- (void)_keyboardInputModeDidChange:(id)change
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];

  if ([currentInputMode isEmojiInputMode])
  {
    mEMORY[0x1E69DCBF0]2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v6 = [mEMORY[0x1E69DCBF0]2 currentSystemInputModeExcludingEmoji:1];

    v7 = v6;
  }

  else
  {
    v7 = currentInputMode;
  }

  v24 = v7;
  primaryLanguage = [v7 primaryLanguage];
  if ([primaryLanguage isEqual:@"intl"])
  {
    _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];

    primaryLanguage = _deviceLanguage;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictationLanguage = [v24 dictationLanguage];

    primaryLanguage = dictationLanguage;
  }

  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:primaryLanguage];
  v12 = [[TUIEmojiSearchSource alloc] initWithLocale:v11];
  emojiSearchSource = self->_emojiSearchSource;
  self->_emojiSearchSource = v12;

  [(TUIEmojiSearchSource *)self->_emojiSearchSource setDelegate:self];
  multilingualLanguages = [v24 multilingualLanguages];
  v15 = [multilingualLanguages count];

  if (v15)
  {
    multilingualLanguages2 = [v24 multilingualLanguages];
    [(TUIEmojiSearchSource *)self->_emojiSearchSource setMultilingualSearchLocales:multilingualLanguages2];
  }

  v17 = [[TUIEmojiSearchAnalyticsSession alloc] initWithLocale:v11];
  analyticsSession = self->_analyticsSession;
  self->_analyticsSession = v17;

  emojiSearchView = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];
  isActive = [searchTextField isActive];

  if (isActive)
  {
    [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession beginSessionWithInitialSearchQuery:self->_exactSearchQuery];
  }

  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  self->_canAutocorrectWithCurrentInputMode = [activeInstance usesCandidateSelection] ^ 1;
}

- (UIEdgeInsets)_keyboardInsets
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  traitCollection = [(TUIEmojiSearchInputViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1 || -[TUIEmojiSearchInputViewController usesFloatingStyle](self, "usesFloatingStyle"))
  {
  }

  else
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v14 = [activeKeyboard interfaceOrientation] - 3;

    if (v14 <= 1)
    {
      [MEMORY[0x1E69DCBB8] keyplanePadding];
      v3 = v15;
      v4 = v16;
      v5 = v17;
      v6 = v18;
    }
  }

  usesFloatingStyle = [(TUIEmojiSearchInputViewController *)self usesFloatingStyle];
  if (usesFloatingStyle)
  {
    v9 = -6.0;
  }

  else
  {
    v9 = v6;
  }

  if (usesFloatingStyle)
  {
    v10 = -6.0;
  }

  else
  {
    v10 = v4;
  }

  v11 = v3;
  v12 = v5;
  result.right = v9;
  result.bottom = v12;
  result.left = v10;
  result.top = v11;
  return result;
}

- (id)remoteSearchViewController
{
  if (!self->_remoteSearchViewController)
  {
    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      if (getSTKStickerRemoteSearchViewControllerClass())
      {
        v3 = objc_alloc_init(getSTKStickerRemoteSearchViewControllerClass());
        remoteSearchViewController = self->_remoteSearchViewController;
        self->_remoteSearchViewController = v3;

        [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController setDelegate:self];
        view = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
        [(TUIEmojiSearchView *)self->_emojiSearchView setResultsCollectionView:view];

        [(TUIEmojiSearchInputViewController *)self addChildViewController:self->_remoteSearchViewController];
        if (self->_delayedUpdateConfigurationForRemoteSearchController)
        {
          [(TUIEmojiSearchInputViewController *)self updateConfigurationForRemoteSearchController];
        }
      }
    }
  }

  v6 = self->_remoteSearchViewController;

  return v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TUIEmojiSearchInputViewController;
  [(TUIEmojiSearchInputViewController *)&v5 viewWillDisappear:disappear];
  [(NSTimer *)self->_resultsUpdateRateLimitTimer invalidate];
  resultsUpdateRateLimitTimer = self->_resultsUpdateRateLimitTimer;
  self->_resultsUpdateRateLimitTimer = 0;

  if ([(_UIKBFeedbackGenerating *)self->_feedbackGenerator isActive])
  {
    [(_UIKBFeedbackGenerating *)self->_feedbackGenerator deactivate];
  }
}

- (void)viewDidLoad
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = TUIEmojiSearchInputViewController;
  [(UIInputViewController *)&v25 viewDidLoad];
  view = [(TUIEmojiSearchInputViewController *)self view];
  [view addSubview:self->_emojiSearchView];

  leadingAnchor = [(TUIEmojiSearchView *)self->_emojiSearchView leadingAnchor];
  view2 = [(TUIEmojiSearchInputViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  leadingConstraint = self->_leadingConstraint;
  self->_leadingConstraint = v7;

  trailingAnchor = [(TUIEmojiSearchView *)self->_emojiSearchView trailingAnchor];
  view3 = [(TUIEmojiSearchInputViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  trailingConstraint = self->_trailingConstraint;
  self->_trailingConstraint = v12;

  v14 = MEMORY[0x1E696ACD8];
  v15 = self->_trailingConstraint;
  v26[0] = self->_leadingConstraint;
  v26[1] = v15;
  topAnchor = [(TUIEmojiSearchView *)self->_emojiSearchView topAnchor];
  view4 = [(TUIEmojiSearchInputViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v19;
  bottomAnchor = [(TUIEmojiSearchView *)self->_emojiSearchView bottomAnchor];
  view5 = [(TUIEmojiSearchInputViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v14 activateConstraints:v24];
}

- (void)loadView
{
  v3 = [TUIEmojiSearchInputView alloc];
  v4 = [(UIInputView *)v3 initWithFrame:0 inputViewStyle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIInputViewController *)self setView:v4];
}

- (TUIEmojiSearchInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v28.receiver = self;
  v28.super_class = TUIEmojiSearchInputViewController;
  v4 = [(UIInputViewController *)&v28 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [TUIEmojiSearchView alloc];
    v6 = [(TUIEmojiSearchView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    emojiSearchView = v4->_emojiSearchView;
    v4->_emojiSearchView = v6;

    [(TUIEmojiSearchView *)v4->_emojiSearchView setTranslatesAutoresizingMaskIntoConstraints:0];
    searchTextField = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [searchTextField setSearchDelegate:v4];

    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      objc_initWeak(&location, v4);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke;
      v25[3] = &unk_1E72D7FD8;
      objc_copyWeak(&v26, &location);
      [(TUIEmojiSearchView *)v4->_emojiSearchView setLayoutInvalidationCallback:v25];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_2;
      v23[3] = &unk_1E72D7FD8;
      objc_copyWeak(&v24, &location);
      [(TUIEmojiSearchView *)v4->_emojiSearchView setCreateButtonCallback:v23];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_3;
      v21[3] = &unk_1E72D7FD8;
      objc_copyWeak(&v22, &location);
      [(TUIEmojiSearchView *)v4->_emojiSearchView setCreateStickerFromPhotosButtonCallback:v21];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_4;
      v19[3] = &unk_1E72D7FD8;
      objc_copyWeak(&v20, &location);
      [(TUIEmojiSearchView *)v4->_emojiSearchView setPresentAvatarEditorButtonCallback:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    searchTextField2 = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [searchTextField2 setAutocorrectionType:1];

    searchTextField3 = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [searchTextField3 setAutocapitalizationType:0];

    if (!TUIRemoteEmojiSearchViewControllerEnabled() || !getSTKStickerRemoteSearchViewControllerClass())
    {
      v11 = objc_alloc_init(TUIEmojiSearchResultsCollectionViewController);
      resultsViewController = v4->_resultsViewController;
      v4->_resultsViewController = v11;

      [(TUIEmojiSearchResultsCollectionViewController *)v4->_resultsViewController setDelegate:v4];
      collectionView = [(TUIEmojiSearchResultsCollectionViewController *)v4->_resultsViewController collectionView];
      [(TUIEmojiSearchView *)v4->_emojiSearchView setResultsCollectionView:collectionView];

      [(TUIEmojiSearchInputViewController *)v4 addChildViewController:v4->_resultsViewController];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__keyboardInputModeDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__showGenmojiCreation_ name:@"TUIShowGenmojiCreationNotification" object:0];

    [(TUIEmojiSearchInputViewController *)v4 _keyboardInputModeDidChange:0];
    v16 = [MEMORY[0x1E69DD590] feedbackGeneratorWithView:v4->_emojiSearchView];
    feedbackGenerator = v4->_feedbackGenerator;
    v4->_feedbackGenerator = v16;
  }

  return v4;
}

void __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateConfigurationForRemoteSearchController];
}

void __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteSearchViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = +[TUIInputAnalytics getIASignalGenmojiCreationGenmojiButtonPressed];
    [TUIInputAnalytics sendGenmojiCreationSignal:v3 payload:0];

    v4 = [WeakRetained remoteSearchViewController];
    v5 = [WeakRetained[150] searchTextField];
    v6 = [v5 text];
    [v4 presentEmojiGenerationControllerWithInputString:v6];
  }
}

void __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteSearchViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained remoteSearchViewController];
    [v3 presentCreateStickerPhotoPickerController];
  }
}

void __60__TUIEmojiSearchInputViewController_initWithNibName_bundle___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteSearchViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained remoteSearchViewController];
    [v3 presentAvatarEditor];
  }
}

@end