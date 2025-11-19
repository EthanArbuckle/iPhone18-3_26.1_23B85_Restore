@interface PUPhotosPreviewTransitionDelegate
- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation PUPhotosPreviewTransitionDelegate

- (PUPhotosPreviewPresentationControllerDelegate)photosPreviewingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosPreviewingDelegate);

  return WeakRetained;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(_UIPreviewPresentationController *)[PUPhotosPreviewPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  v10 = [(PUPhotosPreviewTransitionDelegate *)self photosPreviewingDelegate];
  [(PUPhotosPreviewPresentationController *)v9 setPhotosPreviewingDelegate:v10];

  return v9;
}

@end