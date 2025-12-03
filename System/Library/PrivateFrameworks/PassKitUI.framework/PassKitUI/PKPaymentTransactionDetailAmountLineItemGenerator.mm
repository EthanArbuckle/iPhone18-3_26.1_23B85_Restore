@interface PKPaymentTransactionDetailAmountLineItemGenerator
- (id)_feeLineItemsForFees:(id)fees;
- (id)_foreignExchangeLineItemsForExchangeInfo:(id)info;
- (id)_lineItemsForPeerPaymentTransaction:(id)transaction transactionSourceCollection:(id)collection;
- (id)_lineItemsForPurchaseTransaction:(id)transaction transactionSourceCollection:(id)collection associatedReceipt:(id)receipt;
- (id)_lineItemsForWithdrawalTransaction:(id)transaction transactionSourceCollection:(id)collection;
- (id)_primaryFundingSourceLineItemForTransaction:(id)transaction transactionSourceCollection:(id)collection;
- (id)_rewardsLineItemsForRewards:(id)rewards currencyCode:(id)code;
- (id)_secondaryFundingSourceLineItemForTransaction:(id)transaction;
- (id)_subtotalLineItemForTransaction:(id)transaction;
- (id)_totalPaidLineItemForTransaction:(id)transaction isUnqualified:(BOOL)unqualified;
- (id)_totalReceivedLineItemForTransaction:(id)transaction;
- (id)_totalRequestedLineItemForTransaction:(id)transaction;
- (id)_totalSentLineItemForTransaction:(id)transaction;
- (id)_totalTransferredItemForTransaction:(id)transaction;
- (id)lineItemsForInstallmentPlan:(id)plan;
- (id)lineItemsForTransaction:(id)transaction transactionSourceCollection:(id)collection associatedTransaction:(id)associatedTransaction associatedReceipt:(id)receipt;
@end

@implementation PKPaymentTransactionDetailAmountLineItemGenerator

- (id)lineItemsForTransaction:(id)transaction transactionSourceCollection:(id)collection associatedTransaction:(id)associatedTransaction associatedReceipt:(id)receipt
{
  v133 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  collectionCopy = collection;
  associatedTransactionCopy = associatedTransaction;
  receiptCopy = receipt;
  transactionType = [transactionCopy transactionType];
  v15 = transactionType;
  v16 = 0;
  if (transactionType > 2)
  {
    if (transactionType > 0x16)
    {
LABEL_75:
      if (transactionType != 3)
      {
        goto LABEL_17;
      }

      v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForPeerPaymentTransaction:transactionCopy transactionSourceCollection:collectionCopy];
      goto LABEL_81;
    }

    if (((1 << transactionType) & 0x7F7BD0) != 0)
    {
      v17 = receiptCopy;
      transfers = [transactionCopy transfers];
      firstObject = [transfers firstObject];

      if (firstObject && [transactionCopy transactionStatus] != 2)
      {
        fundsAreAvailable = [firstObject fundsAreAvailable];
        expectedCompletionDate = [firstObject expectedCompletionDate];
        v21 = expectedCompletionDate;
        if ((fundsAreAvailable & 1) != 0 || !expectedCompletionDate)
        {
          transactionStatusChangedDate = [transactionCopy transactionStatusChangedDate];

          v21 = transactionStatusChangedDate;
        }

        v27 = [[PKPaymentTransactionDetailAmountLineCompletionDate alloc] initWithDate:v21 completed:fundsAreAvailable];
        [(PKPaymentTransactionDetailAmountLineCompletionDate *)v27 setHasTrailingLineSeperator:1];
        v127 = v27;
        v28 = &v127;
      }

      else
      {
        amount = [transactionCopy amount];
        v21 = amount;
        if (amount)
        {
          pk_isNegativeNumber = [(NSDecimalNumber *)amount pk_isNegativeNumber];
          if (v15 == 11 && (pk_isNegativeNumber & 1) == 0 && [transactionCopy featureIdentifier] == 5)
          {
            pk_negativeValue = [(NSDecimalNumber *)v21 pk_negativeValue];

            v21 = pk_negativeValue;
          }
        }

        v24 = [PKPaymentTransactionDetailAmountLineItemTotal alloc];
        currencyCode = [transactionCopy currencyCode];
        v26 = PKCurrencyAmountCreate(v21, currencyCode);
        v27 = [(PKPaymentTransactionDetailAmountLineItemTotal *)v24 initWithAmount:v26 totalType:4];

        [(PKPaymentTransactionDetailAmountLineCompletionDate *)v27 setHasTrailingLineSeperator:1];
        v126 = v27;
        v28 = &v126;
      }

      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

      receiptCopy = v17;
      goto LABEL_17;
    }

    if (transactionType != 5)
    {
      if (transactionType == 10)
      {
        v89 = [PKPaymentTransactionDetailAmountLineItemPaymentTotal alloc];
        currencyAmount = [transactionCopy currencyAmount];
        v91 = [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)v89 initWithAmount:currencyAmount];

        [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)v91 setHasTrailingLineSeperator:1];
        v125 = v91;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];

        goto LABEL_17;
      }

      goto LABEL_75;
    }

    v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForWithdrawalTransaction:transactionCopy transactionSourceCollection:collectionCopy];
LABEL_81:
    v16 = v92;
    goto LABEL_17;
  }

  switch(transactionType)
  {
    case 0:
      v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForPurchaseTransaction:transactionCopy transactionSourceCollection:collectionCopy associatedReceipt:receiptCopy];
      goto LABEL_81;
    case 1:
      v93 = [PKPaymentTransactionDetailAmountLineItemTotal alloc];
      amount2 = [transactionCopy amount];
      currencyCode2 = [transactionCopy currencyCode];
      v96 = PKCurrencyAmountCreate(amount2, currencyCode2);
      v97 = [(PKPaymentTransactionDetailAmountLineItemTotal *)v93 initWithAmount:v96 totalType:4];

      if (associatedTransactionCopy)
      {
        v98 = [[PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment alloc] initWithAssociatedTransaction:associatedTransactionCopy];
        [(PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment *)v98 setHasTrailingLineSeperator:1];
        v129[0] = v97;
        v129[1] = v98;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
      }

      else
      {
        [(PKPaymentTransactionDetailAmountLineItemTotal *)v97 setHasTrailingLineSeperator:1];
        v128 = v97;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
      }

      break;
    case 2:
      v101 = receiptCopy;
      amount3 = [transactionCopy amount];
      pk_absoluteValue = [amount3 pk_absoluteValue];
      v100 = amount3;
      pk_isNegativeNumber2 = [amount3 pk_isNegativeNumber];
      paymentPass = [collectionCopy paymentPass];
      currencyCode3 = [transactionCopy currencyCode];
      if (!currencyCode3)
      {
        devicePrimaryContactlessPaymentApplication = [paymentPass devicePrimaryContactlessPaymentApplication];
        currencyCode3 = [devicePrimaryContactlessPaymentApplication appletCurrencyCode];
      }

      amounts = [transactionCopy amounts];
      plans = [transactionCopy plans];
      transitType = [transactionCopy transitType];
      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v106 = transactionCopy;
      v107 = plans;
      v104 = associatedTransactionCopy;
      v105 = collectionCopy;
      v102 = transitType;
      v103 = amounts;
      if (amounts)
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        obj = amounts;
        v39 = [obj countByEnumeratingWithState:&v121 objects:v132 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v122;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v122 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v121 + 1) + 8 * i);
              amount4 = [v43 amount];
              absoluteValue = [amount4 absoluteValue];
              formattedStringValue = [absoluteValue formattedStringValue];

              v44Amount = [amount4 amount];
              pk_isNegativeNumber3 = [v44Amount pk_isNegativeNumber];

              if (pk_isNegativeNumber3)
              {
                v49 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

                v50 = @"TRANSACTION_DEFAULT_CREDIT";
                formattedStringValue = v49;
              }

              else
              {
                v50 = @"TRANSACTION_DEFAULT_AMOUNT";
              }

              v51 = PKLocalizedPaymentString(&v50->isa);
              label = [v43 label];
              v53 = label;
              if (label)
              {
                v54 = label;
              }

              else
              {
                v54 = v51;
              }

              v55 = v54;

              v56 = [[PKPaymentTransactionDetailAmountLineItemGeneric alloc] initWithLabel:v55 value:formattedStringValue];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v56 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v56 setIsEmphasized:0];
              [v38 addObject:v56];
            }

            v40 = [obj countByEnumeratingWithState:&v121 objects:v132 count:16];
          }

          while (v40);
        }

        collectionCopy = v105;
        amounts = v103;
        associatedTransactionCopy = v104;
        plans = v107;
        transitType = v102;
      }

      if (plans)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v57 = plans;
        v58 = [v57 countByEnumeratingWithState:&v117 objects:v131 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v118;
          do
          {
            for (j = 0; j != v59; ++j)
            {
              if (*v118 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = *(*(&v117 + 1) + 8 * j);
              v63 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
              label2 = [v62 label];
              v65 = PKPassLocalizedStringWithFormat();
              v66 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v63 initWithLabel:label2 value:v65, 0];

              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v66 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v66 setIsEmphasized:0];
              [v38 addObject:v66];
            }

            v59 = [v57 countByEnumeratingWithState:&v117 objects:v131 count:16];
          }

          while (v59);
        }

        collectionCopy = v105;
        transactionCopy = v106;
        amounts = v103;
        associatedTransactionCopy = v104;
        plans = v107;
        transitType = v102;
      }

      if (transitType == 517 && ([paymentPass shouldSuppressNoChargeAmount] & 1) == 0)
      {
        devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
        paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

        if (paymentNetworkIdentifier == 131)
        {
          v69 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
          v70 = PKLocalizedPaymentString(&cfstr_TransactionDet_90.isa);
          v71 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v69 initWithLabel:v70 value:&stru_1F3BD7330];

          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v71 setHasTrailingLineSeperator:1];
          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v71 setIsEmphasized:0];
          [v38 addObject:v71];
        }
      }

      if (([transactionCopy enRoute] & 1) == 0 && transitType != 1025 && pk_absoluteValue && currencyCode3)
      {
        v72 = PKCurrencyAmountCreate(pk_absoluteValue, currencyCode3);
        formattedStringValue2 = [v72 formattedStringValue];
        v74 = formattedStringValue2;
        if (pk_isNegativeNumber2)
        {
          v75 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue2);

          v74 = v75;
        }

        v76 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
        v77 = PKLocalizedPaymentString(&cfstr_TransactionDef_0.isa);
        v78 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v76 initWithLabel:v77 value:v74];

        [(PKPaymentTransactionDetailAmountLineItemGeneric *)v78 setHasTrailingLineSeperator:1];
        [(PKPaymentTransactionDetailAmountLineItemGeneric *)v78 setIsEmphasized:1];
        [v38 addObject:v78];

        plans = v107;
      }

      if (([transactionCopy enRoute] & 1) == 0 && transitType != 1025 && objc_msgSend(amounts, "count") >= 2)
      {
        dictionaryOfFormattedMultipleAmountTotalsByRealCurrency = [transactionCopy dictionaryOfFormattedMultipleAmountTotalsByRealCurrency];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        obja = [dictionaryOfFormattedMultipleAmountTotalsByRealCurrency keyEnumerator];
        v80 = [obja countByEnumeratingWithState:&v113 objects:v130 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v114;
          do
          {
            for (k = 0; k != v81; ++k)
            {
              if (*v114 != v82)
              {
                objc_enumerationMutation(obja);
              }

              v84 = *(*(&v113 + 1) + 8 * k);
              v85 = PKLocalizedPaymentString(&cfstr_TransactionTot.isa, &stru_1F3BD5BF0.isa, v84);
              v86 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
              v87 = [dictionaryOfFormattedMultipleAmountTotalsByRealCurrency objectForKeyedSubscript:v84];
              v88 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v86 initWithLabel:v85 value:v87];

              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v88 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v88 setIsEmphasized:1];
              [v38 addObject:v88];
            }

            v81 = [obja countByEnumeratingWithState:&v113 objects:v130 count:16];
          }

          while (v81);
        }

        collectionCopy = v105;
        transactionCopy = v106;
        amounts = v103;
        associatedTransactionCopy = v104;
        plans = v107;
      }

      v16 = [v38 copy];

      receiptCopy = v101;
      break;
  }

LABEL_17:

  return v16;
}

- (id)lineItemsForInstallmentPlan:(id)plan
{
  v100 = *MEMORY[0x1E69E9840];
  planCopy = plan;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  lineItems = [planCopy lineItems];
  v69 = planCopy;
  currencyCode = [planCopy currencyCode];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = lineItems;
  v9 = [v8 countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v94;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v94 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v93 + 1) + 8 * i);
        type = [v13 type];
        v15 = v6;
        if (type != 1)
        {
          type2 = [v13 type];
          v15 = v7;
          if (type2 != 5)
          {
            continue;
          }
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v10);
  }

  v68 = v4;

  v17 = [v6 count];
  v18 = [v7 count];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = v19;
  if (v17)
  {
    v20 = v19;
    v64 = [v8 pk_arrayByRemovingObjectsInArray:v6];

    v21 = [v6 count];
    v88[0] = MEMORY[0x1E69E9820];
    v22 = &unk_1BE0FC000;
    v88[1] = 3221225472;
    v88[2] = __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke;
    v88[3] = &unk_1E80270A0;
    v89 = currencyCode;
    v92 = v18 != 0;
    v90 = v20;
    v91 = v21;
    [v6 enumerateObjectsUsingBlock:v88];

    v8 = v64;
  }

  else
  {
    v22 = &unk_1BE0FC000;
  }

  if (v18)
  {
    v65 = [v8 pk_arrayByRemovingObjectsInArray:v7];

    v23 = [v7 count];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke_2;
    v83[3] = &unk_1E80270A0;
    v24 = currencyCode;
    v84 = v24;
    v25 = v70;
    v26 = v70;
    v87 = v17 != 0;
    v85 = v26;
    v86 = v23;
    [v7 enumerateObjectsUsingBlock:v83];

    if (v17)
    {
      v63 = v24;
      v67 = v26;
      zero = [MEMORY[0x1E696AB90] zero];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v28 = v6;
      v29 = [v28 countByEnumeratingWithState:&v79 objects:v98 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v80;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v80 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v79 + 1) + 8 * j);
            amount = [v33 amount];

            if (amount)
            {
              amount2 = [v33 amount];
              v36 = [(NSDecimalNumber *)zero decimalNumberByAdding:amount2];

              zero = v36;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v79 objects:v98 count:16];
        }

        while (v30);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v37 = v7;
      v38 = [v37 countByEnumeratingWithState:&v75 objects:v97 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v76;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v76 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v75 + 1) + 8 * k);
            amount3 = [v42 amount];

            if (amount3)
            {
              amount4 = [v42 amount];
              v45 = [(NSDecimalNumber *)zero decimalNumberBySubtracting:amount4];

              zero = v45;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v75 objects:v97 count:16];
        }

        while (v39);
      }

      v46 = 0;
      if (zero)
      {
        v25 = v70;
        v22 = &unk_1BE0FC000;
        if (v63)
        {
          v46 = PKCurrencyAmountCreate(zero, v63);
        }
      }

      else
      {
        v25 = v70;
        v22 = &unk_1BE0FC000;
      }

      v48 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v46 totalType:5];
      [(PKPaymentTransactionDetailAmountLineItemTotal *)v48 setHasTrailingLineSeperator:1];
      [v67 addObject:v48];
    }

    v47 = v65;
  }

  else
  {
    v47 = v8;
    v25 = v70;
  }

  [v68 addObjectsFromArray:v25];
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = v22[509];
  v72[2] = __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke_3;
  v72[3] = &unk_1E80270C8;
  v50 = currencyCode;
  v73 = v50;
  v51 = v49;
  v74 = v51;
  [v47 enumerateObjectsUsingBlock:v72];
  lastObject = [v51 lastObject];
  [lastObject setHasTrailingLineSeperator:1];

  [v68 addObjectsFromArray:v51];
  v53 = v69;
  if (v50)
  {
    totalAmount = [v69 totalAmount];

    if (totalAmount)
    {
      totalAmount2 = [v69 totalAmount];
      v56 = PKCurrencyAmountCreate(totalAmount2, v50);

      totalAmount = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v56 totalType:6];
      [v68 addObject:totalAmount];
    }

    rewards = [v69 rewards];
    if (rewards)
    {
      [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _rewardsLineItemsForRewards:rewards currencyCode:v50];
      v59 = v58 = v47;
      lastObject2 = [v59 lastObject];
      [lastObject2 setHasTrailingLineSeperator:1];

      v25 = v70;
      [v68 addObjectsFromArray:v59];

      v47 = v58;
      v53 = v69;
    }

    else
    {
      [(PKPaymentTransactionDetailAmountLineItemTotal *)totalAmount setHasTrailingLineSeperator:1];
    }
  }

  v61 = [v68 copy];

  return v61;
}

void __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PKInstallmentPlanDetailLineItem alloc] initWithLineItem:v5 currencyCode:*(a1 + 32)];

  [*(a1 + 40) addObject:v6];
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 48) - 1 == a3)
  {
    [(PKInstallmentPlanDetailLineItem *)v6 setHasTrailingLineSeperator:1];
  }
}

void __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PKInstallmentPlanDetailLineItem alloc] initWithLineItem:v5 currencyCode:*(a1 + 32)];

  [*(a1 + 40) addObject:v6];
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 48) - 1 == a3)
  {
    [(PKInstallmentPlanDetailLineItem *)v6 setHasTrailingLineSeperator:1];
  }
}

void __81__PKPaymentTransactionDetailAmountLineItemGenerator_lineItemsForInstallmentPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKInstallmentPlanDetailLineItem alloc] initWithLineItem:v3 currencyCode:*(a1 + 32)];

  [*(a1 + 40) addObject:v4];
}

- (id)_lineItemsForWithdrawalTransaction:(id)transaction transactionSourceCollection:(id)collection
{
  transactionCopy = transaction;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fees = [transactionCopy fees];
  v7Fees = [fees fees];
  allObjects = [v7Fees allObjects];

  if ([allObjects count])
  {
    v10 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalTransferredItemForTransaction:transactionCopy];
    [v6 addObject:v10];
    v11 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _feeLineItemsForFees:allObjects];
    lastObject = [v11 lastObject];
    [lastObject setHasTrailingLineSeperator:1];

    [v6 addObjectsFromArray:v11];
    v13 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:transactionCopy isUnqualified:1];
    [v13 setHasTrailingLineSeperator:1];
    [v6 addObject:v13];
  }

  transfers = [transactionCopy transfers];
  firstObject = [transfers firstObject];

  if (firstObject && [transactionCopy transactionStatus] != 2)
  {
    fundsAreAvailable = [firstObject fundsAreAvailable];
    expectedCompletionDate = [firstObject expectedCompletionDate];
    v18 = expectedCompletionDate;
    if ((fundsAreAvailable & 1) != 0 || !expectedCompletionDate)
    {
      transactionStatusChangedDate = [transactionCopy transactionStatusChangedDate];

      v18 = transactionStatusChangedDate;
    }

    if (fundsAreAvailable)
    {
      v20 = [[PKPaymentTransactionDetailAmountLineCompletionDate alloc] initWithDate:v18 completed:1];
      [(PKPaymentTransactionDetailAmountLineCompletionDate *)v20 setHasTrailingLineSeperator:1];
      [v6 addObject:v20];
    }
  }

  if ([v6 count])
  {
    v21 = [v6 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_lineItemsForPurchaseTransaction:(id)transaction transactionSourceCollection:(id)collection associatedReceipt:(id)receipt
{
  v100 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  receiptCopy = receipt;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  foreignExchangeInformation = [transactionCopy foreignExchangeInformation];
  v10 = foreignExchangeInformation;
  if (!foreignExchangeInformation)
  {
    goto LABEL_15;
  }

  destinationCurrencyAmount = [foreignExchangeInformation destinationCurrencyAmount];
  currency = [destinationCurrencyAmount currency];
  currencyCode = [transactionCopy currencyCode];
  v14 = currency;
  v15 = currencyCode;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_8;
  }

  if (v14 && v15)
  {
    v17 = [v14 isEqualToString:v15];

    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    exchangeRate = [v10 exchangeRate];
    [exchangeRate doubleValue];
    v20 = v19;

    if (v20 == 1.0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_11:
LABEL_12:
  foreignExchangeInformation2 = [transactionCopy foreignExchangeInformation];
  v22 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _foreignExchangeLineItemsForExchangeInfo:foreignExchangeInformation2];

  lastObject = [v22 lastObject];
  [lastObject setHasTrailingLineSeperator:1];

  if ([v22 count])
  {
    [v8 addObjectsFromArray:v22];
  }

LABEL_15:
  if (receiptCopy)
  {
    lineItems = [receiptCopy lineItems];
    v25 = [lineItems pk_arrayByApplyingBlock:&__block_literal_global_259];

    lastObject2 = [v25 lastObject];
    [lastObject2 setHasTrailingLineSeperator:1];

    [v8 addObjectsFromArray:v25];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    summaryItems = [receiptCopy summaryItems];
    subtotalCurrencyAmount = [receiptCopy subtotalCurrencyAmount];
    totalCurrencyAmount = [receiptCopy totalCurrencyAmount];
    v90 = subtotalCurrencyAmount;
    v88 = totalCurrencyAmount;
    if (subtotalCurrencyAmount)
    {
      v30 = totalCurrencyAmount;
      if (totalCurrencyAmount)
      {
        amount = [subtotalCurrencyAmount amount];
        amount2 = [v30 amount];
        v33 = [amount compare:amount2];

        if (v33)
        {
          v34 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
          v35 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
          formattedStringValue = [v90 formattedStringValue];
          v37 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v34 initWithLabel:v35 value:formattedStringValue];

          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v37 setIsEmphasized:1];
          [v27 addObject:v37];
        }
      }
    }

    v38 = summaryItems;
    if (summaryItems)
    {
      v84 = v25;
      selfCopy = self;
      v86 = v10;
      v87 = v8;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v39 = summaryItems;
      v40 = [v39 countByEnumeratingWithState:&v95 objects:v99 count:16];
      if (!v40)
      {
        goto LABEL_53;
      }

      v41 = v40;
      v42 = *v96;
      while (1)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v96 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v95 + 1) + 8 * i);
          currencyAmount = [v44 currencyAmount];
          formattedStringValue2 = [currencyAmount formattedStringValue];

          type = [v44 type];
          v48 = 0;
          if (type <= 1)
          {
            if (!type)
            {
              label = [v44 label];
              if (label)
              {
LABEL_42:
                v56 = label;
LABEL_45:
                v48 = v56;

                goto LABEL_51;
              }

              v55 = @"TRANSACTION_RECEIPT_OTHER";
LABEL_44:
              v56 = PKLocalizedPaymentString(&v55->isa);
              goto LABEL_45;
            }

            if (type == 1)
            {
              label2 = [v44 label];
              if (!label2)
              {
                if ([receiptCopy state] == 2)
                {
                  v53 = @"TRANSACTION_RECEIPT_TAX";
                }

                else
                {
                  v53 = @"TRANSACTION_RECEIPT_ESTIMATED_TAX";
                }

                label2 = PKLocalizedPaymentString(&v53->isa);
              }

              v48 = label2;
            }
          }

          else
          {
            switch(type)
            {
              case 2:
                label = [v44 label];
                if (label)
                {
                  goto LABEL_42;
                }

                v55 = @"TRANSACTION_RECEIPT_SHIPPING";
                goto LABEL_44;
              case 3:
                label = [v44 label];
                if (label)
                {
                  goto LABEL_42;
                }

                v55 = @"TRANSACTION_RECEIPT_FEE";
                goto LABEL_44;
              case 4:
                label3 = [v44 label];
                v50 = label3;
                if (label3)
                {
                  v51 = label3;
                }

                else
                {
                  v51 = PKLocalizedPaymentString(&cfstr_TransactionRec_5.isa);
                }

                v48 = v51;

                v57 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue2);

                formattedStringValue2 = v57;
                break;
            }
          }

LABEL_51:
          v58 = [[PKPaymentTransactionDetailAmountLineItemGeneric alloc] initWithLabel:v48 value:formattedStringValue2];
          [v27 addObject:v58];
        }

        v41 = [v39 countByEnumeratingWithState:&v95 objects:v99 count:16];
        if (!v41)
        {
LABEL_53:

          v8 = v87;
          self = selfCopy;
          v10 = v86;
          v25 = v84;
          v38 = summaryItems;
          break;
        }
      }
    }

    lastObject3 = [v27 lastObject];
    [lastObject3 setHasTrailingLineSeperator:1];

    if ([v27 count])
    {
      [v8 addObjectsFromArray:v27];
    }
  }

  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  nominalAmount = [transactionCopy nominalAmount];
  if (nominalAmount)
  {
    v62 = nominalAmount;
    amountModifiers = [transactionCopy amountModifiers];
    v64 = [amountModifiers count];

    if (v64)
    {
      v65 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
      v66 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
      nominalCurrencyAmount = [transactionCopy nominalCurrencyAmount];
      formattedStringValue3 = [nominalCurrencyAmount formattedStringValue];
      v69 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v65 initWithLabel:v66 value:formattedStringValue3];

      [(PKPaymentTransactionDetailAmountLineItemGeneric *)v69 setIsEmphasized:0];
      [v60 addObject:v69];
      amountModifiers2 = [transactionCopy amountModifiers];
      v71 = [amountModifiers2 count];
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __132__PKPaymentTransactionDetailAmountLineItemGenerator__lineItemsForPurchaseTransaction_transactionSourceCollection_associatedReceipt___block_invoke_2;
      v92[3] = &unk_1E8027110;
      v94 = v71 - 1;
      v72 = v60;
      v93 = v72;
      [amountModifiers2 enumerateObjectsUsingBlock:v92];
      if ([v72 count])
      {
        [v8 addObjectsFromArray:v72];
      }
    }
  }

  v73 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:transactionCopy isUnqualified:1];
  [v8 addObject:v73];
  rewards = [transactionCopy rewards];

  if (rewards)
  {
    rewards2 = [transactionCopy rewards];
    rewardsTotalCurrencyCode = [transactionCopy rewardsTotalCurrencyCode];
    if (rewardsTotalCurrencyCode)
    {
      v77 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _rewardsLineItemsForRewards:rewards2 currencyCode:rewardsTotalCurrencyCode];
    }

    else
    {
      currencyCode2 = [transactionCopy currencyCode];
      selfCopy2 = self;
      v80 = currencyCode2;
      v77 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)selfCopy2 _rewardsLineItemsForRewards:rewards2 currencyCode:currencyCode2];
    }

    lastObject4 = [v77 lastObject];
    [lastObject4 setHasTrailingLineSeperator:1];

    if ([v77 count])
    {
      [v8 addObjectsFromArray:v77];
    }

    else
    {
      [v73 setHasTrailingLineSeperator:1];
    }
  }

  else
  {
    [v73 setHasTrailingLineSeperator:1];
  }

  v82 = [v8 copy];

  return v82;
}

PKPaymentTransactionDetailAmountLineItemReceipt *__132__PKPaymentTransactionDetailAmountLineItemGenerator__lineItemsForPurchaseTransaction_transactionSourceCollection_associatedReceipt___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaymentTransactionDetailAmountLineItemReceipt alloc] initWithReceiptLineItem:v2];

  return v3;
}

void __132__PKPaymentTransactionDetailAmountLineItemGenerator__lineItemsForPurchaseTransaction_transactionSourceCollection_associatedReceipt___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
  v7 = [v5 modifierDescription];
  v8 = [v5 amount];

  v9 = [v8 amount];
  v10 = [v9 formattedStringValue];
  v11 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v6 initWithLabel:v7 value:v10];

  if (*(a1 + 40) == a3)
  {
    [(PKPaymentTransactionDetailAmountLineItemGeneric *)v11 setHasTrailingLineSeperator:1];
  }

  [*(a1 + 32) addObject:v11];
}

- (id)_lineItemsForPeerPaymentTransaction:(id)transaction transactionSourceCollection:(id)collection
{
  transactionCopy = transaction;
  collectionCopy = collection;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fees = [transactionCopy fees];
  v9Fees = [fees fees];
  allObjects = [v9Fees allObjects];

  peerPaymentType = [transactionCopy peerPaymentType];
  v13 = [allObjects count];
  secondaryFundingSourceAmount = [transactionCopy secondaryFundingSourceAmount];
  if (secondaryFundingSourceAmount)
  {
    v15 = secondaryFundingSourceAmount;
    secondaryFundingSourceCurrencyCode = [transactionCopy secondaryFundingSourceCurrencyCode];

    if (secondaryFundingSourceCurrencyCode)
    {
      v17 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _primaryFundingSourceLineItemForTransaction:transactionCopy transactionSourceCollection:collectionCopy];
      [v8 addObject:v17];
      v18 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _secondaryFundingSourceLineItemForTransaction:transactionCopy];
      [v18 setHasTrailingLineSeperator:1];
      [v8 addObject:v18];
    }
  }

  v19 = 0;
  if (peerPaymentType > 1)
  {
    if (peerPaymentType == 2)
    {
      v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalReceivedLineItemForTransaction:transactionCopy];
    }

    else
    {
      if (peerPaymentType != 3)
      {
        goto LABEL_15;
      }

      v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalRequestedLineItemForTransaction:transactionCopy];
    }
  }

  else if (peerPaymentType)
  {
    if (peerPaymentType != 1)
    {
      goto LABEL_15;
    }

    v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalSentLineItemForTransaction:transactionCopy];
  }

  else
  {
    v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _subtotalLineItemForTransaction:transactionCopy];
  }

  v19 = v20;
  if (v20)
  {
    [v8 addObject:v20];
  }

LABEL_15:
  if (v13)
  {
    v21 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _feeLineItemsForFees:allObjects];
    lastObject = [v21 lastObject];
    [lastObject setHasTrailingLineSeperator:1];

    [v8 addObjectsFromArray:v21];
    v23 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:transactionCopy isUnqualified:0];
    [v23 setHasTrailingLineSeperator:1];
    [v8 addObject:v23];
  }

  else
  {
    [v19 setHasTrailingLineSeperator:1];
  }

  v24 = [v8 copy];

  return v24;
}

- (id)_secondaryFundingSourceLineItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  secondaryFundingSourceAmount = [transactionCopy secondaryFundingSourceAmount];
  secondaryFundingSourceCurrencyCode = [transactionCopy secondaryFundingSourceCurrencyCode];
  v6 = secondaryFundingSourceCurrencyCode;
  v7 = 0;
  if (secondaryFundingSourceAmount && secondaryFundingSourceCurrencyCode)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:secondaryFundingSourceAmount currency:secondaryFundingSourceCurrencyCode exponent:0];
  }

  secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceFPANIdentifier];
  if ([secondaryFundingSourceFPANIdentifier length])
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v10];
      v12 = [PKPaymentTransactionDetailAmountLineItemFundingSource alloc];
      v13 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v11];
      v14 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)v12 initWithAmount:v7 transactionSourceCollection:v13];

      goto LABEL_13;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Pass matching alternative funding source FPAN ID not found in library, falling back to pass description in transaction";
      v17 = buf;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v16 = "Transaction alternative funding source does not contain an FPAN ID, falling back to pass description in transaction";
      v17 = &v23;
LABEL_11:
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    }
  }

  v18 = [PKPaymentTransactionDetailAmountLineItemFundingSource alloc];
  secondaryFundingSourceNetwork = [transactionCopy secondaryFundingSourceNetwork];
  secondaryFundingSourceDPANSuffix = [transactionCopy secondaryFundingSourceDPANSuffix];
  secondaryFundingSourceDescription = [transactionCopy secondaryFundingSourceDescription];
  v14 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)v18 initWithAmount:v7 credentialType:secondaryFundingSourceNetwork dpanSuffix:secondaryFundingSourceDPANSuffix cardDescription:secondaryFundingSourceDescription];

LABEL_13:

  return v14;
}

- (id)_primaryFundingSourceLineItemForTransaction:(id)transaction transactionSourceCollection:(id)collection
{
  collectionCopy = collection;
  transactionCopy = transaction;
  primaryFundingSourceAmount = [transactionCopy primaryFundingSourceAmount];
  primaryFundingSourceCurrencyCode = [transactionCopy primaryFundingSourceCurrencyCode];

  v9 = 0;
  if (primaryFundingSourceAmount && primaryFundingSourceCurrencyCode)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:primaryFundingSourceAmount currency:primaryFundingSourceCurrencyCode exponent:0];
  }

  v10 = [[PKPaymentTransactionDetailAmountLineItemFundingSource alloc] initWithAmount:v9 transactionSourceCollection:collectionCopy];

  return v10;
}

- (id)_totalPaidLineItemForTransaction:(id)transaction isUnqualified:(BOOL)unqualified
{
  unqualifiedCopy = unqualified;
  transactionCopy = transaction;
  amount = [transactionCopy amount];
  currencyCode = [transactionCopy currencyCode];

  v8 = 0;
  if (amount && currencyCode)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:amount currency:currencyCode exponent:0];
  }

  if (unqualifiedCopy)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v8 totalType:v9];

  return v10;
}

- (id)_totalTransferredItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  subtotalAmount = [transactionCopy subtotalAmount];
  currencyCode = [transactionCopy currencyCode];
  v6 = currencyCode;
  v7 = 0;
  if (subtotalAmount && currencyCode)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:subtotalAmount currency:currencyCode exponent:0];
  }

  secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceFPANIdentifier];
  if ([secondaryFundingSourceFPANIdentifier length])
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier];

    v11 = objc_alloc(MEMORY[0x1E69B9300]);
    v12 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v10];
    v13 = [v11 initWithTransactionSource:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[PKPaymentTransactionDetailAmountLineItemTransferSource alloc] initWithAmount:v7 transactionSourceCollection:v13];

  return v14;
}

- (id)_totalSentLineItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  subtotalAmount = [transactionCopy subtotalAmount];
  currencyCode = [transactionCopy currencyCode];

  v6 = 0;
  if (subtotalAmount && currencyCode)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:subtotalAmount currency:currencyCode exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:1];

  return v7;
}

- (id)_totalReceivedLineItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  amount = [transactionCopy amount];
  currencyCode = [transactionCopy currencyCode];
  v6 = currencyCode;
  v7 = 0;
  if (amount && currencyCode)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:amount currency:currencyCode exponent:0];
  }

  if (([transactionCopy transactionStatus] & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v7 totalType:v8];

  return v9;
}

- (id)_totalRequestedLineItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  amount = [transactionCopy amount];
  currencyCode = [transactionCopy currencyCode];

  v6 = 0;
  if (amount && currencyCode)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:amount currency:currencyCode exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:7];

  return v7;
}

- (id)_subtotalLineItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  subtotalAmount = [transactionCopy subtotalAmount];
  currencyCode = [transactionCopy currencyCode];

  v6 = 0;
  if (subtotalAmount && currencyCode)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:subtotalAmount currency:currencyCode exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:4];

  return v7;
}

- (id)_feeLineItemsForFees:(id)fees
{
  v20 = *MEMORY[0x1E69E9840];
  feesCopy = fees;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = feesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PKPaymentTransactionDetailAmountLineItemFee alloc];
        v12 = [(PKPaymentTransactionDetailAmountLineItemFee *)v11 initWithFeeItem:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 sortedArrayUsingComparator:&__block_literal_global_376];

  return v13;
}

uint64_t __74__PKPaymentTransactionDetailAmountLineItemGenerator__feeLineItemsForFees___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_rewardsLineItemsForRewards:(id)rewards currencyCode:(id)code
{
  v58 = *MEMORY[0x1E69E9840];
  rewardsCopy = rewards;
  codeCopy = code;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = [rewardsCopy totalEligibleValueForUnit:1];
  zero = [MEMORY[0x1E696AB90] zero];
  promotionalRewardsItems = [rewardsCopy promotionalRewardsItems];
  v41 = [promotionalRewardsItems pk_hasObjectPassingTest:&__block_literal_global_379];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = rewardsCopy;
  rewardsItems = [rewardsCopy rewardsItems];
  v7 = [rewardsItems countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(rewardsItems);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        state = [v12 state];
        if (state != 3)
        {
          v14 = state;
          if ([v12 eligibleValueUnit] == 1)
          {
            currencyAmount = [v12 currencyAmount];

            if (currencyAmount)
            {
              currencyAmount2 = [v12 currencyAmount];
              amount = [currencyAmount2 amount];
              v18 = [(NSDecimalNumber *)zero decimalNumberByAdding:amount];

              zero = v18;
            }
          }

          v9 |= v14 == 1;
        }
      }

      v8 = [rewardsItems countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  zero2 = [MEMORY[0x1E696AB90] zero];
  v20 = [v43 isEqualToNumber:zero2];

  if ((v20 & 1) == 0)
  {
    zero3 = [MEMORY[0x1E696AB90] zero];
    v22 = [(NSDecimalNumber *)zero isEqualToNumber:zero3];

    v23 = 0;
    if (codeCopy && (v22 & 1) == 0)
    {
      v23 = PKCurrencyAmountCreate(zero, codeCopy);
    }

    v24 = [[PKPaymentTransactionDetailAmountLineItemRewards alloc] initWithRewardsValueUnit:1 eligibleValue:v43 isEligible:v9 & 1 totalAmount:v23 hasPromotionalReward:v41 promotionName:0];
    [v46 addObject:v24];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  rewardsItems2 = [v42 rewardsItems];
  v26 = [rewardsItems2 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v49;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(rewardsItems2);
        }

        v30 = *(*(&v48 + 1) + 8 * j);
        if ([v30 eligibleValueUnit] == 2)
        {
          state2 = [v30 state];
          eligibleValue = [v30 eligibleValue];
          v33 = PKCurrencyAmountCreate(eligibleValue, codeCopy);

          v34 = [PKPaymentTransactionDetailAmountLineItemRewards alloc];
          eligibleValue2 = [v30 eligibleValue];
          v36 = [promotionalRewardsItems containsObject:v30];
          promotionName = [v30 promotionName];
          v38 = [(PKPaymentTransactionDetailAmountLineItemRewards *)v34 initWithRewardsValueUnit:2 eligibleValue:eligibleValue2 isEligible:state2 == 1 totalAmount:v33 hasPromotionalReward:v36 promotionName:promotionName];
          [v46 addObject:v38];
        }
      }

      v27 = [rewardsItems2 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v27);
  }

  v39 = [v46 copy];

  return v39;
}

- (id)_foreignExchangeLineItemsForExchangeInfo:(id)info
{
  v8[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = [[PKPaymentTransactionDetailAmountLineItemForeignExchange alloc] initWithForeignExchangeInformation:infoCopy type:0];
  v5 = [[PKPaymentTransactionDetailAmountLineItemForeignExchange alloc] initWithForeignExchangeInformation:infoCopy type:1];

  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

@end