@interface TileImagePreviewViewController.ImagePreviewScaleModalTransitionController
- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation TileImagePreviewViewController.ImagePreviewScaleModalTransitionController

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1BD3723CC();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1BD372588();

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  sourceViewControllerCopy = viewController;
  if (!viewController)
  {
    sourceViewControllerCopy = sourceViewController;
  }

  v10 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalPresentationController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] = 0;
  *&v11[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController_transitionController] = self;
  v20.receiver = v11;
  v20.super_class = v10;
  selfCopy = self;
  viewControllerCopy2 = viewController;
  sourceViewControllerCopy2 = sourceViewController;
  v15 = viewControllerCopy2;
  v16 = selfCopy;
  controllerCopy = controller;
  v18 = [(TileImagePreviewViewController.ImagePreviewScaleModalTransitionController *)&v20 initWithPresentedViewController:controllerCopy presentingViewController:sourceViewControllerCopy];

  return v18;
}

- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end