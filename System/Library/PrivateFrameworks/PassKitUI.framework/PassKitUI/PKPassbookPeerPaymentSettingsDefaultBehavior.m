@interface PKPassbookPeerPaymentSettingsDefaultBehavior
- (PKPassbookPeerPaymentSettingsDefaultBehavior)init;
- (void)_registerForPeerPaymentWithCompletion:(id)a3;
- (void)_unregisterForPeerPaymentWithCompletion:(id)a3;
- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)a3 completion:(id)a4;
@end

@implementation PKPassbookPeerPaymentSettingsDefaultBehavior

- (PKPassbookPeerPaymentSettingsDefaultBehavior)init
{
  v8.receiver = self;
  v8.super_class = PKPassbookPeerPaymentSettingsDefaultBehavior;
  v2 = [(PKPassbookPeerPaymentSettingsDefaultBehavior *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69B8EF8] sharedService];
    paymentWebService = v2->_paymentWebService;
    v2->_paymentWebService = v3;

    v5 = [MEMORY[0x1E69B9020] sharedService];
    peerPaymentWebService = v2->_peerPaymentWebService;
    v2->_peerPaymentWebService = v5;
  }

  return v2;
}

- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    v5 = *MEMORY[0x1E69BA198];
    v6 = a4;
    MEMORY[0x1BFB41980](v5, 0);
    [(PKPassbookPeerPaymentSettingsDefaultBehavior *)self _registerForPeerPaymentWithCompletion:v6];
  }

  else
  {
    v7 = *MEMORY[0x1E69BA188];
    v8 = a4;
    MEMORY[0x1BFB41980](v7, 0);
    [(PKPassbookPeerPaymentSettingsDefaultBehavior *)self _unregisterForPeerPaymentWithCompletion:v8];
  }
}

- (void)_registerForPeerPaymentWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKPaymentWebService *)self->_paymentWebService needsRegistration])
  {
    v5 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:self->_paymentWebService];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__PKPassbookPeerPaymentSettingsDefaultBehavior__registerForPeerPaymentWithCompletion___block_invoke;
    v7[3] = &unk_1E8017470;
    v8 = v5;
    v9 = self;
    v10 = v4;
    v6 = v5;
    [v6 validatePreconditionsAndRegister:v7];
  }

  else
  {
    v6 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService peerPaymentService];
    [v6 registerDeviceWithCompletion:v4];
  }
}

void __86__PKPassbookPeerPaymentSettingsDefaultBehavior__registerForPeerPaymentWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v5;
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    v8 = 0;
    v6 = [*(*(a1 + 40) + 16) peerPaymentService];
    [v6 registerDeviceWithCompletion:*(a1 + 48)];
  }

  v5 = v8;
LABEL_7:
}

- (void)_unregisterForPeerPaymentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService peerPaymentService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPassbookPeerPaymentSettingsDefaultBehavior__unregisterForPeerPaymentWithCompletion___block_invoke;
  v7[3] = &unk_1E8013FF8;
  v8 = v4;
  v6 = v4;
  [v5 unregisterDeviceWithCompletion:v7];
}

uint64_t __88__PKPassbookPeerPaymentSettingsDefaultBehavior__unregisterForPeerPaymentWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end