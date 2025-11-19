@interface IdentityReaderService
- (_TtC21ProximityReaderDaemon21IdentityReaderService)init;
- (void)cancelRegistration;
- (void)notifyUIButtonTapWithButton:(int64_t)a3;
- (void)prepareUsing:(id)a3 completion:(id)a4;
- (void)qrCodeScanErrorWithError:(id)a3;
- (void)qrCodeScanInitiated;
- (void)readDocumentFromScannedQRCodeWithPayload:(id)a3;
- (void)registerWithCompletion:(id)a3;
- (void)requestCancelReadWithIsEngagementTransition:(BOOL)a3;
- (void)requestRestartReadWithTriggeredByMultipleCheck:(BOOL)a3;
- (void)uiDidLoad;
- (void)uiFinishedWithExpected:(BOOL)a3;
@end

@implementation IdentityReaderService

- (_TtC21ProximityReaderDaemon21IdentityReaderService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareUsing:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_2613A18CC();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_26135D0E4(v7, a3, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)uiDidLoad
{
  v2 = self;
  sub_261356784();
}

- (void)uiFinishedWithExpected:(BOOL)a3
{
  v3 = self;
  sub_26135B36C();
}

- (void)requestCancelReadWithIsEngagementTransition:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_2613578E0(v3);
}

- (void)requestRestartReadWithTriggeredByMultipleCheck:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_261357DA4(v3);
}

- (void)readDocumentFromScannedQRCodeWithPayload:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_26139F01C();
  v7 = v6;

  sub_261358440(v5, v7);
  sub_26124C6C4(v5, v7);
}

- (void)notifyUIButtonTapWithButton:(int64_t)a3
{
  v4 = self;
  sub_261358A54(a3);
}

- (void)cancelRegistration
{
  v2 = self;
  sub_261357548();
}

- (void)registerWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_26135934C(sub_26127DF5C, v5);
}

- (void)qrCodeScanInitiated
{
  v2 = self;
  sub_26137CAE0();
}

- (void)qrCodeScanErrorWithError:(id)a3
{
  v4 = sub_2613A18CC();
  v6 = v5;
  v7 = self;
  sub_26137CDA4(v4, v6);
}

@end