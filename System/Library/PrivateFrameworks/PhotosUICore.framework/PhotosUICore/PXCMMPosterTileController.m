@interface PXCMMPosterTileController
- (PXCMMPosterTileController)init;
- (PXCMMPosterTileController)initWithActivityType:(unint64_t)a3 viewModel:(id)a4 momentShareStatusPresentation:(id)a5;
- (UIView)view;
- (void)_updateContent;
- (void)_updateStatusString;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCMMPosterTileController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXViewModelObservationContext == a5)
  {
    if ((v6 & 0x81) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXCMMPosterTileController *)self _updateContent];
    goto LABEL_7;
  }

  if (PXMomentShareStatusPresentationObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMPosterTileController.m" lineNumber:130 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x2011) != 0)
  {
    v11 = v9;
    [(PXCMMPosterTileController *)self _updateStatusString];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (void)_updateStatusString
{
  v3 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation idleTitle];
  v4 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation type];
  v5 = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  if (v4 | v5)
  {
    v6 = (v5 - 5) >= 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  v8 = [(PXCMMPosterHeaderView *)self->_posterHeaderView viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PXCMMPosterTileController__updateStatusString__block_invoke;
  v10[3] = &unk_1E772CEE0;
  v11 = v3;
  v12 = v7;
  v9 = v3;
  [v8 performChanges:v10];
}

void __48__PXCMMPosterTileController__updateStatusString__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStatusString:v3];
  [v4 setShowStatusCheckmark:*(a1 + 40)];
}

- (void)_updateContent
{
  v3 = [(PXCMMPosterHeaderView *)self->_posterHeaderView viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXCMMPosterTileController__updateContent__block_invoke;
  v4[3] = &unk_1E77361D0;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __43__PXCMMPosterTileController__updateContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [*(*(a1 + 32) + 16) subtitle];
  [v4 setSubtitle:v6];

  v7 = [*(*(a1 + 32) + 16) posterAsset];
  [v4 setAsset:v7];

  v8 = [*(*(a1 + 32) + 16) posterMediaProvider];
  [v4 setMediaProvider:v8];
}

- (UIView)view
{
  posterHeaderView = self->_posterHeaderView;
  if (!posterHeaderView)
  {
    v4 = [[PXCMMPosterHeaderView alloc] initWithPresentationStyle:0];
    v5 = self->_posterHeaderView;
    self->_posterHeaderView = v4;

    [(PXCMMPosterTileController *)self _updateContent];
    [(PXCMMPosterTileController *)self _updateStatusString];
    posterHeaderView = self->_posterHeaderView;
  }

  return posterHeaderView;
}

- (PXCMMPosterTileController)initWithActivityType:(unint64_t)a3 viewModel:(id)a4 momentShareStatusPresentation:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXCMMPosterTileController;
  v11 = [(PXCMMPosterTileController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_activityType = a3;
    objc_storeStrong(&v11->_viewModel, a4);
    [(PXCMMViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXViewModelObservationContext];
    objc_storeStrong(&v12->_momentShareStatusPresentation, a5);
    [(PXMomentShareStatusPresentation *)v12->_momentShareStatusPresentation registerChangeObserver:v12 context:PXMomentShareStatusPresentationObservationContext];
  }

  return v12;
}

- (PXCMMPosterTileController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMPosterTileController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXCMMPosterTileController init]"}];

  abort();
}

@end