@interface SBCoverSheetSpotlightPresenter
- (SBCoverSheetSpotlightPresenter)initWithDelegate:(id)delegate;
- (double)searchTopOffsetForSearchPresenter:(id)presenter;
- (id)backgroundViewForSpotlightPresentableViewController:(id)controller;
- (id)searchPresentablesForPresenter:(id)presenter;
- (void)_setUpStartingScrollOffsetWithScrollView:(id)view;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated;
- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated;
@end

@implementation SBCoverSheetSpotlightPresenter

- (SBCoverSheetSpotlightPresenter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    [(SBCoverSheetSpotlightPresenter *)a2 initWithDelegate:?];
  }

  v15.receiver = self;
  v15.super_class = SBCoverSheetSpotlightPresenter;
  v7 = [(SBCoverSheetSpotlightPresenter *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_delegate, delegate);
    v9 = [SBSearchPresenter alloc];
    rootSettings = [MEMORY[0x277D661A0] rootSettings];
    coversheetPullToSearchSettings = [rootSettings coversheetPullToSearchSettings];
    v12 = [(SBSearchPresenter *)v9 initWithSettings:coversheetPullToSearchSettings identifier:@"CoverSheet"];
    searchPresenter = v8->_searchPresenter;
    v8->_searchPresenter = v12;

    [(SBSearchPresenter *)v8->_searchPresenter setSearchPresenterDelegate:v8];
  }

  return v8;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(SBCoverSheetSpotlightPresenter *)self _setUpStartingScrollOffsetWithScrollView:draggingCopy];
  [(SBSearchPresenter *)self->_searchPresenter scrollViewWillBeginDragging:draggingCopy];
}

- (id)searchPresentablesForPresenter:(id)presenter
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_spotlightViewController)
  {
    v5[0] = self->_spotlightViewController;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (double)searchTopOffsetForSearchPresenter:(id)presenter
{
  view = [(SBCoverSheetSpotlightViewController *)self->_spotlightViewController view];
  [view safeAreaInsets];
  v6 = v5;
  [(SBSearchPresenter *)self->_searchPresenter interactivePresentationMetrics];
  v8 = v6 - v7;

  return v8;
}

- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated
{
  spotlightViewController = self->_spotlightViewController;
  if (!spotlightViewController)
  {
    v6 = objc_alloc_init(_SBCoverSheetSpotlightViewController);
    [(SBSpotlightMultiplexingViewController *)v6 setLegibilitySettings:self->_legibilitySettings];
    v7 = [[SBSpotlightPresentableViewController alloc] initWithSpotlightMultiplexingViewController:v6];
    [(SBSpotlightPresentableViewController *)v7 setDelegate:self];
    v8 = [[SBCoverSheetSpotlightViewController alloc] initWithSpotlightViewController:v7];
    v9 = self->_spotlightViewController;
    self->_spotlightViewController = v8;

    v10 = self->_spotlightViewController;
    v11 = [(SBCoverSheetSpotlightPresenterDelegate *)self->_delegate displayConfigurationForSpotlightPresenter:self];
    [(SBCoverSheetSpotlightViewController *)v10 setTargetDisplayConfiguration:v11];

    [(SBCoverSheetSpotlightViewController *)self->_spotlightViewController setDelegate:self];
    spotlightViewController = self->_spotlightViewController;
  }

  delegate = self->_delegate;

  [(SBCoverSheetSpotlightPresenterDelegate *)delegate spotlightPresenter:self presentDismissableModalViewController:spotlightViewController completion:0];
}

- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated
{
  if (self->_spotlightViewController)
  {
    [SBCoverSheetSpotlightPresenterDelegate spotlightPresenter:"spotlightPresenter:dismissDismissableModalViewController:animated:completion:" dismissDismissableModalViewController:? animated:? completion:?];
  }
}

void __76__SBCoverSheetSpotlightPresenter_searchPresenterWillDismissSearch_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (id)backgroundViewForSpotlightPresentableViewController:(id)controller
{
  v4 = objc_alloc_init(SBCoverSheetSpotlightBackgroundView);
  view = [(SBCoverSheetSpotlightViewController *)self->_spotlightViewController view];
  [view bounds];
  [(SBCoverSheetSpotlightBackgroundView *)v4 setFrame:?];

  return v4;
}

- (void)_setUpStartingScrollOffsetWithScrollView:(id)view
{
  viewCopy = view;
  [(SBSearchPresenter *)self->_searchPresenter interactivePresentationMetrics];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [viewCopy adjustedContentInset];
  v11 = v10;
  if (_os_feature_enabled_impl())
  {
    [viewCopy contentOffset];
    v11 = v11 - v12;
  }

  [(SBSearchPresenter *)self->_searchPresenter setInteractivePresentationMetrics:v11, v5, v7, v9];
}

- (void)initWithDelegate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetSpotlightPresenter.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end