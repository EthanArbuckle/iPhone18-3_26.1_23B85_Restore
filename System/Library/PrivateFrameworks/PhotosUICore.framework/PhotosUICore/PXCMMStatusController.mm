@interface PXCMMStatusController
- (PXCMMStatusController)init;
- (PXCMMStatusController)initWithStatusPresentation:(id)presentation viewModel:(id)model;
- (void)_updateWithChangeDescriptor:(unint64_t)descriptor;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCMMStatusController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXMomentShareStatusPresentationChangeObserverContext != context)
  {
    v12 = observableCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMStatusController.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"context == PXMomentShareStatusPresentationChangeObserverContext"}];

    observableCopy = v12;
  }

  if ((change & 0x7E8) != 0)
  {
    v11 = observableCopy;
    [(PXCMMStatusController *)self _updateWithChangeDescriptor:change];
    observableCopy = v11;
  }
}

- (void)_updateWithChangeDescriptor:(unint64_t)descriptor
{
  viewModel = self->_viewModel;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PXCMMStatusController__updateWithChangeDescriptor___block_invoke;
  v4[3] = &unk_1E77480A0;
  v4[4] = self;
  v4[5] = descriptor;
  [(PXStatusViewModel *)viewModel performChanges:v4];
}

void __53__PXCMMStatusController__updateWithChangeDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 8) != 0)
  {
    v5 = [*(*(a1 + 32) + 8) activityTitle];
    [v11 setTitle:v5];

    v3 = *(a1 + 40);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = [*(*(a1 + 32) + 8) pauseTitle];
  [v11 setMessage:v6];

  v3 = *(a1 + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = [*(*(a1 + 32) + 8) actionTitle];
  [v11 setActionTitle:v7];

  v3 = *(a1 + 40);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = [*(*(a1 + 32) + 8) actionConfirmationAlertTitle];
  [v11 setActionConfirmationAlertTitle:v8];

  v3 = *(a1 + 40);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [*(*(a1 + 32) + 8) actionConfirmationAlertSubtitle];
  [v11 setActionConfirmationAlertSubtitle:v9];

  v3 = *(a1 + 40);
  if ((v3 & 0x200) == 0)
  {
LABEL_7:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v10 = [*(*(a1 + 32) + 8) actionConfirmationAlertButtonTitle];
  [v11 setActionConfirmationAlertButtonTitle:v10];

  if ((*(a1 + 40) & 0x400) != 0)
  {
LABEL_8:
    v4 = [*(*(a1 + 32) + 8) action];
    [v11 setAction:v4];
  }

LABEL_9:
}

- (PXCMMStatusController)initWithStatusPresentation:(id)presentation viewModel:(id)model
{
  presentationCopy = presentation;
  modelCopy = model;
  v10 = modelCopy;
  if (presentationCopy)
  {
    if (modelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMStatusController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"statusPresentation"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMStatusController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXCMMStatusController;
  v11 = [(PXCMMStatusController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusPresentation, presentation);
    [(PXMomentShareStatusPresentation *)v12->_statusPresentation registerChangeObserver:v12 context:PXMomentShareStatusPresentationChangeObserverContext];
    objc_storeStrong(&v12->_viewModel, model);
    [(PXCMMStatusController *)v12 _updateWithChangeDescriptor:-1];
  }

  return v12;
}

- (PXCMMStatusController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMStatusController.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXCMMStatusController init]"}];

  abort();
}

@end