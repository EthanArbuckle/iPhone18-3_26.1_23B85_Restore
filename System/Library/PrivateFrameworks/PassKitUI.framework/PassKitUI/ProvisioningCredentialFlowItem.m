@interface ProvisioningCredentialFlowItem
- (_TtC9PassKitUI30ProvisioningCredentialFlowItem)init;
- (void)provisioningViewController:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)provisioningViewControllerDidSelectManualEntry:(id)a3;
@end

@implementation ProvisioningCredentialFlowItem

- (_TtC9PassKitUI30ProvisioningCredentialFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)provisioningViewController:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v5 = self + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = self;
    sub_1BD8659A4(v8, &off_1F3BC6990, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)provisioningViewControllerDidSelectManualEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD949D28();
}

@end