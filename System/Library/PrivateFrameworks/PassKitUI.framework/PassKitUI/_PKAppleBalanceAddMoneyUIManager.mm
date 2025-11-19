@interface _PKAppleBalanceAddMoneyUIManager
- (_PKAppleBalanceAddMoneyUIManager)init;
- (_PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)a3;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)presentAMSDirectTopUpFrom:(id)a3 context:(int64_t)a4 webViewDelegate:(id)a5 completion:(id)a6;
- (void)presentAMSPromotionRedemptionViewFrom:(id)a3 promotionInfo:(id)a4 webViewDelegate:(id)a5;
- (void)presentAMSRedeemGiftcardFrom:(id)a3 webViewDelegate:(id)a4;
- (void)presentAddMoneyFrom:(id)a3 dtuConfiguration:(id)a4 inStoreToken:(id)a5;
- (void)presentAddMoneyInterstitialFrom:(id)a3 dtuConfiguration:(id)a4 inStoreToken:(id)a5;
- (void)presentDirectTopUpFrom:(id)a3 context:(int64_t)a4 configuration:(id)a5 promotion:(id)a6 completion:(id)a7;
- (void)presentInStoreTopUpFrom:(id)a3 context:(int64_t)a4 token:(id)a5;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation _PKAppleBalanceAddMoneyUIManager

- (_PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel) = 0;
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  v4 = a3;
  return [(_PKAppleBalanceAddMoneyUIManager *)&v6 init];
}

- (void)presentAddMoneyFrom:(id)a3 dtuConfiguration:(id)a4 inStoreToken:(id)a5
{
  v8 = *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  v9 = a3;
  v12 = a4;
  v10 = a5;
  v11 = self;
  if ([v8 supportsInStoreTopUp])
  {
    sub_1BD70EA58(v9, a4, v10);
  }

  else
  {
    sub_1BD70EBFC(v9, 1uLL, a4, 0, 0, 0);
  }
}

- (void)presentAddMoneyInterstitialFrom:(id)a3 dtuConfiguration:(id)a4 inStoreToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1BD70EA58(v8, a4, a5);
}

- (void)presentDirectTopUpFrom:(id)a3 context:(int64_t)a4 configuration:(id)a5 promotion:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1BD1B6FEC;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = self;
  sub_1BD70EBFC(v14, a4, a5, a6, v12, v13);
  sub_1BD1107D8(v12);
}

- (void)presentAMSDirectTopUpFrom:(id)a3 context:(int64_t)a4 webViewDelegate:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_1BD1B6B00;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  sub_1BD710144(0, v12, a4, 0, a5, v10, v11);

  sub_1BD1107D8(v10);

  swift_unknownObjectRelease();
}

- (void)presentAMSRedeemGiftcardFrom:(id)a3 webViewDelegate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1BD710144(1u, v6, 1uLL, 0, a4, 0, 0);

  swift_unknownObjectRelease();
}

- (void)presentAMSPromotionRedemptionViewFrom:(id)a3 promotionInfo:(id)a4 webViewDelegate:(id)a5
{
  v8 = sub_1BE052244();
  v9 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  v10 = sub_1BD1A8284(v8);

  sub_1BD710144(2u, v9, 2uLL, v10, a5, 0, 0);

  swift_unknownObjectRelease();
}

- (void)presentInStoreTopUpFrom:(id)a3 context:(int64_t)a4 token:(id)a5
{
  v9 = *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  v10 = objc_allocWithZone(type metadata accessor for InStoreTopUpTokenModel());
  v11 = a5;
  v12 = a3;
  v14 = self;
  v13 = sub_1BD85BDFC(v9, a5);
  sub_1BD711364(v12, a4, v13);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_1BD7145A0(v13, v14, v10, &unk_1F3BB8168, sub_1BD715114, &block_descriptor_96_3, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present dialog request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_1BD714894(v13, v14, v10, &unk_1F3BB8118, sub_1BD715114, &block_descriptor_89_1, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present authenticate request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_1BD714B88(v13, v14, v10, &unk_1F3BB80C8, sub_1BD715114, &block_descriptor_82_2, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present engagement request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BD7145A0(v10, v11, v8, &unk_1F3BB8078, sub_1BD714ECC, &block_descriptor_75_1, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present dialog request %@, but active controller was nil");
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BD714894(v10, v11, v8, &unk_1F3BB8028, sub_1BD715114, &block_descriptor_69_1, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present authenticate request %@, but active controller was nil");
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BD714B88(v10, v11, v8, &unk_1F3BB7FD8, sub_1BD715114, &block_descriptor_63_2, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present engagement request %@, but active controller was nil");
  _Block_release(v8);
  _Block_release(v8);
}

- (_PKAppleBalanceAddMoneyUIManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end