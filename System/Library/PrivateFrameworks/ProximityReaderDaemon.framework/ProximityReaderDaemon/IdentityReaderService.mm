@interface IdentityReaderService
- (_TtC21ProximityReaderDaemon21IdentityReaderService)init;
- (void)cancelRegistration;
- (void)notifyUIButtonTapWithButton:(int64_t)button;
- (void)prepareUsing:(id)using completion:(id)completion;
- (void)qrCodeScanErrorWithError:(id)error;
- (void)qrCodeScanInitiated;
- (void)readDocumentFromScannedQRCodeWithPayload:(id)payload;
- (void)registerWithCompletion:(id)completion;
- (void)requestCancelReadWithIsEngagementTransition:(BOOL)transition;
- (void)requestRestartReadWithTriggeredByMultipleCheck:(BOOL)check;
- (void)uiDidLoad;
- (void)uiFinishedWithExpected:(BOOL)expected;
@end

@implementation IdentityReaderService

- (_TtC21ProximityReaderDaemon21IdentityReaderService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareUsing:(id)using completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (using)
  {
    v7 = sub_2613A18CC();
    using = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_26135D0E4(v7, using, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)uiDidLoad
{
  selfCopy = self;
  sub_261356784();
}

- (void)uiFinishedWithExpected:(BOOL)expected
{
  selfCopy = self;
  sub_26135B36C();
}

- (void)requestCancelReadWithIsEngagementTransition:(BOOL)transition
{
  transitionCopy = transition;
  selfCopy = self;
  sub_2613578E0(transitionCopy);
}

- (void)requestRestartReadWithTriggeredByMultipleCheck:(BOOL)check
{
  checkCopy = check;
  selfCopy = self;
  sub_261357DA4(checkCopy);
}

- (void)readDocumentFromScannedQRCodeWithPayload:(id)payload
{
  payloadCopy = payload;
  selfCopy = self;
  v5 = sub_26139F01C();
  v7 = v6;

  sub_261358440(v5, v7);
  sub_26124C6C4(v5, v7);
}

- (void)notifyUIButtonTapWithButton:(int64_t)button
{
  selfCopy = self;
  sub_261358A54(button);
}

- (void)cancelRegistration
{
  selfCopy = self;
  sub_261357548();
}

- (void)registerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_26135934C(sub_26127DF5C, v5);
}

- (void)qrCodeScanInitiated
{
  selfCopy = self;
  sub_26137CAE0();
}

- (void)qrCodeScanErrorWithError:(id)error
{
  v4 = sub_2613A18CC();
  v6 = v5;
  selfCopy = self;
  sub_26137CDA4(v4, v6);
}

@end