@interface AccountTransferAuthorizationController
- (_TtC9PassKitUI38AccountTransferAuthorizationController)init;
- (void)accountChanged:(id)changed;
- (void)paymentAuthorizationController:(id)controller didAuthorizeApplePayTrustSignature:(id)signature handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didUpdateAccountServicePaymentMethod:(id)method handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)transactionsChanged:(id)changed;
@end

@implementation AccountTransferAuthorizationController

- (_TtC9PassKitUI38AccountTransferAuthorizationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1BD56EAC0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BD126964;
  v9[3] = &block_descriptor_89_0;
  v6 = _Block_copy(v9);
  finishCopy = finish;
  selfCopy = self;

  [finishCopy dismissWithCompletion_];

  _Block_release(v6);
}

- (void)paymentAuthorizationController:(id)controller didUpdateAccountServicePaymentMethod:(id)method handler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1BD56E97C;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  methodCopy = method;
  selfCopy = self;
  sub_1BD56DC14(method, v8, v9);
  sub_1BD0D4744(v8);
}

- (void)paymentAuthorizationController:(id)controller didAuthorizeApplePayTrustSignature:(id)signature handler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1BD139BD4;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  signatureCopy = signature;
  selfCopy = self;
  sub_1BD56E334(signature, v8, v9);
  sub_1BD0D4744(v8);
}

- (void)transactionsChanged:(id)changed
{
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction) = 1;
  selfCopy = self;
  sub_1BD56D7A8();
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BD56E580();
}

@end