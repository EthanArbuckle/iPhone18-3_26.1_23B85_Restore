@interface PKPaymentTransactionDetailAmountLineItemTransferSource
- (PKPaymentTransactionDetailAmountLineItemTransferSource)initWithAmount:(id)amount transactionSourceCollection:(id)collection;
@end

@implementation PKPaymentTransactionDetailAmountLineItemTransferSource

- (PKPaymentTransactionDetailAmountLineItemTransferSource)initWithAmount:(id)amount transactionSourceCollection:(id)collection
{
  amountCopy = amount;
  collectionCopy = collection;
  v18.receiver = self;
  v18.super_class = PKPaymentTransactionDetailAmountLineItemTransferSource;
  v8 = [(PKPaymentTransactionDetailAmountLineItemTransferSource *)&v18 init];
  if (v8)
  {
    formattedStringValue = [amountCopy formattedStringValue];
    value = v8->_value;
    v8->_value = formattedStringValue;

    paymentPass = [collectionCopy paymentPass];
    v12 = paymentPass;
    if (paymentPass)
    {
      localizedDescription = [paymentPass localizedDescription];
      v14 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_87.isa, &stru_1F3BD5BF0.isa, localizedDescription);
      label = v8->_label;
      v8->_label = v14;
    }

    else
    {
      v16 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_88.isa);
      localizedDescription = v8->_label;
      v8->_label = v16;
    }
  }

  return v8;
}

@end