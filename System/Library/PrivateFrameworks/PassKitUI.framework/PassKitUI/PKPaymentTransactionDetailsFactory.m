@interface PKPaymentTransactionDetailsFactory
- (BOOL)canShowTransactionHistoryForTransaction:(id)a3 sourceCollection:(id)a4 account:(id)a5;
- (PKPaymentTransactionDetailsFactory)initWithContactResolver:(id)a3 peerPaymentWebService:(id)a4 paymentServiceDataProvider:(id)a5 detailViewStyle:(int64_t)a6 context:(unint64_t)a7;
- (id)_transactionFetcherWithSourceCollection:(id)a3 transaction:(id)a4;
- (id)detailViewControllerForTransaction:(id)a3 sourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 navigationController:(id)a10;
- (id)historyViewControllerForTransaction:(id)a3 group:(id)a4 sourceCollection:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9;
- (id)viewControllerForTransaction:(id)a3 sourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 group:(id)a10 navigationController:(id)a11;
@end

@implementation PKPaymentTransactionDetailsFactory

- (PKPaymentTransactionDetailsFactory)initWithContactResolver:(id)a3 peerPaymentWebService:(id)a4 paymentServiceDataProvider:(id)a5 detailViewStyle:(int64_t)a6 context:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = PKPaymentTransactionDetailsFactory;
  v16 = [(PKPaymentTransactionDetailsFactory *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contactResolver, a3);
    objc_storeStrong(&v17->_peerPaymentWebService, a4);
    objc_storeStrong(&v17->_paymentServiceDataProvider, a5);
    v17->_detailViewStyle = a6;
    v17->_context = a7;
  }

  return v17;
}

- (id)viewControllerForTransaction:(id)a3 sourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 group:(id)a10 navigationController:(id)a11
{
  v17 = a8;
  v18 = a10;
  v19 = a11;
  v20 = a9;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  if ([(PKPaymentTransactionDetailsFactory *)self canShowTransactionHistoryForTransaction:v25 sourceCollection:v24 account:v22])
  {
    [(PKPaymentTransactionDetailsFactory *)self historyViewControllerForTransaction:v25 group:v18 sourceCollection:v24 familyCollection:v23 account:v22 accountUserCollection:v21 physicalCards:v20];
  }

  else
  {
    [(PKPaymentTransactionDetailsFactory *)self detailViewControllerForTransaction:v25 sourceCollection:v24 familyCollection:v23 account:v22 accountUserCollection:v21 bankConnectInstitution:v17 physicalCards:v20 navigationController:v19];
  }
  v26 = ;

  return v26;
}

- (BOOL)canShowTransactionHistoryForTransaction:(id)a3 sourceCollection:(id)a4 account:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 transactionType];
  v10 = 0;
  if (v9 > 9)
  {
    if (v9 != 10)
    {
      if (v9 == 11)
      {
        v10 = [v7 accountType] == 3;
      }

      else if (v9 != 13)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_18;
  }

  if (v9 < 2)
  {
    v11 = [v7 merchant];
    v12 = [v11 name];
    if (v12)
    {

      v10 = 0;
    }

    else
    {
      if (([v11 hasMapsMatch] & 1) == 0)
      {
        goto LABEL_37;
      }

      v19 = [v11 shouldIgnoreMapsMatches];

      v10 = 0;
      if (v19)
      {
        goto LABEL_39;
      }
    }

LABEL_18:
    v15 = [v8 paymentPass];
    v11 = v15;
    if (v15)
    {
      v16 = [v15 associatedAccountServiceAccountIdentifier];
      if (v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = [v11 hasAssociatedPeerPaymentAccount];
      }
    }

    else
    {
      v17 = 1;
      v16 = [v8 transactionSourcesForType:1];
      if (![v16 count])
      {
        v18 = [v8 transactionSourcesForType:3];
        if ([v18 count])
        {
          v17 = 1;
        }

        else
        {
          v20 = [v8 transactionSourcesForType:2];
          v17 = [v20 count] != 0;
        }
      }
    }

    if (v10)
    {
      v10 = 1;
      if (!v17)
      {
        goto LABEL_37;
      }

LABEL_35:
      context = self->_context;
      if (context == 6 || !context)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v10 = self->_detailViewStyle == 0;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_37:
    v10 = 0;
LABEL_38:

    goto LABEL_39;
  }

  if (v9 == 3)
  {
    if ([v7 peerPaymentStatus] == 1)
    {
      v11 = [v7 peerPaymentCounterpartHandle];
      v13 = [v7 peerPaymentType];
      v10 = 0;
      if (![v11 length] || (v13 - 6) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_38;
      }

      v14 = [v7 peerPaymentPaymentMode];

      v10 = 0;
      if (v14 == 2)
      {
        goto LABEL_39;
      }

      goto LABEL_18;
    }

    v10 = 0;
  }

  else if (v9 == 9)
  {
    v10 = 1;
    goto LABEL_18;
  }

LABEL_39:

  return v10;
}

- (id)_transactionFetcherWithSourceCollection:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 transactionType] == 3)
  {
    v8 = [v6 peerPaymentCounterpartHandle];
    v9 = [(PKContactResolver *)self->_contactResolver contactForHandle:v8];
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v10 addObject:v8];
    if (v9)
    {
      v11 = [v9 emailAddresses];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke;
      v22[3] = &unk_1E8012B18;
      v12 = v10;
      v23 = v12;
      [v11 enumerateObjectsUsingBlock:v22];

      v13 = [v9 phoneNumbers];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke_2;
      v20[3] = &unk_1E8012B18;
      v21 = v12;
      [v13 enumerateObjectsUsingBlock:v20];
    }

    v14 = objc_alloc(MEMORY[0x1E69B8788]);
    v15 = [v10 copy];
    v16 = [v14 initWithCounterpartHandles:v15 transactionSourceCollection:v7 paymentDataProvider:self->_paymentServiceDataProvider];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69B8788]);
    v18 = [v6 merchant];
    v16 = [v17 initWithMerchant:v18 transactionSourceCollection:v7 paymentDataProvider:self->_paymentServiceDataProvider];
  }

  return v16;
}

void __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v5 = [v3 fullyQualifiedDigits];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)detailViewControllerForTransaction:(id)a3 sourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 navigationController:(id)a10
{
  v47[3] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v45 = a4;
  v44 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = MEMORY[0x1E69B8540];
  v23 = *MEMORY[0x1E69BB6F8];
  v24 = *MEMORY[0x1E69BA6F0];
  v25 = *MEMORY[0x1E69BABE8];
  v46[0] = *MEMORY[0x1E69BA680];
  v46[1] = v25;
  v26 = *MEMORY[0x1E69BAC10];
  v47[0] = v24;
  v47[1] = v26;
  v46[2] = *MEMORY[0x1E69BA440];
  v47[2] = *MEMORY[0x1E69BB348];
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
  [v22 subject:v23 sendEvent:v27];

  v28 = [v16 bankConnectMetadata];
  v29 = [v28 transactionIdentifier];

  if (v19 && v29)
  {
    v30 = [_TtC9PassKitUI33FinanceKitTransactionViewProvider makeViewControllerWithTransactionID:v29 institution:v19 navigationController:v21 style:self->_detailViewStyle];
    v32 = v44;
    v31 = v45;
  }

  else if ([v16 transactionType] == 14)
  {
    v33 = [PKInstallmentPlanDetailsViewController alloc];
    [v16 installmentPlan];
    v34 = v43 = v20;
    [MEMORY[0x1E69B8400] sharedInstance];
    v42 = v21;
    v35 = v18;
    v37 = v36 = v17;
    v38 = v33;
    v32 = v44;
    v31 = v45;
    v30 = [(PKInstallmentPlanDetailsViewController *)v38 initWithAccount:v36 installmentPlan:v34 accountService:v37 accountUserCollection:v35 familyMemberCollection:v44 transactionSourceCollection:v45];

    v17 = v36;
    v18 = v35;
    v21 = v42;

    v20 = v43;
  }

  else
  {
    LOBYTE(v41) = 1;
    v32 = v44;
    v31 = v45;
    v30 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:v16 transactionSourceCollection:v45 familyCollection:v44 account:v17 accountUserCollection:v18 bankConnectInstitution:v19 physicalCards:v20 contactResolver:self->_contactResolver peerPaymentWebService:self->_peerPaymentWebService paymentServiceDataProvider:self->_paymentServiceDataProvider detailViewStyle:self->_detailViewStyle allowTransactionLinks:v41];
  }

  v39 = v30;

  return v30;
}

- (id)historyViewControllerForTransaction:(id)a3 group:(id)a4 sourceCollection:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9
{
  v42[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [v15 transactionType];
  if (v22 == 10)
  {
    v40 = v16;
    v23 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
    [v23 setType:9];
    v31 = [v15 amount];
    [v15 currencyCode];
    v32 = v39 = self;
    v33 = PKCurrencyAmountCreate(v31, v32);
    [v23 setTotalAmount:v33];

    v41 = v15;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v23 setTransactions:v34];

    [v23 setTransactionCount:1];
    v29 = [PKTransactionHistoryViewController alloc];
    detailViewStyle = v39->_detailViewStyle;
    goto LABEL_5;
  }

  if (v22 == 11)
  {
    v40 = v16;
    v23 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
    [v23 setType:7];
    v24 = [v15 amount];
    v25 = [v15 currencyCode];
    PKCurrencyAmountCreate(v24, v25);
    v38 = v18;
    v27 = v26 = self;
    [v23 setTotalAmount:v27];

    v42[0] = v15;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v23 setTransactions:v28];

    [v23 setTransactionCount:1];
    v29 = [PKTransactionHistoryViewController alloc];
    detailViewStyle = v26->_detailViewStyle;
    v18 = v38;
LABEL_5:
    v35 = [(PKTransactionHistoryViewController *)v29 initWithTransactionGroup:v23 transactionSourceCollection:v17 familyCollection:v18 account:v19 accountUserCollection:v20 physicalCards:v21 fetcher:0 detailViewStyle:detailViewStyle];

    v16 = v40;
    goto LABEL_6;
  }

  if ([v16 type] == 5)
  {
    v35 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v16 transactionSourceCollection:v17 familyCollection:v18 account:v19 accountUserCollection:v20 physicalCards:v21 fetcher:0 detailViewStyle:self->_detailViewStyle];
  }

  else
  {
    v37 = [(PKPaymentTransactionDetailsFactory *)self _transactionFetcherWithSourceCollection:v17 transaction:v15];
    v35 = [[PKTransactionHistoryViewController alloc] initWithFetcher:v37 transactionSourceCollection:v17 familyCollection:v18 account:v19 accountUserCollection:v20 physicalCards:v21 featuredTransaction:v15 selectedTransactions:0];
  }

LABEL_6:

  return v35;
}

@end