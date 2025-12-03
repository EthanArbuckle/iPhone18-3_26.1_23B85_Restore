@interface ProvisioningPeerPaymentExplanationFlowItem
- (_TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem)init;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation ProvisioningPeerPaymentExplanationFlowItem

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BA3B38, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (_TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end