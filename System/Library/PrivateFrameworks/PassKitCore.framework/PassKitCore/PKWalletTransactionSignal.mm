@interface PKWalletTransactionSignal
+ (void)_donateSignalForPass:(id)pass transactionType:(int)type transactionDate:(id)date transactionID:(id)d merchantCategory:(int64_t)category merchantDetailedCategory:(id)detailedCategory queue:(id)queue completion:(id)self0;
+ (void)donateSignalForPass:(id)pass transaction:(id)transaction queue:(id)queue completion:(id)completion;
+ (void)donateSignalForPass:(id)pass transactionType:(int)type queue:(id)queue completion:(id)completion;
@end

@implementation PKWalletTransactionSignal

+ (void)donateSignalForPass:(id)pass transaction:(id)transaction queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  transactionCopy = transaction;
  passCopy = pass;
  transactionType = [transactionCopy transactionType];
  if (transactionType == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = transactionType == 0;
  }

  if (transactionType == 15)
  {
    v16 = 6;
  }

  else
  {
    v16 = v15;
  }

  merchant = [transactionCopy merchant];
  transactionDate = [transactionCopy transactionDate];
  identifier = [transactionCopy identifier];

  category = [merchant category];
  detailedCategory = [merchant detailedCategory];
  [self _donateSignalForPass:passCopy transactionType:v16 transactionDate:transactionDate transactionID:identifier merchantCategory:category merchantDetailedCategory:detailedCategory queue:queueCopy completion:completionCopy];
}

+ (void)donateSignalForPass:(id)pass transactionType:(int)type queue:(id)queue completion:(id)completion
{
  v7 = *&type;
  v10 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  queueCopy = queue;
  passCopy = pass;
  v14 = [v10 now];
  [self _donateSignalForPass:passCopy transactionType:v7 transactionDate:v14 transactionID:0 merchantCategory:0 merchantDetailedCategory:0 queue:queueCopy completion:completionCopy];
}

+ (void)_donateSignalForPass:(id)pass transactionType:(int)type transactionDate:(id)date transactionID:(id)d merchantCategory:(int64_t)category merchantDetailedCategory:(id)detailedCategory queue:(id)queue completion:(id)self0
{
  passCopy = pass;
  dCopy = d;
  detailedCategoryCopy = detailedCategory;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __155__PKWalletTransactionSignal__donateSignalForPass_transactionType_transactionDate_transactionID_merchantCategory_merchantDetailedCategory_queue_completion___block_invoke;
  v22[3] = &unk_1E79DE8A8;
  typeCopy = type;
  v26 = completionCopy;
  categoryCopy = category;
  v23 = passCopy;
  v24 = dCopy;
  v25 = detailedCategoryCopy;
  v18 = completionCopy;
  v19 = detailedCategoryCopy;
  v20 = dCopy;
  v21 = passCopy;
  dispatch_async(queue, v22);
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