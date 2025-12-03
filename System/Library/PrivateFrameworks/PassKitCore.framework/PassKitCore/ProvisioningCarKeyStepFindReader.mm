@interface ProvisioningCarKeyStepFindReader
- (_TtC11PassKitCore32ProvisioningCarKeyStepFindReader)init;
- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithError:(id)error;
- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithSubcredential:(id)subcredential registrationData:(id)data;
- (void)appletSubcredentialPairingSession:(id)session didFinishPreWarmWithResult:(id)result;
- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)pairing;
- (void)session:(id)session didChangeState:(unint64_t)state;
@end

@implementation ProvisioningCarKeyStepFindReader

- (_TtC11PassKitCore32ProvisioningCarKeyStepFindReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AD48D3E0(state);
  swift_unknownObjectRelease();
}

- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)pairing
{
  pairingCopy = pairing;
  selfCopy = self;
  _s11PassKitCore32ProvisioningCarKeyStepFindReaderC041appletSubcredentialPairingSessionDidBeginL0yySo08PKAppletklM0CSgF_0();
}

- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithSubcredential:(id)subcredential registrationData:(id)data
{
  if (subcredential)
  {
    dataCopy = data;
    selfCopy = self;
    subcredentialCopy = subcredential;
    [subcredentialCopy setTrackingRequest_];
    sub_1AD48C0C4(subcredential, 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)appletSubcredentialPairingSession:(id)session didEndPairingWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1AD48D6F8(error);
}

- (void)appletSubcredentialPairingSession:(id)session didFinishPreWarmWithResult:(id)result
{
  sessionCopy = session;
  selfCopy = self;
  resultCopy = result;
  sub_1AD48D8A0(result);
}

@end