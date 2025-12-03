@interface PKPaymentTransactionDetailAmountLineItemTotal
- (PKPaymentTransactionDetailAmountLineItemTotal)initWithAmount:(id)amount totalType:(unint64_t)type;
@end

@implementation PKPaymentTransactionDetailAmountLineItemTotal

- (PKPaymentTransactionDetailAmountLineItemTotal)initWithAmount:(id)amount totalType:(unint64_t)type
{
  amountCopy = amount;
  v19.receiver = self;
  v19.super_class = PKPaymentTransactionDetailAmountLineItemTotal;
  v7 = [(PKPaymentTransactionDetailAmountLineItemTotal *)&v19 init];
  if (v7)
  {
    amount = [amountCopy amount];
    pk_isNegativeNumber = [amount pk_isNegativeNumber];

    if (pk_isNegativeNumber)
    {
      negativeValue = [amountCopy negativeValue];

      formattedStringValue = [negativeValue formattedStringValue];
      v12 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
      value = v7->_value;
      v7->_value = v12;

      amountCopy = negativeValue;
    }

    else
    {
      formattedStringValue2 = [amountCopy formattedStringValue];
      formattedStringValue = v7->_value;
      v7->_value = formattedStringValue2;
    }

    v15 = 0;
    if (type > 3)
    {
      if (type > 5)
      {
        if (type == 6)
        {
          v15 = PKLocalizedFeatureString();
          goto LABEL_22;
        }

        if (type == 7)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_REQUEST";
          goto LABEL_21;
        }
      }

      else
      {
        if (type == 4)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_UNQUALIFIED_TOTAL";
          goto LABEL_21;
        }

        v15 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
      }
    }

    else
    {
      if (type > 1)
      {
        if (type == 2)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_RECEIVED";
        }

        else
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_NOT_ACCEPTED";
        }

        goto LABEL_21;
      }

      if (!type)
      {
        v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_PAID";
        goto LABEL_21;
      }

      if (type == 1)
      {
        v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_SENT";
LABEL_21:
        v15 = PKLocalizedPeerPaymentString(&v16->isa);
      }
    }

LABEL_22:
    label = v7->_label;
    v7->_label = v15;
  }

  return v7;
}

@end