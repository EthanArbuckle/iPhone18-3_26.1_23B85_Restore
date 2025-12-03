@interface ProvisioningAppleBalanceHeroFlowItem
- (_TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem)init;
- (void)appleBalanceExplanationViewControllerDidSelectContinue:(id)continue;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation ProvisioningAppleBalanceHeroFlowItem

- (_TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  flowCopy = flow;
  selfCopy = self;
  sub_1BD958680();
}

- (void)appleBalanceExplanationViewControllerDidSelectContinue:(id)continue
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BC6ED8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end