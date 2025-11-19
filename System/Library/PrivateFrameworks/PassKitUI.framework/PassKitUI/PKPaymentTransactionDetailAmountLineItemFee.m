@interface PKPaymentTransactionDetailAmountLineItemFee
- (PKPaymentTransactionDetailAmountLineItemFee)initWithFeeItem:(id)a3;
@end

@implementation PKPaymentTransactionDetailAmountLineItemFee

- (PKPaymentTransactionDetailAmountLineItemFee)initWithFeeItem:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionDetailAmountLineItemFee;
  v5 = [(PKPaymentTransactionDetailAmountLineItemFee *)&v17 init];
  if (v5)
  {
    v6 = [v4 currencyAmount];
    v7 = [v6 formattedStringValue];
    value = v5->_value;
    v5->_value = v7;

    v9 = [v4 localizedDisplayName];
    if ([v9 length])
    {
      v10 = v9;
LABEL_19:
      label = v5->_label;
      v5->_label = v10;
      v15 = v10;

      goto LABEL_20;
    }

    v11 = [v4 type];
    v10 = 0;
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_SERVICE_CHARGE";
        goto LABEL_16;
      }

      if (v11 == 4)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_INSTANT_WITHDRAWAL";
        goto LABEL_16;
      }

      if (v11 != 100)
      {
        goto LABEL_17;
      }
    }

    else if (v11)
    {
      if (v11 == 1)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_CREDIT_CARD";
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_17;
        }

        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_FOREIGN_TRANSACTION";
      }

      goto LABEL_16;
    }

    v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_GENERIC";
LABEL_16:
    v10 = PKLocalizedPeerPaymentString(&v12->isa);
LABEL_17:
    if (![(NSString *)v10 length])
    {
      v13 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_76.isa);

      v10 = v13;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v5;
}

@end