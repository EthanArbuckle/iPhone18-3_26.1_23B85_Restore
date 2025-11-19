@interface PKPaymentTransactionDetailAmountLineItemPaymentTotal
- (PKPaymentTransactionDetailAmountLineItemPaymentTotal)initWithAmount:(id)a3;
@end

@implementation PKPaymentTransactionDetailAmountLineItemPaymentTotal

- (PKPaymentTransactionDetailAmountLineItemPaymentTotal)initWithAmount:(id)a3
{
  v4 = a3;
  v5 = [v4 amount];
  v6 = [v5 pk_absoluteValue];
  v7 = [v4 currency];

  v8 = PKCurrencyAmountCreate(v6, v7);

  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemPaymentTotal;
  v9 = [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)&v16 init];
  if (v9)
  {
    v10 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_85.isa);
    label = v9->_label;
    v9->_label = v10;

    v12 = [v8 formattedStringValue];
    v13 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v12);
    value = v9->_value;
    v9->_value = v13;
  }

  return v9;
}

@end