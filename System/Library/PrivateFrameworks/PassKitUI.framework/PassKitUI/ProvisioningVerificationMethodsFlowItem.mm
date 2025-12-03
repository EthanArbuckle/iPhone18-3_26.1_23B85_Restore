@interface ProvisioningVerificationMethodsFlowItem
- (_TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem)init;
- (void)performVerificationForViewController:(id)controller methodGroup:(id)group;
- (void)showVerificationMethodsForVerificationMethodsViewController:(id)controller;
- (void)verificationMethodsViewControllerDidFinish:(id)finish;
@end

@implementation ProvisioningVerificationMethodsFlowItem

- (_TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performVerificationForViewController:(id)controller methodGroup:(id)group
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (group)
    {
      v7 = Strong;
      groupCopy = group;
      selfCopy = self;
      sub_1BD553448(selfCopy, groupCopy, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)showVerificationMethodsForVerificationMethodsViewController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    sub_1BD553318(selfCopy, v5);
  }
}

- (void)verificationMethodsViewControllerDidFinish:(id)finish
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BAD3B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end