@interface ProvisioningAppleBalanceHeroFlowItem
- (_TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem)init;
- (void)appleBalanceExplanationViewControllerDidSelectContinue:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation ProvisioningAppleBalanceHeroFlowItem

- (_TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD958680();
}

- (void)appleBalanceExplanationViewControllerDidSelectContinue:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BC6ED8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end