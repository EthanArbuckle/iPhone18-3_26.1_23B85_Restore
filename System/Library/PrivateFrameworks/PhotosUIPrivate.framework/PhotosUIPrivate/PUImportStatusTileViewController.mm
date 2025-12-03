@interface PUImportStatusTileViewController
- (void)_updateIfNeeded;
- (void)_updateStatusView;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)performChanges:(id)changes;
- (void)setAssetViewModel:(id)model;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUImportStatusTileViewController

- (void)applyLayoutInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = PUImportStatusTileViewController;
  [(PUTileViewController *)&v7 applyLayoutInfo:info];
  view = [(PUTileViewController *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v8);
  [view bounds];
  MidY = CGRectGetMidY(v9);
  [(UIView *)self->_successView setCenter:MidX, MidY];
  [(UIView *)self->_errorView setCenter:MidX, MidY];
}

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  modelCopy = model;
  assetViewModel = [(PUImportStatusTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy && [changeCopy importStateChanged])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__PUImportStatusTileViewController_viewModel_didChange___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUImportStatusTileViewController *)self performChanges:v9];
  }
}

uint64_t __56__PUImportStatusTileViewController_viewModel_didChange___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 184) == 1 && (*(*(result + 32) + 176) & 1) != 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUImportStatusTileViewController viewModel:didChange:]_block_invoke"];
    [v1 handleFailureInFunction:v2 file:@"PUImportStatusTileViewController.m" lineNumber:162 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  *(*(result + 32) + 168) |= 1uLL;
  return result;
}

- (void)_updateStatusView
{
  if ([(PUTileViewController *)self isViewLoaded])
  {
    assetViewModel = [(PUImportStatusTileViewController *)self assetViewModel];
    importState = [assetViewModel importState];

    v5 = importState < 4;
    v6 = v5 & (2u >> (importState & 0xF));
    view = [(PUTileViewController *)self view];
    [view bounds];
    MidX = CGRectGetMidX(v24);
    [view bounds];
    MidY = CGRectGetMidY(v25);
    successView = self->_successView;
    if (importState <= 3 && ((4u >> (importState & 0xF)) & 1) != 0)
    {
      if (!successView)
      {
        v10 = PXImportBadgeViewForTypeAndSelectable();
        v11 = self->_successView;
        self->_successView = v10;

        [(UIView *)self->_successView setCenter:MidX, MidY];
        [view addSubview:self->_successView];
        successView = self->_successView;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    [(UIView *)successView setHidden:v12];
    v13 = v5 & (8u >> (importState & 0xF));
    progressIndicatorView = self->_progressIndicatorView;
    if (v6)
    {
      if (!progressIndicatorView)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v16 = self->_progressIndicatorView;
        self->_progressIndicatorView = v15;

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(UIActivityIndicatorView *)self->_progressIndicatorView setColor:whiteColor];

        [view bounds];
        [(UIActivityIndicatorView *)self->_progressIndicatorView setFrame:?];
        [(UIActivityIndicatorView *)self->_progressIndicatorView setAutoresizingMask:18];
        [view addSubview:self->_progressIndicatorView];
        progressIndicatorView = self->_progressIndicatorView;
      }

      [(UIActivityIndicatorView *)progressIndicatorView setHidden:0];
      [(UIActivityIndicatorView *)self->_progressIndicatorView startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)progressIndicatorView setHidden:1];
      [(UIActivityIndicatorView *)self->_progressIndicatorView stopAnimating];
    }

    errorView = self->_errorView;
    if (v13)
    {
      if (!errorView)
      {
        v19 = PXImportBadgeViewForTypeAndSelectable();
        v20 = self->_errorView;
        self->_errorView = v19;

        [(UIView *)self->_errorView setCenter:MidX, MidY];
        [view addSubview:self->_errorView];
        errorView = self->_errorView;
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    [(UIView *)errorView setHidden:v21];
  }
}

- (void)_updateIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUImportStatusTileViewController _updateIfNeeded]"];
      [currentHandler handleFailureInFunction:v6 file:@"PUImportStatusTileViewController.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PUImportStatusTileViewController *)self _updateStatusView];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUImportStatusTileViewController _updateIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v7 file:@"PUImportStatusTileViewController.m" lineNumber:86 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingChanges = [(PUImportStatusTileViewController *)self _isPerformingChanges];
  [(PUImportStatusTileViewController *)self set_isPerformingChanges:1];
  changesCopy[2](changesCopy);

  [(PUImportStatusTileViewController *)self set_isPerformingChanges:_isPerformingChanges];
  if (!_isPerformingChanges)
  {

    [(PUImportStatusTileViewController *)self _updateIfNeeded];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__PUImportStatusTileViewController_setAssetViewModel___block_invoke;
    v7[3] = &unk_1E7B80DD0;
    v7[4] = self;
    [(PUImportStatusTileViewController *)self performChanges:v7];
  }
}

uint64_t __54__PUImportStatusTileViewController_setAssetViewModel___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 184) == 1 && (*(*(result + 32) + 176) & 1) != 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUImportStatusTileViewController setAssetViewModel:]_block_invoke"];
    [v1 handleFailureInFunction:v2 file:@"PUImportStatusTileViewController.m" lineNumber:63 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  *(*(result + 32) + 168) |= 1uLL;
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PUImportStatusTileViewController;
  [(PUTileViewController *)&v5 viewDidLoad];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PUImportStatusTileViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [(PUImportStatusTileViewController *)self performChanges:v4];
  view = [(PUTileViewController *)self view];
  [view setUserInteractionEnabled:0];
}

uint64_t __47__PUImportStatusTileViewController_viewDidLoad__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 184) == 1 && (*(*(result + 32) + 176) & 1) != 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PUImportStatusTileViewController viewDidLoad]_block_invoke"];
    [v1 handleFailureInFunction:v2 file:@"PUImportStatusTileViewController.m" lineNumber:48 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  *(*(result + 32) + 168) |= 1uLL;
  return result;
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUImportStatusTileViewController;
  [(PUTileViewController *)&v4 becomeReusable];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PUImportStatusTileViewController_becomeReusable__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUImportStatusTileViewController *)self performChanges:v3];
}

@end