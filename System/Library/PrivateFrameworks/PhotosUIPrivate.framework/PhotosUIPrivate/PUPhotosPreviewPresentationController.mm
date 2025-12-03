@interface PUPhotosPreviewPresentationController
- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate;
- (void)_revealTransitionDidComplete:(BOOL)complete;
@end

@implementation PUPhotosPreviewPresentationController

- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosPreviewingDelegate);

  return WeakRetained;
}

- (void)_revealTransitionDidComplete:(BOOL)complete
{
  completeCopy = complete;
  photosPreviewingDelegate = [(PUPhotosPreviewPresentationController *)self photosPreviewingDelegate];
  presentedViewController = [(PUPhotosPreviewPresentationController *)self presentedViewController];
  [photosPreviewingDelegate photosPreviewPresentationController:self willPresentPreviewViewController:presentedViewController];

  v7.receiver = self;
  v7.super_class = PUPhotosPreviewPresentationController;
  [(_UIPreviewPresentationController *)&v7 _revealTransitionDidComplete:completeCopy];
}

@end