@interface PKReprocessMerchantActivity
- (PKReprocessMerchantActivity)initWithTransaction:(id)a3 paymentPass:(id)a4;
- (void)performActivity;
@end

@implementation PKReprocessMerchantActivity

- (PKReprocessMerchantActivity)initWithTransaction:(id)a3 paymentPass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKReprocessMerchantActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, a3);
    objc_storeStrong(&v10->_paymentPass, a4);
  }

  return v10;
}

- (void)performActivity
{
  v3 = [(PKPaymentPass *)self->_paymentPass devicePrimaryPaymentApplication];
  v4 = [objc_alloc(MEMORY[0x1E69B92D8]) initWithTransaction:self->_transaction paymentApplication:v3];
  v5 = [objc_alloc(MEMORY[0x1E69B89B0]) initWithSource:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PKReprocessMerchantActivity_performActivity__block_invoke;
  v7[3] = &unk_1E801CFA0;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v5 startLookupWithCompletion:v7];
}

void __46__PKReprocessMerchantActivity_performActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 result] == 2)
  {
    v4 = [v3 merchant];
    if (v4)
    {

LABEL_5:
      v6 = [*(*(a1 + 32) + 136) merchant];
      v7 = [v3 brand];
      [v6 setMapsBrand:v7];

      v8 = [v3 merchant];
      [v6 setMapsMerchant:v8];

      [v6 setMapsDataIsFromLocalMatch:0];
      v9 = [MEMORY[0x1E69B8DB8] paymentService];
      v10 = *(a1 + 32);
      v11 = *(v10 + 136);
      v12 = [*(v10 + 144) uniqueID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__PKReprocessMerchantActivity_performActivity__block_invoke_2;
      v14[3] = &unk_1E8016170;
      v13 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      [v9 insertOrUpdatePaymentTransaction:v11 forPassUniqueIdentifier:v12 paymentApplication:v13 completion:v14];

      goto LABEL_6;
    }

    v5 = [v3 brand];

    if (v5)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __46__PKReprocessMerchantActivity_performActivity__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKReprocessMerchantActivity_performActivity__block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end