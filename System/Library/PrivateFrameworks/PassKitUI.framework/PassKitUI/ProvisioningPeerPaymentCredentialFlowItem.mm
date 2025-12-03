@interface ProvisioningPeerPaymentCredentialFlowItem
- (_TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem)init;
- (void)peerPaymentSetupFlowControllerDidFinish:(id)finish;
@end

@implementation ProvisioningPeerPaymentCredentialFlowItem

- (_TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)peerPaymentSetupFlowControllerDidFinish:(id)finish
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BC29D8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end