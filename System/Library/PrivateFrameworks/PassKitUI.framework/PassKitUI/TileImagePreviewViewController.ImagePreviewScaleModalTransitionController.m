@interface TileImagePreviewViewController.ImagePreviewScaleModalTransitionController
- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation TileImagePreviewViewController.ImagePreviewScaleModalTransitionController

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1BD3723CC();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BD372588();

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v9 = a4;
  if (!a4)
  {
    v9 = a5;
  }

  v10 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalPresentationController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] = 0;
  *&v11[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController_transitionController] = self;
  v20.receiver = v11;
  v20.super_class = v10;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = v13;
  v16 = v12;
  v17 = a3;
  v18 = [(TileImagePreviewViewController.ImagePreviewScaleModalTransitionController *)&v20 initWithPresentedViewController:v17 presentingViewController:v9];

  return v18;
}

- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end