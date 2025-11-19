@interface PUReviewScreenScrubberBarTileViewController
- (id)loadView;
- (void)_updateViews;
- (void)_updateVisibilityAnimated:(BOOL)a3;
- (void)becomeReusable;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBarsModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUReviewScreenScrubberBarTileViewController

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(PUReviewScreenScrubberBarTileViewController *)self browsingViewModel];

  if (v7 == v6 && [v8 chromeVisibilityDidChange])
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PUReviewScreenScrubberBarContext != a5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUReviewScreenScrubberBarTileViewController.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PUReviewScreenScrubberBarTileViewController *)self _updateViews];
}

- (void)_updateVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUReviewScreenScrubberBarTileViewController *)self browsingViewModel];
  v6 = v5;
  if (!v5)
  {
    v8 = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
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

  v8 = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
  if (!v3)
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
  v8 = v8;
  v14 = v8;
  v15 = v7;
  [v12 animateWithDuration:6 delay:v13 options:0 animations:v9 completion:0.0];

LABEL_11:
}

- (void)_updateViews
{
  v6 = [(PUReviewScreenScrubberBarTileViewController *)self barsModel];
  v3 = [(PUReviewScreenScrubberBarTileViewController *)self _scrubberBar];
  if ([v6 shouldPlaceScrubberInScrubberBar])
  {
    v4 = [(PUReviewScreenScrubberBarTileViewController *)self barsModel];
    v5 = [v4 accessoryView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setScrubber:v5];
    }
  }
}

- (void)setBarsModel:(id)a3
{
  v5 = a3;
  barsModel = self->_barsModel;
  if (barsModel != v5)
  {
    v7 = v5;
    [(PUReviewScreenBarsModel *)barsModel unregisterChangeObserver:self context:PUReviewScreenScrubberBarContext];
    objc_storeStrong(&self->_barsModel, a3);
    [(PUReviewScreenBarsModel *)self->_barsModel registerChangeObserver:self context:PUReviewScreenScrubberBarContext];
    barsModel = [(PUReviewScreenScrubberBarTileViewController *)self _updateViews];
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
    browsingViewModel = [(PUReviewScreenScrubberBarTileViewController *)self _updateVisibilityAnimated:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
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