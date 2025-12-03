@interface TileImagePreviewViewController.ImagePreviewScaleModalPresentationController
- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation TileImagePreviewViewController.ImagePreviewScaleModalPresentationController

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1BD370C20();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    selfCopy = self;
    v4 = sub_1BD370B6C();
    [v4 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1BD370EF4();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    selfCopy = self;
    v3 = sub_1BD370B6C();
    [v3 removeFromSuperview];
  }
}

- (_TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end