@interface PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment
- (PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment)initWithAssociatedTransaction:(id)transaction;
@end

@implementation PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment

- (PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment)initWithAssociatedTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12.receiver = self;
  v12.super_class = PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment;
  v5 = [(PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment *)&v12 init];
  if (v5)
  {
    [transactionCopy featureIdentifier];
    v6 = PKLocalizedFeatureString();
    label = v5->_label;
    v5->_label = v6;

    currencyAmount = [transactionCopy currencyAmount];
    formattedStringValue = [currencyAmount formattedStringValue];
    value = v5->_value;
    v5->_value = formattedStringValue;
  }

  return v5;
}

@end