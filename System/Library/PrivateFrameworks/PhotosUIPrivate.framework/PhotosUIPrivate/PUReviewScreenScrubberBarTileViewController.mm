@interface PUReviewScreenScrubberBarTileViewController
- (id)loadView;
- (void)_updateViews;
- (void)_updateVisibilityAnimated:(BOOL)animated;
- (void)becomeReusable;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBarsModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUReviewScreenScrubberBarTileViewController

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  browsingViewModel = [(PUReviewScreenScrubberBarTileViewController *)self browsingViewModel];

  if (browsingViewModel == modelCopy && [changeCopy chromeVisibilityDidChange])
  {
    [(PUReviewScreenScrubberBarTileViewController *)self _updateVisibilityAnimated:1];
  }
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUReviewScreenScrubberBarTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUReviewScreenScrubberBarTileViewController *)self setBarsModel:0];
  [(PUReviewScreenScrubberBarTileViewController *)self setBrowsingViewModel:0];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PUReviewScreenScrubberBarContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewScreenScrubberBarTileViewController.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PUReviewScreenScrubberBarTileViewController *)self _updateViews];
}

- (void)_updateVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  browsingViewModel = [(PUReviewScreenScrubberBarTileViewController *)self browsingViewModel];
  v6 = browsingViewModel;
  if (!browsingViewModel)
  {
    _scrubberBar = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
    v7 = 1.0;
    if (animatedCopy)
    {
      v10 = +[PUOneUpSettings sharedInstance];
      [v10 chromeDefaultAnimationDuration];
      v9 = v11;

      goto LABEL_9;
    }

LABEL_10:
    [_scrubberBar setAlpha:v7];
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

  _scrubberBar = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
  if (!animatedCopy)
  {
    goto LABEL_10;
  }

  v9 = PUChromeAnimationDuration(v6);
LABEL_9:
  v12 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PUReviewScreenScrubberBarTileViewController__updateVisibilityAnimated___block_invoke;
  v13[3] = &unk_1E7B7FF70;
  _scrubberBar = _scrubberBar;
  v14 = _scrubberBar;
  v15 = v7;
  [v12 animateWithDuration:6 delay:v13 options:0 animations:v9 completion:0.0];

LABEL_11:
}

- (void)_updateViews
{
  barsModel = [(PUReviewScreenScrubberBarTileViewController *)self barsModel];
  _scrubberBar = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
  if ([barsModel shouldPlaceScrubberInScrubberBar])
  {
    barsModel2 = [(PUReviewScreenScrubberBarTileViewController *)self barsModel];
    accessoryView = [barsModel2 accessoryView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_scrubberBar setScrubber:accessoryView];
    }
  }
}

- (void)setBarsModel:(id)model
{
  modelCopy = model;
  barsModel = self->_barsModel;
  if (barsModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUReviewScreenBarsModel *)barsModel unregisterChangeObserver:self context:PUReviewScreenScrubberBarContext];
    objc_storeStrong(&self->_barsModel, model);
    [(PUReviewScreenBarsModel *)self->_barsModel registerChangeObserver:self context:PUReviewScreenScrubberBarContext];
    barsModel = [(PUReviewScreenScrubberBarTileViewController *)self _updateViews];
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
    browsingViewModel = [(PUReviewScreenScrubberBarTileViewController *)self _updateVisibilityAnimated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (id)loadView
{
  v3 = objc_alloc_init(PUReviewScreenScrubberBar);
  scrubberBar = self->__scrubberBar;
  self->__scrubberBar = v3;

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
  [(PUReviewScreenScrubberBar *)self->__scrubberBar setBackgroundColor:v5];

  [(PUReviewScreenScrubberBarTileViewController *)self _updateViews];
  v6 = self->__scrubberBar;

  return v6;
}

@end