@interface PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment
- (PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment)initWithAssociatedTransaction:(id)a3;
@end

@implementation PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment

- (PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment)initWithAssociatedTransaction:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment;
  v5 = [(PKPaymentTransactionDetailAmountLineItemDailyCashAdjustment *)&v12 init];
  if (v5)
  {
    [v4 featureIdentifier];
    v6 = PKLocalizedFeatureString();
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 currencyAmount];
    v9 = [v8 formattedStringValue];
    value = v5->_value;
    v5->_value = v9;
  }

  return v5;
}

@end