@interface PKPaymentTransactionDetailAmountLineItemGenerator
- (id)_feeLineItemsForFees:(id)a3;
- (id)_foreignExchangeLineItemsForExchangeInfo:(id)a3;
- (id)_lineItemsForPeerPaymentTransaction:(id)a3 transactionSourceCollection:(id)a4;
- (id)_lineItemsForPurchaseTransaction:(id)a3 transactionSourceCollection:(id)a4 associatedReceipt:(id)a5;
- (id)_lineItemsForWithdrawalTransaction:(id)a3 transactionSourceCollection:(id)a4;
- (id)_primaryFundingSourceLineItemForTransaction:(id)a3 transactionSourceCollection:(id)a4;
- (id)_rewardsLineItemsForRewards:(id)a3 currencyCode:(id)a4;
- (id)_secondaryFundingSourceLineItemForTransaction:(id)a3;
- (id)_subtotalLineItemForTransaction:(id)a3;
- (id)_totalPaidLineItemForTransaction:(id)a3 isUnqualified:(BOOL)a4;
- (id)_totalReceivedLineItemForTransaction:(id)a3;
- (id)_totalRequestedLineItemForTransaction:(id)a3;
- (id)_totalSentLineItemForTransaction:(id)a3;
- (id)_totalTransferredItemForTransaction:(id)a3;
- (id)lineItemsForInstallmentPlan:(id)a3;
- (id)lineItemsForTransaction:(id)a3 transactionSourceCollection:(id)a4 associatedTransaction:(id)a5 associatedReceipt:(id)a6;
@end

@implementation PKPaymentTransactionDetailAmountLineItemGenerator

- (id)lineItemsForTransaction:(id)a3 transactionSourceCollection:(id)a4 associatedTransaction:(id)a5 associatedReceipt:(id)a6
{
  v133 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 transactionType];
  v15 = v14;
  v16 = 0;
  if (v14 > 2)
  {
    if (v14 > 0x16)
    {
LABEL_75:
      if (v14 != 3)
      {
        goto LABEL_17;
      }

      v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForPeerPaymentTransaction:v10 transactionSourceCollection:v11];
      goto LABEL_81;
    }

    if (((1 << v14) & 0x7F7BD0) != 0)
    {
      v17 = v13;
      v18 = [v10 transfers];
      v19 = [v18 firstObject];

      if (v19 && [v10 transactionStatus] != 2)
      {
        v29 = [v19 fundsAreAvailable];
        v30 = [v19 expectedCompletionDate];
        v21 = v30;
        if ((v29 & 1) != 0 || !v30)
        {
          v31 = [v10 transactionStatusChangedDate];

          v21 = v31;
        }

        v27 = [[PKPaymentTransactionDetailAmountLineCompletionDate alloc] initWithDate:v21 completed:v29];
        [(PKPaymentTransactionDetailAmountLineCompletionDate *)v27 setHasTrailingLineSeperator:1];
        v127 = v27;
        v28 = &v127;
      }

      else
      {
        v20 = [v10 amount];
        v21 = v20;
        if (v20)
        {
          v22 = [(NSDecimalNumber *)v20 pk_isNegativeNumber];
          if (v15 == 11 && (v22 & 1) == 0 && [v10 featureIdentifier] == 5)
          {
            v23 = [(NSDecimalNumber *)v21 pk_negativeValue];

            v21 = v23;
          }
        }

        v24 = [PKPaymentTransactionDetailAmountLineItemTotal alloc];
        v25 = [v10 currencyCode];
        v26 = PKCurrencyAmountCreate(v21, v25);
        v27 = [(PKPaymentTransactionDetailAmountLineItemTotal *)v24 initWithAmount:v26 totalType:4];

        [(PKPaymentTransactionDetailAmountLineCompletionDate *)v27 setHasTrailingLineSeperator:1];
        v126 = v27;
        v28 = &v126;
      }

      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

      v13 = v17;
      goto LABEL_17;
    }

    if (v14 != 5)
    {
      if (v14 == 10)
      {
        v89 = [PKPaymentTransactionDetailAmountLineItemPaymentTotal alloc];
        v90 = [v10 currencyAmount];
        v91 = [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)v89 initWithAmount:v90];

        [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)v91 setHasTrailingLineSeperator:1];
        v125 = v91;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];

        goto LABEL_17;
      }

      goto LABEL_75;
    }

    v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForWithdrawalTransaction:v10 transactionSourceCollection:v11];
LABEL_81:
    v16 = v92;
    goto LABEL_17;
  }

  switch(v14)
  {
    case 0:
      v92 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _lineItemsForPurchaseTransaction:v10 transactionSourceCollection:v11 associatedReceipt:v13];
      goto LABEL_81;
    case 1:
      v93 = [PKPaymentTransactionDetailAmountLineItemTotal alloc];
      v94 = [v10 amount];
      v95 = [v10 currencyCode];
      v96 = PKCurrencyAmountCreate(v94, v95);
      v97 = [(PKPaymentTransactionDetailAmountLineItemTotal *)v93 initWithAmount:v96 totalType:4];

      if (v12)
      {
        v98 = [[PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment alloc] initWithAssociatedTransaction:v12];
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
      v101 = v13;
      v33 = [v10 amount];
      v108 = [v33 pk_absoluteValue];
      v100 = v33;
      v99 = [v33 pk_isNegativeNumber];
      v112 = [v11 paymentPass];
      v109 = [v10 currencyCode];
      if (!v109)
      {
        v34 = [v112 devicePrimaryContactlessPaymentApplication];
        v109 = [v34 appletCurrencyCode];
      }

      v35 = [v10 amounts];
      v36 = [v10 plans];
      v37 = [v10 transitType];
      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v106 = v10;
      v107 = v36;
      v104 = v12;
      v105 = v11;
      v102 = v37;
      v103 = v35;
      if (v35)
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        obj = v35;
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
              v44 = [v43 amount];
              v45 = [v44 absoluteValue];
              v46 = [v45 formattedStringValue];

              v47 = [v44 amount];
              v48 = [v47 pk_isNegativeNumber];

              if (v48)
              {
                v49 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v46);

                v50 = @"TRANSACTION_DEFAULT_CREDIT";
                v46 = v49;
              }

              else
              {
                v50 = @"TRANSACTION_DEFAULT_AMOUNT";
              }

              v51 = PKLocalizedPaymentString(&v50->isa);
              v52 = [v43 label];
              v53 = v52;
              if (v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v51;
              }

              v55 = v54;

              v56 = [[PKPaymentTransactionDetailAmountLineItemGeneric alloc] initWithLabel:v55 value:v46];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v56 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v56 setIsEmphasized:0];
              [v38 addObject:v56];
            }

            v40 = [obj countByEnumeratingWithState:&v121 objects:v132 count:16];
          }

          while (v40);
        }

        v11 = v105;
        v35 = v103;
        v12 = v104;
        v36 = v107;
        v37 = v102;
      }

      if (v36)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v57 = v36;
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
              v64 = [v62 label];
              v65 = PKPassLocalizedStringWithFormat();
              v66 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v63 initWithLabel:v64 value:v65, 0];

              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v66 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v66 setIsEmphasized:0];
              [v38 addObject:v66];
            }

            v59 = [v57 countByEnumeratingWithState:&v117 objects:v131 count:16];
          }

          while (v59);
        }

        v11 = v105;
        v10 = v106;
        v35 = v103;
        v12 = v104;
        v36 = v107;
        v37 = v102;
      }

      if (v37 == 517 && ([v112 shouldSuppressNoChargeAmount] & 1) == 0)
      {
        v67 = [v112 devicePrimaryPaymentApplication];
        v68 = [v67 paymentNetworkIdentifier];

        if (v68 == 131)
        {
          v69 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
          v70 = PKLocalizedPaymentString(&cfstr_TransactionDet_90.isa);
          v71 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v69 initWithLabel:v70 value:&stru_1F3BD7330];

          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v71 setHasTrailingLineSeperator:1];
          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v71 setIsEmphasized:0];
          [v38 addObject:v71];
        }
      }

      if (([v10 enRoute] & 1) == 0 && v37 != 1025 && v108 && v109)
      {
        v72 = PKCurrencyAmountCreate(v108, v109);
        v73 = [v72 formattedStringValue];
        v74 = v73;
        if (v99)
        {
          v75 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v73);

          v74 = v75;
        }

        v76 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
        v77 = PKLocalizedPaymentString(&cfstr_TransactionDef_0.isa);
        v78 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v76 initWithLabel:v77 value:v74];

        [(PKPaymentTransactionDetailAmountLineItemGeneric *)v78 setHasTrailingLineSeperator:1];
        [(PKPaymentTransactionDetailAmountLineItemGeneric *)v78 setIsEmphasized:1];
        [v38 addObject:v78];

        v36 = v107;
      }

      if (([v10 enRoute] & 1) == 0 && v37 != 1025 && objc_msgSend(v35, "count") >= 2)
      {
        v79 = [v10 dictionaryOfFormattedMultipleAmountTotalsByRealCurrency];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        obja = [v79 keyEnumerator];
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
              v87 = [v79 objectForKeyedSubscript:v84];
              v88 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v86 initWithLabel:v85 value:v87];

              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v88 setHasTrailingLineSeperator:1];
              [(PKPaymentTransactionDetailAmountLineItemGeneric *)v88 setIsEmphasized:1];
              [v38 addObject:v88];
            }

            v81 = [obja countByEnumeratingWithState:&v113 objects:v130 count:16];
          }

          while (v81);
        }

        v11 = v105;
        v10 = v106;
        v35 = v103;
        v12 = v104;
        v36 = v107;
      }

      v16 = [v38 copy];

      v13 = v101;
      break;
  }

LABEL_17:

  return v16;
}

- (id)lineItemsForInstallmentPlan:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 lineItems];
  v69 = v3;
  v71 = [v3 currencyCode];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = v5;
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
        v14 = [v13 type];
        v15 = v6;
        if (v14 != 1)
        {
          v16 = [v13 type];
          v15 = v7;
          if (v16 != 5)
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
    v89 = v71;
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
    v24 = v71;
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
      v27 = [MEMORY[0x1E696AB90] zero];
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
            v34 = [v33 amount];

            if (v34)
            {
              v35 = [v33 amount];
              v36 = [(NSDecimalNumber *)v27 decimalNumberByAdding:v35];

              v27 = v36;
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
            v43 = [v42 amount];

            if (v43)
            {
              v44 = [v42 amount];
              v45 = [(NSDecimalNumber *)v27 decimalNumberBySubtracting:v44];

              v27 = v45;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v75 objects:v97 count:16];
        }

        while (v39);
      }

      v46 = 0;
      if (v27)
      {
        v25 = v70;
        v22 = &unk_1BE0FC000;
        if (v63)
        {
          v46 = PKCurrencyAmountCreate(v27, v63);
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
  v50 = v71;
  v73 = v50;
  v51 = v49;
  v74 = v51;
  [v47 enumerateObjectsUsingBlock:v72];
  v52 = [v51 lastObject];
  [v52 setHasTrailingLineSeperator:1];

  [v68 addObjectsFromArray:v51];
  v53 = v69;
  if (v50)
  {
    v54 = [v69 totalAmount];

    if (v54)
    {
      v55 = [v69 totalAmount];
      v56 = PKCurrencyAmountCreate(v55, v50);

      v54 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v56 totalType:6];
      [v68 addObject:v54];
    }

    v57 = [v69 rewards];
    if (v57)
    {
      [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _rewardsLineItemsForRewards:v57 currencyCode:v50];
      v59 = v58 = v47;
      v60 = [v59 lastObject];
      [v60 setHasTrailingLineSeperator:1];

      v25 = v70;
      [v68 addObjectsFromArray:v59];

      v47 = v58;
      v53 = v69;
    }

    else
    {
      [(PKPaymentTransactionDetailAmountLineItemTotal *)v54 setHasTrailingLineSeperator:1];
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

- (id)_lineItemsForWithdrawalTransaction:(id)a3 transactionSourceCollection:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 fees];
  v8 = [v7 fees];
  v9 = [v8 allObjects];

  if ([v9 count])
  {
    v10 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalTransferredItemForTransaction:v5];
    [v6 addObject:v10];
    v11 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _feeLineItemsForFees:v9];
    v12 = [v11 lastObject];
    [v12 setHasTrailingLineSeperator:1];

    [v6 addObjectsFromArray:v11];
    v13 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:v5 isUnqualified:1];
    [v13 setHasTrailingLineSeperator:1];
    [v6 addObject:v13];
  }

  v14 = [v5 transfers];
  v15 = [v14 firstObject];

  if (v15 && [v5 transactionStatus] != 2)
  {
    v16 = [v15 fundsAreAvailable];
    v17 = [v15 expectedCompletionDate];
    v18 = v17;
    if ((v16 & 1) != 0 || !v17)
    {
      v19 = [v5 transactionStatusChangedDate];

      v18 = v19;
    }

    if (v16)
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

- (id)_lineItemsForPurchaseTransaction:(id)a3 transactionSourceCollection:(id)a4 associatedReceipt:(id)a5
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v91 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v7 foreignExchangeInformation];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = [v9 destinationCurrencyAmount];
  v12 = [v11 currency];
  v13 = [v7 currencyCode];
  v14 = v12;
  v15 = v13;
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
    v18 = [v10 exchangeRate];
    [v18 doubleValue];
    v20 = v19;

    if (v20 == 1.0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_11:
LABEL_12:
  v21 = [v7 foreignExchangeInformation];
  v22 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _foreignExchangeLineItemsForExchangeInfo:v21];

  v23 = [v22 lastObject];
  [v23 setHasTrailingLineSeperator:1];

  if ([v22 count])
  {
    [v8 addObjectsFromArray:v22];
  }

LABEL_15:
  if (v91)
  {
    v24 = [v91 lineItems];
    v25 = [v24 pk_arrayByApplyingBlock:&__block_literal_global_259];

    v26 = [v25 lastObject];
    [v26 setHasTrailingLineSeperator:1];

    [v8 addObjectsFromArray:v25];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v89 = [v91 summaryItems];
    v28 = [v91 subtotalCurrencyAmount];
    v29 = [v91 totalCurrencyAmount];
    v90 = v28;
    v88 = v29;
    if (v28)
    {
      v30 = v29;
      if (v29)
      {
        v31 = [v28 amount];
        v32 = [v30 amount];
        v33 = [v31 compare:v32];

        if (v33)
        {
          v34 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
          v35 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
          v36 = [v90 formattedStringValue];
          v37 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v34 initWithLabel:v35 value:v36];

          [(PKPaymentTransactionDetailAmountLineItemGeneric *)v37 setIsEmphasized:1];
          [v27 addObject:v37];
        }
      }
    }

    v38 = v89;
    if (v89)
    {
      v84 = v25;
      v85 = self;
      v86 = v10;
      v87 = v8;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v39 = v89;
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
          v45 = [v44 currencyAmount];
          v46 = [v45 formattedStringValue];

          v47 = [v44 type];
          v48 = 0;
          if (v47 <= 1)
          {
            if (!v47)
            {
              v54 = [v44 label];
              if (v54)
              {
LABEL_42:
                v56 = v54;
LABEL_45:
                v48 = v56;

                goto LABEL_51;
              }

              v55 = @"TRANSACTION_RECEIPT_OTHER";
LABEL_44:
              v56 = PKLocalizedPaymentString(&v55->isa);
              goto LABEL_45;
            }

            if (v47 == 1)
            {
              v52 = [v44 label];
              if (!v52)
              {
                if ([v91 state] == 2)
                {
                  v53 = @"TRANSACTION_RECEIPT_TAX";
                }

                else
                {
                  v53 = @"TRANSACTION_RECEIPT_ESTIMATED_TAX";
                }

                v52 = PKLocalizedPaymentString(&v53->isa);
              }

              v48 = v52;
            }
          }

          else
          {
            switch(v47)
            {
              case 2:
                v54 = [v44 label];
                if (v54)
                {
                  goto LABEL_42;
                }

                v55 = @"TRANSACTION_RECEIPT_SHIPPING";
                goto LABEL_44;
              case 3:
                v54 = [v44 label];
                if (v54)
                {
                  goto LABEL_42;
                }

                v55 = @"TRANSACTION_RECEIPT_FEE";
                goto LABEL_44;
              case 4:
                v49 = [v44 label];
                v50 = v49;
                if (v49)
                {
                  v51 = v49;
                }

                else
                {
                  v51 = PKLocalizedPaymentString(&cfstr_TransactionRec_5.isa);
                }

                v48 = v51;

                v57 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v46);

                v46 = v57;
                break;
            }
          }

LABEL_51:
          v58 = [[PKPaymentTransactionDetailAmountLineItemGeneric alloc] initWithLabel:v48 value:v46];
          [v27 addObject:v58];
        }

        v41 = [v39 countByEnumeratingWithState:&v95 objects:v99 count:16];
        if (!v41)
        {
LABEL_53:

          v8 = v87;
          self = v85;
          v10 = v86;
          v25 = v84;
          v38 = v89;
          break;
        }
      }
    }

    v59 = [v27 lastObject];
    [v59 setHasTrailingLineSeperator:1];

    if ([v27 count])
    {
      [v8 addObjectsFromArray:v27];
    }
  }

  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = [v7 nominalAmount];
  if (v61)
  {
    v62 = v61;
    v63 = [v7 amountModifiers];
    v64 = [v63 count];

    if (v64)
    {
      v65 = [PKPaymentTransactionDetailAmountLineItemGeneric alloc];
      v66 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
      v67 = [v7 nominalCurrencyAmount];
      v68 = [v67 formattedStringValue];
      v69 = [(PKPaymentTransactionDetailAmountLineItemGeneric *)v65 initWithLabel:v66 value:v68];

      [(PKPaymentTransactionDetailAmountLineItemGeneric *)v69 setIsEmphasized:0];
      [v60 addObject:v69];
      v70 = [v7 amountModifiers];
      v71 = [v70 count];
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __132__PKPaymentTransactionDetailAmountLineItemGenerator__lineItemsForPurchaseTransaction_transactionSourceCollection_associatedReceipt___block_invoke_2;
      v92[3] = &unk_1E8027110;
      v94 = v71 - 1;
      v72 = v60;
      v93 = v72;
      [v70 enumerateObjectsUsingBlock:v92];
      if ([v72 count])
      {
        [v8 addObjectsFromArray:v72];
      }
    }
  }

  v73 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:v7 isUnqualified:1];
  [v8 addObject:v73];
  v74 = [v7 rewards];

  if (v74)
  {
    v75 = [v7 rewards];
    v76 = [v7 rewardsTotalCurrencyCode];
    if (v76)
    {
      v77 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _rewardsLineItemsForRewards:v75 currencyCode:v76];
    }

    else
    {
      v78 = [v7 currencyCode];
      v79 = self;
      v80 = v78;
      v77 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)v79 _rewardsLineItemsForRewards:v75 currencyCode:v78];
    }

    v81 = [v77 lastObject];
    [v81 setHasTrailingLineSeperator:1];

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

- (id)_lineItemsForPeerPaymentTransaction:(id)a3 transactionSourceCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v6 fees];
  v10 = [v9 fees];
  v11 = [v10 allObjects];

  v12 = [v6 peerPaymentType];
  v13 = [v11 count];
  v14 = [v6 secondaryFundingSourceAmount];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 secondaryFundingSourceCurrencyCode];

    if (v16)
    {
      v17 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _primaryFundingSourceLineItemForTransaction:v6 transactionSourceCollection:v7];
      [v8 addObject:v17];
      v18 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _secondaryFundingSourceLineItemForTransaction:v6];
      [v18 setHasTrailingLineSeperator:1];
      [v8 addObject:v18];
    }
  }

  v19 = 0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalReceivedLineItemForTransaction:v6];
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_15;
      }

      v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalRequestedLineItemForTransaction:v6];
    }
  }

  else if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_15;
    }

    v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalSentLineItemForTransaction:v6];
  }

  else
  {
    v20 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _subtotalLineItemForTransaction:v6];
  }

  v19 = v20;
  if (v20)
  {
    [v8 addObject:v20];
  }

LABEL_15:
  if (v13)
  {
    v21 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _feeLineItemsForFees:v11];
    v22 = [v21 lastObject];
    [v22 setHasTrailingLineSeperator:1];

    [v8 addObjectsFromArray:v21];
    v23 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)self _totalPaidLineItemForTransaction:v6 isUnqualified:0];
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

- (id)_secondaryFundingSourceLineItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 secondaryFundingSourceAmount];
  v5 = [v3 secondaryFundingSourceCurrencyCode];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  v8 = [v3 secondaryFundingSourceFPANIdentifier];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [v9 passWithFPANIdentifier:v8];

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
  v19 = [v3 secondaryFundingSourceNetwork];
  v20 = [v3 secondaryFundingSourceDPANSuffix];
  v21 = [v3 secondaryFundingSourceDescription];
  v14 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)v18 initWithAmount:v7 credentialType:v19 dpanSuffix:v20 cardDescription:v21];

LABEL_13:

  return v14;
}

- (id)_primaryFundingSourceLineItemForTransaction:(id)a3 transactionSourceCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 primaryFundingSourceAmount];
  v8 = [v6 primaryFundingSourceCurrencyCode];

  v9 = 0;
  if (v7 && v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v7 currency:v8 exponent:0];
  }

  v10 = [[PKPaymentTransactionDetailAmountLineItemFundingSource alloc] initWithAmount:v9 transactionSourceCollection:v5];

  return v10;
}

- (id)_totalPaidLineItemForTransaction:(id)a3 isUnqualified:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 amount];
  v7 = [v5 currencyCode];

  v8 = 0;
  if (v6 && v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v6 currency:v7 exponent:0];
  }

  if (v4)
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

- (id)_totalTransferredItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 subtotalAmount];
  v5 = [v3 currencyCode];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  v8 = [v3 secondaryFundingSourceFPANIdentifier];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [v9 passWithFPANIdentifier:v8];

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

- (id)_totalSentLineItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 subtotalAmount];
  v5 = [v3 currencyCode];

  v6 = 0;
  if (v4 && v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:1];

  return v7;
}

- (id)_totalReceivedLineItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 amount];
  v5 = [v3 currencyCode];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  if (([v3 transactionStatus] & 0xFFFFFFFFFFFFFFFELL) == 6)
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

- (id)_totalRequestedLineItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 amount];
  v5 = [v3 currencyCode];

  v6 = 0;
  if (v4 && v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:7];

  return v7;
}

- (id)_subtotalLineItemForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 subtotalAmount];
  v5 = [v3 currencyCode];

  v6 = 0;
  if (v4 && v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v4 currency:v5 exponent:0];
  }

  v7 = [[PKPaymentTransactionDetailAmountLineItemTotal alloc] initWithAmount:v6 totalType:4];

  return v7;
}

- (id)_feeLineItemsForFees:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

- (id)_rewardsLineItemsForRewards:(id)a3 currencyCode:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47 = a4;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = [v5 totalEligibleValueForUnit:1];
  v44 = [MEMORY[0x1E696AB90] zero];
  v45 = [v5 promotionalRewardsItems];
  v41 = [v45 pk_hasObjectPassingTest:&__block_literal_global_379];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v5;
  v6 = [v5 rewardsItems];
  v7 = [v6 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v12 state];
        if (v13 != 3)
        {
          v14 = v13;
          if ([v12 eligibleValueUnit] == 1)
          {
            v15 = [v12 currencyAmount];

            if (v15)
            {
              v16 = [v12 currencyAmount];
              v17 = [v16 amount];
              v18 = [(NSDecimalNumber *)v44 decimalNumberByAdding:v17];

              v44 = v18;
            }
          }

          v9 |= v14 == 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v19 = [MEMORY[0x1E696AB90] zero];
  v20 = [v43 isEqualToNumber:v19];

  if ((v20 & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AB90] zero];
    v22 = [(NSDecimalNumber *)v44 isEqualToNumber:v21];

    v23 = 0;
    if (v47 && (v22 & 1) == 0)
    {
      v23 = PKCurrencyAmountCreate(v44, v47);
    }

    v24 = [[PKPaymentTransactionDetailAmountLineItemRewards alloc] initWithRewardsValueUnit:1 eligibleValue:v43 isEligible:v9 & 1 totalAmount:v23 hasPromotionalReward:v41 promotionName:0];
    [v46 addObject:v24];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = [v42 rewardsItems];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v48 + 1) + 8 * j);
        if ([v30 eligibleValueUnit] == 2)
        {
          v31 = [v30 state];
          v32 = [v30 eligibleValue];
          v33 = PKCurrencyAmountCreate(v32, v47);

          v34 = [PKPaymentTransactionDetailAmountLineItemRewards alloc];
          v35 = [v30 eligibleValue];
          v36 = [v45 containsObject:v30];
          v37 = [v30 promotionName];
          v38 = [(PKPaymentTransactionDetailAmountLineItemRewards *)v34 initWithRewardsValueUnit:2 eligibleValue:v35 isEligible:v31 == 1 totalAmount:v33 hasPromotionalReward:v36 promotionName:v37];
          [v46 addObject:v38];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v27);
  }

  v39 = [v46 copy];

  return v39;
}

- (id)_foreignExchangeLineItemsForExchangeInfo:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[PKPaymentTransactionDetailAmountLineItemForeignExchange alloc] initWithForeignExchangeInformation:v3 type:0];
  v5 = [[PKPaymentTransactionDetailAmountLineItemForeignExchange alloc] initWithForeignExchangeInformation:v3 type:1];

  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

@end