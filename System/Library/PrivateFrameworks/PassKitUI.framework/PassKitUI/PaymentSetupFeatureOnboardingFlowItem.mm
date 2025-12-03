@interface PaymentSetupFeatureOnboardingFlowItem
- (_TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem)init;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation PaymentSetupFeatureOnboardingFlowItem

- (_TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nextViewControllerWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 0, 0);

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BC23D0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end