@interface PaymentAuthorizationServiceDelegate
- (_TtC9PassKitUI35PaymentAuthorizationServiceDelegate)init;
- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)a3;
- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)a3;
- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)a3;
- (void)handleDismissWithCompletion:(id)a3;
- (void)handleHostApplicationDidCancel;
@end

@implementation PaymentAuthorizationServiceDelegate

- (void)handleHostApplicationDidCancel
{
  v2 = self;
  sub_1BDA4FA6C();
}

- (void)handleDismissWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1BD166E88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1BDA4FC50(v7, v6);
  sub_1BD0D4744(v7);
}

- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BDA4FF0C(a3);
}

- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)a3
{
  v5 = objc_allocWithZone(MEMORY[0x1E69B8B80]);
  v7 = self;
  v6 = [v5 init];
  [v6 setStatus_];
  [*(&v7->super.isa + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine) didReceivePaymentAuthorizationResult_];
}

- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine);
  v8 = self;
  v5 = a3;
  [v4 didReceiveShippingContactCompleteWithUpdate_];
  if (v5)
  {
    v6 = [(PaymentAuthorizationServiceDelegate *)v5 availableShippingMethods];
    v7 = [v6 defaultMethod];

    if (v7)
    {
      [v4 didSelectShippingMethod_];

      v5 = v8;
      v8 = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9PassKitUI35PaymentAuthorizationServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end