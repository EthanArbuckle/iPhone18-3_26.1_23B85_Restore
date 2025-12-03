@interface PKPaymentTransactionDetailsFactory
- (BOOL)canShowTransactionHistoryForTransaction:(id)transaction sourceCollection:(id)collection account:(id)account;
- (PKPaymentTransactionDetailsFactory)initWithContactResolver:(id)resolver peerPaymentWebService:(id)service paymentServiceDataProvider:(id)provider detailViewStyle:(int64_t)style context:(unint64_t)context;
- (id)_transactionFetcherWithSourceCollection:(id)collection transaction:(id)transaction;
- (id)detailViewControllerForTransaction:(id)transaction sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards navigationController:(id)self0;
- (id)historyViewControllerForTransaction:(id)transaction group:(id)group sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards;
- (id)viewControllerForTransaction:(id)transaction sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards group:(id)self0 navigationController:(id)self1;
@end

@implementation PKPaymentTransactionDetailsFactory

- (PKPaymentTransactionDetailsFactory)initWithContactResolver:(id)resolver peerPaymentWebService:(id)service paymentServiceDataProvider:(id)provider detailViewStyle:(int64_t)style context:(unint64_t)context
{
  resolverCopy = resolver;
  serviceCopy = service;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = PKPaymentTransactionDetailsFactory;
  v16 = [(PKPaymentTransactionDetailsFactory *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contactResolver, resolver);
    objc_storeStrong(&v17->_peerPaymentWebService, service);
    objc_storeStrong(&v17->_paymentServiceDataProvider, provider);
    v17->_detailViewStyle = style;
    v17->_context = context;
  }

  return v17;
}

- (id)viewControllerForTransaction:(id)transaction sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards group:(id)self0 navigationController:(id)self1
{
  institutionCopy = institution;
  groupCopy = group;
  controllerCopy = controller;
  cardsCopy = cards;
  userCollectionCopy = userCollection;
  accountCopy = account;
  familyCollectionCopy = familyCollection;
  collectionCopy = collection;
  transactionCopy = transaction;
  if ([(PKPaymentTransactionDetailsFactory *)self canShowTransactionHistoryForTransaction:transactionCopy sourceCollection:collectionCopy account:accountCopy])
  {
    [(PKPaymentTransactionDetailsFactory *)self historyViewControllerForTransaction:transactionCopy group:groupCopy sourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy];
  }

  else
  {
    [(PKPaymentTransactionDetailsFactory *)self detailViewControllerForTransaction:transactionCopy sourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy bankConnectInstitution:institutionCopy physicalCards:cardsCopy navigationController:controllerCopy];
  }
  v26 = ;

  return v26;
}

- (BOOL)canShowTransactionHistoryForTransaction:(id)transaction sourceCollection:(id)collection account:(id)account
{
  transactionCopy = transaction;
  collectionCopy = collection;
  transactionType = [transactionCopy transactionType];
  v10 = 0;
  if (transactionType > 9)
  {
    if (transactionType != 10)
    {
      if (transactionType == 11)
      {
        v10 = [transactionCopy accountType] == 3;
      }

      else if (transactionType != 13)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_18;
  }

  if (transactionType < 2)
  {
    merchant = [transactionCopy merchant];
    name = [merchant name];
    if (name)
    {

      v10 = 0;
    }

    else
    {
      if (([merchant hasMapsMatch] & 1) == 0)
      {
        goto LABEL_37;
      }

      shouldIgnoreMapsMatches = [merchant shouldIgnoreMapsMatches];

      v10 = 0;
      if (shouldIgnoreMapsMatches)
      {
        goto LABEL_39;
      }
    }

LABEL_18:
    paymentPass = [collectionCopy paymentPass];
    merchant = paymentPass;
    if (paymentPass)
    {
      associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
      if (associatedAccountServiceAccountIdentifier)
      {
        hasAssociatedPeerPaymentAccount = 1;
      }

      else
      {
        hasAssociatedPeerPaymentAccount = [merchant hasAssociatedPeerPaymentAccount];
      }
    }

    else
    {
      hasAssociatedPeerPaymentAccount = 1;
      associatedAccountServiceAccountIdentifier = [collectionCopy transactionSourcesForType:1];
      if (![associatedAccountServiceAccountIdentifier count])
      {
        v18 = [collectionCopy transactionSourcesForType:3];
        if ([v18 count])
        {
          hasAssociatedPeerPaymentAccount = 1;
        }

        else
        {
          v20 = [collectionCopy transactionSourcesForType:2];
          hasAssociatedPeerPaymentAccount = [v20 count] != 0;
        }
      }
    }

    if (v10)
    {
      v10 = 1;
      if (!hasAssociatedPeerPaymentAccount)
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
    if (hasAssociatedPeerPaymentAccount)
    {
      goto LABEL_35;
    }

LABEL_37:
    v10 = 0;
LABEL_38:

    goto LABEL_39;
  }

  if (transactionType == 3)
  {
    if ([transactionCopy peerPaymentStatus] == 1)
    {
      merchant = [transactionCopy peerPaymentCounterpartHandle];
      peerPaymentType = [transactionCopy peerPaymentType];
      v10 = 0;
      if (![merchant length] || (peerPaymentType - 6) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_38;
      }

      peerPaymentPaymentMode = [transactionCopy peerPaymentPaymentMode];

      v10 = 0;
      if (peerPaymentPaymentMode == 2)
      {
        goto LABEL_39;
      }

      goto LABEL_18;
    }

    v10 = 0;
  }

  else if (transactionType == 9)
  {
    v10 = 1;
    goto LABEL_18;
  }

LABEL_39:

  return v10;
}

- (id)_transactionFetcherWithSourceCollection:(id)collection transaction:(id)transaction
{
  transactionCopy = transaction;
  collectionCopy = collection;
  if ([transactionCopy transactionType] == 3)
  {
    peerPaymentCounterpartHandle = [transactionCopy peerPaymentCounterpartHandle];
    v9 = [(PKContactResolver *)self->_contactResolver contactForHandle:peerPaymentCounterpartHandle];
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v10 addObject:peerPaymentCounterpartHandle];
    if (v9)
    {
      emailAddresses = [v9 emailAddresses];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke;
      v22[3] = &unk_1E8012B18;
      v12 = v10;
      v23 = v12;
      [emailAddresses enumerateObjectsUsingBlock:v22];

      phoneNumbers = [v9 phoneNumbers];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __90__PKPaymentTransactionDetailsFactory__transactionFetcherWithSourceCollection_transaction___block_invoke_2;
      v20[3] = &unk_1E8012B18;
      v21 = v12;
      [phoneNumbers enumerateObjectsUsingBlock:v20];
    }

    v14 = objc_alloc(MEMORY[0x1E69B8788]);
    v15 = [v10 copy];
    v16 = [v14 initWithCounterpartHandles:v15 transactionSourceCollection:collectionCopy paymentDataProvider:self->_paymentServiceDataProvider];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69B8788]);
    merchant = [transactionCopy merchant];
    v16 = [v17 initWithMerchant:merchant transactionSourceCollection:collectionCopy paymentDataProvider:self->_paymentServiceDataProvider];
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

- (id)detailViewControllerForTransaction:(id)transaction sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards navigationController:(id)self0
{
  v47[3] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  accountCopy = account;
  userCollectionCopy = userCollection;
  institutionCopy = institution;
  cardsCopy = cards;
  controllerCopy = controller;
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

  bankConnectMetadata = [transactionCopy bankConnectMetadata];
  transactionIdentifier = [bankConnectMetadata transactionIdentifier];

  if (institutionCopy && transactionIdentifier)
  {
    v30 = [_TtC9PassKitUI33FinanceKitTransactionViewProvider makeViewControllerWithTransactionID:transactionIdentifier institution:institutionCopy navigationController:controllerCopy style:self->_detailViewStyle];
    v32 = familyCollectionCopy;
    v31 = collectionCopy;
  }

  else if ([transactionCopy transactionType] == 14)
  {
    v33 = [PKInstallmentPlanDetailsViewController alloc];
    [transactionCopy installmentPlan];
    v34 = v43 = cardsCopy;
    [MEMORY[0x1E69B8400] sharedInstance];
    v42 = controllerCopy;
    v35 = userCollectionCopy;
    v37 = v36 = accountCopy;
    v38 = v33;
    v32 = familyCollectionCopy;
    v31 = collectionCopy;
    v30 = [(PKInstallmentPlanDetailsViewController *)v38 initWithAccount:v36 installmentPlan:v34 accountService:v37 accountUserCollection:v35 familyMemberCollection:familyCollectionCopy transactionSourceCollection:collectionCopy];

    accountCopy = v36;
    userCollectionCopy = v35;
    controllerCopy = v42;

    cardsCopy = v43;
  }

  else
  {
    LOBYTE(v41) = 1;
    v32 = familyCollectionCopy;
    v31 = collectionCopy;
    v30 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:transactionCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy bankConnectInstitution:institutionCopy physicalCards:cardsCopy contactResolver:self->_contactResolver peerPaymentWebService:self->_peerPaymentWebService paymentServiceDataProvider:self->_paymentServiceDataProvider detailViewStyle:self->_detailViewStyle allowTransactionLinks:v41];
  }

  v39 = v30;

  return v30;
}

- (id)historyViewControllerForTransaction:(id)transaction group:(id)group sourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards
{
  v42[1] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  groupCopy = group;
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  accountCopy = account;
  userCollectionCopy = userCollection;
  cardsCopy = cards;
  transactionType = [transactionCopy transactionType];
  if (transactionType == 10)
  {
    v40 = groupCopy;
    v23 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
    [v23 setType:9];
    amount = [transactionCopy amount];
    [transactionCopy currencyCode];
    v32 = v39 = self;
    v33 = PKCurrencyAmountCreate(amount, v32);
    [v23 setTotalAmount:v33];

    v41 = transactionCopy;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v23 setTransactions:v34];

    [v23 setTransactionCount:1];
    v29 = [PKTransactionHistoryViewController alloc];
    detailViewStyle = v39->_detailViewStyle;
    goto LABEL_5;
  }

  if (transactionType == 11)
  {
    v40 = groupCopy;
    v23 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
    [v23 setType:7];
    amount2 = [transactionCopy amount];
    currencyCode = [transactionCopy currencyCode];
    PKCurrencyAmountCreate(amount2, currencyCode);
    v38 = familyCollectionCopy;
    v27 = v26 = self;
    [v23 setTotalAmount:v27];

    v42[0] = transactionCopy;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v23 setTransactions:v28];

    [v23 setTransactionCount:1];
    v29 = [PKTransactionHistoryViewController alloc];
    detailViewStyle = v26->_detailViewStyle;
    familyCollectionCopy = v38;
LABEL_5:
    v35 = [(PKTransactionHistoryViewController *)v29 initWithTransactionGroup:v23 transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy fetcher:0 detailViewStyle:detailViewStyle];

    groupCopy = v40;
    goto LABEL_6;
  }

  if ([groupCopy type] == 5)
  {
    v35 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:groupCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy fetcher:0 detailViewStyle:self->_detailViewStyle];
  }

  else
  {
    v37 = [(PKPaymentTransactionDetailsFactory *)self _transactionFetcherWithSourceCollection:collectionCopy transaction:transactionCopy];
    v35 = [[PKTransactionHistoryViewController alloc] initWithFetcher:v37 transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy featuredTransaction:transactionCopy selectedTransactions:0];
  }

LABEL_6:

  return v35;
}

@end