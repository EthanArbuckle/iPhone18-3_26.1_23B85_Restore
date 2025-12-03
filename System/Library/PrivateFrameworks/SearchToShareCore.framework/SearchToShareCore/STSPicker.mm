@interface STSPicker
- (STSPicker)initWithSearchModel:(id)model showSuggestions:(BOOL)suggestions;
- (STSPickerSelectionDelegate)selectionDelegate;
- (STSPickerView)pickerView;
- (id)_detailViewControllerForIndexPath:(id)path;
- (id)_loadMoreFooter;
- (id)_noticeTextForSearchError:(id)error;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)getTapToRadarPunchOut:(id)out;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (id)snapshotImage;
- (int64_t)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_beginDownloadingResultAtIndexPath:(id)path;
- (void)_cancelActiveDownload;
- (void)_fetchImageWithURL:(id)l priority:(int64_t)priority forCollectionView:(id)view atIndexPath:(id)path;
- (void)_handleDebugGesture:(id)gesture;
- (void)_handleLongPress:(id)press;
- (void)_loadMoreResultsIfNecessary;
- (void)_presentDetailViewControllerForIndexPath:(id)path;
- (void)_presentNoticeWithText:(id)text;
- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)scroll;
- (void)_updatePredictedSuggestionsForSize:(CGSize)size;
- (void)cancelImageDownloads;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)detailViewControllerDidInsert:(id)insert;
- (void)detailViewControllerDidReportConcern:(id)concern result:(id)result punchout:(id)punchout;
- (void)detailViewControllerDidSelectProviderLink:(id)link;
- (void)didReceiveMemoryWarning;
- (void)headerDidSelectCancelButton:(id)button;
- (void)headerView:(id)view didRequestCompletion:(id)completion;
- (void)headerView:(id)view didSearchFor:(id)for;
- (void)headerView:(id)view didSelectSuggestionButtonAtIndex:(unint64_t)index;
- (void)headerViewDidDeleteText;
- (void)headerViewDidSelectSearchButton:(id)button;
- (void)loadMoreFooterDidTapLogo;
- (void)loadView;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)performSearchWithQueryString:(id)string requestType:(int64_t)type;
- (void)performZKWSearchQuery;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)resetContent;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)searchModel:(id)model insertedResultsAtIndexPaths:(id)paths removedResultsAtIndexPaths:(id)indexPaths;
- (void)searchModelUpdatedPredictedSuggestions:(id)suggestions;
- (void)sendVisibleResultsFeedback;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentOffset:(double)offset;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation STSPicker

- (STSPicker)initWithSearchModel:(id)model showSuggestions:(BOOL)suggestions
{
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = STSPicker;
  v8 = [(STSPicker *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchModel, model);
    v9->_showSuggestions = suggestions;
    [(STSSearchModel *)v9->_searchModel setDelegate:v9];
    v9->_sectionsTag = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    lastInsertedIndexesWaitingToLoad = v9->_lastInsertedIndexesWaitingToLoad;
    v9->_lastInsertedIndexesWaitingToLoad = v10;

    array = [MEMORY[0x277CBEB18] array];
    displayedResults = v9->_displayedResults;
    v9->_displayedResults = array;

    v14 = dispatch_queue_create("com.apple.messages.picker.displayedresultsq", 0);
    displayedResultsQueue = v9->_displayedResultsQueue;
    v9->_displayedResultsQueue = v14;

    v16 = objc_opt_new();
    visibleResultsSent = v9->_visibleResultsSent;
    v9->_visibleResultsSent = v16;

    v9->_isSnapShotting = 0;
    v9->_debugMode = 0;
    array2 = [MEMORY[0x277CBEB18] array];
    debugItems = v9->_debugItems;
    v9->_debugItems = array2;
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
  collectionView = [(STSPickerView *)v17 collectionView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [collectionView setBackgroundColor:clearColor];

  collectionView2 = [(STSPickerView *)v17 collectionView];
  [collectionView2 setScrollsToTop:1];

  collectionView3 = [(STSPickerView *)v17 collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(STSPickerView *)v17 collectionView];
  [collectionView4 setDelegate:self];

  collectionView5 = [(STSPickerView *)v17 collectionView];
  [collectionView5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"STSGridLayoutElementKindHeader" withReuseIdentifier:@"STSGridLayoutElementKindHeader"];

  collectionView6 = [(STSPickerView *)v17 collectionView];
  [collectionView6 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"STSGridLayoutElementKindFooter" withReuseIdentifier:@"STSGridLayoutElementKindFooter"];

  collectionView7 = [(STSPickerView *)v17 collectionView];
  [collectionView7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"STSImageCell"];

  collectionView8 = [(STSPickerView *)v17 collectionView];
  [collectionView8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"STSVideoCell"];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleLongPress_];
  [v13 setMinimumPressDuration:0.75];
  collectionView9 = [(STSPickerView *)v17 collectionView];
  [collectionView9 addGestureRecognizer:v13];

  if (STSIsInternalInstall())
  {
    v15 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__handleDebugGesture_];
    [v15 setDirection:3];
    [v15 setNumberOfTouchesRequired:2];
    collectionView10 = [(STSPickerView *)v17 collectionView];
    [collectionView10 addGestureRecognizer:v15];
  }

  [(STSPicker *)self setView:v17];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  displayedResultsQueue = self->_displayedResultsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__STSPicker_viewDidDisappear___block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(displayedResultsQueue, block);
}

- (void)willMoveToParentViewController:(id)controller
{
  v22.receiver = self;
  v22.super_class = STSPicker;
  [(STSPicker *)&v22 willMoveToParentViewController:?];
  sections = [(STSSearchModel *)self->_searchModel sections];
  firstObject = [sections firstObject];
  results = [firstObject results];

  view = [(STSPicker *)self view];
  collectionView = [view collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  if (controller)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__STSPicker_willMoveToParentViewController___block_invoke;
    v20[3] = &unk_279B8AA78;
    v11 = &v21;
    v20[4] = self;
    v21 = results;
    v12 = results;
    [indexPathsForVisibleItems enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __44__STSPicker_willMoveToParentViewController___block_invoke_2;
    v17 = &unk_279B8AA78;
    v11 = &v19;
    selfCopy = self;
    v19 = results;
    v13 = results;
    [indexPathsForVisibleItems enumerateObjectsUsingBlock:&v14];

    view = [STSImageCache sharedCache:v14];
    [view clearInMemoryCache];
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

- (void)traitCollectionDidChange:(id)change
{
  parentViewController = [(STSPicker *)self parentViewController];

  if (parentViewController)
  {
    if (!self->_previewingContext)
    {
      traitCollection = [(STSPicker *)self traitCollection];
      forceTouchCapability = [traitCollection forceTouchCapability];

      if (forceTouchCapability == 2)
      {
        view = [(STSPicker *)self view];
        collectionView = [view collectionView];
        v8 = [(STSPicker *)self registerForPreviewingWithDelegate:self sourceView:collectionView];
        previewingContext = self->_previewingContext;
        self->_previewingContext = v8;
      }
    }
  }

  else
  {
    view2 = [(STSPicker *)self view];
    [view2 setOverlayView:0];

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
    view = [(STSPicker *)self view];
    collectionView = [view collectionView];
    [collectionView reloadData];
  }

  view2 = [(STSPicker *)self view];
  [view2 frame];
  [(STSPicker *)self _updatePredictedSuggestionsForSize:v6, v7];

  if (!self->_isSnapShotting)
  {

    [(STSPicker *)self sendVisibleResultsFeedback];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(STSPicker *)self _updatePredictedSuggestionsForSize:width, height];
  [coordinatorCopy animateAlongsideTransition:0 completion:0];
  v8.receiver = self;
  v8.super_class = STSPicker;
  [(STSPicker *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  if (!style)
  {
    presentedViewController = [(STSPicker *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController2 = [(STSPicker *)self presentedViewController];
      [presentedViewController2 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

- (id)snapshotImage
{
  self->_isSnapShotting = 1;
  view = [(STSPicker *)self view];
  [view scrollToTopWithAnimation:0];

  view2 = [(STSPicker *)self view];
  collectionView = [view2 collectionView];
  [collectionView setHidden:1];

  view3 = [(STSPicker *)self view];
  overlayView = [view3 overlayView];
  [overlayView setHidden:1];

  showSuggestions = self->_showSuggestions;
  self->_showSuggestions = 0;
  view4 = [(STSPicker *)self view];
  headerView = [view4 headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view5 = [(STSPicker *)self view];
    headerView2 = [view5 headerView];

    [headerView2 setTopSuggestions:0];
    [headerView2 setBottomSuggestions:0];
    view6 = [(STSPicker *)self view];
    [view6 setNeedsLayout];

    view7 = [(STSPicker *)self view];
    [view7 layoutIfNeeded];
  }

  view8 = [(STSPicker *)self view];
  [view8 bounds];
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
  view9 = [(STSPicker *)self view];
  collectionView2 = [view9 collectionView];
  [collectionView2 setHidden:0];

  view10 = [(STSPicker *)self view];
  overlayView2 = [view10 overlayView];
  [overlayView2 setHidden:0];

  [(STSPicker *)self _updatePredictedSuggestionsForSize:v22, v24];
  view11 = [(STSPicker *)self view];
  [view11 setNeedsLayout];

  view12 = [(STSPicker *)self view];
  [view12 layoutIfNeeded];

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
  view = [(STSPicker *)self view];
  [view setOverlayView:0];

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
  uUID = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_lastSearchId, uUID);
  objc_initWeak(&location, self);
  searchModel = self->_searchModel;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__STSPicker_performZKWSearchQuery__block_invoke_3;
  v10[3] = &unk_279B8AEA0;
  objc_copyWeak(&v13, &location);
  v12 = v16;
  v9 = uUID;
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

- (void)performSearchWithQueryString:(id)string requestType:(int64_t)type
{
  stringCopy = string;
  objc_storeStrong(&self->_currentQuery, string);
  view = [(STSPicker *)self view];
  [view setOverlayView:0];

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
  uUID = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_lastSearchId, uUID);
  objc_initWeak(&location, self);
  searchModel = self->_searchModel;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__STSPicker_performSearchWithQueryString_requestType___block_invoke_3;
  v14[3] = &unk_279B8AEC8;
  objc_copyWeak(v17, &location);
  v16 = v20;
  v13 = uUID;
  v15 = v13;
  v17[1] = type;
  [(STSSearchModel *)searchModel performSearchWithQueryString:stringCopy requestType:type completion:v14];

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
  view = [(STSPicker *)self view];
  [view setOverlayView:0];
}

- (STSPickerView)pickerView
{
  [(STSPicker *)self loadViewIfNeeded];

  return [(STSPicker *)self view];
}

- (void)updateContentOffset:(double)offset
{
  pickerView = [(STSPicker *)self pickerView];
  [pickerView updateContentOffset:offset];
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    view = [(STSPicker *)self view];
    collectionView = [view collectionView];
    view2 = [(STSPicker *)self view];
    collectionView2 = [view2 collectionView];
    [pressCopy locationInView:collectionView2];
    v9 = [collectionView indexPathForItemAtPoint:?];

    [(STSPicker *)self _presentDetailViewControllerForIndexPath:v9];
    section = [v9 section];
    sections = [(STSSearchModel *)self->_searchModel sections];
    v12 = [sections count];

    if (section >= v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [(STSPicker *)&self->_searchModel _handleLongPress:section];
      }
    }

    else
    {
      sections2 = [(STSSearchModel *)self->_searchModel sections];
      v14 = [sections2 objectAtIndexedSubscript:section];

      results = [v14 results];
      v16 = [results objectAtIndexedSubscript:{objc_msgSend(v9, "item")}];

      v17 = +[STSFeedbackReporter sharedInstance];
      [v17 didPreviewResultLongPress:v16];
    }
  }
}

- (void)_handleDebugGesture:(id)gesture
{
  if (STSIsInternalInstall())
  {
    if (self->_debugMode)
    {
      self->_debugMode = 0;
      pickerView = [(STSPicker *)self pickerView];
      collectionView = [pickerView collectionView];
      [collectionView setAllowsMultipleSelection:0];

      pickerView2 = [(STSPicker *)self pickerView];
      collectionView2 = [pickerView2 collectionView];
      [collectionView2 setBackgroundColor:self->_originalColor];

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
      pickerView3 = [(STSPicker *)self pickerView];
      collectionView3 = [pickerView3 collectionView];
      backgroundColor = [collectionView3 backgroundColor];
      originalColor = self->_originalColor;
      self->_originalColor = backgroundColor;

      pickerView4 = [(STSPicker *)self pickerView];
      collectionView4 = [pickerView4 collectionView];
      purpleColor = [MEMORY[0x277D75348] purpleColor];
      [collectionView4 setBackgroundColor:purpleColor];

      pickerView5 = [(STSPicker *)self pickerView];
      collectionView5 = [pickerView5 collectionView];
      [collectionView5 setAllowsMultipleSelection:1];
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

- (id)getTapToRadarPunchOut:(id)out
{
  v39 = *MEMORY[0x277D85DE8];
  outCopy = out;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n############################\n\n#IMAGES DEBUG INFO (PLEASE DO NOT EDIT):\n"];
  currentQuery = self->_currentQuery;
  if (!currentQuery)
  {
    currentQuery = @"ZKW";
  }

  currentQuery = [MEMORY[0x277CCACA8] stringWithFormat:@"\nQUERY:\n%@\n", currentQuery];
  v8 = [v5 stringByAppendingString:currentQuery];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = outCopy;
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

- (void)searchModelUpdatedPredictedSuggestions:(id)suggestions
{
  view = [(STSPicker *)self view];
  headerView = [view headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(STSPicker *)self view];
    [view2 frame];
    [(STSPicker *)self _updatePredictedSuggestionsForSize:v8, v9];

    view3 = [(STSPicker *)self view];
    [view3 setNeedsLayout];
  }
}

- (void)searchModel:(id)model insertedResultsAtIndexPaths:(id)paths removedResultsAtIndexPaths:(id)indexPaths
{
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  self->_isLoadingMoreResults = 0;
  _loadMoreFooter = [(STSPicker *)self _loadMoreFooter];
  [_loadMoreFooter setLoading:0];

  if ([pathsCopy count])
  {
    self->_lastInsertedIndexesCount = [pathsCopy count];
    [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad removeAllObjects];
    [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad addObjectsFromArray:pathsCopy];
  }

  view = [(STSPicker *)self view];
  collectionView = [view collectionView];
  [collectionView bounds];
  IsEmpty = CGRectIsEmpty(v30);

  if (IsEmpty)
  {
    self->_needsReloadAfterLayout = 1;
  }

  else if ([indexPathsCopy count] && (-[STSPicker view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "collectionView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "numberOfItemsInSection:", 0), v15 = objc_msgSend(indexPathsCopy, "count"), v13, v12, v14 > v15))
  {
    view2 = [(STSPicker *)self view];
    collectionView2 = [view2 collectionView];
    [collectionView2 reloadData];
  }

  else if ([pathsCopy count])
  {
    view3 = [(STSPicker *)self view];
    collectionView3 = [view3 collectionView];
    [collectionView3 reloadData];

    [(STSPicker *)self sendVisibleResultsFeedback];
  }

  sections = [(STSSearchModel *)self->_searchModel sections];
  firstObject = [sections firstObject];
  results = [firstObject results];
  if ([results count])
  {
    +[STSLoadMoreFooter defaultHeight];
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  view4 = [(STSPicker *)self view];
  collectionView4 = [view4 collectionView];
  collectionViewLayout = [collectionView4 collectionViewLayout];
  [collectionViewLayout setFooterHeight:v24];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sections = [(STSSearchModel *)self->_searchModel sections];
  v4 = [sections count];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(STSSearchModel *)self->_searchModel sections:view];
  firstObject = [v4 firstObject];
  results = [firstObject results];
  v7 = [results count];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v73 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  sections = [(STSSearchModel *)self->_searchModel sections];
  v9 = [sections count];
  if (v9 <= [pathCopy section])
  {
    v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:pathCopy];
    sts_defaultCellPlaceholderColor = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
    [v17 setPlaceholderColor:sts_defaultCellPlaceholderColor];

    goto LABEL_40;
  }

  sections2 = [(STSSearchModel *)self->_searchModel sections];
  v11 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  results = [v11 results];
  v12 = [results count];
  if (v12 > [pathCopy item])
  {
    results2 = [v11 results];
    v14 = [results2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    sts_badge = [v14 sts_badge];
    thumbnail = [v14 thumbnail];
    urlValue = [thumbnail urlValue];
    sts_descriptionText = [v14 sts_descriptionText];
    resultType = [v14 resultType];
    v16 = [resultType isEqualToString:@"image_search"];

    if (v16)
    {
      v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:pathCopy];
      v18 = +[STSImageCache sharedCache];
      v53 = [v18 fetchCachedImageInfoForURL:urlValue];

      [v17 setCategory:0];
      if (STSIsInternalInstall())
      {
        [v17 setDebugBadge:0];
        if ([(NSMutableArray *)self->_debugItems containsObject:pathCopy])
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
        [(NSMutableSet *)self->_lastInsertedIndexesWaitingToLoad removeObject:pathCopy];
      }

      else
      {
        v70 = 0;
        v38 = +[STSImageCache sharedCache];
        v39 = [v38 fetchCachedStaticImageForURL:urlValue hasMultipleFrames:&v70];

        [v17 setImage:v39];
        if (!v39 || v70 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v72 = urlValue;
            _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cache Miss: fetching %@", buf, 0xCu);
          }

          [(STSPicker *)self _fetchImageWithURL:urlValue priority:0 forCollectionView:viewCopy atIndexPath:pathCopy];
        }
      }

      if (sts_descriptionText)
      {
        [v17 setAccessibilityTraits:*MEMORY[0x277D76578]];
        [v17 setIsAccessibilityElement:1];
        [v17 setAccessibilityValue:sts_descriptionText];
      }

      else
      {
        [v17 setAccessibilityValue:0];
        [v17 setAccessibilityTraits:*MEMORY[0x277D76560]];
      }

      secondaryTitle = [v14 secondaryTitle];

      if (secondaryTitle)
      {
        secondaryTitle2 = [v14 secondaryTitle];
        [v17 setCategory:secondaryTitle2];
      }

      if ([(NSIndexPath *)self->_activeDownloadIndexPath isEqual:pathCopy])
      {
        [v17 setDownloadProgress:self->_activeDownloadProgress];
        [v17 setShowDownloadIndicator:0 animated:1.0];
      }
    }

    else
    {
      resultType2 = [v14 resultType];
      v24 = [resultType2 isEqualToString:@"web_video"];

      if (!v24)
      {
        v17 = 0;
        goto LABEL_32;
      }

      v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"STSVideoCell" forIndexPath:pathCopy];
      title = [v14 title];
      text = [title text];
      [v17 setTitle:text];

      v27 = objc_opt_new();
      descriptions = [v14 descriptions];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke;
      v68[3] = &unk_279B8AF40;
      v53 = v27;
      v69 = v53;
      [descriptions enumerateObjectsUsingBlock:v68];

      [v17 setCategory:0];
      v52 = [v53 componentsJoinedByString:@"\n"];
      [v17 setSubtitle:v52];
      sts_videoDuration = [v14 sts_videoDuration];
      [v17 setDuration:sts_videoDuration];

      sts_providerName = [v14 sts_providerName];
      [v17 setProviderName:sts_providerName];

      [v17 setProviderIcon:0];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v33 = v32;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_3;
      v65[3] = &unk_279B8AF90;
      v51 = viewCopy;
      v66 = v51;
      v34 = pathCopy;
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
      v37 = [v36 fetchCachedStaticImageForURL:urlValue];

      [v17 setImage:v37];
      if (!v37)
      {
        [(STSPicker *)self _fetchImageWithURL:urlValue priority:0 forCollectionView:v51 atIndexPath:v35];
      }

      objc_destroyWeak(&v64);
      objc_destroyWeak(buf);
    }

LABEL_32:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v42 = MEMORY[0x277D75348], [thumbnail keyColor], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "sts_colorFromHexString:alpha:", v43, 1.0), sts_defaultCellPlaceholderColor2 = objc_claimAutoreleasedReturnValue(), v43, !sts_defaultCellPlaceholderColor2))
    {
      sts_defaultCellPlaceholderColor2 = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
    }

    [v17 setPlaceholderColor:{sts_defaultCellPlaceholderColor2, v51}];
    imageData = [sts_badge imageData];
    if (imageData)
    {
      v46 = MEMORY[0x277D755B8];
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v48 = [v46 imageWithData:imageData scale:?];

      [v17 setBadge:v48];
    }

    else
    {
      [v17 setBadge:0];
      sts_badge2 = [v14 sts_badge];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __51__STSPicker_collectionView_cellForItemAtIndexPath___block_invoke_6;
      v59[3] = &unk_279B8AFE0;
      v60 = viewCopy;
      v61 = pathCopy;
      [sts_badge2 loadImageDataWithCompletionAndErrorHandler:v59];

      v48 = v60;
    }

    goto LABEL_39;
  }

  v17 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"STSImageCell" forIndexPath:pathCopy];
  sts_defaultCellPlaceholderColor3 = [MEMORY[0x277D75348] sts_defaultCellPlaceholderColor];
  [v17 setPlaceholderColor:sts_defaultCellPlaceholderColor3];

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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([kind isEqualToString:@"STSGridLayoutElementKindFooter"])
  {
    v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"STSGridLayoutElementKindFooter" withReuseIdentifier:@"STSGridLayoutElementKindFooter" forIndexPath:pathCopy];
    [v10 setLoading:self->_isLoadingMoreResults];
    [v10 setDelegate:self];
    v11 = +[STSImageCache sharedCache];
    searchProviderImage = [v11 searchProviderImage];
    [v10 setSearchProviderImage:searchProviderImage];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(STSSearchModel *)self->_searchModel sections];
  v8 = [sections count];
  section = [pathCopy section];

  if (v8 <= section)
  {
    v19 = 1;
  }

  else
  {
    sections2 = [(STSSearchModel *)self->_searchModel sections];
    v11 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    item = [pathCopy item];
    results = [v11 results];
    v14 = [results count];

    if (item >= v14)
    {
      v19 = 1;
    }

    else
    {
      results2 = [v11 results];
      v16 = [results2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

      resultType = [v16 resultType];
      v18 = [resultType isEqualToString:@"web_video"];

      v19 = v18 ^ 1u;
    }
  }

  return v19;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_debugMode)
  {
    [(NSMutableArray *)self->_debugItems addObject:pathCopy];
    v7 = [viewCopy cellForItemAtIndexPath:pathCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    sections = [viewCopy cellForItemAtIndexPath:pathCopy];
    v10 = [MEMORY[0x277D755B8] imageNamed:@"feedback-selected-icon"];
    [sections setDebugBadge:v10];
    goto LABEL_13;
  }

  v11 = [(NSIndexPath *)self->_activeDownloadIndexPath isEqual:pathCopy];
  [(STSPicker *)self _cancelActiveDownload];
  sections = [(STSSearchModel *)self->_searchModel sections];
  v12 = [sections count];
  if (v12 > [pathCopy section])
  {
    v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
    results = [v10 results];
    v14 = [results objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    secondaryTitle = [v14 secondaryTitle];

    if (secondaryTitle)
    {
      selectionDelegate = [(STSPicker *)self selectionDelegate];
      [selectionDelegate browser:self didSelectCategoryResult:v14];
    }

    else
    {
      if (pathCopy)
      {
        v17 = v11;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        [(STSPicker *)self _beginDownloadingResultAtIndexPath:pathCopy];
      }
    }

LABEL_13:
  }

LABEL_15:
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_debugMode)
  {
    [(NSMutableArray *)self->_debugItems removeObject:pathCopy];
    v7 = [viewCopy cellForItemAtIndexPath:pathCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
      [v9 setDebugBadge:0];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(STSPicker *)self _cancelActiveDownload];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    view = [(STSPicker *)self view];
    [view updateHeaderPositionOnScroll];
  }

  selectionDelegate = [(STSPicker *)self selectionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    selectionDelegate2 = [(STSPicker *)self selectionDelegate];
    [selectionDelegate2 browserDidScroll:self];
  }

  [(STSPicker *)self _loadMoreResultsIfNecessary];
  [scrollCopy contentOffset];
  if (v10 - self->_startScrollPosition.y > 50.0)
  {
    [(STSPicker *)self sendVisibleResultsFeedback];
    [scrollCopy contentOffset];
    self->_startScrollPosition.x = v11;
    self->_startScrollPosition.y = v12;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  view = [(STSPicker *)self view];
  [view updateHeaderPositionOnDraggingBegan];

  self->_isScrolling = 1;
  self = (self + 1136);
  [draggingCopy contentOffset];
  v7 = v6;
  v9 = v8;

  self->super.super.super.isa = v7;
  *&self->super.super._responderFlags = v9;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v7 = [(STSPicker *)self view:dragging];
  [v7 updateHeaderPositionOnDraggingEndedWithVelocity:{x, y}];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  view = [(STSPicker *)self view];
  [view updateHeaderPositionOnDecelerationEnded];

  self->_isScrolling = 0;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v24 = cellCopy;
  imageInfo = [v24 imageInfo];
  if (imageInfo)
  {
LABEL_2:

    goto LABEL_4;
  }

  image = [v24 image];

  if (!image)
  {
    imageInfo = [(STSSearchModel *)self->_searchModel sections];
    v11 = [imageInfo count];
    if (v11 > [pathCopy section])
    {
      sections = [(STSSearchModel *)self->_searchModel sections];
      v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

      results = [v13 results];
      v15 = [results count];
      if (v15 > [pathCopy item])
      {
        results2 = [v13 results];
        v17 = [results2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

        thumbnail = [v17 thumbnail];
        urlValue = [thumbnail urlValue];
        v20 = +[STSImageCache sharedCache];
        v21 = [v20 fetchCachedImageInfoForURL:urlValue];

        if (v21)
        {
          v22 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v21];
        }

        else
        {
          v23 = +[STSImageCache sharedCache];
          v22 = [v23 fetchCachedStaticImageForURL:urlValue];
        }

        [v24 setImage:v22];
      }
    }

    goto LABEL_2;
  }

LABEL_4:
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(STSSearchModel *)self->_searchModel sections];
  firstObject = [sections firstObject];

  v8 = [pathCopy row];
  results = [firstObject results];
  v10 = [results count];

  if (v8 < v10)
  {
    results2 = [firstObject results];
    v12 = [results2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    thumbnail = [v12 thumbnail];
    urlValue = [thumbnail urlValue];
    v15 = +[STSImageCache sharedCache];
    [v15 setPriority:-8 forQueuedDownloadWithURL:urlValue];
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  view = [(STSPicker *)self view];
  collectionView = [view collectionView];
  v11 = [collectionView cellForItemAtIndexPath:self->_detailResultIndexPath];

  view2 = [(STSPicker *)self view];
  collectionView2 = [view2 collectionView];
  v14 = [collectionView2 layoutAttributesForItemAtIndexPath:self->_detailResultIndexPath];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  view3 = [(STSPicker *)self view];
  view4 = [(STSPicker *)self view];
  collectionView3 = [view4 collectionView];
  [view3 convertRect:collectionView3 fromView:{v16, v18, v20, v22}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = objc_alloc(MEMORY[0x277D755E8]);
  v35 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v35 setClipsToBounds:1];
  [v35 setContentMode:2];
  image = [v11 image];
  [v35 setImage:image];

  v37 = objc_alloc_init(STSDetailTransitionAnimator);
  detailTransitionAnimator = self->_detailTransitionAnimator;
  self->_detailTransitionAnimator = v37;

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSnapshotView:v35];
  v39 = self->_detailTransitionAnimator;
  [v11 imageInsets];
  [(STSDetailTransitionAnimator *)v39 setSourceInsets:?];
  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSourceFrame:v27, v29, v31, v33];
  v40 = self->_detailTransitionAnimator;
  view5 = [presentingControllerCopy view];
  [view5 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  traitCollection = [presentingControllerCopy traitCollection];

  [controllerCopy contentFrameForBounds:traitCollection traitCollection:{v43, v45, v47, v49}];
  [(STSDetailTransitionAnimator *)v40 setPresentedFrame:?];

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setPresenting:1];
  v51 = self->_detailTransitionAnimator;
  v52 = v51;

  return v51;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  view = [(STSPicker *)self view];
  collectionView = [view collectionView];
  v7 = [collectionView layoutAttributesForItemAtIndexPath:self->_detailResultIndexPath];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  view2 = [(STSPicker *)self view];
  view3 = [(STSPicker *)self view];
  collectionView2 = [view3 collectionView];
  [view2 convertRect:collectionView2 fromView:{v9, v11, v13, v15}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setSourceFrame:v20, v22, v24, v26];
  detailTransitionAnimator = self->_detailTransitionAnimator;
  view4 = [controllerCopy view];
  [view4 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  traitCollection = [controllerCopy traitCollection];
  [controllerCopy contentFrameForBounds:traitCollection traitCollection:{v30, v32, v34, v36}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [(STSDetailTransitionAnimator *)detailTransitionAnimator setPresentedFrame:v39, v41, v43, v45];
  [(STSDetailTransitionAnimator *)self->_detailTransitionAnimator setPresenting:0];
  v46 = self->_detailTransitionAnimator;

  return v46;
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  v9 = [selectionDelegate browserIsPresentedFullscreen:self];

  if (v9)
  {
    view = [(STSPicker *)self view];
    collectionView = [view collectionView];
    v12 = [collectionView indexPathForItemAtPoint:{x, y}];

    if (v12)
    {
      [(STSPicker *)self _cancelActiveDownload];
      v13 = [(STSPicker *)self _detailViewControllerForIndexPath:v12];
      [v13 setModalTransitionStyle:2];
      [v13 setModalPresentationStyle:6];
      [v13 setIsFullscreen:0];
      view2 = [(STSPicker *)self view];
      collectionView2 = [view2 collectionView];
      v16 = [collectionView2 layoutAttributesForItemAtIndexPath:v12];
      [v16 frame];
      [contextCopy setSourceRect:?];

      objc_storeStrong(&self->_detailResultIndexPath, v12);
      sections = [(STSSearchModel *)self->_searchModel sections];
      v18 = [sections objectAtIndexedSubscript:{objc_msgSend(v12, "section")}];

      results = [v18 results];
      v20 = [results objectAtIndexedSubscript:{objc_msgSend(v12, "item")}];

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

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setUseBackgroundBlur:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__STSPicker_previewingContext_commitViewController___block_invoke;
  v9[3] = &unk_279B8A988;
  v6 = controllerCopy;
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

- (void)detailViewControllerDidSelectProviderLink:(id)link
{
  sections = [(STSSearchModel *)self->_searchModel sections];
  firstObject = [sections firstObject];

  results = [firstObject results];
  v6 = [results objectAtIndexedSubscript:{-[NSIndexPath row](self->_detailResultIndexPath, "row")}];

  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browser:self didSelectProviderLink:v6];
}

- (void)detailViewControllerDidInsert:(id)insert
{
  insertCopy = insert;
  detailResultIndexPath = self->_detailResultIndexPath;
  if (detailResultIndexPath)
  {
    v6 = insertCopy;
    detailResultIndexPath = [detailResultIndexPath isEqual:self->_activeDownloadIndexPath];
    insertCopy = v6;
    if ((detailResultIndexPath & 1) == 0)
    {
      [(STSPicker *)self _cancelActiveDownload];
      detailResultIndexPath = [(STSPicker *)self _beginDownloadingResultAtIndexPath:self->_detailResultIndexPath];
      insertCopy = v6;
    }
  }

  MEMORY[0x2821F96F8](detailResultIndexPath, insertCopy);
}

- (void)detailViewControllerDidReportConcern:(id)concern result:(id)result punchout:(id)punchout
{
  resultCopy = result;
  punchoutCopy = punchout;
  v9 = +[STSFeedbackReporter sharedInstance];
  [v9 didReportConcern:resultCopy punchout:punchoutCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__STSPicker_detailViewControllerDidReportConcern_result_punchout___block_invoke;
  v11[3] = &unk_279B8AEF0;
  v11[4] = self;
  v12 = resultCopy;
  v10 = resultCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __66__STSPicker_detailViewControllerDidReportConcern_result_punchout___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) removeResultAtIndexPath:*(*(a1 + 32) + 1056)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 992);

  return [v3 addSearchResultToReportConcernStore:v2];
}

- (void)headerViewDidSelectSearchButton:(id)button
{
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browserSearchBarButtonClicked:self];
}

- (void)headerDidSelectCancelButton:(id)button
{
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    selectionDelegate2 = [(STSPicker *)self selectionDelegate];
    [selectionDelegate2 browserSearchBarCancelButtonClicked:self];
  }
}

- (void)headerViewDidDeleteText
{
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browserDidDeleteQuery];
}

- (void)headerView:(id)view didSearchFor:(id)for
{
  forCopy = for;
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browser:self didSearchFor:forCopy];
}

- (void)headerView:(id)view didRequestCompletion:(id)completion
{
  completionCopy = completion;
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browser:self requestSuggestionsFor:completionCopy];
}

- (void)headerView:(id)view didSelectSuggestionButtonAtIndex:(unint64_t)index
{
  viewCopy = view;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = viewCopy;
    v7 = [(NSArray *)self->_visiblePredictions count]> index;
    viewCopy = v10;
    if (v7)
    {
      v8 = [(NSArray *)self->_visiblePredictions objectAtIndexedSubscript:index];
      selectionDelegate = [(STSPicker *)self selectionDelegate];
      [selectionDelegate browserSuggestionButtonClicked:self suggestion:v8];

      viewCopy = v10;
    }
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__STSPicker_mailComposeController_didFinishWithResult_error___block_invoke;
  v9[3] = &unk_279B8B008;
  selfCopy = self;
  resultCopy = result;
  v10 = errorCopy;
  v8 = errorCopy;
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
  selectionDelegate = [(STSPicker *)self selectionDelegate];
  [selectionDelegate browserDidTapLogo:self];
}

- (void)_fetchImageWithURL:(id)l priority:(int64_t)priority forCollectionView:(id)view atIndexPath:(id)path
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  viewCopy = view;
  pathCopy = path;
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
  v27 = lCopy;
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
  v16 = pathCopy;
  v20 = v16;
  v17 = viewCopy;
  v21 = v17;
  selfCopy = self;
  [v14 fetchImageWithURL:v15 priority:priority isSource:0 begin:v26 progress:0 completion:v18];

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
    sections = [(STSSearchModel *)self->_searchModel sections];
    if ([sections count])
    {
      sections2 = [(STSSearchModel *)self->_searchModel sections];
      v4 = [sections2 objectAtIndexedSubscript:0];
      results = [v4 results];
      v6 = [results count];

      if (!v6)
      {
        return;
      }

      view = [(STSPicker *)self view];
      sections = [view collectionView];

      [sections contentOffset];
      v9 = v8;
      [sections bounds];
      Height = CGRectGetHeight(v25);
      [sections contentInset];
      v12 = v11;
      [sections contentSize];
      if (v13 > 0.0)
      {
        v14 = v9 + Height - v12;
        [sections contentSize];
        v16 = v15;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v18 = v16 + CGRectGetHeight(v26) * -0.5;

        if (v14 > v18)
        {
          _loadMoreFooter = [(STSPicker *)self _loadMoreFooter];
          [_loadMoreFooter setLoading:1];

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

- (void)_updatePredictedSuggestionsForSize:(CGSize)size
{
  if (self->_showSuggestions)
  {
    width = size.width;
    v6 = [(STSSearchModel *)self->_searchModel predictedSuggestions:size.width];
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

      view = [(STSPicker *)self view];
      headerView = [view headerView];

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

      [headerView setTopSuggestions:v12];
      [headerView setBottomSuggestions:v13];
      if (![(NSArray *)self->_visiblePredictions isEqualToArray:v9])
      {
        v14 = +[STSFeedbackReporter sharedInstance];
        conversationID = [(STSSearchModel *)self->_searchModel conversationID];
        [v14 didShowProactiveSuggestions:v9 conversationId:conversationID];

        objc_storeStrong(&self->_visiblePredictions, v9);
      }

      v6 = v16;
    }
  }
}

- (id)_loadMoreFooter
{
  view = [(STSPicker *)self view];
  collectionView = [view collectionView];
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v5 = [collectionView supplementaryViewForElementKind:@"STSGridLayoutElementKindFooter" atIndexPath:v4];

  return v5;
}

- (void)_presentNoticeWithText:(id)text
{
  textCopy = text;
  v7 = objc_alloc_init(STSSearchNoticeView);
  [(STSSearchNoticeView *)v7 setText:textCopy];

  sts_searchErrorTextColor = [MEMORY[0x277D75348] sts_searchErrorTextColor];
  [(STSSearchNoticeView *)v7 setTextColor:sts_searchErrorTextColor];

  [(STSSearchNoticeView *)v7 setContentCentered:1];
  view = [(STSPicker *)self view];
  [view setOverlayView:v7];
}

- (void)_presentDetailViewControllerForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    [(STSPicker *)self _cancelActiveDownload];
    selectionDelegate = [(STSPicker *)self selectionDelegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__STSPicker__presentDetailViewControllerForIndexPath___block_invoke;
    v6[3] = &unk_279B8AEF0;
    v6[4] = self;
    v7 = pathCopy;
    [selectionDelegate requestExpandedPresentationStyleForBrowser:self completion:v6];
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

- (id)_detailViewControllerForIndexPath:(id)path
{
  v56 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sections = [(STSSearchModel *)self->_searchModel sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v49 = v6;
  results = [v6 results];
  v8 = [results objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  thumbnail = [v8 thumbnail];
  sts_providerHostPageURL = [v8 sts_providerHostPageURL];
  urlValue = [thumbnail urlValue];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 url];
    *buf = 138412546;
    v53 = urlValue;
    v54 = 2112;
    v55 = v12;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Generating detail view for result with thumbnail: %@, url: %@", buf, 0x16u);
  }

  resultType = [v8 resultType];
  v14 = [resultType isEqualToString:@"image_search"];

  if (v14)
  {
    v15 = [[STSImageDetailViewController alloc] initWithNibName:0 bundle:0];
    [(STSResultDetailViewController *)v15 setQueryId:+[STSSearchModel clientQueryId]];
    currentQuery = [(STSSearchModel *)self->_searchModel currentQuery];
    [(STSResultDetailViewController *)v15 setQueryString:currentQuery];

    sts_appProviderName = [v8 sts_appProviderName];
LABEL_7:
    v20 = sts_appProviderName;
    [(STSResultDetailViewController *)v15 setProviderName:sts_appProviderName];

    goto LABEL_9;
  }

  resultType2 = [v8 resultType];
  v19 = [resultType2 isEqualToString:@"web_video"];

  if (v19)
  {
    v15 = [[STSVideoDetailViewController alloc] initWithNibName:0 bundle:0];
    [(STSResultDetailViewController *)v15 setQueryId:+[STSSearchModel clientQueryId]];
    [(STSResultDetailViewController *)v15 setContentSize:16.0, 9.0];
    sts_appProviderName = [v8 sts_providerName];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_9:
  [(STSResultDetailViewController *)v15 setNumberOfReportedResults:[(STSSearchModel *)self->_searchModel numberOfReportedResults]];
  [v8 sts_providerIconSize];
  [(STSResultDetailViewController *)v15 setProviderIconSize:?];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v23 = v22;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __47__STSPicker__detailViewControllerForIndexPath___block_invoke;
  v50[3] = &unk_279B8B0A8;
  v24 = v15;
  v51 = v24;
  [v8 sts_providerIconWithScale:v50 completion:v23];

  view = [(STSPicker *)self view];
  [view bounds];
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

  [(STSResultDetailViewController *)v24 setProviderURL:sts_providerHostPageURL];
  [(STSResultDetailViewController *)v24 setDelegate:self];
  [(STSResultDetailViewController *)v24 setSearchResult:v8];
  view2 = [(STSPicker *)self view];
  collectionView = [view2 collectionView];
  v39 = [collectionView cellForItemAtIndexPath:pathCopy];

  image = [v39 image];
  images = [image images];
  v42 = [images count];

  if (v42 < 2)
  {
    v44 = +[STSImageCache sharedCache];
    v45 = [v44 fetchCachedImageInfoForURL:urlValue];

    if (v45)
    {
      image2 = [MEMORY[0x277D755B8] agif_animatedImageWithImageInfo:v45];
    }

    else
    {
      v46 = +[STSImageCache sharedCache];
      image2 = [v46 fetchCachedStaticImageForURL:urlValue];
    }
  }

  else
  {
    image2 = [v39 image];
  }

  [image2 size];
  [(STSResultDetailViewController *)v24 setContentSize:?];
  [(STSResultDetailViewController *)v24 updateWithThumbnail:image2 orThumbnailInfo:0];
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

- (void)_beginDownloadingResultAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(STSSearchModel *)self->_searchModel sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  results = [v7 results];
  v9 = [results objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  resultType = [v9 resultType];
  v11 = [resultType isEqualToString:@"web_video"];

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke;
    block[3] = &unk_279B8AEF0;
    v42 = v9;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v12 = v42;
  }

  else
  {
    objc_storeStrong(&self->_activeDownloadIndexPath, path);
    self->_activeDownloadProgress = 0.0;
    view = [(STSPicker *)self view];
    collectionView = [view collectionView];
    v12 = [collectionView cellForItemAtIndexPath:self->_activeDownloadIndexPath];

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
    selfCopy2 = self;
    v34 = v38;
    v35 = v37;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__STSPicker__beginDownloadingResultAtIndexPath___block_invoke_156;
    v28[3] = &unk_279B8B148;
    objc_copyWeak(&v30, &location);
    v28[4] = self;
    v18 = pathCopy;
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
    selfCopy3 = self;
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
    sections = [(STSSearchModel *)self->_searchModel sections];
    v13 = [sections objectAtIndexedSubscript:{-[NSIndexPath section](v4, "section")}];

    results = [v13 results];
    v7 = [results objectAtIndexedSubscript:{-[NSIndexPath item](v4, "item")}];

    v8 = +[STSImageCache sharedCache];
    v9 = [v7 url];
    [v8 cancelQueuedDownloadForURL:v9];

    view = [(STSPicker *)self view];
    collectionView = [view collectionView];
    v12 = [collectionView cellForItemAtIndexPath:v4];

    [v12 setShowDownloadIndicator:1 animated:0.0];
  }
}

- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)scroll
{
  displayedResultsQueue = self->_displayedResultsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__STSPicker__reportFeedbackDisplayedResultsDidScroll___block_invoke;
  v4[3] = &unk_279B8B198;
  v4[4] = self;
  scrollCopy = scroll;
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

- (id)_noticeTextForSearchError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"STSErrorDomain"])
  {
    code = [errorCopy code];

    if (code == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x277CCA738]])
  {
    code2 = [errorCopy code];

    if (code2 == -1009)
    {
LABEL_7:
      localizedDescription = [errorCopy localizedDescription];
      goto LABEL_10;
    }
  }

  else
  {
  }

  localizedDescription = STSLocalizedString(@"ERROR_DESC_COULD_NOT_LOAD");
LABEL_10:
  v9 = localizedDescription;

  return v9;
}

- (void)sendVisibleResultsFeedback
{
  v42 = *MEMORY[0x277D85DE8];
  sections = [(STSSearchModel *)self->_searchModel sections];
  v4 = [sections count];

  if (v4)
  {
    pickerView = [(STSPicker *)self pickerView];
    collectionView = [pickerView collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = indexPathsForVisibleItems;
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
          pickerView2 = [(STSPicker *)self pickerView];
          collectionView2 = [pickerView2 collectionView];
          v16 = [collectionView2 cellForItemAtIndexPath:v13];

          if (v16)
          {
            layer = [v16 layer];
            [layer frame];
            v19 = v18;

            pickerView3 = [(STSPicker *)self pickerView];
            collectionView3 = [pickerView3 collectionView];

            [collectionView3 contentOffset];
            v23 = v22;
            [collectionView3 frame];
            v25 = v23 + v24;
            [collectionView3 contentInset];
            if (v19 < v25 - v26 + -20.0)
            {
              sections2 = [(STSSearchModel *)self->_searchModel sections];
              v28 = [sections2 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

              results = [v28 results];
              v30 = [results objectAtIndexedSubscript:{objc_msgSend(v13, "item")}];

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