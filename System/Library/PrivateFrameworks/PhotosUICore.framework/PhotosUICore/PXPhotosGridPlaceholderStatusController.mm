@interface PXPhotosGridPlaceholderStatusController
- (PXPhotosGridPlaceholderStatusController)init;
- (PXStatusController)statusController;
- (id)initForPresentingCPLStatus:(BOOL)status fallbackTitle:(id)title fallbackAttributedMessage:(id)message;
@end

@implementation PXPhotosGridPlaceholderStatusController

- (PXStatusController)statusController
{
  statusController = self->_statusController;
  if (!statusController)
  {
    if (self->_presentCPLStatus)
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v5 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary];
      v6 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary actionManager:v5];
      cplUIStatusProvider = self->_cplUIStatusProvider;
      self->_cplUIStatusProvider = v6;
    }

    v8 = objc_alloc_init(off_1E77218E0);
    v9 = self->_statusController;
    self->_statusController = v8;

    v10 = [PXCPLStatusController alloc];
    viewModel = [(PXStatusController *)self->_statusController viewModel];
    v12 = [(PXCPLStatusController *)v10 initWithViewModel:viewModel];
    cplStatusController = self->_cplStatusController;
    self->_cplStatusController = v12;

    [(PXCPLStatusController *)self->_cplStatusController setStatusProvider:self->_cplUIStatusProvider];
    [(PXCPLStatusController *)self->_cplStatusController setFallbackTitle:self->_fallbackTitle];
    [(PXCPLStatusController *)self->_cplStatusController setFallbackAttributedMessage:self->_fallbackAttributedMessage];
    statusController = self->_statusController;
  }

  return statusController;
}

- (id)initForPresentingCPLStatus:(BOOL)status fallbackTitle:(id)title fallbackAttributedMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v12 = messageCopy;
  if (titleCopy)
  {
    if (messageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fallbackTitle"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"fallbackAttributedMessage"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosGridPlaceholderStatusController;
  v13 = [(PXPhotosGridPlaceholderStatusController *)&v18 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    v13->_presentCPLStatus = status;
    objc_storeStrong(&v13->_fallbackTitle, title);
    objc_storeStrong(p_isa + 3, message);
  }

  return p_isa;
}

- (PXPhotosGridPlaceholderStatusController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridPlaceholderStatusController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXPhotosGridPlaceholderStatusController init]"}];

  abort();
}

@end