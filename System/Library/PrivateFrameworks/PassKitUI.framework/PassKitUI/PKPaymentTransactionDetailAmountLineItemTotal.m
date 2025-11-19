@interface PKPaymentTransactionDetailAmountLineItemTotal
- (PKPaymentTransactionDetailAmountLineItemTotal)initWithAmount:(id)a3 totalType:(unint64_t)a4;
@end

@implementation PKPaymentTransactionDetailAmountLineItemTotal

- (PKPaymentTransactionDetailAmountLineItemTotal)initWithAmount:(id)a3 totalType:(unint64_t)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PKPaymentTransactionDetailAmountLineItemTotal;
  v7 = [(PKPaymentTransactionDetailAmountLineItemTotal *)&v19 init];
  if (v7)
  {
    v8 = [v6 amount];
    v9 = [v8 pk_isNegativeNumber];

    if (v9)
    {
      v10 = [v6 negativeValue];

      v11 = [v10 formattedStringValue];
      v12 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v11);
      value = v7->_value;
      v7->_value = v12;

      v6 = v10;
    }

    else
    {
      v14 = [v6 formattedStringValue];
      v11 = v7->_value;
      v7->_value = v14;
    }

    v15 = 0;
    if (a4 > 3)
    {
      if (a4 > 5)
      {
        if (a4 == 6)
        {
          v15 = PKLocalizedFeatureString();
          goto LABEL_22;
        }

        if (a4 == 7)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_REQUEST";
          goto LABEL_21;
        }
      }

      else
      {
        if (a4 == 4)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_UNQUALIFIED_TOTAL";
          goto LABEL_21;
        }

        v15 = PKLocalizedPaymentString(&cfstr_Subtotal_0.isa);
      }
    }

    else
    {
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_RECEIVED";
        }

        else
        {
          v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_NOT_ACCEPTED";
        }

        goto LABEL_21;
      }

      if (!a4)
      {
        v16 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_PAID";
        goto LABEL_21;
      }

      if (a4 == 1)
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