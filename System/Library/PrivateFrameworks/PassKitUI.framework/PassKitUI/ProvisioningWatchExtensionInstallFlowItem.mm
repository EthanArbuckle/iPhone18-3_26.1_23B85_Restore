@interface ProvisioningWatchExtensionInstallFlowItem
- (_TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem)init;
- (void)watchExtensionInstallViewControllerDidFinish:(id)finish;
@end

@implementation ProvisioningWatchExtensionInstallFlowItem

- (_TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)watchExtensionInstallViewControllerDidFinish:(id)finish
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BBB3F8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end