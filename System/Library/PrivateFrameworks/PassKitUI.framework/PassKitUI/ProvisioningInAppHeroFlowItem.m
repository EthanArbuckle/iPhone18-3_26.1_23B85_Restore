@interface ProvisioningInAppHeroFlowItem
- (_TtC9PassKitUI29ProvisioningInAppHeroFlowItem)init;
- (void)heroViewControllerDidSelectContinue:(id)a3 didSelectMethod:(id)a4;
- (void)heroViewControllerDidSelectSetupLater:(id)a3;
@end

@implementation ProvisioningInAppHeroFlowItem

- (_TtC9PassKitUI29ProvisioningInAppHeroFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heroViewControllerDidSelectContinue:(id)a3 didSelectMethod:(id)a4
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = self;
    sub_1BD8659A4(v8, &off_1F3B9B580, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)heroViewControllerDidSelectSetupLater:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3B9B580, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end