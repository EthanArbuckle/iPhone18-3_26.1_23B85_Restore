@interface STSPicker
- (STSPicker)initWithSearchModel:(id)a3 showSuggestions:(BOOL)a4;
- (STSPickerSelectionDelegate)selectionDelegate;
- (STSPickerView)pickerView;
- (id)_detailViewControllerForIndexPath:(id)a3;
- (id)_loadMoreFooter;
- (id)_noticeTextForSearchError:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)getTapToRadarPunchOut:(id)a3;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (id)snapshotImage;
- (int64_t)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_beginDownloadingResultAtIndexPath:(id)a3;
- (void)_cancelActiveDownload;
- (void)_fetchImageWithURL:(id)a3 priority:(int64_t)a4 forCollectionView:(id)a5 atIndexPath:(id)a6;
- (void)_handleDebugGesture:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_loadMoreResultsIfNecessary;
- (void)_presentDetailViewControllerForIndexPath:(id)a3;
- (void)_presentNoticeWithText:(id)a3;
- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)a3;
- (void)_updatePredictedSuggestionsForSize:(CGSize)a3;
- (void)cancelImageDownloads;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)detailViewControllerDidInsert:(id)a3;
- (void)detailViewControllerDidReportConcern:(id)a3 result:(id)a4 punchout:(id)a5;
- (void)detailViewControllerDidSelectProviderLink:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)headerDidSelectCancelButton:(id)a3;
- (void)headerView:(id)a3 didRequestCompletion:(id)a4;
- (void)headerView:(id)a3 didSearchFor:(id)a4;
- (void)headerView:(id)a3 didSelectSuggestionButtonAtIndex:(unint64_t)a4;
- (void)headerViewDidDeleteText;
- (void)headerViewDidSelectSearchButton:(id)a3;
- (void)loadMoreFooterDidTapLogo;
- (void)loadView;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)performSearchWithQueryString:(id)a3 requestType:(int64_t)a4;
- (void)performZKWSearchQuery;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)resetContent;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)searchModel:(id)a3 insertedResultsAtIndexPaths:(id)a4 removedResultsAtIndexPaths:(id)a5;
- (void)searchModelUpdatedPredictedSuggestions:(id)a3;
- (void)sendVisibleResultsFeedback;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentOffset:(double)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation STSPicker

- (STSPicker)initWithSearchModel:(id)a3 showSuggestions:(BOOL)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = STSPicker;
  v8 = [(STSPicker *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchModel, a3);
    v9->_showSuggestions = a4;
    [(STSSearchModel *)v9->_searchModel setDelegate:v9];
    v9->_sectionsTag = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    lastInsertedIndexesWaitingToLoad = v9->_lastInsertedIndexesWaitingToLoad;
    v9->_lastInsertedIndexesWaitingToLoad = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    displayedResults = v9->_displayedResults;
    v9->_displayedResults = v12;

    v14 = dispatch_queue_create("com.apple.messages.picker.displayedresultsq", 0);
    displayedResultsQueue = v9->_displayedResultsQueue;
    v9->_displayedResultsQueue = v14;

    v16 = objc_opt_new();
    visibleResultsSent = v9->_visibleResultsSent;
    v9->_visibleResultsSent = v16;

    v9->_isSnapShotting = 0;
    v9->_debugMode = 0;
    v18 = [MEMORY[0x277CBEB18] array];
    debugItems = v9->_debugItems;
    v9->_debugItems = v18;
  }

  return v9;
}

- (void)didReceiveMemoryWarning
{
  v4.receiver = self;
  v4.super_class = STSPicker;
  [(STSPicker *)&v4 didReceiveMemoryWarning];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clear image cache for memory warning", v3, 2u);
  }

  v2 = +[STSImageCache sharedCache];
  [v2 clearInMemoryCache];
}

- (void)loadView
{
  v3 = STSLocalizedString(@"POPULAR_RESULTS_TITLE");
  [(STSPicker *)self setTitle:v3];

  v17 = objc_alloc_init(STSPickerView);
  v4 = [(STSPickerView *)v17 collectionView];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [(STSPickerView *)v17 collectionView];
  [v6 setScrollsToTop:1];

  v7 = [(STSPickerView *)v17 collectionView];
  [v7 setDataSource:self];

  v8 = [(STSPickerView *)v17 collectionView];
  [v8 setDelegate:self];

  v9 = [(STSPickerView *)v17 collectionView];
  [v9 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"STSGridLayoutElementKindHeader" withReuseIdentifier:@"STSGridLayoutElementKindHeader"];

  v10 = [(STSPickerView *)v17 collectionView];
  [v10 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"STSGridLayoutElementKindFooter" withReuseIdentifier:@"STSGridLayoutElementKindFooter"];

  v11 = [(STSPickerView *)v17 collectionView];
  [v11 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"STSImageCell"];

  v12 = [(STSPickerView *)v17 collectionView];
  [v12 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"STSVideoCell"];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleLongPress_];
  [v13 setMinimumPressDuration:0.75];
  v14 = [(STSPickerView *)v17 collectionView];
  [v14 addGestureRecognizer:v13];

  if (STSIsInternalInstall())
  {
    v15 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__handleDebugGesture_];
    [v15 setDirection:3];
    [v15 setNumberOfTouchesRequired:2];
    v16 = [(STSPickerView *)v17 collectionView];
    [v16 addGestureRecognizer:v15];
  }

  [(STSPicker *)self setView:v17];
}

- (void)viewDidDisappear:(BOOL)a3
{
  displayedResultsQueue = self->_displayedResultsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__STSPicker_viewDidDisappear___block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(displayedResultsQueue, block);
}

- (void)willMoveToParentViewController:(id)a3
{
  v22.receiver = self;
  v22.super_class = STSPicker;
  [(STSPicker *)&v22 willMoveToParentViewController:?];
  v5 = [(STSSearchModel *)self->_searchModel sections];
  v6 = [v5 firstObject];
  v7 = [v6 results];

  v8 = [(STSPicker *)self view];
  v9 = [v8 collectionView];
  v10 = [v9 indexPathsForVisibleItems];
  if (a3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__STSPicker_willMoveToParentViewController___block_invoke;
    v20[3] = &unk_279B8AA78;
    v11 = &v21;
    v20[4] = self;
    v21 = v7;
    v12 = v7;
    [v10 enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__STSPicker_willMoveToParentViewController___block_invoke_2;
    v17 = &unk_279B8AA78;
    v11 = &v19;
    v18 = self;
    v19 = v7;
    v13 = v7;
    [v10 enumerateObjectsUsingBlock:&v14];

    v8 = [STSImageCache sharedCache:v14];
    [v8 clearInMemoryCache];
  }
}

void __44__STSPicker_willMoveToParentViewController___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) view];
  v4 = [v3 collectionView];
  v5 = [v4 cellForItemAtIndexPath:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v12, "row")}];
    v7 = [v6 thumbnail];
    v8 = [v7 urlValue];
    v9 = *(a1 + 32);
    v10 = [v9 pickerView];
    v11 = [v10 collectionView];
    [v9 _fetchImageWithURL:v8 priority:0 forCollectionView:v11 atIndexPath:v12];
  }
}

void __44__STSPicker_willMoveToParentViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) view];
  v4 = [v3 collectionView];
  v5 = [v4 cellForItemAtIndexPath:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v11, "row")}];
    v7 = [v6 thumbnail];
    v8 = [v7 urlValue];
    v9 = +[STSImageCache sharedCache];
    v10 = [v9 fetchCachedStaticImageForURL:v8];
    [v5 setImage:v10];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(STSPicker *)self parentViewController];

  if (v4)
  {
    if (!self->_previewingContext)
    {
      v5 = [(STSPicker *)self traitCollection];
      v6 = [v5 forceTouchCapability];

      if (v6 == 2)
      {
        v11 = [(STSPicker *)self view];
        v7 = [v11 collectionView];
        v8 = [(STSPicker *)self registerForPreviewingWithDelegate:self sourceView:v7];
        previewingContext = self->_previewingContext;
        self->_previewingContext = v8;
      }
    }
  }

  else
  {
    v10 = [(STSPicker *)self view];
    [v10 setOverlayView:0];

    if (self->_previewingContext)
    {

      [(STSPicker *)self unregisterForPreviewingWithContext:?];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  if (self->_needsReloadAfterLayout)
  {
    self->_needsReloadAfterLayout = 0;
    v3 = [(STSPicker *)self view];
    v4 = [v3 collectionView];
    [v4 reloadData];
  }

  v5 = [(STSPicker *)self view];
  [v5 frame];
  [(STSPicker *)self _updatePredictedSuggestionsForSize:v6, v7];

  if (!self->_isSnapShotting)
  {

    [(STSPicker *)self sendVisibleResultsFeedback];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(STSPicker *)self _updatePredictedSuggestionsForSize:width, height];
  [v7 animateAlongsideTransition:0 completion:0];
  v8.receiver = self;
  v8.super_class = STSPicker;
  [(STSPicker *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  if (!a3)
  {
    v4 = [(STSPicker *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [(STSPicker *)self presentedViewController];
      [v6 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

- (id)snapshotImage
{
  self->_isSnapShotting = 1;
  v3 = [(STSPicker *)self view];
  [v3 scrollToTopWithAnimation:0];

  v4 = [(STSPicker *)self view];
  v5 = [v4 collectionView];
  [v5 setHidden:1];

  v6 = [(STSPicker *)self view];
  v7 = [v6 overlayView];
  [v7 setHidden:1];

  showSuggestions = self->_showSuggestions;
  self->_showSuggestions = 0;
  v9 = [(STSPicker *)self view];
  v10 = [v9 headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(STSPicker *)self view];
    v13 = [v12 headerView];

    [v13 setTopSuggestions:0];
    [v13 setBottomSuggestions:0];
    v14 = [(STSPicker *)self view];
    [v14 setNeedsLayout];

    v15 = [(STSPicker *)self view];
    [v15 layoutIfNeeded];
  }

  v16 = [(STSPicker *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v22, v24}];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __26__STSPicker_snapshotImage__block_invoke;
  v34[3] = &unk_279B8AE50;
  v34[5] = v18;
  v34[6] = v20;
  *&v34[7] = v22;
  *&v34[8] = v24;
  v34[4] = self;
  v26 = [v25 imageWithActions:v34];
  self->_showSuggestions = showSuggestions;
  v27 = [(STSPicker *)self view];
  v28 = [v27 collectionView];
  [v28 setHidden:0];

  v29 = [(STSPicker *)self view];
  v30 = [v29 overlayView];
  [v30 setHidden:0];

  [(STSPicker *)self _updatePredictedSuggestionsForSize:v22, v24];
  v31 = [(STSPicker *)self view];
  [v31 setNeedsLayout];

  v32 = [(STSPicker *)self view];
  [v32 layoutIfNeeded];

  self->_isSnapShotting = 0;

  return v26;
}

void __26__STSPicker_snapshotImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75348];
  v4 = a2;
  v5 = [v3 sts_defaultBackgroundColor];
  [v5 setFill];

  [v4 fillRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v6 = [*(a1 + 32) view];
  [v6 drawViewHierarchyInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)performZKWSearchQuery
{
  currentQuery = self->_currentQuery;
  self->_currentQuery = 0;

  displayedResultsQueue = self->_displayedResultsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__STSPicker_performZKWSearchQuery__block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(displayedResultsQueue, block);
  v5 = [(STSPicker *)self view];
  [v5 setOverlayView:0];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v6 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__STSPicker_performZKWSearchQuery__block_invoke_2;
  v15[3] = &unk_279B8AE78;
  v15[4] = self;
  v15[5] = v16;
  dispatch_after(v6, MEMORY[0x277D85CD0], v15);
  v7 = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_lastSearchId, v7);
  objc_initWeak(&location, self);
  searchModel = self->_searchModel;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__STSPicker_performZKWSearchQuery__block_invoke_3;
  v10[3] = &unk_279B8AEA0;
  objc_copyWeak(&v13, &location);
  v12 = v16;
  v9 = v7;
  v11 = v9;
  [(STSSearchModel *)searchModel performZKWSearchQueryWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  _Block_object_dispose(v16, 8);
}

void __34__STSPicker_performZKWSearchQuery__block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  v2 = [*(a1 + 32) view];
  [v2 setShowActivityIndicator:v1];
}

void __34__STSPicker_performZKWSearchQuery__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  if (WeakRetained)
  {
    v7 = [WeakRetained view];
    [v7 setShowActivityIndicator:0];

    if ([v6[125] isEqual:*(a1 + 32)])
    {
      if (a2)
      {
        v8 = [v6 view];
        [v8 scrollToTopWithAnimation:0];
      }

      else
      {
        v8 = [v6 _noticeTextForSearchError:v9];
        [v6 _presentNoticeWithText:v8];
      }
    }
  }
}

- (void)performSearchWithQueryString:(id)a3 requestType:(int64_t)a4
{
  v7 = a3;
  objc_storeStrong(&self->_currentQuery, a3);
  v8 = [(STSPicker *)self view];
  [v8 setOverlayView:0];

  displayedResultsQueue = self->_displayedResultsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STSPicker_performSearchWithQueryString_requestType___block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(displayedResultsQueue, block);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 1;
  v10 = dispatch_time(0, 1000000000);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__STSPicker_performSearchWithQueryString_requestType___block_invoke_2;
  v19[3] = &unk_279B8AE78;
  v19[4] = self;
  v19[5] = v20;
  dispatch_after(v10, MEMORY[0x277D85CD0], v19);
  v11 = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_lastSearchId, v11);
  objc_initWeak(&location, self);
  searchModel = self->_searchModel;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__STSPicker_performSearchWithQueryString_requestType___block_invoke_3;
  v14[3] = &unk_279B8AEC8;
  objc_copyWeak(v17, &location);
  v16 = v20;
  v13 = v11;
  v15 = v13;
  v17[1] = a4;
  [(STSSearchModel *)searchModel performSearchWithQueryString:v7 requestType:a4 completion:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(v20, 8);
}

void __54__STSPicker_performSearchWithQueryString_requestType___block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  v2 = [*(a1 + 32) view];
  [v2 setShowActivityIndicator:v1];
}

void __54__STSPicker_performSearchWithQueryString_requestType___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  if (WeakRetained)
  {
    v7 = [WeakRetained view];
    [v7 setShowActivityIndicator:0];

    if ([v6[125] isEqual:*(a1 + 32)])
    {
      if (a2)
      {
        if ((*(a1 + 56) | 4) != 5)
        {
          goto LABEL_8;
        }

        v8 = [v6 view];
        [v8 scrollToTopWithAnimation:0];
      }

      else
      {
        v8 = [v6 _noticeTextForSearchError:v9];
        [v6 _presentNoticeWithText:v8];
      }
    }
  }

LABEL_8:
}

- (void)cancelImageDownloads
{
  [(STSPicker *)self _cancelActiveDownload];
  v3 = +[STSImageCache sharedCache];
  [v3 cancelAllDownloads];

  queuedImageURLs = self->_queuedImageURLs;

  [(NSMutableSet *)queuedImageURLs removeAllObjects];
}

- (void)resetContent
{
  [(STSSearchModel *)self->_searchModel removeAllSections];
  v3 = [(STSPicker *)self view];
  [v3 setOverlayView:0];
}

- (STSPickerView)pickerView
{
  [(STSPicker *)self loadViewIfNeeded];

  return [(STSPicker *)self view];
}

- (void)updateContentOffset:(double)a3
{
  v4 = [(STSPicker *)self pickerView];
  [v4 updateContentOffset:a3];
}

- (void)_handleLongPress:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(STSPicker *)self view];
    v6 = [v5 collectionView];
    v7 = [(STSPicker *)self view];
    v8 = [v7 collectionView];
    [v4 locationInView:v8];
    v9 = [v6 indexPathForItemAtPoint:?];

    [(STSPicker *)self _presentDetailViewControllerForIndexPath:v9];
    v10 = [v9 section];
    v11 = [(STSSearchModel *)self->_searchModel sections];
    v12 = [v11 count];

    if (v10 >= v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [(STSPicker *)&self->_searchModel _handleLongPress:v10];
      }
    }

    else
    {
      v13 = [(STSSearchModel *)self->_searchModel sections];
      v14 = [v13 objectAtIndexedSubscript:v10];

      v15 = [v14 results];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v9, "item")}];

      v17 = +[STSFeedbackReporter sharedInstance];
      [v17 didPreviewResultLongPress:v16];
    }
  }
}

- (void)_handleDebugGesture:(id)a3
{
  if (STSIsInternalInstall())
  {
    if (self->_debugMode)
    {
      self->_debugMode = 0;
      v4 = [(STSPicker *)self pickerView];
      v5 = [v4 collectionView];
      [v5 setAllowsMultipleSelection:0];

      v6 = [(STSPicker *)self pickerView];
      v7 = [v6 collectionView];
      [v7 setBackgroundColor:self->_originalColor];

      if ([(NSMutableArray *)self->_debugItems count])
      {
        v8 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Open Tap-to-Radar" message:@"Report issue with selected images." preferredStyle:1];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __33__STSPicker__handleDebugGesture___block_invoke;
        v21[3] = &unk_279B8AC28;
        v21[4] = self;
        v9 = [MEMORY[0x277D750F8] actionWithTitle:@"Yes" style:0 handler:v21];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __33__STSPicker__handleDebugGesture___block_invoke_3;
        v20[3] = &unk_279B8AC28;
        v20[4] = self;
        v10 = [MEMORY[0x277D750F8] actionWithTitle:@"No" style:0 handler:v20];
        [v8 addAction:v9];
        [v8 addAction:v10];
        [(STSPicker *)self presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      self->_debugMode = 1;
      v11 = [(STSPicker *)self pickerView];
      v12 = [v11 collectionView];
      v13 = [v12 backgroundColor];
      originalColor = self->_originalColor;
      self->_originalColor = v13;

      v15 = [(STSPicker *)self pickerView];
      v16 = [v15 collectionView];
      v17 = [MEMORY[0x277D75348] purpleColor];
      [v16 setBackgroundColor:v17];

      v19 = [(STSPicker *)self pickerView];
      v18 = [v19 collectionView];
      [v18 setAllowsMultipleSelection:1];
    }
  }
}

void __33__STSPicker__handleDebugGesture___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = 1168;
  obj = *(*(a1 + 32) + 1168);
  v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v23 = *v29;
    v21 = v27;
    do
    {
      v2 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v28 + 1) + 8 * v2);
        v4 = [*(*(a1 + 32) + 992) sections];
        v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v3, "section")}];

        v6 = [v5 results];
        v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v3, "item")}];

        v8 = [MEMORY[0x277CBEB38] dictionary];
        v9 = [v7 thumbnail];
        v10 = [v9 urlValue];
        v11 = [v10 absoluteString];
        [v8 setObject:v11 forKey:@"thumbnail"];

        v12 = [v7 url];
        v13 = [v12 absoluteString];
        [v8 setObject:v13 forKey:@"url"];

        [v24 addObject:v8];
        v14 = [*(a1 + 32) pickerView];
        v15 = [v14 collectionView];
        v16 = [v15 cellForItemAtIndexPath:v3];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          v27[0] = __33__STSPicker__handleDebugGesture___block_invoke_2;
          v27[1] = &unk_279B8AEF0;
          v27[2] = *(a1 + 32);
          v27[3] = v3;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        ++v2;
      }

      while (v25 != v2);
      v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  v18 = [*(a1 + 32) getTapToRadarPunchOut:v24];
  v19 = [*(a1 + 32) extensionContext];
  [v19 openURL:v18 completionHandler:0];

  [*(*(a1 + 32) + v20) removeAllObjects];
}

void __33__STSPicker__handleDebugGesture___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pickerView];
  v3 = [v2 collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 40)];

  [v4 setDebugBadge:0];
}

uint64_t __33__STSPicker__handleDebugGesture___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(*(a1 + 32) + 1168);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 32) pickerView];
        v8 = [v7 collectionView];
        v9 = [v8 cellForItemAtIndexPath:v6];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __33__STSPicker__handleDebugGesture___block_invoke_4;
          block[3] = &unk_279B8AEF0;
          block[4] = *(a1 + 32);
          block[5] = v6;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 1168) removeAllObjects];
}

void __33__STSPicker__handleDebugGesture___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) pickerView];
  v3 = [v2 collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 40)];

  [v4 setDebugBadge:0];
}

- (id)getTapToRadarPunchOut:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n############################\n\n#IMAGES DEBUG INFO (PLEASE DO NOT EDIT):\n"];
  currentQuery = self->_currentQuery;
  if (!currentQuery)
  {
    currentQuery = @"ZKW";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nQUERY:\n%@\n", currentQuery];
  v8 = [v5 stringByAppendingString:v7];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = MEMORY[0x277CCACA8];
        v15 = [v13 objectForKey:@"thumbnail"];
        v16 = [v14 stringWithFormat:@"\nTHUMBNAIL:\n%@\n", v15];
        v17 = [v8 stringByAppendingString:v16];

        v18 = MEMORY[0x277CCACA8];
        v19 = [v13 objectForKey:@"url"];
        v20 = [v18 stringWithFormat:@"\nORIGINAL:\n%@\n", v19];
        v21 = [v17 stringByAppendingString:v20];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n############################\n"];
        v8 = [v21 stringByAppendingString:v22];
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v23 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v23 setScheme:@"tap-to-radar"];
  [v23 setHost:@"new"];
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"Parsec Image Search"];
  [v24 addObject:v25];

  v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"1.0"];
  [v24 addObject:v26];

  v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"680051"];
  [v24 addObject:v27];

  v28 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Other Bug"];
  [v24 addObject:v28];

  v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [v24 addObject:v29];

  v30 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:v8];
  [v24 addObject:v30];

  [v23 setQueryItems:v24];
  v31 = [v23 URL];

  return v31;
}

- (void)searchModelUpdatedPredictedSuggestions:(id)a3
{
  v4 = [(STSPicker *)self view];
  v5 = [v4 headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(STSPicker *)self view];
    [v7 frame];
    [(STSPicker *)self _updatePredictedSuggestionsForSize:v8, v9];

    v10 = [(STSPicker *)self view];
    [v10 setNeedsLayout];
  }
}

- (void)searchModel:(id)a3 insertedResultsAtIndexPaths:(id)a4 removedResultsAtIndexPaths:(id)a5
{
  v28 = a4;
  v7 = a5;
  self->_isLoadingMoreResults = 0;
  v8 = [(STSPicker *)self _loadMoreFooter];
  [v8 setLoading:0];

  if ([v28 count])
  {
    self->_lastInsertedIndexesCount = [v28 count];
    [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad removeAllObjects];
    [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad addObjectsFromArray:v28];
  }

  v9 = [(STSPicker *)self view];
  v10 = [v9 collectionView];
  [v10 bounds];
  IsEmpty = CGRectIsEmpty(v30);

  if (IsEmpty)
  {
    self->_needsReloadAfterLayout = 1;
  }

  else if ([v7 count] && (-[STSPicker view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "collectionView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "numberOfItemsInSection:", 0), v15 = objc_msgSend(v7, "count"), v13, v12, v14 > v15))
  {
    v16 = [(STSPicker *)self view];
    v17 = [v16 collectionView];
    [v17 reloadData];
  }

  else if ([v28 count])
  {
    v18 = [(STSPicker *)self view];
    v19 = [v18 collectionView];
    [v19 reloadData];

    [(STSPicker *)self sendVisibleResultsFeedback];
  }

  v20 = [(STSSearchModel *)self->_searchModel sections];
  v21 = [v20 firstObject];
  v22 = [v21 results];
  if ([v22 count])
  {
    +[STSLoadMoreFooter defaultHeight];
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [(STSPicker *)self view];
  v26 = [v25 collectionView];
  v27 = [v26 collectionViewLayout];
  [v27 setFooterHeight:v24];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(STSSearchModel *)self->_searchModel sections];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(STSSearchModel *)self->_searchModel sections:a3];
  v5 = [v4 firstObject];
  v6 = [v5 results];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STSSearchModel *)self->_searchModel sections];
  v9 = [v8 count];
  if (v9 <= [v7 section])
  {
    v17 = [v6 dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:v7];
    v21 = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
    [v17 setPlaceholderColor:v21];

    goto LABEL_40;
  }

  v10 = [(STSSearchModel *)self->_searchModel sections];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v58 = [v11 results];
  v12 = [v58 count];
  if (v12 > [v7 item])
  {
    v13 = [v11 results];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

    v55 = [v14 sts_badge];
    v57 = [v14 thumbnail];
    v56 = [v57 urlValue];
    v54 = [v14 sts_descriptionText];
    v15 = [v14 resultType];
    v16 = [v15 isEqualToString:@"image_search"];

    if (v16)
    {
      v17 = [v6 dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:v7];
      v18 = +[STSImageCache sharedCache];
      v53 = [v18 fetchCachedImageInfoForURL:v56];

      [v17 setCategory:0];
      if (STSIsInternalInstall())
      {
        [v17 setDebugBadge:0];
        if ([(NSMutableArray *)self->_debugItems containsObject:v7])
        {
          v19 = [MEMORY[0x277D755B8] imageNamed:@"feedback-selected-icon"];
          [v17 setDebugBadge:v19];
        }
      }

      if (v53)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v72 = v53;
          _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cache Hit: imageInfo %@", buf, 0xCu);
        }

        v20 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v53];
        [v17 setImage:v20];
        [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad removeObject:v7];
      }

      else
      {
        v70 = 0;
        v38 = +[STSImageCache sharedCache];
        v39 = [v38 fetchCachedStaticImageForURL:v56 hasMultipleFrames:&v70];

        [v17 setImage:v39];
        if (!v39 || v70 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v72 = v56;
            _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cache Miss: fetching %@", buf, 0xCu);
          }

          [(STSPicker *)self _fetchImageWithURL:v56 priority:0 forCollectionView:v6 atIndexPath:v7];
        }
      }

      if (v54)
      {
        [v17 setAccessibilityTraits:*MEMORY[0x277D76578]];
        [v17 setIsAccessibilityElement:1];
        [v17 setAccessibilityValue:v54];
      }

      else
      {
        [v17 setAccessibilityValue:0];
        [v17 setAccessibilityTraits:*MEMORY[0x277D76560]];
      }

      v40 = [v14 secondaryTitle];

      if (v40)
      {
        v41 = [v14 secondaryTitle];
        [v17 setCategory:v41];
      }

      if ([(NSIndexPath *)self->_activeDownloadIndexPath isEqual:v7])
      {
        [v17 setDownloadProgress:self->_activeDownloadProgress];
        [v17 setShowDownloadIndicator:0 animated:1.0];
      }
    }

    else
    {
      v23 = [v14 resultType];
      v24 = [v23 isEqualToString:@"web_video"];

      if (!v24)
      {
        v17 = 0;
        goto LABEL_32;
      }

      v17 = [v6 dequeueReusableCellWithReuseIdentifier:@"STSVideoCell" forIndexPath:v7];
      v25 = [v14 title];
      v26 = [v25 text];
      [v17 setTitle:v26];

      v27 = objc_opt_new();
      v28 = [v14 descriptions];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke;
      v68[3] = &unk_279B8AF40;
      v53 = v27;
      v69 = v53;
      [v28 enumerateObjectsUsingBlock:v68];

      [v17 setCategory:0];
      v52 = [v53 componentsJoinedByString:@"\n"];
      [v17 setSubtitle:v52];
      v29 = [v14 sts_videoDuration];
      [v17 setDuration:v29];

      v30 = [v14 sts_providerName];
      [v17 setProviderName:v30];

      [v17 setProviderIcon:0];
      v31 = [MEMORY[0x277D759A0] mainScreen];
      [v31 scale];
      v33 = v32;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_3;
      v65[3] = &unk_279B8AF90;
      v51 = v6;
      v66 = v51;
      v34 = v7;
      v67 = v34;
      [v14 sts_providerIconWithScale:v65 completion:v33];

      objc_initWeak(buf, self);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_5;
      v62[3] = &unk_279B8AFB8;
      objc_copyWeak(&v64, buf);
      v35 = v34;
      v63 = v35;
      [v17 setPlayButtonAction:v62];
      v36 = +[STSImageCache sharedCache];
      v37 = [v36 fetchCachedStaticImageForURL:v56];

      [v17 setImage:v37];
      if (!v37)
      {
        [(STSPicker *)self _fetchImageWithURL:v56 priority:0 forCollectionView:v51 atIndexPath:v35];
      }

      objc_destroyWeak(&v64);
      objc_destroyWeak(buf);
    }

LABEL_32:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v42 = MEMORY[0x277D75348], [v57 keyColor], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "sts_colorFromHexString:alpha:", v43, 1.0), v44 = objc_claimAutoreleasedReturnValue(), v43, !v44))
    {
      v44 = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
    }

    [v17 setPlaceholderColor:{v44, v51}];
    v45 = [v55 imageData];
    if (v45)
    {
      v46 = MEMORY[0x277D755B8];
      v47 = [MEMORY[0x277D759A0] mainScreen];
      [v47 scale];
      v48 = [v46 imageWithData:v45 scale:?];

      [v17 setBadge:v48];
    }

    else
    {
      [v17 setBadge:0];
      v49 = [v14 sts_badge];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_6;
      v59[3] = &unk_279B8AFE0;
      v60 = v6;
      v61 = v7;
      [v49 loadImageDataWithCompletionAndErrorHandler:v59];

      v48 = v60;
    }

    goto LABEL_39;
  }

  v17 = [v6 dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:v7];
  v22 = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
  [v17 setPlaceholderColor:v22];

LABEL_39:
LABEL_40:

  return v17;
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 formattedTextPieces];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v4[3] = &unk_279B8AF18;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 text];
  [v2 addObject:v3];
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_4;
  block[3] = &unk_279B8AF68;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  [v2 setProviderIcon:*(a1 + 48)];
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentDetailViewControllerForIndexPath:*(a1 + 32)];
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_6(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = MEMORY[0x277D759A0];
    v5 = a2;
    v6 = [v4 mainScreen];
    [v6 scale];
    v7 = [v3 imageWithData:v5 scale:?];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_7;
    block[3] = &unk_279B8AF68;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  [v2 setBadge:*(a1 + 48)];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:@"STSGridLayoutElementKindFooter"])
  {
    v10 = [v8 dequeueReusableSupplementaryViewOfKind:@"STSGridLayoutElementKindFooter" withReuseIdentifier:@"STSGridLayoutElementKindFooter" forIndexPath:v9];
    [v10 setLoading:self->_isLoadingMoreResults];
    [v10 setDelegate:self];
    v11 = +[STSImageCache sharedCache];
    v12 = [v11 searchProviderImage];
    [v10 setSearchProviderImage:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(STSSearchModel *)self->_searchModel sections];
  v8 = [v7 count];
  v9 = [v6 section];

  if (v8 <= v9)
  {
    v19 = 1;
  }

  else
  {
    v10 = [(STSSearchModel *)self->_searchModel sections];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

    v12 = [v6 item];
    v13 = [v11 results];
    v14 = [v13 count];

    if (v12 >= v14)
    {
      v19 = 1;
    }

    else
    {
      v15 = [v11 results];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

      v17 = [v16 resultType];
      v18 = [v17 isEqualToString:@"web_video"];

      v19 = v18 ^ 1u;
    }
  }

  return v19;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (self->_debugMode)
  {
    [(NSMutableArray *)self->_debugItems addObject:v6];
    v7 = [v18 cellForItemAtIndexPath:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = [v18 cellForItemAtIndexPath:v6];
    v10 = [MEMORY[0x277D755B8] imageNamed:@"feedback-selected-icon"];
    [v9 setDebugBadge:v10];
    goto LABEL_13;
  }

  v11 = [(NSIndexPath *)self->_activeDownloadIndexPath isEqual:v6];
  [(STSPicker *)self _cancelActiveDownload];
  v9 = [(STSSearchModel *)self->_searchModel sections];
  v12 = [v9 count];
  if (v12 > [v6 section])
  {
    v10 = [v9 objectAtIndex:{objc_msgSend(v6, "section")}];
    v13 = [v10 results];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

    v15 = [v14 secondaryTitle];

    if (v15)
    {
      v16 = [(STSPicker *)self selectionDelegate];
      [v16 browser:self didSelectCategoryResult:v14];
    }

    else
    {
      if (v6)
      {
        v17 = v11;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        [(STSPicker *)self _beginDownloadingResultAtIndexPath:v6];
      }
    }

LABEL_13:
  }

LABEL_15:
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_debugMode)
  {
    [(NSMutableArray *)self->_debugItems removeObject:v6];
    v7 = [v10 cellForItemAtIndexPath:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v10 cellForItemAtIndexPath:v6];
      [v9 setDebugBadge:0];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  [(STSPicker *)self _cancelActiveDownload];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = [(STSPicker *)self view];
    [v6 updateHeaderPositionOnScroll];
  }

  v7 = [(STSPicker *)self selectionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(STSPicker *)self selectionDelegate];
    [v9 browserDidScroll:self];
  }

  [(STSPicker *)self _loadMoreResultsIfNecessary];
  [v13 contentOffset];
  if (v10 - self->_startScrollPosition.y > 50.0)
  {
    [(STSPicker *)self sendVisibleResultsFeedback];
    [v13 contentOffset];
    self->_startScrollPosition.x = v11;
    self->_startScrollPosition.y = v12;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(STSPicker *)self view];
  [v5 updateHeaderPositionOnDraggingBegan];

  self->_isScrolling = 1;
  self = (self + 1136);
  [v4 contentOffset];
  v7 = v6;
  v9 = v8;

  self->super.super.super.isa = v7;
  *&self->super.super._responderFlags = v9;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v7 = [(STSPicker *)self view:a3];
  [v7 updateHeaderPositionOnDraggingEndedWithVelocity:{x, y}];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [(STSPicker *)self view];
  [v4 updateHeaderPositionOnDecelerationEnded];

  self->_isScrolling = 0;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v24 = v7;
  v9 = [v24 imageInfo];
  if (v9)
  {
LABEL_2:

    goto LABEL_4;
  }

  v10 = [v24 image];

  if (!v10)
  {
    v9 = [(STSSearchModel *)self->_searchModel sections];
    v11 = [v9 count];
    if (v11 > [v8 section])
    {
      v12 = [(STSSearchModel *)self->_searchModel sections];
      v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

      v14 = [v13 results];
      v15 = [v14 count];
      if (v15 > [v8 item])
      {
        v16 = [v13 results];
        v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v8, "item")}];

        v18 = [v17 thumbnail];
        v19 = [v18 urlValue];
        v20 = +[STSImageCache sharedCache];
        v21 = [v20 fetchCachedImageInfoForURL:v19];

        if (v21)
        {
          v22 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v21];
        }

        else
        {
          v23 = +[STSImageCache sharedCache];
          v22 = [v23 fetchCachedStaticImageForURL:v19];
        }

        [v24 setImage:v22];
      }
    }

    goto LABEL_2;
  }

LABEL_4:
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v16 = a5;
  v6 = [(STSSearchModel *)self->_searchModel sections];
  v7 = [v6 firstObject];

  v8 = [v16 row];
  v9 = [v7 results];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = [v7 results];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];

    v13 = [v12 thumbnail];
    v14 = [v13 urlValue];
    v15 = +[STSImageCache sharedCache];
    [v15 setPriority:-8 forQueuedDownloadWithURL:v14];
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(STSPicker *)self view];
  v10 = [v9 collectionView];
  v11 = [v10 cellForItemAtIndexPath:self->_detailResultIndexPath];

  v12 = [(STSPicker *)self view];
  v13 = [v12 collectionView];
  v14 = [v13 layoutAttributesForItemAtIndexPath:self->_detailResultIndexPath];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(STSPicker *)self view];
  v24 = [(STSPicker *)self view];
  v25 = [v24 collectionView];
  [v23 convertRect:v25 fromView:{v16, v18, v20, v22}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = objc_alloc(MEMORY[0x277D755E8]);
  v35 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v35 setClipsToBounds:1];
  [v35 setContentMode:2];
  v36 = [v11 image];
  [v35 setImage:v36];

  v37 = objc_alloc_init(STSDetailTransitionAnimator);
  detailTransitionAnimator = self->_detailTransitionAnimator;
  self->_detailTransitionAnimator = v37;

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSnapshotView:v35];
  v39 = self->_detailTransitionAnimator;
  [v11 imageInsets];
  [(STSDetailTransitionAnimator *)v39 setSourceInsets:?];
  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSourceFrame:v27, v29, v31, v33];
  v40 = self->_detailTransitionAnimator;
  v41 = [v8 view];
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [v8 traitCollection];

  [v7 contentFrameForBounds:v50 traitCollection:{v43, v45, v47, v49}];
  [(STSDetailTransitionAnimator *)v40 setPresentedFrame:?];

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setPresenting:1];
  v51 = self->_detailTransitionAnimator;
  v52 = v51;

  return v51;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = [(STSPicker *)self view];
  v6 = [v5 collectionView];
  v7 = [v6 layoutAttributesForItemAtIndexPath:self->_detailResultIndexPath];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(STSPicker *)self view];
  v17 = [(STSPicker *)self view];
  v18 = [v17 collectionView];
  [v16 convertRect:v18 fromView:{v9, v11, v13, v15}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSourceFrame:v20, v22, v24, v26];
  detailTransitionAnimator = self->_detailTransitionAnimator;
  v28 = [v4 view];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v4 traitCollection];
  [v4 contentFrameForBounds:v37 traitCollection:{v30, v32, v34, v36}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [(STSDetailTransitionAnimator *)detailTransitionAnimator setPresentedFrame:v39, v41, v43, v45];
  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setPresenting:0];
  v46 = self->_detailTransitionAnimator;

  return v46;
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(STSPicker *)self selectionDelegate];
  v9 = [v8 browserIsPresentedFullscreen:self];

  if (v9)
  {
    v10 = [(STSPicker *)self view];
    v11 = [v10 collectionView];
    v12 = [v11 indexPathForItemAtPoint:{x, y}];

    if (v12)
    {
      [(STSPicker *)self _cancelActiveDownload];
      v13 = [(STSPicker *)self _detailViewControllerForIndexPath:v12];
      [v13 setModalTransitionStyle:2];
      [v13 setModalPresentationStyle:6];
      [v13 setIsFullscreen:0];
      v14 = [(STSPicker *)self view];
      v15 = [v14 collectionView];
      v16 = [v15 layoutAttributesForItemAtIndexPath:v12];
      [v16 frame];
      [v7 setSourceRect:?];

      objc_storeStrong(&self->_detailResultIndexPath, v12);
      v17 = [(STSSearchModel *)self->_searchModel sections];
      v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v12, "section")}];

      v19 = [v18 results];
      v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v12, "item")}];

      v21 = +[STSFeedbackReporter sharedInstance];
      [v21 didPreviewResult:v20 peek:1];

      previewingSearchResult = self->_previewingSearchResult;
      self->_previewingSearchResult = v20;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v5 = a4;
  [v5 setUseBackgroundBlur:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__STSPicker_previewingContext_commitViewController___block_invoke;
  v9[3] = &unk_279B8A988;
  v6 = v5;
  v10 = v6;
  [(STSPicker *)self presentViewController:v6 animated:0 completion:v9];
  if (self->_previewingSearchResult)
  {
    v7 = +[STSFeedbackReporter sharedInstance];
    [v7 didPreviewResult:self->_previewingSearchResult peek:0];

    previewingSearchResult = self->_previewingSearchResult;
    self->_previewingSearchResult = 0;
  }
}

uint64_t __52__STSPicker_previewingContext_commitViewController___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setIsFullscreen:1];
  }

  return result;
}

- (void)detailViewControllerDidSelectProviderLink:(id)a3
{
  v4 = [(STSSearchModel *)self->_searchModel sections];
  v8 = [v4 firstObject];

  v5 = [v8 results];
  v6 = [v5 objectAtIndexedSubscript:{-[NSIndexPath row](self->_detailResultIndexPath, "row")}];

  v7 = [(STSPicker *)self selectionDelegate];
  [v7 browser:self didSelectProviderLink:v6];
}

- (void)detailViewControllerDidInsert:(id)a3
{
  v4 = a3;
  detailResultIndexPath = self->_detailResultIndexPath;
  if (detailResultIndexPath)
  {
    v6 = v4;
    detailResultIndexPath = [detailResultIndexPath isEqual:self->_activeDownloadIndexPath];
    v4 = v6;
    if ((detailResultIndexPath & 1) == 0)
    {
      [(STSPicker *)self _cancelActiveDownload];
      detailResultIndexPath = [(STSPicker *)self _beginDownloadingResultAtIndexPath:self->_detailResultIndexPath];
      v4 = v6;
    }
  }

  MEMORY[0x2821F96F8](detailResultIndexPath, v4);
}

- (void)detailViewControllerDidReportConcern:(id)a3 result:(id)a4 punchout:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[STSFeedbackReporter sharedInstance];
  [v9 didReportConcern:v7 punchout:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__STSPicker_detailViewControllerDidReportConcern_result_punchout___block_invoke;
  v11[3] = &unk_279B8AEF0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __66__STSPicker_detailViewControllerDidReportConcern_result_punchout___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) removeResultAtIndexPath:*(*(a1 + 32) + 1056)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 992);

  return [v3 addSearchResultToReportConcernStore:v2];
}

- (void)headerViewDidSelectSearchButton:(id)a3
{
  v4 = [(STSPicker *)self selectionDelegate];
  [v4 browserSearchBarButtonClicked:self];
}

- (void)headerDidSelectCancelButton:(id)a3
{
  v4 = [(STSPicker *)self selectionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(STSPicker *)self selectionDelegate];
    [v6 browserSearchBarCancelButtonClicked:self];
  }
}

- (void)headerViewDidDeleteText
{
  v2 = [(STSPicker *)self selectionDelegate];
  [v2 browserDidDeleteQuery];
}

- (void)headerView:(id)a3 didSearchFor:(id)a4
{
  v5 = a4;
  v6 = [(STSPicker *)self selectionDelegate];
  [v6 browser:self didSearchFor:v5];
}

- (void)headerView:(id)a3 didRequestCompletion:(id)a4
{
  v5 = a4;
  v6 = [(STSPicker *)self selectionDelegate];
  [v6 browser:self requestSuggestionsFor:v5];
}

- (void)headerView:(id)a3 didSelectSuggestionButtonAtIndex:(unint64_t)a4
{
  v6 = a3;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v6;
    v7 = [(NSArray *)self->_visiblePredictions count]> a4;
    v6 = v10;
    if (v7)
    {
      v8 = [(NSArray *)self->_visiblePredictions objectAtIndexedSubscript:a4];
      v9 = [(STSPicker *)self selectionDelegate];
      [v9 browserSuggestionButtonClicked:self suggestion:v8];

      v6 = v10;
    }
  }
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__STSPicker_mailComposeController_didFinishWithResult_error___block_invoke;
  v9[3] = &unk_279B8B008;
  v11 = self;
  v12 = a4;
  v10 = v7;
  v8 = v7;
  [(STSPicker *)self dismissViewControllerAnimated:1 completion:v9];
}

void __61__STSPicker_mailComposeController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 3)
  {
    v3 = MEMORY[0x277D75110];
    v4 = STSLocalizedString(@"COULD_NOT_SEND_FEEDBACK_ALERT_TITLE");
    v5 = [*(a1 + 32) description];
    v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    v6 = MEMORY[0x277D750F8];
    v7 = STSLocalizedString(@"OK");
    v8 = [v6 actionWithTitle:v7 style:0 handler:0];

    [v9 addAction:v8];
    [*(a1 + 40) presentViewController:v9 animated:1 completion:0];
  }
}

- (void)loadMoreFooterDidTapLogo
{
  v3 = [(STSPicker *)self selectionDelegate];
  [v3 browserDidTapLogo:self];
}

- (void)_fetchImageWithURL:(id)a3 priority:(int64_t)a4 forCollectionView:(id)a5 atIndexPath:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[STSImageCache sharedCache];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "fetching url %@", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v14 = +[STSImageCache sharedCache];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke;
  v26[3] = &unk_279B8B030;
  v27 = v10;
  objc_copyWeak(&v30, &location);
  p_buf = &buf;
  v29 = v31;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke_143;
  v18[3] = &unk_279B8B080;
  v23 = v31;
  v15 = v27;
  v19 = v15;
  v24 = &buf;
  objc_copyWeak(&v25, &location);
  v16 = v12;
  v20 = v16;
  v17 = v11;
  v21 = v17;
  v22 = self;
  [v14 fetchImageWithURL:v15 priority:a4 isSource:0 begin:v26 progress:0 completion:v18];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

void __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v15 = 138412290;
    v16 = v2;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Begin downloading image at URL: %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 124);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 currentQuery];
  v8 = +[STSFeedbackReporter sharedInstance];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2876AE098;
  }

  v10 = [v8 didStartNetworkRequest:*(a1 + 32) query:v9 queryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [MEMORY[0x277CCAC38] processInfo];
  [v13 systemUptime];
  *(*(*(a1 + 48) + 8) + 24) = v14;
}

void __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke_143(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "fetchImageWithURL completion block called", buf, 2u);
  }

  v16 = [MEMORY[0x277CCAC38] processInfo];
  [v16 systemUptime];
  v18 = v17;
  v19 = *(*(*(a1 + 64) + 8) + 24);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = [v14 objectForKeyedSubscript:@"STSImageDownloadOperationStatusCode"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:(v18 - v19) * 1000.0];
    *buf = 138413570;
    v36 = v20;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v21;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "download completed for url: %@, image: %@, imageInfo: %@, status_code: %@, duration: %@, feedback: %@", buf, 0x3Eu);
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v23 = +[STSFeedbackReporter sharedInstance];
    [v23 didEndNetworkRequest:*(*(*(a1 + 72) + 8) + 40) infoDict:v14];
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v12];
  }

  v25 = v24;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke_145;
  block[3] = &unk_279B8B058;
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v32 = v25;
  v33 = *(a1 + 56);
  v34 = WeakRetained;
  v27 = WeakRetained;
  v28 = v25;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__STSPicker__fetchImageWithURL_priority_forCollectionView_atIndexPath___block_invoke_145(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "get cell at index %@", &v4, 0xCu);
  }

  v3 = [*(a1 + 40) cellForItemAtIndexPath:*(a1 + 32)];
  [v3 setImage:*(a1 + 48) animated:1];
  [*(*(a1 + 56) + 1040) removeObject:*(a1 + 32)];
  [*(a1 + 64) _loadMoreResultsIfNecessary];
}

- (void)_loadMoreResultsIfNecessary
{
  if (!self->_isLoadingMoreResults)
  {
    v23 = [(STSSearchModel *)self->_searchModel sections];
    if ([v23 count])
    {
      v3 = [(STSSearchModel *)self->_searchModel sections];
      v4 = [v3 objectAtIndexedSubscript:0];
      v5 = [v4 results];
      v6 = [v5 count];

      if (!v6)
      {
        return;
      }

      v7 = [(STSPicker *)self view];
      v23 = [v7 collectionView];

      [v23 contentOffset];
      v9 = v8;
      [v23 bounds];
      Height = CGRectGetHeight(v25);
      [v23 contentInset];
      v12 = v11;
      [v23 contentSize];
      if (v13 > 0.0)
      {
        v14 = v9 + Height - v12;
        [v23 contentSize];
        v16 = v15;
        v17 = [MEMORY[0x277D759A0] mainScreen];
        [v17 bounds];
        v18 = v16 + CGRectGetHeight(v26) * -0.5;

        if (v14 > v18)
        {
          v19 = [(STSPicker *)self _loadMoreFooter];
          [v19 setLoading:1];

          lastInsertedIndexesCount = self->_lastInsertedIndexesCount;
          v21 = [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad count];
          v22 = self->_lastInsertedIndexesCount;
          if (v22 < 10 || (lastInsertedIndexesCount - v21) / v22 > 0.5)
          {
            self->_isLoadingMoreResults = 1;
            [(STSSearchModel *)self->_searchModel fetchMoreResults];
          }
        }
      }
    }
  }
}

- (void)_updatePredictedSuggestionsForSize:(CGSize)a3
{
  if (self->_showSuggestions)
  {
    width = a3.width;
    v6 = [(STSSearchModel *)self->_searchModel predictedSuggestions:a3.width];
    if (v6)
    {
      v16 = v6;
      v7 = [v6 count];
      if (v7)
      {
        if (v7 >= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = v7;
        }

        v9 = [v16 subarrayWithRange:{0, v8}];
      }

      else
      {
        v9 = MEMORY[0x277CBEBF8];
      }

      v10 = [(STSPicker *)self view];
      v11 = [v10 headerView];

      if (width >= 480.0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if (width >= 480.0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      [v11 setTopSuggestions:v12];
      [v11 setBottomSuggestions:v13];
      if (![(NSArray *)self->_visiblePredictions isEqualToArray:v9])
      {
        v14 = +[STSFeedbackReporter sharedInstance];
        v15 = [(STSSearchModel *)self->_searchModel conversationID];
        [v14 didShowProactiveSuggestions:v9 conversationId:v15];

        objc_storeStrong(&self->_visiblePredictions, v9);
      }

      v6 = v16;
    }
  }
}

- (id)_loadMoreFooter
{
  v2 = [(STSPicker *)self view];
  v3 = [v2 collectionView];
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v5 = [v3 supplementaryViewForElementKind:@"STSGridLayoutElementKindFooter" atIndexPath:v4];

  return v5;
}

- (void)_presentNoticeWithText:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(STSSearchNoticeView);
  [(STSSearchNoticeView *)v7 setText:v4];

  v5 = [MEMORY[0x277D75348] sts_searchErrorTextColor];
  [(STSSearchNoticeView *)v7 setTextColor:v5];

  [(STSSearchNoticeView *)v7 setContentCentered:1];
  v6 = [(STSPicker *)self view];
  [v6 setOverlayView:v7];
}

- (void)_presentDetailViewControllerForIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(STSPicker *)self _cancelActiveDownload];
    v5 = [(STSPicker *)self selectionDelegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__STSPicker__presentDetailViewControllerForIndexPath___block_invoke;
    v6[3] = &unk_279B8AEF0;
    v6[4] = self;
    v7 = v4;
    [v5 requestExpandedPresentationStyleForBrowser:self completion:v6];
  }
}

void __54__STSPicker__presentDetailViewControllerForIndexPath___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1056), *(a1 + 40));
  v2 = [*(a1 + 32) _detailViewControllerForIndexPath:*(a1 + 40)];
  [v2 setUseBackgroundBlur:1];
  [v2 setNumberOfReportedResults:{objc_msgSend(*(*(a1 + 32) + 992), "numberOfReportedResults")}];
  [v2 setModalTransitionStyle:2];
  [v2 setModalPresentationStyle:6];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
}

- (id)_detailViewControllerForIndexPath:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STSSearchModel *)self->_searchModel sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v49 = v6;
  v7 = [v6 results];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];

  v9 = [v8 thumbnail];
  v10 = [v8 sts_providerHostPageURL];
  v11 = [v9 urlValue];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 url];
    *buf = 138412546;
    v53 = v11;
    v54 = 2112;
    v55 = v12;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Generating detail view for result with thumbnail: %@, url: %@", buf, 0x16u);
  }

  v13 = [v8 resultType];
  v14 = [v13 isEqualToString:@"image_search"];

  if (v14)
  {
    v15 = [[STSImageDetailViewController alloc] initWithNibName:0 bundle:0];
    [(STSResultDetailViewController *)v15 setQueryId:+[STSSearchModel clientQueryId]];
    v16 = [(STSSearchModel *)self->_searchModel currentQuery];
    [(STSResultDetailViewController *)v15 setQueryString:v16];

    v17 = [v8 sts_appProviderName];
LABEL_7:
    v20 = v17;
    [(STSResultDetailViewController *)v15 setProviderName:v17];

    goto LABEL_9;
  }

  v18 = [v8 resultType];
  v19 = [v18 isEqualToString:@"web_video"];

  if (v19)
  {
    v15 = [[STSVideoDetailViewController alloc] initWithNibName:0 bundle:0];
    [(STSResultDetailViewController *)v15 setQueryId:+[STSSearchModel clientQueryId]];
    [(STSResultDetailViewController *)v15 setContentSize:16.0, 9.0];
    v17 = [v8 sts_providerName];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_9:
  [(STSResultDetailViewController *)v15 setNumberOfReportedResults:[(STSSearchModel *)self->_searchModel numberOfReportedResults]];
  [v8 sts_providerIconSize];
  [(STSResultDetailViewController *)v15 setProviderIconSize:?];
  v21 = [MEMORY[0x277D759A0] mainScreen];
  [v21 scale];
  v23 = v22;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __47__STSPicker__detailViewControllerForIndexPath___block_invoke;
  v50[3] = &unk_279B8B0A8;
  v24 = v15;
  v51 = v24;
  [v8 sts_providerIconWithScale:v50 completion:v23];

  v25 = [(STSPicker *)self view];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v57.origin.x = v27;
  v57.origin.y = v29;
  v57.size.width = v31;
  v57.size.height = v33;
  Width = CGRectGetWidth(v57);
  v58.origin.x = v27;
  v58.origin.y = v29;
  v58.size.width = v31;
  v58.size.height = v33;
  Height = CGRectGetHeight(v58);
  if (Width < Height)
  {
    Height = Width;
  }

  [(STSImageDetailViewController *)v24 setPreferredContentSize:Height, Height];
  v36 = [v8 url];
  [(STSImageDetailViewController *)v24 setContentURL:v36];

  [(STSResultDetailViewController *)v24 setProviderURL:v10];
  [(STSResultDetailViewController *)v24 setDelegate:self];
  [(STSResultDetailViewController *)v24 setSearchResult:v8];
  v37 = [(STSPicker *)self view];
  v38 = [v37 collectionView];
  v39 = [v38 cellForItemAtIndexPath:v4];

  v40 = [v39 image];
  v41 = [v40 images];
  v42 = [v41 count];

  if (v42 < 2)
  {
    v44 = +[STSImageCache sharedCache];
    v45 = [v44 fetchCachedImageInfoForURL:v11];

    if (v45)
    {
      v43 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v45];
    }

    else
    {
      v46 = +[STSImageCache sharedCache];
      v43 = [v46 fetchCachedStaticImageForURL:v11];
    }
  }

  else
  {
    v43 = [v39 image];
  }

  [v43 size];
  [(STSResultDetailViewController *)v24 setContentSize:?];
  [(STSResultDetailViewController *)v24 updateWithThumbnail:v43 orThumbnailInfo:0];
  v47 = v24;

  return v24;
}

void __47__STSPicker__detailViewControllerForIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__STSPicker__detailViewControllerForIndexPath___block_invoke_2;
  v5[3] = &unk_279B8AEF0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)_beginDownloadingResultAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(STSSearchModel *)self->_searchModel sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 results];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

  v10 = [v9 resultType];
  v11 = [v10 isEqualToString:@"web_video"];

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke;
    block[3] = &unk_279B8AEF0;
    v42 = v9;
    v43 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v12 = v42;
  }

  else
  {
    objc_storeStrong(&self->_activeDownloadIndexPath, a3);
    self->_activeDownloadProgress = 0.0;
    v13 = [(STSPicker *)self view];
    v14 = [v13 collectionView];
    v12 = [v14 cellForItemAtIndexPath:self->_activeDownloadIndexPath];

    [v12 setShowDownloadIndicator:1 animated:1.0];
    objc_initWeak(&location, self);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__1;
    v38[4] = __Block_byref_object_dispose__1;
    v39 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v15 = [v9 url];
    v16 = +[STSImageCache sharedCache];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3;
    v31[3] = &unk_279B8B0F8;
    v17 = v15;
    v32 = v17;
    objc_copyWeak(&v36, &location);
    v33 = self;
    v34 = v38;
    v35 = v37;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_156;
    v28[3] = &unk_279B8B148;
    objc_copyWeak(&v30, &location);
    v28[4] = self;
    v18 = v5;
    v29 = v18;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3_159;
    v20[3] = &unk_279B8B170;
    objc_copyWeak(&v27, &location);
    v21 = v18;
    v25 = v37;
    v19 = v17;
    v22 = v19;
    v26 = v38;
    v23 = v9;
    v24 = self;
    [v16 fetchImageDataWithURL:v19 priority:8 isSource:1 begin:v31 progress:v28 completion:v20];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v36);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v38, 8);

    objc_destroyWeak(&location);
  }
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(STSPayload);
  v3 = [*(a1 + 32) punchout];
  v4 = [v3 urls];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2;
  v6[3] = &unk_279B8B0D0;
  v6[4] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];
  [(STSPayload *)v2 setVideoURL:v8[5]];
  v5 = [*(a1 + 40) selectionDelegate];
  [v5 browser:*(a1 + 40) didSelectResult:*(a1 + 32) withPayload:v2];

  _Block_object_dispose(&v7, 8);
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 scheme];
  v8 = [v7 hasPrefix:@"http"];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v13 = 138412290;
    v14 = v2;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Begin downloading image at URL: %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = +[STSFeedbackReporter sharedInstance];
    v5 = *(a1 + 32);
    v6 = [*(*(a1 + 40) + 992) currentQuery];
    if (v6)
    {
      v7 = [*(*(a1 + 40) + 992) currentQuery];
    }

    else
    {
      v7 = &stru_2876AE098;
    }

    v8 = [v4 didStartNetworkRequest:v5 query:v7 queryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (v6)
    {
    }
  }

  v11 = [MEMORY[0x277CCAC38] processInfo];
  [v11 systemUptime];
  *(*(*(a1 + 56) + 8) + 24) = v12;
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_156(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2_157;
    v8[3] = &unk_279B8B120;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    v10 = WeakRetained;
    v11 = a2 / a3;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2_157(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1064) isEqual:*(a1 + 40)])
  {
    *(*(a1 + 48) + 1072) = *(a1 + 56);
    v2 = [*(a1 + 48) view];
    v3 = [v2 collectionView];
    v4 = [v3 cellForItemAtIndexPath:*(a1 + 40)];

    [v4 setDownloadProgress:*(a1 + 56)];
  }
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3_159(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v15 = WeakRetained;
  if (WeakRetained && [WeakRetained[133] isEqual:*(a1 + 32)])
  {
    v16 = [MEMORY[0x277CCAC38] processInfo];
    [v16 systemUptime];
    v18 = v17;
    v19 = *(*(*(a1 + 64) + 8) + 24);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 objectForKeyedSubscript:@"STSImageDownloadOperationStatusCode"];
      v21 = *(a1 + 40);
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:(v18 - v19) * 1000.0];
      *buf = 138412802;
      v61 = v20;
      v62 = 2112;
      v63 = v21;
      v64 = 2112;
      v65 = v22;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "source image downloaded status_code %@ %@ (duration %@)", buf, 0x20u);
    }

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v23 = +[STSFeedbackReporter sharedInstance];
      [v23 didEndNetworkRequest:*(*(*(a1 + 72) + 8) + 40) infoDict:v12];
    }

    v45 = [v11 lowercaseString];
    v24 = &off_264EC5000;
    if (v10 && !v13)
    {
      if ([v45 containsString:@"gif"] & 1) != 0 || (objc_msgSend(v45, "containsString:", @"jpeg") & 1) != 0 || (objc_msgSend(v45, "containsString:", @"png"))
      {
        goto LABEL_18;
      }

      v58 = *MEMORY[0x277CCA450];
      v25 = STSLocalizedString(@"ERROR_DESC_UNSUPPORTED_FILETYPE");
      v59 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];

      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"STSErrorDomain" code:1 userInfo:v26];
      v24 = &off_264EC5000;
    }

    if (v13)
    {
      v27 = [v13 domain];
      if ([v27 isEqualToString:*MEMORY[0x277CCA738]])
      {
        v28 = [v13 code];

        v29 = v28 == -999;
        v24 = &off_264EC5000;
        if (v29)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3_181;
      v49[3] = &unk_279B8AEF0;
      v39 = v50;
      v13 = v13;
      v40 = *(a1 + 56);
      v50[0] = v13;
      v50[1] = v40;
      dispatch_async(MEMORY[0x277D85CD0], v49);
LABEL_21:

LABEL_22:
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = *(v24 + 348);
      v46[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_4;
      v46[3] = &unk_279B8AEF0;
      v41 = v15;
      v42 = *(a1 + 56);
      v47 = v41;
      v48 = v42;
      dispatch_async(MEMORY[0x277D85CD0], v46);

      goto LABEL_23;
    }

LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_174;
    block[3] = &unk_279B8AEF0;
    v44 = v11;
    v30 = v15;
    v56 = v30;
    v57 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v43 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v31 = [v43 objectAtIndexedSubscript:0];
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = [v31 stringByAppendingPathComponent:@"tmp.gif"];
    v34 = [v32 initWithString:v33];

    v35 = [MEMORY[0x277CCAA00] defaultManager];
    [v35 removeItemAtPath:v34 error:0];
    [v10 writeToFile:v34 atomically:1];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2_179;
    v51[3] = &unk_279B8AF68;
    v52 = v34;
    v36 = v30;
    v11 = v44;
    v53 = v36;
    v54 = *(a1 + 48);
    v37 = v34;
    v38 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v51);

    v24 = &off_264EC5000;
    v39 = &v56;

    v13 = 0;
    goto LABEL_21;
  }

LABEL_23:
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_174(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 collectionView];
  v4 = [v3 cellForItemAtIndexPath:*(a1 + 40)];

  [v4 setDownloadProgress:1.0];
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_2_179(uint64_t a1)
{
  v4 = objc_alloc_init(STSPayload);
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  [(STSPayload *)v4 setImageURL:v2];

  v3 = [*(a1 + 40) selectionDelegate];
  [v3 browser:*(a1 + 40) didSelectResult:*(a1 + 48) withPayload:v4];
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_3_181(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = STSLocalizedString(@"SHARE_IMAGE_FAILED_ALERT_TITLE");
  v4 = [*(a1 + 32) localizedDescription];
  v8 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = MEMORY[0x277D750F8];
  v6 = STSLocalizedString(@"OK");
  v7 = [v5 actionWithTitle:v6 style:0 handler:0];

  [v8 addAction:v7];
  [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
}

void __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 collectionView];
  v6 = [v3 cellForItemAtIndexPath:*(*(a1 + 40) + 1064)];

  [v6 setShowDownloadIndicator:1 animated:0.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1064);
  *(v4 + 1064) = 0;

  *(*(a1 + 32) + 1072) = 0;
}

- (void)_cancelActiveDownload
{
  activeDownloadIndexPath = self->_activeDownloadIndexPath;
  if (activeDownloadIndexPath)
  {
    self->_activeDownloadIndexPath = 0;
    v4 = activeDownloadIndexPath;

    self->_activeDownloadProgress = 0.0;
    v5 = [(STSSearchModel *)self->_searchModel sections];
    v13 = [v5 objectAtIndexedSubscript:{-[NSIndexPath section](v4, "section")}];

    v6 = [v13 results];
    v7 = [v6 objectAtIndexedSubscript:{-[NSIndexPath item](v4, "item")}];

    v8 = +[STSImageCache sharedCache];
    v9 = [v7 url];
    [v8 cancelQueuedDownloadForURL:v9];

    v10 = [(STSPicker *)self view];
    v11 = [v10 collectionView];
    v12 = [v11 cellForItemAtIndexPath:v4];

    [v12 setShowDownloadIndicator:1 animated:0.0];
  }
}

- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)a3
{
  displayedResultsQueue = self->_displayedResultsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__STSPicker__reportFeedbackDisplayedResultsDidScroll___block_invoke;
  v4[3] = &unk_279B8B198;
  v4[4] = self;
  v5 = a3;
  dispatch_async(displayedResultsQueue, v4);
}

uint64_t __54__STSPicker__reportFeedbackDisplayedResultsDidScroll___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1008) count];
  if (result)
  {
    v3 = +[STSFeedbackReporter sharedInstance];
    v4 = [*(*(a1 + 32) + 1008) copy];
    [v3 didShowResults:v4 scrolling:*(a1 + 40)];

    v5 = *(*(a1 + 32) + 1008);

    return [v5 removeAllObjects];
  }

  return result;
}

- (id)_noticeTextForSearchError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"STSErrorDomain"])
  {
    v5 = [v3 code];

    if (v5 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v7 = [v3 code];

    if (v7 == -1009)
    {
LABEL_7:
      v8 = [v3 localizedDescription];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = STSLocalizedString(@"ERROR_DESC_COULD_NOT_LOAD");
LABEL_10:
  v9 = v8;

  return v9;
}

- (void)sendVisibleResultsFeedback
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(STSSearchModel *)self->_searchModel sections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(STSPicker *)self pickerView];
    v6 = [v5 collectionView];
    v7 = [v6 indexPathsForVisibleItems];

    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [(STSPicker *)self pickerView];
          v15 = [v14 collectionView];
          v16 = [v15 cellForItemAtIndexPath:v13];

          if (v16)
          {
            v17 = [v16 layer];
            [v17 frame];
            v19 = v18;

            v20 = [(STSPicker *)self pickerView];
            v21 = [v20 collectionView];

            [v21 contentOffset];
            v23 = v22;
            [v21 frame];
            v25 = v23 + v24;
            [v21 contentInset];
            if (v19 < v25 - v26 + -20.0)
            {
              v27 = [(STSSearchModel *)self->_searchModel sections];
              v28 = [v27 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

              v29 = [v28 results];
              v30 = [v29 objectAtIndexedSubscript:{objc_msgSend(v13, "item")}];

              if (([(NSMutableSet *)self->_visibleResultsSent containsObject:v30]& 1) == 0)
              {
                [(NSMutableSet *)self->_visibleResultsSent addObject:v30];
                [v33 addObject:v30];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    if ([v33 count])
    {
      isScrolling = self->_isScrolling;
      displayedResultsQueue = self->_displayedResultsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__STSPicker_sendVisibleResultsFeedback__block_invoke;
      block[3] = &unk_279B8B198;
      v35 = v33;
      v36 = isScrolling;
      dispatch_async(displayedResultsQueue, block);
    }
  }
}

void __39__STSPicker_sendVisibleResultsFeedback__block_invoke(uint64_t a1)
{
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 didShowResults:*(a1 + 32) scrolling:*(a1 + 40)];
}

- (STSPickerSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (void)_handleLongPress:(id *)a1 .cold.1(id *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*a1 sections];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [v3 count];
  _os_log_fault_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "processing feedback for STSPicker handleLongPress, somehow the selected section (%lu), is greater than the number of feedback sections (%lu)", &v4, 0x16u);
}

@end