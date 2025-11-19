@interface PXPhotosGridPlaceholderStatusController
- (PXPhotosGridPlaceholderStatusController)init;
- (PXStatusController)statusController;
- (id)initForPresentingCPLStatus:(BOOL)a3 fallbackTitle:(id)a4 fallbackAttributedMessage:(id)a5;
@end

@implementation PXPhotosGridPlaceholderStatusController

- (PXStatusController)statusController
{
  statusController = self->_statusController;
  if (!statusController)
  {
    if (self->_presentCPLStatus)
    {
      v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v5 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:v4];
      v6 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:v4 actionManager:v5];
      cplUIStatusProvider = self->_cplUIStatusProvider;
      self->_cplUIStatusProvider = v6;
    }

    v8 = objc_alloc_init(off_1E77218E0);
    v9 = self->_statusController;
    self->_statusController = v8;

    v10 = [PXCPLStatusController alloc];
    v11 = [(PXStatusController *)self->_statusController viewModel];
    v12 = [(PXCPLStatusController *)v10 initWithViewModel:v11];
    cplStatusController = self->_cplStatusController;
    self->_cplStatusController = v12;

    [(PXCPLStatusController *)self->_cplStatusController setStatusProvider:self->_cplUIStatusProvider];
    [(PXCPLStatusController *)self->_cplStatusController setFallbackTitle:self->_fallbackTitle];
    [(PXCPLStatusController *)self->_cplStatusController setFallbackAttributedMessage:self->_fallbackAttributedMessage];
    statusController = self->_statusController;
  }

  return statusController;
}

- (id)initForPresentingCPLStatus:(BOOL)a3 fallbackTitle:(id)a4 fallbackAttributedMessage:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fallbackTitle"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"fallbackAttributedMessage"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosGridPlaceholderStatusController;
  v13 = [(PXPhotosGridPlaceholderStatusController *)&v18 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    v13->_presentCPLStatus = a3;
    objc_storeStrong(&v13->_fallbackTitle, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (PXPhotosGridPlaceholderStatusController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXPhotosGridPlaceholderStatusController init]"}];

  abort();
}

@end