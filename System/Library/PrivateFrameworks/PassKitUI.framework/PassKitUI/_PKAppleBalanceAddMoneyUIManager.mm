@interface _PKAppleBalanceAddMoneyUIManager
- (_PKAppleBalanceAddMoneyUIManager)init;
- (_PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)account;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)presentAMSDirectTopUpFrom:(id)from context:(int64_t)context webViewDelegate:(id)delegate completion:(id)completion;
- (void)presentAMSPromotionRedemptionViewFrom:(id)from promotionInfo:(id)info webViewDelegate:(id)delegate;
- (void)presentAMSRedeemGiftcardFrom:(id)from webViewDelegate:(id)delegate;
- (void)presentAddMoneyFrom:(id)from dtuConfiguration:(id)configuration inStoreToken:(id)token;
- (void)presentAddMoneyInterstitialFrom:(id)from dtuConfiguration:(id)configuration inStoreToken:(id)token;
- (void)presentDirectTopUpFrom:(id)from context:(int64_t)context configuration:(id)configuration promotion:(id)promotion completion:(id)completion;
- (void)presentInStoreTopUpFrom:(id)from context:(int64_t)context token:(id)token;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation _PKAppleBalanceAddMoneyUIManager

- (_PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)account
{
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel) = 0;
  *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account) = account;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  accountCopy = account;
  return [(_PKAppleBalanceAddMoneyUIManager *)&v6 init];
}

- (void)presentAddMoneyFrom:(id)from dtuConfiguration:(id)configuration inStoreToken:(id)token
{
  v8 = *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  fromCopy = from;
  configurationCopy = configuration;
  tokenCopy = token;
  selfCopy = self;
  if ([v8 supportsInStoreTopUp])
  {
    sub_1BD70EA58(fromCopy, configuration, tokenCopy);
  }

  else
  {
    sub_1BD70EBFC(fromCopy, 1uLL, configuration, 0, 0, 0);
  }
}

- (void)presentAddMoneyInterstitialFrom:(id)from dtuConfiguration:(id)configuration inStoreToken:(id)token
{
  fromCopy = from;
  configurationCopy = configuration;
  tokenCopy = token;
  selfCopy = self;
  sub_1BD70EA58(fromCopy, configuration, token);
}

- (void)presentDirectTopUpFrom:(id)from context:(int64_t)context configuration:(id)configuration promotion:(id)promotion completion:(id)completion
{
  v12 = _Block_copy(completion);
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

  fromCopy = from;
  configurationCopy = configuration;
  promotionCopy = promotion;
  selfCopy = self;
  sub_1BD70EBFC(fromCopy, context, configuration, promotion, v12, v13);
  sub_1BD1107D8(v12);
}

- (void)presentAMSDirectTopUpFrom:(id)from context:(int64_t)context webViewDelegate:(id)delegate completion:(id)completion
{
  v10 = _Block_copy(completion);
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

  fromCopy = from;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD710144(0, fromCopy, context, 0, delegate, v10, v11);

  sub_1BD1107D8(v10);

  swift_unknownObjectRelease();
}

- (void)presentAMSRedeemGiftcardFrom:(id)from webViewDelegate:(id)delegate
{
  fromCopy = from;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD710144(1u, fromCopy, 1uLL, 0, delegate, 0, 0);

  swift_unknownObjectRelease();
}

- (void)presentAMSPromotionRedemptionViewFrom:(id)from promotionInfo:(id)info webViewDelegate:(id)delegate
{
  v8 = sub_1BE052244();
  fromCopy = from;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_1BD1A8284(v8);

  sub_1BD710144(2u, fromCopy, 2uLL, v10, delegate, 0, 0);

  swift_unknownObjectRelease();
}

- (void)presentInStoreTopUpFrom:(id)from context:(int64_t)context token:(id)token
{
  v9 = *(&self->super.isa + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  v10 = objc_allocWithZone(type metadata accessor for InStoreTopUpTokenModel());
  tokenCopy = token;
  fromCopy = from;
  selfCopy = self;
  v13 = sub_1BD85BDFC(v9, token);
  sub_1BD711364(fromCopy, context, v13);
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_1BD7145A0(requestCopy, selfCopy, v10, &unk_1F3BB8168, sub_1BD715114, &block_descriptor_96_3, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present dialog request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_1BD714894(requestCopy, selfCopy, v10, &unk_1F3BB8118, sub_1BD715114, &block_descriptor_89_1, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present authenticate request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_1BD714B88(requestCopy, selfCopy, v10, &unk_1F3BB80C8, sub_1BD715114, &block_descriptor_82_2, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present engagement request %@, but active controller was nil");
  _Block_release(v10);
  _Block_release(v10);
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_1BD7145A0(requestCopy, selfCopy, v8, &unk_1F3BB8078, sub_1BD714ECC, &block_descriptor_75_1, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present dialog request %@, but active controller was nil");
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_1BD714894(requestCopy, selfCopy, v8, &unk_1F3BB8028, sub_1BD715114, &block_descriptor_69_1, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present authenticate request %@, but active controller was nil");
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_1BD714B88(requestCopy, selfCopy, v8, &unk_1F3BB7FD8, sub_1BD715114, &block_descriptor_63_2, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present engagement request %@, but active controller was nil");
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