@interface PUReviewScreenControlBarTileViewController
- (id)_barControlsForModelControls:(id)a3 transitioning:(BOOL)a4;
- (id)loadView;
- (void)_handleEditButtonTapped:(id)a3;
- (void)_handleMarkupButtonTapped:(id)a3;
- (void)_handleSendButtonTapped:(id)a3;
- (void)_updateBarLayout;
- (void)_updateControls;
- (void)_updateVisibilityAnimated:(BOOL)a3;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBarsModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUReviewScreenControlBarTileViewController

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(PUReviewScreenControlBarTileViewController *)self browsingViewModel];

  if (v7 == v6 && [v8 chromeVisibilityDidChange])
  {
    [(PUReviewScreenControlBarTileViewController *)self _updateVisibilityAnimated:1];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PUReviewScreenControlBarContext == a5)
  {
    v5 = a4;
    [(PUReviewScreenControlBarTileViewController *)self _updateControls];
    if ((v5 & 0x20) != 0)
    {

      [(PUReviewScreenControlBarTileViewController *)self _updateBarLayout];
    }
  }
}

- (void)_updateVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUReviewScreenControlBarTileViewController *)self browsingViewModel];
  v6 = v5;
  if (!v5)
  {
    v8 = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
    v7 = 1.0;
    if (v3)
    {
      v10 = +[PUOneUpSettings sharedInstance];
      [v10 chromeDefaultAnimationDuration];
      v9 = v11;

      goto LABEL_9;
    }

LABEL_10:
    [v8 setAlpha:v7];
    goto LABEL_11;
  }

  if ([v5 isChromeVisible])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  if (!v3)
  {
    goto LABEL_10;
  }

  v9 = PUChromeAnimationDuration(v6);
LABEL_9:
  v12 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PUReviewScreenControlBarTileViewController__updateVisibilityAnimated___block_invoke;
  v13[3] = &unk_1E7B7FF70;
  v8 = v8;
  v14 = v8;
  v15 = v7;
  [v12 animateWithDuration:6 delay:v13 options:0 animations:v9 completion:0.0];

LABEL_11:
}

- (void)_updateBarLayout
{
  v4 = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  v3 = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  [v4 controlCenterAlignmentPoint];
  [v3 setLayoutCenterAlignmentPoint:?];
  if ([v4 lastControlAlignmentChangeForcedLayout])
  {
    [v3 layoutIfNeeded];
  }
}

- (void)_updateControls
{
  v9 = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  v3 = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  v4 = [v9 availableControls];
  v5 = -[PUReviewScreenControlBarTileViewController _barControlsForModelControls:transitioning:](self, "_barControlsForModelControls:transitioning:", v4, [v9 isTransitioningWithCamera]);
  [v3 setAvailableButtons:v5];

  v6 = [v9 enabledControls];
  [v3 setEnabledButtons:v6];

  if ([v9 shouldPlaceScrubberInScrubberBar])
  {
    [v3 setAccessoryView:0];
  }

  else
  {
    v7 = [v9 accessoryView];
    [v3 setAccessoryView:v7];
  }

  v8 = [v9 useVerticalControlLayout];
  [v3 setUseTransparentBackground:v8];
  [v3 setShouldLayoutVertically:v8];
}

- (id)_barControlsForModelControls:(id)a3 transitioning:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4 && ([v5 containsObject:&unk_1F2B7EBA0] & 1) != 0)
  {
    v7 = [v6 mutableCopy];
    [v7 removeObject:&unk_1F2B7EBA0];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)setBarsModel:(id)a3
{
  v5 = a3;
  barsModel = self->_barsModel;
  if (barsModel != v5)
  {
    v7 = v5;
    [(PUReviewScreenBarsModel *)barsModel unregisterChangeObserver:self context:PUReviewScreenControlBarContext];
    objc_storeStrong(&self->_barsModel, a3);
    [(PUReviewScreenBarsModel *)self->_barsModel registerChangeObserver:self context:PUReviewScreenControlBarContext];
    [(PUReviewScreenControlBarTileViewController *)self _updateControls];
    barsModel = [(PUReviewScreenControlBarTileViewController *)self _updateBarLayout];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](barsModel, v5);
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    browsingViewModel = [(PUReviewScreenControlBarTileViewController *)self _updateVisibilityAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (void)_handleSendButtonTapped:(id)a3
{
  v3 = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [v3 invokeCallbackForBarButtonItemWithIdentifier:26];
}

- (void)_handleMarkupButtonTapped:(id)a3
{
  v3 = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [v3 invokeCallbackForBarButtonItemWithIdentifier:23];
}

- (void)_handleEditButtonTapped:(id)a3
{
  v3 = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [v3 invokeCallbackForBarButtonItemWithIdentifier:25];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUReviewScreenControlBarTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUReviewScreenControlBarTileViewController *)self setBrowsingViewModel:0];
  [(PUReviewScreenControlBarTileViewController *)self setBarsModel:0];
}

- (id)loadView
{
  v3 = objc_alloc_init(PUReviewScreenControlBar);
  controlBar = self->__controlBar;
  self->__controlBar = v3;

  v5 = [(PUReviewScreenControlBar *)self->__controlBar sendButton];
  [v5 addTarget:self action:sel__handleSendButtonTapped_ forControlEvents:64];

  v6 = [(PUReviewScreenControlBar *)self->__controlBar editButton];
  [v6 addTarget:self action:sel__handleEditButtonTapped_ forControlEvents:64];

  v7 = [(PUReviewScreenControlBar *)self->__controlBar markupButton];
  [v7 addTarget:self action:sel__handleMarkupButtonTapped_ forControlEvents:64];

  [(PUReviewScreenControlBarTileViewController *)self _updateControls];
  v8 = self->__controlBar;

  return v8;
}

@end