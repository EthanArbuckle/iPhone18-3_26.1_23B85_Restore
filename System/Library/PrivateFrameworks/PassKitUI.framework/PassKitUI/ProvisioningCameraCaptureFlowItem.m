@interface ProvisioningCameraCaptureFlowItem
- (_TtC9PassKitUI33ProvisioningCameraCaptureFlowItem)init;
- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)a3;
- (void)cameraCaptureViewControllerDidSelectSetupLater:(id)a3;
- (void)cameraCaptureViewControllerDidSelectTapToProvision:(id)a3;
@end

@implementation ProvisioningCameraCaptureFlowItem

- (_TtC9PassKitUI33ProvisioningCameraCaptureFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4
{
  if (a4)
  {
    v5 = sub_1BE052744();
  }

  else
  {
    v5 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = self;
    sub_1BD4B9A4C(v8, v5, v7);
    swift_unknownObjectRelease();
  }
}

- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = self;
    sub_1BD4B9A4C(v6, 0, v5);
    swift_unknownObjectRelease();
  }
}

- (void)cameraCaptureViewControllerDidSelectSetupLater:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD4B9B9C();
}

- (void)cameraCaptureViewControllerDidSelectTapToProvision:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = self;
    sub_1BD82685C(v6, 2u, v5);
    swift_unknownObjectRelease();
  }
}

@end