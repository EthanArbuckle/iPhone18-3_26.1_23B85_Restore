@interface ProvisioningAppleBalanceCredentialFlowItem
- (_TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem)init;
- (void)provisioningViewController:(id)a3 didFinishWithSuccess:(BOOL)a4;
@end

@implementation ProvisioningAppleBalanceCredentialFlowItem

- (_TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)provisioningViewController:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = self;
    sub_1BD8659A4(v8, &off_1F3BA5A60, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end