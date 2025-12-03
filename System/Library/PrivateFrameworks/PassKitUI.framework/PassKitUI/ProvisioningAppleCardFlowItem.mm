@interface ProvisioningAppleCardFlowItem
- (_TtC9PassKitUI29ProvisioningAppleCardFlowItem)init;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation ProvisioningAppleCardFlowItem

- (_TtC9PassKitUI29ProvisioningAppleCardFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nextViewControllerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1BD1CE7C4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1BD1CE3F0(v5);
  sub_1BD0D4744(v5);
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3B961D0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end