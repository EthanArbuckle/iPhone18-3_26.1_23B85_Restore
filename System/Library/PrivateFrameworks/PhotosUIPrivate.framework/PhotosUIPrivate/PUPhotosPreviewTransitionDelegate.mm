@interface PUPhotosPreviewTransitionDelegate
- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation PUPhotosPreviewTransitionDelegate

- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosPreviewingDelegate);

  return WeakRetained;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [(_UIPreviewPresentationController *)[PUPhotosPreviewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  photosPreviewingDelegate = [(PUPhotosPreviewTransitionDelegate *)self photosPreviewingDelegate];
  [(PUPhotosPreviewPresentationController *)v9 setPhotosPreviewingDelegate:photosPreviewingDelegate];

  return v9;
}

@end