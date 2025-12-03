@interface PUReviewScreenControlBarTileViewController
- (id)_barControlsForModelControls:(id)controls transitioning:(BOOL)transitioning;
- (id)loadView;
- (void)_handleEditButtonTapped:(id)tapped;
- (void)_handleMarkupButtonTapped:(id)tapped;
- (void)_handleSendButtonTapped:(id)tapped;
- (void)_updateBarLayout;
- (void)_updateControls;
- (void)_updateVisibilityAnimated:(BOOL)animated;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBarsModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUReviewScreenControlBarTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  browsingViewModel = [(PUReviewScreenControlBarTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy && [changeCopy chromeVisibilityDidChange])
  {
    [(PUReviewScreenControlBarTileViewController *)self _updateVisibilityAnimated:1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PUReviewScreenControlBarContext == context)
  {
    changeCopy = change;
    [(PUReviewScreenControlBarTileViewController *)self _updateControls];
    if ((changeCopy & 0x20) != 0)
    {

      [(PUReviewScreenControlBarTileViewController *)self _updateBarLayout];
    }
  }
}

- (void)_updateVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  browsingViewModel = [(PUReviewScreenControlBarTileViewController *)self browsingViewModel];
  v6 = browsingViewModel;
  if (!browsingViewModel)
  {
    _controlBar = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
    v7 = 1.0;
    if (animatedCopy)
    {
      v10 = +[PUOneUpSettings sharedInstance];
      [v10 chromeDefaultAnimationDuration];
      v9 = v11;

      goto LABEL_9;
    }

LABEL_10:
    [_controlBar setAlpha:v7];
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

  _controlBar = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  if (!animatedCopy)
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
  _controlBar = _controlBar;
  v14 = _controlBar;
  v15 = v7;
  [v12 animateWithDuration:6 delay:v13 options:0 animations:v9 completion:0.0];

LABEL_11:
}

- (void)_updateBarLayout
{
  barsModel = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  _controlBar = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  [barsModel controlCenterAlignmentPoint];
  [_controlBar setLayoutCenterAlignmentPoint:?];
  if ([barsModel lastControlAlignmentChangeForcedLayout])
  {
    [_controlBar layoutIfNeeded];
  }
}

- (void)_updateControls
{
  barsModel = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  _controlBar = [(PUReviewScreenControlBarTileViewController *)self _controlBar];
  availableControls = [barsModel availableControls];
  v5 = -[PUReviewScreenControlBarTileViewController _barControlsForModelControls:transitioning:](self, "_barControlsForModelControls:transitioning:", availableControls, [barsModel isTransitioningWithCamera]);
  [_controlBar setAvailableButtons:v5];

  enabledControls = [barsModel enabledControls];
  [_controlBar setEnabledButtons:enabledControls];

  if ([barsModel shouldPlaceScrubberInScrubberBar])
  {
    [_controlBar setAccessoryView:0];
  }

  else
  {
    accessoryView = [barsModel accessoryView];
    [_controlBar setAccessoryView:accessoryView];
  }

  useVerticalControlLayout = [barsModel useVerticalControlLayout];
  [_controlBar setUseTransparentBackground:useVerticalControlLayout];
  [_controlBar setShouldLayoutVertically:useVerticalControlLayout];
}

- (id)_barControlsForModelControls:(id)controls transitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  controlsCopy = controls;
  v6 = controlsCopy;
  if (transitioningCopy && ([controlsCopy containsObject:&unk_1F2B7EBA0] & 1) != 0)
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

- (void)setBarsModel:(id)model
{
  modelCopy = model;
  barsModel = self->_barsModel;
  if (barsModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUReviewScreenBarsModel *)barsModel unregisterChangeObserver:self context:PUReviewScreenControlBarContext];
    objc_storeStrong(&self->_barsModel, model);
    [(PUReviewScreenBarsModel *)self->_barsModel registerChangeObserver:self context:PUReviewScreenControlBarContext];
    [(PUReviewScreenControlBarTileViewController *)self _updateControls];
    barsModel = [(PUReviewScreenControlBarTileViewController *)self _updateBarLayout];
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
    browsingViewModel = [(PUReviewScreenControlBarTileViewController *)self _updateVisibilityAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)_handleSendButtonTapped:(id)tapped
{
  barsModel = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [barsModel invokeCallbackForBarButtonItemWithIdentifier:26];
}

- (void)_handleMarkupButtonTapped:(id)tapped
{
  barsModel = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [barsModel invokeCallbackForBarButtonItemWithIdentifier:23];
}

- (void)_handleEditButtonTapped:(id)tapped
{
  barsModel = [(PUReviewScreenControlBarTileViewController *)self barsModel];
  [barsModel invokeCallbackForBarButtonItemWithIdentifier:25];
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

  sendButton = [(PUReviewScreenControlBar *)self->__controlBar sendButton];
  [sendButton addTarget:self action:sel__handleSendButtonTapped_ forControlEvents:64];

  editButton = [(PUReviewScreenControlBar *)self->__controlBar editButton];
  [editButton addTarget:self action:sel__handleEditButtonTapped_ forControlEvents:64];

  markupButton = [(PUReviewScreenControlBar *)self->__controlBar markupButton];
  [markupButton addTarget:self action:sel__handleMarkupButtonTapped_ forControlEvents:64];

  [(PUReviewScreenControlBarTileViewController *)self _updateControls];
  v8 = self->__controlBar;

  return v8;
}

@end