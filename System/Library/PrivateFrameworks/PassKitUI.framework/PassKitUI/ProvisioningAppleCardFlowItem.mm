@interface ProvisioningAppleCardFlowItem
- (_TtC9PassKitUI29ProvisioningAppleCardFlowItem)init;
- (void)nextViewControllerWithCompletion:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation ProvisioningAppleCardFlowItem

- (_TtC9PassKitUI29ProvisioningAppleCardFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nextViewControllerWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1BD1CE7C4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1BD1CE3F0(v5);
  sub_1BD0D4744(v5);
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3B961D0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end