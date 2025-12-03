@interface PaymentAuthorizationServiceDelegate
- (_TtC9PassKitUI35PaymentAuthorizationServiceDelegate)init;
- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status;
- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update;
- (void)handleDismissWithCompletion:(id)completion;
- (void)handleHostApplicationDidCancel;
@end

@implementation PaymentAuthorizationServiceDelegate

- (void)handleHostApplicationDidCancel
{
  selfCopy = self;
  sub_1BDA4FA6C();
}

- (void)handleDismissWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1BDA4FC50(v7, v6);
  sub_1BD0D4744(v7);
}

- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1BDA4FF0C(update);
}

- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status
{
  v5 = objc_allocWithZone(MEMORY[0x1E69B8B80]);
  selfCopy = self;
  v6 = [v5 init];
  [v6 setStatus_];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine) didReceivePaymentAuthorizationResult_];
}

- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine);
  selfCopy = self;
  updateCopy = update;
  [v4 didReceiveShippingContactCompleteWithUpdate_];
  if (updateCopy)
  {
    availableShippingMethods = [(PaymentAuthorizationServiceDelegate *)updateCopy availableShippingMethods];
    defaultMethod = [availableShippingMethods defaultMethod];

    if (defaultMethod)
    {
      [v4 didSelectShippingMethod_];

      updateCopy = selfCopy;
      selfCopy = defaultMethod;
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