@interface PKPaymentTransactionDetailAmountLineItemFundingSource
- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)a3 credentialType:(int64_t)a4 dpanSuffix:(id)a5 cardDescription:(id)a6;
- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)a3 transactionSourceCollection:(id)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineItemFundingSource

- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)a3 transactionSourceCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemFundingSource;
  v8 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)&v16 init];
  if (v8)
  {
    v9 = [v6 formattedStringValue];
    value = v8->_value;
    v8->_value = v9;

    v11 = [v7 paymentPass];
    v12 = [v11 localizedDescription];

    if ([v12 length])
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_77.isa, &stru_1F3BD5BF0.isa, v12);
    }

    else
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_78.isa);
    }
    v13 = ;
    label = v8->_label;
    v8->_label = v13;
  }

  return v8;
}

- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)a3 credentialType:(int64_t)a4 dpanSuffix:(id)a5 cardDescription:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = PKPaymentTransactionDetailAmountLineItemFundingSource;
  v12 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)&v22 init];
  if (v12)
  {
    v13 = [v9 formattedStringValue];
    value = v12->_value;
    v12->_value = v13;

    if ([v11 length])
    {
      v15 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_77.isa, &stru_1F3BD5BF0.isa, v11);
LABEL_14:
      label = v12->_label;
      v12->_label = v15;

      goto LABEL_15;
    }

    v16 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    if ([v16 length] && objc_msgSend(v10, "length"))
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_79.isa, &stru_1F3BD6370.isa, v16, v10);
    }

    else
    {
      if ([v16 length])
      {
        v21 = v16;
        v17 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FUNDING_SOURCE_CARD_NETWORK_FORMAT_STRING";
      }

      else
      {
        if (![v10 length])
        {
          v18 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_82.isa);
          goto LABEL_13;
        }

        v21 = v10;
        v17 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FUNDING_SOURCE_DPAN_SUFFIX_FORMAT_STRING";
      }

      PKLocalizedPeerPaymentString(&v17->isa, &stru_1F3BD5BF0.isa, v21);
    }
    v18 = ;
LABEL_13:
    v15 = v18;

    goto LABEL_14;
  }

LABEL_15:

  return v12;
}

@end