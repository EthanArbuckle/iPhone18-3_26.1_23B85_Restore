@interface PKPaymentTransactionDetailAmountLineItemForeignExchange
- (PKPaymentTransactionDetailAmountLineItemForeignExchange)initWithForeignExchangeInformation:(id)information type:(unint64_t)type;
@end

@implementation PKPaymentTransactionDetailAmountLineItemForeignExchange

- (PKPaymentTransactionDetailAmountLineItemForeignExchange)initWithForeignExchangeInformation:(id)information type:(unint64_t)type
{
  informationCopy = information;
  v16.receiver = self;
  v16.super_class = PKPaymentTransactionDetailAmountLineItemForeignExchange;
  v7 = [(PKPaymentTransactionDetailAmountLineItemForeignExchange *)&v16 init];
  if (v7)
  {
    if (type == 1)
    {
      v8 = PKLocalizedFeatureString();
      exchangeRate = [informationCopy exchangeRate];
      formattedStringValue = PKFormattedStringSignificantDigitsFromNumber();
    }

    else
    {
      if (type)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_8;
      }

      v8 = PKLocalizedFeatureString();
      exchangeRate = [informationCopy destinationCurrencyAmount];
      formattedStringValue = [exchangeRate formattedStringValue];
    }

    v11 = formattedStringValue;

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