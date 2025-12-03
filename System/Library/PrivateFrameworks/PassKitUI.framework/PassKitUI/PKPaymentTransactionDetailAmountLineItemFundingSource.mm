@interface PKPaymentTransactionDetailAmountLineItemFundingSource
- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)amount credentialType:(int64_t)type dpanSuffix:(id)suffix cardDescription:(id)description;
- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)amount transactionSourceCollection:(id)collection;
@end

@implementation PKPaymentTransactionDetailAmountLineItemFundingSource

- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)amount transactionSourceCollection:(id)collection
{
  amountCopy = amount;
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemFundingSource;
  v8 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)&v16 init];
  if (v8)
  {
    formattedStringValue = [amountCopy formattedStringValue];
    value = v8->_value;
    v8->_value = formattedStringValue;

    paymentPass = [collectionCopy paymentPass];
    localizedDescription = [paymentPass localizedDescription];

    if ([localizedDescription length])
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_77.isa, &stru_1F3BD5BF0.isa, localizedDescription);
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

- (PKPaymentTransactionDetailAmountLineItemFundingSource)initWithAmount:(id)amount credentialType:(int64_t)type dpanSuffix:(id)suffix cardDescription:(id)description
{
  amountCopy = amount;
  suffixCopy = suffix;
  descriptionCopy = description;
  v22.receiver = self;
  v22.super_class = PKPaymentTransactionDetailAmountLineItemFundingSource;
  v12 = [(PKPaymentTransactionDetailAmountLineItemFundingSource *)&v22 init];
  if (v12)
  {
    formattedStringValue = [amountCopy formattedStringValue];
    value = v12->_value;
    v12->_value = formattedStringValue;

    if ([descriptionCopy length])
    {
      v15 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_77.isa, &stru_1F3BD5BF0.isa, descriptionCopy);
LABEL_14:
      label = v12->_label;
      v12->_label = v15;

      goto LABEL_15;
    }

    v16 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    if ([v16 length] && objc_msgSend(suffixCopy, "length"))
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_79.isa, &stru_1F3BD6370.isa, v16, suffixCopy);
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
        if (![suffixCopy length])
        {
          v18 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_82.isa);
          goto LABEL_13;
        }

        v21 = suffixCopy;
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