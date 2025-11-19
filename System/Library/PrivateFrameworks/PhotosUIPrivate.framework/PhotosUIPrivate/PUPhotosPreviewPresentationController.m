@interface PUPhotosPreviewPresentationController
- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate;
- (void)_revealTransitionDidComplete:(BOOL)a3;
@end

@implementation PUPhotosPreviewPresentationController

- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosPreviewingDelegate);

  return WeakRetained;
}

- (void)_revealTransitionDidComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotosPreviewPresentationController *)self photosPreviewingDelegate];
  v6 = [(PUPhotosPreviewPresentationController *)self presentedViewController];
  [v5 photosPreviewPresentationController:self willPresentPreviewViewController:v6];

  v7.receiver = self;
  v7.super_class = PUPhotosPreviewPresentationController;
  [(_UIPreviewPresentationController *)&v7 _revealTransitionDidComplete:v3];
}

@end