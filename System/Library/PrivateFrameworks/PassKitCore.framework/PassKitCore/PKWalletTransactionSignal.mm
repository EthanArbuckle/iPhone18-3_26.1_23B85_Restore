@interface PKWalletTransactionSignal
+ (void)_donateSignalForPass:(id)a3 transactionType:(int)a4 transactionDate:(id)a5 transactionID:(id)a6 merchantCategory:(int64_t)a7 merchantDetailedCategory:(id)a8 queue:(id)a9 completion:(id)a10;
+ (void)donateSignalForPass:(id)a3 transaction:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)donateSignalForPass:(id)a3 transactionType:(int)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation PKWalletTransactionSignal

+ (void)donateSignalForPass:(id)a3 transaction:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 transactionType];
  if (v14 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (v14 == 15)
  {
    v16 = 6;
  }

  else
  {
    v16 = v15;
  }

  v21 = [v12 merchant];
  v17 = [v12 transactionDate];
  v18 = [v12 identifier];

  v19 = [v21 category];
  v20 = [v21 detailedCategory];
  [a1 _donateSignalForPass:v13 transactionType:v16 transactionDate:v17 transactionID:v18 merchantCategory:v19 merchantDetailedCategory:v20 queue:v11 completion:v10];
}

+ (void)donateSignalForPass:(id)a3 transactionType:(int)a4 queue:(id)a5 completion:(id)a6
{
  v7 = *&a4;
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 now];
  [a1 _donateSignalForPass:v13 transactionType:v7 transactionDate:v14 transactionID:0 merchantCategory:0 merchantDetailedCategory:0 queue:v12 completion:v11];
}

+ (void)_donateSignalForPass:(id)a3 transactionType:(int)a4 transactionDate:(id)a5 transactionID:(id)a6 merchantCategory:(int64_t)a7 merchantDetailedCategory:(id)a8 queue:(id)a9 completion:(id)a10
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __155__PKWalletTransactionSignal__donateSignalForPass_transactionType_transactionDate_transactionID_merchantCategory_merchantDetailedCategory_queue_completion___block_invoke;
  v22[3] = &unk_1E79DE8A8;
  v28 = a4;
  v26 = v17;
  v27 = a7;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  dispatch_async(a9, v22);
}

void __155__PKWalletTransactionSignal__donateSignalForPass_transactionType_transactionDate_transactionID_merchantCategory_merchantDetailedCategory_queue_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3 = 1;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v3 = 0;
      v6 = 1;
    }

    else if (v2 == 5 || v2 == 6)
    {
      v6 = 0;
      v3 = 0;
    }

    else
    {
      v6 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = v2 != 3;
    if (v2 == 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    if (v2 == 2)
    {
      v4 = 0;
      v5 = 2;
    }

    v6 = 0;
    v3 = v2 != 1 && v4;
    if (v2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v5;
    }
  }

  if ((*(a1 + 64) - 1) < 7)
  {
    v7 = *(a1 + 64);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) uniqueID];
  v9 = [*(a1 + 32) secureElementPass];
  v10 = v9;
  if (v6 && v9)
  {
    if ([v9 isAccessPass])
    {
LABEL_25:
      v2 = 4;
      goto LABEL_35;
    }

    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKWalletTransactionSignal: Correcting transaction type of %@ for open loop transit", &v21, 0xCu);
    }

LABEL_34:
    v2 = 3;
    goto LABEL_35;
  }

  if (!v3)
  {
    goto LABEL_35;
  }

  if ([v9 isTransitPass])
  {
    goto LABEL_34;
  }

  if ([v10 isAccessPass])
  {
    goto LABEL_25;
  }

  if ([v10 isEMoneyPass])
  {
    v2 = 5;
  }

  else
  {
    v20 = [v10 isIdentityPass];
    if (v20)
    {
      v2 = 6;
    }

    else
    {
      v2 = 1;
    }

    if (!v10 && (v20 & 1) == 0)
    {
      if ([*(a1 + 32) hasValidNFCPayload])
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }
  }

LABEL_35:
  v12 = BiomeLibrary();
  v13 = [v12 Wallet];
  v14 = [v13 Transaction];

  v15 = [v14 source];
  v16 = objc_alloc(MEMORY[0x1E698F060]);
  v17 = [*(a1 + 32) localizedDescription];
  v18 = [v16 initWithPassUniqueID:v8 passLocalizedDescription:v17 transactionType:v2 transactionID:*(a1 + 40) merchantType:v7 poiCategory:*(a1 + 48)];

  [v15 sendEvent:v18];
  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))(v19, 0);
  }
}

@end