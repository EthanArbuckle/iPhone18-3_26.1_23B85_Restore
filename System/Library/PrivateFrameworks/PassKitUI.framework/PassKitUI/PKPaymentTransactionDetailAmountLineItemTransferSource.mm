@interface PKPaymentTransactionDetailAmountLineItemTransferSource
- (PKPaymentTransactionDetailAmountLineItemTransferSource)initWithAmount:(id)a3 transactionSourceCollection:(id)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineItemTransferSource

- (PKPaymentTransactionDetailAmountLineItemTransferSource)initWithAmount:(id)a3 transactionSourceCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PKPaymentTransactionDetailAmountLineItemTransferSource;
  v8 = [(PKPaymentTransactionDetailAmountLineItemTransferSource *)&v18 init];
  if (v8)
  {
    v9 = [v6 formattedStringValue];
    value = v8->_value;
    v8->_value = v9;

    v11 = [v7 paymentPass];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 localizedDescription];
      v14 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_87.isa, &stru_1F3BD5BF0.isa, v13);
      label = v8->_label;
      v8->_label = v14;
    }

    else
    {
      v16 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_88.isa);
      v13 = v8->_label;
      v8->_label = v16;
    }
  }

  return v8;
}

@end