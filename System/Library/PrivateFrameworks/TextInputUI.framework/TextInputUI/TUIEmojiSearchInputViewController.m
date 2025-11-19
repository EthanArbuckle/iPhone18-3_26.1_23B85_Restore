@interface TUIEmojiSearchInputViewController
- (TUIEmojiSearchInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TUIEmojiSearchInputViewControllerDelegate)delegate;
- (UIEdgeInsets)_keyboardInsets;
- (double)preferredHeightForTraitCollection:(id)a3;
- (id)remoteSearchViewController;
- (void)_dismissVariantSelector;
- (void)_displayResults:(id)a3 forExactQuery:(id)a4 autocorrectedQuery:(id)a5;
- (void)_keyboardInputModeDidChange:(id)a3;
- (void)_selectedEmojiString:(id)a3 query:(id)a4 indexPath:(id)a5 completion:(id)a6;
- (void)_showGenmojiCreation:(id)a3;
- (void)autocorrectionListDidBecomeAvailable:(id)a3;
- (void)beginSearchForExactQuery:(id)a3 autocorrectedQuery:(id)a4;
- (void)emojiSearchResultsController:(id)a3 didRequestVariantSelectorForEmojiToken:(id)a4 fromRect:(CGRect)a5;
- (void)emojiSearchSource:(id)a3 didProduceResults:(id)a4 forExactQuery:(id)a5 autocorrectedQuery:(id)a6;
- (void)emojiSearchTextField:(id)a3 didChangeSearchString:(id)a4;
- (void)emojiSearchTextFieldDidBecomeActive:(id)a3;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeActive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillClear:(id)a3;
- (void)loadView;
- (void)setChildPredictionViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConfigurationForRemoteSearchController;
- (void)variantSelectorValueChanged:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TUIEmojiSearchInputViewController

- (TUIEmojiSearchInputViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)variantSelectorValueChanged:(id)a3
{
  v4 = [a3 selectedVariant];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 string];
    autocorrectedSearchQuery = self->_autocorrectedSearchQuery;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__TUIEmojiSearchInputViewController_variantSelectorValueChanged___block_invoke;
    v8[3] = &unk_1E72D83A0;
    v8[4] = self;
    [(TUIEmojiSearchInputViewController *)self _selectedEmojiString:v6 query:autocorrectedSearchQuery indexPath:0 completion:v8];
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

- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3
{
  v4 = a3;
  v5 = [(TUIEmojiSearchInputViewController *)self delegate];
  [v5 emojiSearchTextFieldDidBecomeInactive:v4];

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession endSession];
  v6 = +[TUIInputAnalytics getIASignalGenmojiCreationEmojiSearchDismissed];
  [TUIInputAnalytics sendGenmojiCreationSignal:v6 payload:0];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3
{
  v4 = a3;
  [(TUIEmojiSearchInputViewController *)self _dismissVariantSelector];
  v5 = [(TUIEmojiSearchInputViewController *)self delegate];
  [v5 emojiSearchTextFieldWillBecomeInactive:v4];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = [(TUIEmojiSearchInputViewController *)self delegate];
  [v5 emojiSearchTextFieldDidBecomeActive:v4];

  v6 = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController collectionView];
  v7 = [v6 collectionViewLayout];
  [v7 invalidateLayout];

  v8 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  [MEMORY[0x1E69DCBB8] keyplanePadding];
  [v8 updateInsetsIfNeeded:?];

  [(TUIEmojiSearchInputViewController *)self updateConfigurationForRemoteSearchController];
  v9 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  v10 = [v9 searchTextField];
  v14 = [v10 text];

  if ([v14 length])
  {
    [(TUIEmojiSearchInputViewController *)self beginSearchForExactQuery:v14 autocorrectedQuery:&stru_1F03BA8F8];
  }

  v11 = [MEMORY[0x1E695DF00] date];
  lastActivationDate = self->_lastActivationDate;
  self->_lastActivationDate = v11;

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession beginSessionWithInitialSearchQuery:v14];
  v13 = +[TUIInputAnalytics getIASignalGenmojiCreationEmojiSearchInvoked];
  [TUIInputAnalytics sendGenmojiCreationSignal:v13 payload:0];
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)a3
{
  v4 = a3;
  v5 = [(TUIEmojiSearchInputViewController *)self delegate];
  [v5 emojiSearchTextFieldWillBecomeActive:v4];
}

- (void)emojiSearchResultsController:(id)a3 didRequestVariantSelectorForEmojiToken:(id)a4 fromRect:(CGRect)a5
{
  if (!self->_variantSelectorView)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = a4;
    v15 = [(TUIEmojiSearchInputViewController *)self view];
    v16 = [v15 window];
    v17 = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController collectionView];
    [v16 convertRect:v17 fromView:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [[TUIEmojiVariantSelectorView alloc] initWithFrame:v14 emojiToken:v10 originRect:v11, v12, v13, v19, v21, v23, v25];
    variantSelectorView = self->_variantSelectorView;
    self->_variantSelectorView = v26;

    [(TUIEmojiVariantSelectorView *)self->_variantSelectorView setDelegate:self];
    v28 = self->_variantSelectorView;
    v29 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
    [v29 bounds];
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
      v40 = [(TUIEmojiSearchInputViewController *)self view];
      [v40 bounds];
      v73 = v35;
      v42 = v41;

      v43 = MaxX <= v42;
      v36 = v72;
      v35 = v73;
      if (!v43)
      {
        v44 = [(TUIEmojiSearchInputViewController *)self view];
        [v44 bounds];
        v46 = v45;
        v79.origin.x = v19;
        v79.origin.y = v21;
        v79.size.width = v23;
        v79.size.height = v25;
        v47 = v46 - CGRectGetMaxX(v79);
        v48 = *&TUIEmojiVariantSelectorBubbleRadius;

        if (v47 >= v48)
        {
          v49 = [(TUIEmojiSearchInputViewController *)self view];
          [v49 bounds];
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
    v51 = [(TUIEmojiSearchInputViewController *)self view];
    v52 = [v51 window];
    [v52 addSubview:self->_variantSelectorView];

    v53 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__didRecognizeVariantDismissGesture_];
    variantSelectorDismissGesture = self->_variantSelectorDismissGesture;
    self->_variantSelectorDismissGesture = v53;

    [(UITapGestureRecognizer *)self->_variantSelectorDismissGesture setCancelsTouchesInView:1];
    v55 = [TouchExclusionView alloc];
    v56 = [(TUIEmojiSearchInputViewController *)self view];
    v57 = [v56 window];
    [v57 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = [(TUIEmojiVariantSelectorView *)self->_variantSelectorView variantCellContainerView];
    v67 = [(TouchExclusionView *)v55 initWithFrame:v66 excludingView:v59, v61, v63, v65];
    variantSelectorDismissOverlayView = self->_variantSelectorDismissOverlayView;
    self->_variantSelectorDismissOverlayView = v67;

    v69 = [MEMORY[0x1E69DC888] systemGrayColor];
    v70 = [v69 colorWithAlphaComponent:0.01];
    [(TouchExclusionView *)self->_variantSelectorDismissOverlayView setBackgroundColor:v70];

    [(TouchExclusionView *)self->_variantSelectorDismissOverlayView addGestureRecognizer:self->_variantSelectorDismissGesture];
    v74 = [(TUIEmojiSearchInputViewController *)self view];
    v71 = [v74 window];
    [v71 addSubview:self->_variantSelectorDismissOverlayView];
  }
}

- (void)_selectedEmojiString:(id)a3 query:(id)a4 indexPath:(id)a5 completion:(id)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v14 = [v13 lastUsedInputModeForCurrentContext];
  v15 = [v14 primaryLanguage];
  v16 = [v15 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"en_US";
  }

  v18 = [MEMORY[0x1E69DCBC8] hasVariantsForEmoji:v29];
  v19 = [MEMORY[0x1E69DCBC0] emojiWithString:v29 withVariantMask:v18];
  v20 = [MEMORY[0x1E69DCBD8] sharedInstance];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    if (v11)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "item")}];
    }

    else
    {
      v22 = &unk_1F03D8E10;
    }

    v24 = [MEMORY[0x1E69DCBD8] sharedInstance];
    [v24 emojiUsedFromEmojiKeyboardSearch:v19 inputModeIdentifier:v17 resultIndex:v22 query:v10 completionHandler:v12];
  }

  else
  {
    v23 = [MEMORY[0x1E69DCBD8] sharedInstance];
    [v23 emojiUsed:v19 language:v17];

    if (v12)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }

  [(_UIKBFeedbackGenerating *)self->_feedbackGenerator actionOccurred:1];
  v25 = [(TUIEmojiSearchInputViewController *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [(TUIEmojiSearchInputViewController *)self delegate];
    [v27 emojiSearchWillInsertEmoji:v29 forSearchQuery:self->_autocorrectedSearchQuery];
  }

  v28 = [(UIInputViewController *)self textDocumentProxy];
  [v28 insertText:v29];

  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession emojiInserted:v29];
}

- (void)emojiSearchSource:(id)a3 didProduceResults:(id)a4 forExactQuery:(id)a5 autocorrectedQuery:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__TUIEmojiSearchInputViewController_emojiSearchSource_didProduceResults_forExactQuery_autocorrectedQuery___block_invoke;
  aBlock[3] = &unk_1E72D8030;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  if (self->_resultsUpdateRateLimitTimer)
  {
    objc_storeStrong(&self->_rateLimitedResults, a4);
    v14 = v11;
    rateLimitedSearchQuery = self->_rateLimitedSearchQuery;
    self->_rateLimitedSearchQuery = v14;
LABEL_5:

    goto LABEL_6;
  }

  [(TUIEmojiSearchInputViewController *)self _displayResults:v10 forExactQuery:v11 autocorrectedQuery:v12];
  v16 = [(TUIEmojiSearchInputViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    rateLimitedSearchQuery = [(TUIEmojiSearchInputViewController *)self delegate];
    [rateLimitedSearchQuery emojiSearchDidReceiveResults:v10 forExactQuery:v11 autocorrectedQuery:v12];
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

- (void)emojiSearchTextFieldWillClear:(id)a3
{
  v7 = a3;
  [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession clearButtonPressed];
  v4 = [(TUIEmojiSearchInputViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUIEmojiSearchInputViewController *)self delegate];
    [v6 emojiSearchTextFieldDidReset:v7];
  }
}

- (void)emojiSearchTextField:(id)a3 didChangeSearchString:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v20 = -4;
  v8 = a4;
  v9 = [v7 stringWithCharacters:&v20 length:1];
  v10 = [v8 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F03BA8F8];

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
    v16 = [(TUIEmojiSearchInputViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(TUIEmojiSearchInputViewController *)self delegate];
      [v18 emojiSearchTextFieldDidReset:v6];
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

- (void)beginSearchForExactQuery:(id)a3 autocorrectedQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [v10 setExactQuery:v6];
    [v10 setAutocorrectedQuery:v7];
    v11 = [(TUIEmojiSearchSource *)self->_emojiSearchSource locale];
    v12 = [v11 localeIdentifier];
    [v10 setLocale:v12];

    v13 = [(TUIEmojiSearchSource *)self->_emojiSearchSource multilingualSearchLocales];
    [v10 setMultilingualSearchLocales:v13];

    [v10 setSupportsImages:{+[TUIEmojiSearchView shouldShowImages](TUIEmojiSearchView, "shouldShowImages")}];
    if (objc_opt_respondsToSelector())
    {
      [v10 setSupportsGenmoji:{+[TUIEmojiSearchView shouldShowGenmoji](TUIEmojiSearchView, "shouldShowGenmoji")}];
    }

    v14 = [(TUIEmojiSearchInputViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0 || (-[TUIEmojiSearchInputViewController delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), -[TUIEmojiSearchView searchTextField](self->_emojiSearchView, "searchTextField"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 emojiSearchTextField:v17 shouldSendQuery:v10], v17, v16, v18))
    {
      v19 = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
      [v19 searchWithQuery:v10];
    }
  }

  else
  {
    [(TUIEmojiSearchSource *)self->_emojiSearchSource beginSearchForExactQuery:v6 autocorrectedQuery:v7];
  }
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  v4 = a3;
  +[TUIEmojiSearchTextField preferredHeight];
  v6 = v5;
  v7 = [v4 userInterfaceIdiom];
  v8 = [v4 horizontalSizeClass];
  v9 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  v10 = [v9 isCollapsed];

  if (v7 == 1 && v8 != 1)
  {
    if (v10)
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

  if (v10)
  {
    goto LABEL_15;
  }

  childPredictionViewController = self->_childPredictionViewController;
  if (!childPredictionViewController)
  {
    +[TUIEmojiSearchTextField preferredHeight];
    goto LABEL_14;
  }

  [(UIPredictiveViewController *)childPredictionViewController preferredHeightForTraitCollection:v4];
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
    v6 = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
    [v6 layoutMargins];
    [v5 setMargin:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v8 minimumLineSpacing];
    [v5 setSpacing:?];

    if (objc_opt_respondsToSelector())
    {
      v9 = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
      [v5 setVisible:{objc_msgSend(v9, "isHiddenOrHasHiddenAncestor") ^ 1}];
    }

    [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController configureWithConfiguration:v5];
  }

  else
  {
    self->_delayedUpdateConfigurationForRemoteSearchController = 1;
  }
}

- (void)autocorrectionListDidBecomeAvailable:(id)a3
{
  v4 = [a3 autocorrection];
  if (v4)
  {
    exactSearchQuery = self->_exactSearchQuery;
    v11 = v4;
    v6 = [v4 input];
    v7 = [v11 candidate];
    v8 = [(NSString *)exactSearchQuery stringByReplacingOccurrencesOfString:v6 withString:v7 options:12 range:0, [(NSString *)self->_exactSearchQuery length]];

    autocorrectedSearchQuery = self->_autocorrectedSearchQuery;
    self->_autocorrectedSearchQuery = v8;
    v10 = v8;

    [(TUIEmojiSearchInputViewController *)self beginSearchForExactQuery:self->_exactSearchQuery autocorrectedQuery:v10];
    v4 = v11;
  }
}

- (void)_displayResults:(id)a3 forExactQuery:(id)a4 autocorrectedQuery:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [a4 length];
  v10 = [v8 length];

  if (!(v9 + v10))
  {
    v11 = [(TUIEmojiSearchSource *)self->_emojiSearchSource suggestedEmojis];

    v14 = v11;
  }

  v12 = [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController displayedEmojis];
  v13 = [v14 isEqualToArray:v12];

  if ((v13 & 1) == 0)
  {
    [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController resetScrollPositionAnimated:0];
  }

  [(TUIEmojiSearchResultsCollectionViewController *)self->_resultsViewController setDisplayedEmojis:v14 verbatimSkinTones:[(TUIEmojiSearchSource *)self->_emojiSearchSource shouldSupplyVerbatimResultsFor:v14] animated:1];
}

- (void)setChildPredictionViewController:(id)a3
{
  v4 = a3;
  [(UIPredictiveViewController *)self->_childPredictionViewController removeFromParentViewController];
  v5 = [(UIPredictiveViewController *)self->_childPredictionViewController view];
  [v5 removeFromSuperview];

  childPredictionViewController = self->_childPredictionViewController;
  self->_childPredictionViewController = v4;
  v8 = v4;

  v7 = [(UIPredictiveViewController *)v8 view];
  [(TUIEmojiSearchView *)self->_emojiSearchView setPredictionView:v7];

  [(TUIEmojiSearchInputViewController *)self addChildViewController:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = TUIEmojiSearchInputViewController;
  v7 = a4;
  [(TUIEmojiSearchInputViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__TUIEmojiSearchInputViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72D8008;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

uint64_t __88__TUIEmojiSearchInputViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1200);
  [MEMORY[0x1E69DCBB8] keyplanePadding];

  return [v1 updateInsetsIfNeeded:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 horizontalSizeClass];
  v5 = [(TUIEmojiSearchInputViewController *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v4 != v6)
  {
    v7 = [(TUIEmojiSearchInputViewController *)self traitCollection];
    if ([v7 userInterfaceIdiom] == 1)
    {
      v8 = [(TUIEmojiSearchInputViewController *)self traitCollection];
      -[TUIEmojiSearchInputViewController setUsesFloatingStyle:](self, "setUsesFloatingStyle:", [v8 horizontalSizeClass] == 1);
    }

    else
    {
      [(TUIEmojiSearchInputViewController *)self setUsesFloatingStyle:0];
    }

    emojiSearchView = self->_emojiSearchView;
    v10 = [(TUIEmojiSearchInputViewController *)self traitCollection];
    -[TUIEmojiSearchView transitionToCompactLayout:](emojiSearchView, "transitionToCompactLayout:", [v10 horizontalSizeClass] == 1);
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
  v6 = [(TUIEmojiSearchInputViewController *)self traitCollection];
  -[TUIEmojiSearchView transitionToCompactLayout:](emojiSearchView, "transitionToCompactLayout:", [v6 horizontalSizeClass] == 1);
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchInputViewController;
  [(TUIEmojiSearchInputViewController *)&v15 viewWillAppear:a3];
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
    v5 = [(TUIEmojiSearchView *)self->_emojiSearchView searchTextField];
    if (!v5 || (v6 = v5, -[TUIEmojiSearchView searchTextField](self->_emojiSearchView, "searchTextField"), v7 = objc_claimAutoreleasedReturnValue(), [v7 text], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v6, !v9))
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
      v12 = [(TUIEmojiSearchView *)self->_emojiSearchView searchTextField];
      [v12 setText:&stru_1F03BA8F8];
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

- (void)_showGenmojiCreation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUIEmojiSearchInputViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEFAULT, "received %@ notification", &v12, 0xCu);
  }

  v7 = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(TUIEmojiSearchInputViewController *)self remoteSearchViewController];
    [v9 presentEmojiGenerationControllerWithInputString:&stru_1F03BA8F8];

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

- (void)_keyboardInputModeDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v23 = [v4 currentInputMode];

  if ([v23 isEmojiInputMode])
  {
    v5 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v6 = [v5 currentSystemInputModeExcludingEmoji:1];

    v7 = v6;
  }

  else
  {
    v7 = v23;
  }

  v24 = v7;
  v8 = [v7 primaryLanguage];
  if ([v8 isEqual:@"intl"])
  {
    v9 = [MEMORY[0x1E695DF58] _deviceLanguage];

    v8 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v24 dictationLanguage];

    v8 = v10;
  }

  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v8];
  v12 = [[TUIEmojiSearchSource alloc] initWithLocale:v11];
  emojiSearchSource = self->_emojiSearchSource;
  self->_emojiSearchSource = v12;

  [(TUIEmojiSearchSource *)self->_emojiSearchSource setDelegate:self];
  v14 = [v24 multilingualLanguages];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v24 multilingualLanguages];
    [(TUIEmojiSearchSource *)self->_emojiSearchSource setMultilingualSearchLocales:v16];
  }

  v17 = [[TUIEmojiSearchAnalyticsSession alloc] initWithLocale:v11];
  analyticsSession = self->_analyticsSession;
  self->_analyticsSession = v17;

  v19 = [(TUIEmojiSearchInputViewController *)self emojiSearchView];
  v20 = [v19 searchTextField];
  v21 = [v20 isActive];

  if (v21)
  {
    [(TUIEmojiSearchAnalyticsSession *)self->_analyticsSession beginSessionWithInitialSearchQuery:self->_exactSearchQuery];
  }

  v22 = [MEMORY[0x1E69DCBE0] activeInstance];
  self->_canAutocorrectWithCurrentInputMode = [v22 usesCandidateSelection] ^ 1;
}

- (UIEdgeInsets)_keyboardInsets
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(TUIEmojiSearchInputViewController *)self traitCollection];
  if ([v7 userInterfaceIdiom] == 1 || -[TUIEmojiSearchInputViewController usesFloatingStyle](self, "usesFloatingStyle"))
  {
  }

  else
  {
    v13 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v14 = [v13 interfaceOrientation] - 3;

    if (v14 <= 1)
    {
      [MEMORY[0x1E69DCBB8] keyplanePadding];
      v3 = v15;
      v4 = v16;
      v5 = v17;
      v6 = v18;
    }
  }

  v8 = [(TUIEmojiSearchInputViewController *)self usesFloatingStyle];
  if (v8)
  {
    v9 = -6.0;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
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
        v5 = [(STKStickerRemoteSearchViewController *)self->_remoteSearchViewController view];
        [(TUIEmojiSearchView *)self->_emojiSearchView setResultsCollectionView:v5];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TUIEmojiSearchInputViewController;
  [(TUIEmojiSearchInputViewController *)&v5 viewWillDisappear:a3];
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
  v3 = [(TUIEmojiSearchInputViewController *)self view];
  [v3 addSubview:self->_emojiSearchView];

  v4 = [(TUIEmojiSearchView *)self->_emojiSearchView leadingAnchor];
  v5 = [(TUIEmojiSearchInputViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  leadingConstraint = self->_leadingConstraint;
  self->_leadingConstraint = v7;

  v9 = [(TUIEmojiSearchView *)self->_emojiSearchView trailingAnchor];
  v10 = [(TUIEmojiSearchInputViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  trailingConstraint = self->_trailingConstraint;
  self->_trailingConstraint = v12;

  v14 = MEMORY[0x1E696ACD8];
  v15 = self->_trailingConstraint;
  v26[0] = self->_leadingConstraint;
  v26[1] = v15;
  v16 = [(TUIEmojiSearchView *)self->_emojiSearchView topAnchor];
  v17 = [(TUIEmojiSearchInputViewController *)self view];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v26[2] = v19;
  v20 = [(TUIEmojiSearchView *)self->_emojiSearchView bottomAnchor];
  v21 = [(TUIEmojiSearchInputViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
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

- (TUIEmojiSearchInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v28.receiver = self;
  v28.super_class = TUIEmojiSearchInputViewController;
  v4 = [(UIInputViewController *)&v28 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [TUIEmojiSearchView alloc];
    v6 = [(TUIEmojiSearchView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    emojiSearchView = v4->_emojiSearchView;
    v4->_emojiSearchView = v6;

    [(TUIEmojiSearchView *)v4->_emojiSearchView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [v8 setSearchDelegate:v4];

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

    v9 = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [v9 setAutocorrectionType:1];

    v10 = [(TUIEmojiSearchView *)v4->_emojiSearchView searchTextField];
    [v10 setAutocapitalizationType:0];

    if (!TUIRemoteEmojiSearchViewControllerEnabled() || !getSTKStickerRemoteSearchViewControllerClass())
    {
      v11 = objc_alloc_init(TUIEmojiSearchResultsCollectionViewController);
      resultsViewController = v4->_resultsViewController;
      v4->_resultsViewController = v11;

      [(TUIEmojiSearchResultsCollectionViewController *)v4->_resultsViewController setDelegate:v4];
      v13 = [(TUIEmojiSearchResultsCollectionViewController *)v4->_resultsViewController collectionView];
      [(TUIEmojiSearchView *)v4->_emojiSearchView setResultsCollectionView:v13];

      [(TUIEmojiSearchInputViewController *)v4 addChildViewController:v4->_resultsViewController];
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v4 selector:sel__keyboardInputModeDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v4 selector:sel__showGenmojiCreation_ name:@"TUIShowGenmojiCreationNotification" object:0];

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