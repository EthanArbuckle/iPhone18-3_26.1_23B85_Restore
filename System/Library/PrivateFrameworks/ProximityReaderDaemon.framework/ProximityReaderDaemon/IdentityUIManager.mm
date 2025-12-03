@interface IdentityUIManager
- (void)notifyUIButtonTapWithButton:(int64_t)button;
- (void)qrCodeScanErrorWithError:(id)error;
- (void)readDocumentFromScannedQRCodeWithPayload:(id)payload;
@end

@implementation IdentityUIManager

- (void)readDocumentFromScannedQRCodeWithPayload:(id)payload
{
  payloadCopy = payload;

  v5 = sub_26139F01C();
  v7 = v6;

  v8 = (*(*self + 312))();
  if (v8)
  {
    v9 = v8;
    sub_261358440(v5, v7);

    sub_26124C6C4(v5, v7);
  }

  else
  {

    sub_26124C6C4(v5, v7);
  }
}

- (void)qrCodeScanErrorWithError:(id)error
{
  v4 = sub_2613A18CC();
  v6 = v5;
  v7 = *(*self + 312);

  v9 = v7(v8);
  if (v9)
  {
    v10 = v9;
    sub_26137CDA4(v4, v6);
  }
}

- (void)notifyUIButtonTapWithButton:(int64_t)button
{
  v4 = *(*self + 312);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    sub_261358A54(button);
  }
}

@end