@interface PKPaymentTransactionDetailAmountLineItemFee
- (PKPaymentTransactionDetailAmountLineItemFee)initWithFeeItem:(id)item;
@end

@implementation PKPaymentTransactionDetailAmountLineItemFee

- (PKPaymentTransactionDetailAmountLineItemFee)initWithFeeItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionDetailAmountLineItemFee;
  v5 = [(PKPaymentTransactionDetailAmountLineItemFee *)&v17 init];
  if (v5)
  {
    currencyAmount = [itemCopy currencyAmount];
    formattedStringValue = [currencyAmount formattedStringValue];
    value = v5->_value;
    v5->_value = formattedStringValue;

    localizedDisplayName = [itemCopy localizedDisplayName];
    if ([localizedDisplayName length])
    {
      v10 = localizedDisplayName;
LABEL_19:
      label = v5->_label;
      v5->_label = v10;
      v15 = v10;

      goto LABEL_20;
    }

    type = [itemCopy type];
    v10 = 0;
    if (type > 2)
    {
      if (type == 3)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_SERVICE_CHARGE";
        goto LABEL_16;
      }

      if (type == 4)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_INSTANT_WITHDRAWAL";
        goto LABEL_16;
      }

      if (type != 100)
      {
        goto LABEL_17;
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        v12 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_FEE_DESCRIPTION_CREDIT_CARD";
      }

      else
      {
        if (type != 2)
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