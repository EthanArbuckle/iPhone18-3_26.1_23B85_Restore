@interface PKPaymentTransactionDetailAmountLineItemForeignExchange
- (PKPaymentTransactionDetailAmountLineItemForeignExchange)initWithForeignExchangeInformation:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineItemForeignExchange

- (PKPaymentTransactionDetailAmountLineItemForeignExchange)initWithForeignExchangeInformation:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemForeignExchange;
  v7 = [(PKPaymentTransactionDetailAmountLineItemForeignExchange *)&v16 init];
  if (v7)
  {
    if (a4 == 1)
    {
      v8 = PKLocalizedFeatureString();
      v9 = [v6 exchangeRate];
      v10 = PKFormattedStringSignificantDigitsFromNumber();
    }

    else
    {
      if (a4)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_8;
      }

      v8 = PKLocalizedFeatureString();
      v9 = [v6 destinationCurrencyAmount];
      v10 = [v9 formattedStringValue];
    }

    v11 = v10;

LABEL_8:
    label = v7->_label;
    v7->_label = v8;
    v13 = v8;

    value = v7->_value;
    v7->_value = v11;
  }

  return v7;
}

@end