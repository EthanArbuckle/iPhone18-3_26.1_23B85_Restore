@interface PKPaymentTransactionDetailAmountLineItemPaymentTotal
- (PKPaymentTransactionDetailAmountLineItemPaymentTotal)initWithAmount:(id)amount;
@end

@implementation PKPaymentTransactionDetailAmountLineItemPaymentTotal

- (PKPaymentTransactionDetailAmountLineItemPaymentTotal)initWithAmount:(id)amount
{
  amountCopy = amount;
  amount = [amountCopy amount];
  pk_absoluteValue = [amount pk_absoluteValue];
  currency = [amountCopy currency];

  v8 = PKCurrencyAmountCreate(pk_absoluteValue, currency);

  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemPaymentTotal;
  v9 = [(PKPaymentTransactionDetailAmountLineItemPaymentTotal *)&v16 init];
  if (v9)
  {
    v10 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_85.isa);
    label = v9->_label;
    v9->_label = v10;

    formattedStringValue = [v8 formattedStringValue];
    v13 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
    value = v9->_value;
    v9->_value = v13;
  }

  return v9;
}

@end