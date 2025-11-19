@interface PXPhotoStreamComposeServiceViewController
- (PXPhotoStreamComposeServiceDelegate)delegate;
- (void)setAssetsToShare:(id)a3;
- (void)setSourcesToShare:(id)a3;
@end

@implementation PXPhotoStreamComposeServiceViewController

- (PXPhotoStreamComposeServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSourcesToShare:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoStreamComposeServiceViewController.m" lineNumber:22 description:{@"Method %s is a responsibility of subclass %@", "-[PXPhotoStreamComposeServiceViewController setSourcesToShare:]", v8}];

  abort();
}

- (void)setAssetsToShare:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoStreamComposeServiceViewController.m" lineNumber:18 description:{@"Method %s is a responsibility of subclass %@", "-[PXPhotoStreamComposeServiceViewController setAssetsToShare:]", v8}];

  abort();
}

@end