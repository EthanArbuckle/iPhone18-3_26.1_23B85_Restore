@interface ProvisioningPasscodeUpgradeExplanationFlowItem
- (_TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem)init;
- (void)upgradeExplanationViewControllerDidComplete:(id)a3;
@end

@implementation ProvisioningPasscodeUpgradeExplanationFlowItem

- (_TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)upgradeExplanationViewControllerDidComplete:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BBBD28, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end