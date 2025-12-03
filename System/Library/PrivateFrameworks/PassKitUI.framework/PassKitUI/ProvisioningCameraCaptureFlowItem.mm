@interface ProvisioningCameraCaptureFlowItem
- (_TtC9PassKitUI33ProvisioningCameraCaptureFlowItem)init;
- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects;
- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)entry;
- (void)cameraCaptureViewControllerDidSelectSetupLater:(id)later;
- (void)cameraCaptureViewControllerDidSelectTapToProvision:(id)provision;
@end

@implementation ProvisioningCameraCaptureFlowItem

- (_TtC9PassKitUI33ProvisioningCameraCaptureFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects
{
  if (objects)
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
    selfCopy = self;
    sub_1BD4B9A4C(selfCopy, v5, v7);
    swift_unknownObjectRelease();
  }
}

- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)entry
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    sub_1BD4B9A4C(selfCopy, 0, v5);
    swift_unknownObjectRelease();
  }
}

- (void)cameraCaptureViewControllerDidSelectSetupLater:(id)later
{
  laterCopy = later;
  selfCopy = self;
  sub_1BD4B9B9C();
}

- (void)cameraCaptureViewControllerDidSelectTapToProvision:(id)provision
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    sub_1BD82685C(selfCopy, 2u, v5);
    swift_unknownObjectRelease();
  }
}

@end