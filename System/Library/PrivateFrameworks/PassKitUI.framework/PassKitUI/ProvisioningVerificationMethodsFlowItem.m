@interface ProvisioningVerificationMethodsFlowItem
- (_TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem)init;
- (void)performVerificationForViewController:(id)a3 methodGroup:(id)a4;
- (void)showVerificationMethodsForVerificationMethodsViewController:(id)a3;
- (void)verificationMethodsViewControllerDidFinish:(id)a3;
@end

@implementation ProvisioningVerificationMethodsFlowItem

- (_TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performVerificationForViewController:(id)a3 methodGroup:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a4)
    {
      v7 = Strong;
      v8 = a4;
      v9 = self;
      sub_1BD553448(v9, v8, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)showVerificationMethodsForVerificationMethodsViewController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = self;
    sub_1BD553318(v6, v5);
  }
}

- (void)verificationMethodsViewControllerDidFinish:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BAD3B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end