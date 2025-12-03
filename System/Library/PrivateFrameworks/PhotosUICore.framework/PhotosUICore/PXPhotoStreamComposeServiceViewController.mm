@interface PXPhotoStreamComposeServiceViewController
- (PXPhotoStreamComposeServiceDelegate)delegate;
- (void)setAssetsToShare:(id)share;
- (void)setSourcesToShare:(id)share;
@end

@implementation PXPhotoStreamComposeServiceViewController

- (PXPhotoStreamComposeServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSourcesToShare:(id)share
{
  shareCopy = share;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoStreamComposeServiceViewController.m" lineNumber:22 description:{@"Method %s is a responsibility of subclass %@", "-[PXPhotoStreamComposeServiceViewController setSourcesToShare:]", v8}];

  abort();
}

- (void)setAssetsToShare:(id)share
{
  shareCopy = share;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoStreamComposeServiceViewController.m" lineNumber:18 description:{@"Method %s is a responsibility of subclass %@", "-[PXPhotoStreamComposeServiceViewController setAssetsToShare:]", v8}];

  abort();
}

@end