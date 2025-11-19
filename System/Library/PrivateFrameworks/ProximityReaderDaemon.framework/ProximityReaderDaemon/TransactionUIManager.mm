@interface TransactionUIManager
- (void)pinAuthResultWithError:(id)a3 cancelsFlow:(BOOL)a4;
- (void)pinDataReceivedWithPinData:(id)a3 analyticsData:(id)a4;
- (void)pinViewLoaded;
- (void)reportPINErrorWithError:(int64_t)a3 analyticsData:(id)a4;
- (void)setVoiceOverWithEnabled:(BOOL)a3;
- (void)vasReadSuccessWithMerchantNames:(id)a3;
@end

@implementation TransactionUIManager

- (void)vasReadSuccessWithMerchantNames:(id)a3
{
  v3 = *(*self + 264);
  v4 = a3;

  v6 = v3(v5);
  if (v6)
  {
    [v6 vasReadSuccessWithMerchantNames_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)pinViewLoaded
{
  if (*(self + 128) == 1)
  {
    *(self + 128) = 2;
  }

  v2 = *(*self + 288);

  v4 = v2(v3);
  if (v4)
  {
    v5 = v4;
    sub_26131C2D8();
  }
}

- (void)pinDataReceivedWithPinData:(id)a3 analyticsData:(id)a4
{
  v12 = a3;
  v6 = a4;

  v7 = sub_26139F01C();
  v9 = v8;

  v10 = (*(*self + 288))();
  if (v10)
  {
    v11 = v10;
    sub_26131C99C(v12, v7, v9);

    sub_26124C6C4(v7, v9);
  }

  else
  {

    sub_26124C6C4(v7, v9);
  }
}

- (void)reportPINErrorWithError:(int64_t)a3 analyticsData:(id)a4
{
  v6 = a4;

  v7 = sub_26139F01C();
  v9 = v8;

  v10 = (*(*self + 288))();
  if (v10)
  {
    v11 = v10;
    sub_26131CC1C(a3, v7, v9);

    sub_26124C6C4(v7, v9);
  }

  else
  {

    sub_26124C6C4(v7, v9);
  }
}

- (void)pinAuthResultWithError:(id)a3 cancelsFlow:(BOOL)a4
{
  if (a3)
  {
    v6 = sub_2613A18CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(*self + 288);

  v11 = v9(v10);
  if (v11)
  {
    v12 = v11;
    sub_26131C740(v6, v8, a4);
  }
}

- (void)setVoiceOverWithEnabled:(BOOL)a3
{
  v4 = *(*self + 288);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    sub_26131D050(a3);
  }
}

@end