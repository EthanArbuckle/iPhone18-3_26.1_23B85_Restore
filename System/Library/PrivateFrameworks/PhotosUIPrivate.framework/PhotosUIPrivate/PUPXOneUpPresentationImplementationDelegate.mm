@interface PUPXOneUpPresentationImplementationDelegate
- (BOOL)oneUpPresentation:(id)presentation canStartAnimated:(BOOL)animated;
- (BOOL)oneUpPresentation:(id)presentation handlePresentingPinchGestureRecognizer:(id)recognizer;
- (BOOL)oneUpPresentation:(id)presentation startWithConfigurationHandler:(id)handler;
- (BOOL)oneUpPresentationCanStop:(id)stop;
- (id)oneUpPresentationLastViewedAssetReference:(id)reference;
- (id)previewViewControllerForOneUpPresentation:(id)presentation allowingActions:(BOOL)actions;
- (void)oneUpPresentation:(id)presentation commitPreviewViewController:(id)controller;
- (void)oneUpPresentation:(id)presentation didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)oneUpPresentation:(id)presentation presentingViewControllerViewDidAppear:(BOOL)appear;
- (void)oneUpPresentation:(id)presentation presentingViewControllerViewDidDisappear:(BOOL)disappear;
- (void)oneUpPresentation:(id)presentation presentingViewControllerViewIsAppearing:(BOOL)appearing;
- (void)oneUpPresentation:(id)presentation presentingViewControllerViewWillAppear:(BOOL)appear;
- (void)oneUpPresentation:(id)presentation presentingViewControllerViewWillDisappear:(BOOL)disappear;
- (void)oneUpPresentation:(id)presentation registerStateChangeHandler:(id)handler;
- (void)oneUpPresentation:(id)presentation stopAnimated:(BOOL)animated;
- (void)oneUpPresentationInvalidatePresentingGeometry:(id)geometry;
@end

@implementation PUPXOneUpPresentationImplementationDelegate

- (BOOL)oneUpPresentation:(id)presentation handlePresentingPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v6 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  v7 = [v6 handlePresentingPinchGestureRecognizer:recognizerCopy];

  return v7;
}

- (void)oneUpPresentationInvalidatePresentingGeometry:(id)geometry
{
  v3 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:geometry];
  [v3 invalidatePresentingGeometry];
}

- (void)oneUpPresentation:(id)presentation stopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 stopAnimated:animatedCopy];
}

- (BOOL)oneUpPresentationCanStop:(id)stop
{
  v3 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:stop];
  canStop = [v3 canStop];

  return canStop;
}

- (void)oneUpPresentation:(id)presentation commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v6 commitPreviewViewController:controllerCopy];
}

- (void)oneUpPresentation:(id)presentation didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  committingCopy = committing;
  controllerCopy = controller;
  v8 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v8 didDismissPreviewViewController:controllerCopy committing:committingCopy];
}

- (id)previewViewControllerForOneUpPresentation:(id)presentation allowingActions:(BOOL)actions
{
  actionsCopy = actions;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  v6 = [v5 previewViewControllerAllowingActions:actionsCopy];

  return v6;
}

- (BOOL)oneUpPresentation:(id)presentation startWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  v7 = [v6 startWithConfigurationHandler:handlerCopy];

  return v7;
}

- (void)oneUpPresentation:(id)presentation registerStateChangeHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v6 registerStateChangeHandler:handlerCopy];
}

- (id)oneUpPresentationLastViewedAssetReference:(id)reference
{
  v3 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:reference];
  lastViewedAssetReference = [v3 lastViewedAssetReference];

  return lastViewedAssetReference;
}

- (BOOL)oneUpPresentation:(id)presentation canStartAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  LOBYTE(animatedCopy) = [v5 canStartAnimated:animatedCopy];

  return animatedCopy;
}

- (void)oneUpPresentation:(id)presentation presentingViewControllerViewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 presentingViewControllerViewDidDisappear:disappearCopy];
}

- (void)oneUpPresentation:(id)presentation presentingViewControllerViewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 presentingViewControllerViewWillDisappear:disappearCopy];
}

- (void)oneUpPresentation:(id)presentation presentingViewControllerViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 presentingViewControllerViewDidAppear:appearCopy];
}

- (void)oneUpPresentation:(id)presentation presentingViewControllerViewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 presentingViewControllerViewIsAppearing:appearingCopy];
}

- (void)oneUpPresentation:(id)presentation presentingViewControllerViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = [PUPXOneUpPresentationImplementation implementationForOneUpPresentation:presentation];
  [v5 presentingViewControllerViewWillAppear:appearCopy];
}

@end