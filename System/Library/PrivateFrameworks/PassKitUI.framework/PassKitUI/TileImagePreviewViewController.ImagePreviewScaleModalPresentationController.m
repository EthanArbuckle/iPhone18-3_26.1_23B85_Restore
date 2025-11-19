@interface TileImagePreviewViewController.ImagePreviewScaleModalPresentationController
- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation TileImagePreviewViewController.ImagePreviewScaleModalPresentationController

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1BD370C20();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    v5 = self;
    v4 = sub_1BD370B6C();
    [v4 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_1BD370EF4();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v4 = self;
    v3 = sub_1BD370B6C();
    [v3 removeFromSuperview];
  }
}

- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end