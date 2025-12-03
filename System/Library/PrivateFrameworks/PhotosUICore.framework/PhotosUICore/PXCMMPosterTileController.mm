@interface PXCMMPosterTileController
- (PXCMMPosterTileController)init;
- (PXCMMPosterTileController)initWithActivityType:(unint64_t)type viewModel:(id)model momentShareStatusPresentation:(id)presentation;
- (UIView)view;
- (void)_updateContent;
- (void)_updateStatusString;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCMMPosterTileController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXViewModelObservationContext == context)
  {
    if ((changeCopy & 0x81) == 0)
    {
      goto LABEL_8;
    }

    v11 = observableCopy;
    [(PXCMMPosterTileController *)self _updateContent];
    goto LABEL_7;
  }

  if (PXMomentShareStatusPresentationObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterTileController.m" lineNumber:130 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x2011) != 0)
  {
    v11 = observableCopy;
    [(PXCMMPosterTileController *)self _updateStatusString];
LABEL_7:
    observableCopy = v11;
  }

LABEL_8:
}

- (void)_updateStatusString
{
  idleTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation idleTitle];
  type = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation type];
  state = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state];
  if (type | state)
  {
    v6 = (state - 5) >= 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  viewModel = [(PXCMMPosterHeaderView *)self->_posterHeaderView viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PXCMMPosterTileController__updateStatusString__block_invoke;
  v10[3] = &unk_1E772CEE0;
  v11 = idleTitle;
  v12 = v7;
  v9 = idleTitle;
  [viewModel performChanges:v10];
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
  viewModel = [(PXCMMPosterHeaderView *)self->_posterHeaderView viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXCMMPosterTileController__updateContent__block_invoke;
  v4[3] = &unk_1E77361D0;
  v4[4] = self;
  [viewModel performChanges:v4];
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

- (PXCMMPosterTileController)initWithActivityType:(unint64_t)type viewModel:(id)model momentShareStatusPresentation:(id)presentation
{
  modelCopy = model;
  presentationCopy = presentation;
  v14.receiver = self;
  v14.super_class = PXCMMPosterTileController;
  v11 = [(PXCMMPosterTileController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_activityType = type;
    objc_storeStrong(&v11->_viewModel, model);
    [(PXCMMViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXViewModelObservationContext];
    objc_storeStrong(&v12->_momentShareStatusPresentation, presentation);
    [(PXMomentShareStatusPresentation *)v12->_momentShareStatusPresentation registerChangeObserver:v12 context:PXMomentShareStatusPresentationObservationContext];
  }

  return v12;
}

- (PXCMMPosterTileController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterTileController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXCMMPosterTileController init]"}];

  abort();
}

@end