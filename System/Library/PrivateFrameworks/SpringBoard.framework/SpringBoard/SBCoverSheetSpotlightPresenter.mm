@interface SBCoverSheetSpotlightPresenter
- (SBCoverSheetSpotlightPresenter)initWithDelegate:(id)a3;
- (double)searchTopOffsetForSearchPresenter:(id)a3;
- (id)backgroundViewForSpotlightPresentableViewController:(id)a3;
- (id)searchPresentablesForPresenter:(id)a3;
- (void)_setUpStartingScrollOffsetWithScrollView:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4;
- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4;
@end

@implementation SBCoverSheetSpotlightPresenter

- (SBCoverSheetSpotlightPresenter)initWithDelegate:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBCoverSheetSpotlightPresenter *)a2 initWithDelegate:?];
  }

  v15.receiver = self;
  v15.super_class = SBCoverSheetSpotlightPresenter;
  v7 = [(SBCoverSheetSpotlightPresenter *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_delegate, a3);
    v9 = [SBSearchPresenter alloc];
    v10 = [MEMORY[0x277D661A0] rootSettings];
    v11 = [v10 coversheetPullToSearchSettings];
    v12 = [(SBSearchPresenter *)v9 initWithSettings:v11 identifier:@"CoverSheet"];
    searchPresenter = v8->_searchPresenter;
    v8->_searchPresenter = v12;

    [(SBSearchPresenter *)v8->_searchPresenter setSearchPresenterDelegate:v8];
  }

  return v8;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [(SBCoverSheetSpotlightPresenter *)self _setUpStartingScrollOffsetWithScrollView:v4];
  [(SBSearchPresenter *)self->_searchPresenter scrollViewWillBeginDragging:v4];
}

- (id)searchPresentablesForPresenter:(id)a3
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

- (double)searchTopOffsetForSearchPresenter:(id)a3
{
  v4 = [(SBCoverSheetSpotlightViewController *)self->_spotlightViewController view];
  [v4 safeAreaInsets];
  v6 = v5;
  [(SBSearchPresenter *)self->_searchPresenter interactivePresentationMetrics];
  v8 = v6 - v7;

  return v8;
}

- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4
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

- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4
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

- (id)backgroundViewForSpotlightPresentableViewController:(id)a3
{
  v4 = objc_alloc_init(SBCoverSheetSpotlightBackgroundView);
  v5 = [(SBCoverSheetSpotlightViewController *)self->_spotlightViewController view];
  [v5 bounds];
  [(SBCoverSheetSpotlightBackgroundView *)v4 setFrame:?];

  return v4;
}

- (void)_setUpStartingScrollOffsetWithScrollView:(id)a3
{
  v13 = a3;
  [(SBSearchPresenter *)self->_searchPresenter interactivePresentationMetrics];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v13 adjustedContentInset];
  v11 = v10;
  if (_os_feature_enabled_impl())
  {
    [v13 contentOffset];
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