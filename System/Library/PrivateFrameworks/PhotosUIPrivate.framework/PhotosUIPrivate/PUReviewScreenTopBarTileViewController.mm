@interface PUReviewScreenTopBarTileViewController
- (id)loadView;
- (void)_handleDoneButtonTapped:(id)tapped;
- (void)_handleRetakeButtonTapped:(id)tapped;
- (void)_updateBarLayout;
- (void)_updateControls;
- (void)_updateVisibilityAnimated:(BOOL)animated;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBarsModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUReviewScreenTopBarTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  browsingViewModel = [(PUReviewScreenTopBarTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy && [changeCopy chromeVisibilityDidChange])
  {
    [(PUReviewScreenTopBarTileViewController *)self _updateVisibilityAnimated:1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PUReviewScreenTopBarContext == context)
  {
    changeCopy = change;
    [(PUReviewScreenTopBarTileViewController *)self _updateControls];
    if ((changeCopy & 0x20) != 0)
    {

      [(PUReviewScreenTopBarTileViewController *)self _updateBarLayout];
    }
  }
}

- (void)_updateVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  browsingViewModel = [(PUReviewScreenTopBarTileViewController *)self browsingViewModel];
  v6 = browsingViewModel;
  if (!browsingViewModel)
  {
    _topBar = [(PUReviewScreenTopBarTileViewController *)self _topBar];
    v7 = 1.0;
    if (animatedCopy)
    {
      v10 = +[PUOneUpSettings sharedInstance];
      [v10 chromeDefaultAnimationDuration];
      v9 = v11;

      goto LABEL_9;
    }

LABEL_10:
    [_topBar setAlpha:v7];
    goto LABEL_11;
  }

  if ([browsingViewModel isChromeVisible])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  _topBar = [(PUReviewScreenTopBarTileViewController *)self _topBar];
  if (!animatedCopy)
  {
    goto LABEL_10;
  }

  v9 = PUChromeAnimationDuration(v6);
LABEL_9:
  v12 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PUReviewScreenTopBarTileViewController__updateVisibilityAnimated___block_invoke;
  v13[3] = &unk_1E7B7FF70;
  _topBar = _topBar;
  v14 = _topBar;
  v15 = v7;
  [v12 animateWithDuration:6 delay:v13 options:0 animations:v9 completion:0.0];

LABEL_11:
}

- (void)_updateBarLayout
{
  barsModel = [(PUReviewScreenTopBarTileViewController *)self barsModel];
  _topBar = [(PUReviewScreenTopBarTileViewController *)self _topBar];
  useVerticalControlLayout = [barsModel useVerticalControlLayout];
  if (useVerticalControlLayout)
  {
    [barsModel controlCenterAlignmentPoint];
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [_topBar setDoneButtonCenterAlignmentPoint:{v5, v6}];
  if ((useVerticalControlLayout & [barsModel lastControlAlignmentChangeForcedLayout]) == 1)
  {
    [_topBar layoutIfNeeded];
  }
}

- (void)_updateControls
{
  _topBar = [(PUReviewScreenTopBarTileViewController *)self _topBar];
  barsModel = [(PUReviewScreenTopBarTileViewController *)self barsModel];
  availableControls = [barsModel availableControls];
  [_topBar setAvailableButtons:availableControls];

  enabledControls = [barsModel enabledControls];
  [_topBar setEnabledButtons:enabledControls];

  [_topBar setBackgroundStyle:{objc_msgSend(barsModel, "useVerticalControlLayout") ^ 1}];
}

- (void)setBarsModel:(id)model
{
  modelCopy = model;
  barsModel = self->_barsModel;
  if (barsModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUReviewScreenBarsModel *)barsModel unregisterChangeObserver:self context:PUReviewScreenTopBarContext];
    objc_storeStrong(&self->_barsModel, model);
    [(PUReviewScreenBarsModel *)self->_barsModel registerChangeObserver:self context:PUReviewScreenTopBarContext];
    [(PUReviewScreenTopBarTileViewController *)self _updateControls];
    barsModel = [(PUReviewScreenTopBarTileViewController *)self _updateBarLayout];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](barsModel, modelCopy);
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    browsingViewModel = [(PUReviewScreenTopBarTileViewController *)self _updateVisibilityAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)_handleRetakeButtonTapped:(id)tapped
{
  barsModel = [(PUReviewScreenTopBarTileViewController *)self barsModel];
  [barsModel invokeCallbackForBarButtonItemWithIdentifier:24];
}

- (void)_handleDoneButtonTapped:(id)tapped
{
  barsModel = [(PUReviewScreenTopBarTileViewController *)self barsModel];
  [barsModel invokeCallbackForBarButtonItemWithIdentifier:22];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUReviewScreenTopBarTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUReviewScreenTopBarTileViewController *)self setBrowsingViewModel:0];
  [(PUReviewScreenTopBarTileViewController *)self setBarsModel:0];
}

- (id)loadView
{
  v3 = objc_alloc_init(PUReviewScreenTopBar);
  topBar = self->__topBar;
  self->__topBar = v3;

  doneButton = [(PUReviewScreenTopBar *)self->__topBar doneButton];
  [doneButton addTarget:self action:sel__handleDoneButtonTapped_ forControlEvents:64];

  retakeButton = [(PUReviewScreenTopBar *)self->__topBar retakeButton];
  [retakeButton addTarget:self action:sel__handleRetakeButtonTapped_ forControlEvents:64];

  [(PUReviewScreenTopBarTileViewController *)self _updateControls];
  v7 = self->__topBar;

  return v7;
}

@end