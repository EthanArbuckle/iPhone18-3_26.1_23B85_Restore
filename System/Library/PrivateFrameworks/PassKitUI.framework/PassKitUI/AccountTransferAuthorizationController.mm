@interface AccountTransferAuthorizationController
- (_TtC9PassKitUI38AccountTransferAuthorizationController)init;
- (void)accountChanged:(id)a3;
- (void)paymentAuthorizationController:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)transactionsChanged:(id)a3;
@end

@implementation AccountTransferAuthorizationController

- (_TtC9PassKitUI38AccountTransferAuthorizationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
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
  v7 = a3;
  v8 = self;

  [v7 dismissWithCompletion_];

  _Block_release(v6);
}

- (void)paymentAuthorizationController:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1BD56DC14(a4, v8, v9);
  sub_1BD0D4744(v8);
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1BD56E334(a4, v8, v9);
  sub_1BD0D4744(v8);
}

- (void)transactionsChanged:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction) = 1;
  v3 = self;
  sub_1BD56D7A8();
}

- (void)accountChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD56E580();
}

@end