@interface ProvisioningCarKeyStepFindReader
- (_TtC11PassKitCore32ProvisioningCarKeyStepFindReader)init;
- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithError:(id)a4;
- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithSubcredential:(id)a4 registrationData:(id)a5;
- (void)appletSubcredentialPairingSession:(id)a3 didFinishPreWarmWithResult:(id)a4;
- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)a3;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
@end

@implementation ProvisioningCarKeyStepFindReader

- (_TtC11PassKitCore32ProvisioningCarKeyStepFindReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1AD48D3E0(a4);
  swift_unknownObjectRelease();
}

- (void)appletSubcredentialPairingSessionDidBeginPairing:(id)a3
{
  v4 = a3;
  v5 = self;
  _s11PassKitCore32ProvisioningCarKeyStepFindReaderC041appletSubcredentialPairingSessionDidBeginL0yySo08PKAppletklM0CSgF_0();
}

- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithSubcredential:(id)a4 registrationData:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v9 = self;
    v8 = a4;
    [v8 setTrackingRequest_];
    sub_1AD48C0C4(a4, 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)appletSubcredentialPairingSession:(id)a3 didEndPairingWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1AD48D6F8(a4);
}

- (void)appletSubcredentialPairingSession:(id)a3 didFinishPreWarmWithResult:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1AD48D8A0(a4);
}

@end