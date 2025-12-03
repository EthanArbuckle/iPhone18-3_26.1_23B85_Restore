@interface PKInstallmentPlanDetailLineItem
- (PKInstallmentPlanDetailLineItem)initWithLineItem:(id)item currencyCode:(id)code;
@end

@implementation PKInstallmentPlanDetailLineItem

- (PKInstallmentPlanDetailLineItem)initWithLineItem:(id)item currencyCode:(id)code
{
  itemCopy = item;
  codeCopy = code;
  v24.receiver = self;
  v24.super_class = PKInstallmentPlanDetailLineItem;
  v8 = [(PKInstallmentPlanDetailLineItem *)&v24 init];
  if (v8)
  {
    type = [itemCopy type];
    state = [itemCopy state];
    amount = [itemCopy amount];

    v12 = 0;
    if (codeCopy && amount)
    {
      amount2 = [itemCopy amount];
      v12 = PKCurrencyAmountCreate(amount2, codeCopy);
    }

    v14 = 0;
    if (type <= 2)
    {
      if (!type)
      {
LABEL_17:
        itemDescription = [itemCopy itemDescription];
        if (!itemDescription)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (type == 1)
      {
        itemDescription = [itemCopy itemDescription];
        if (!itemDescription)
        {
LABEL_24:
          v17 = PKLocalizedFeatureString();
          goto LABEL_25;
        }

LABEL_23:
        v17 = itemDescription;
LABEL_25:
        v14 = v17;

        goto LABEL_26;
      }

      if (type != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (type > 4)
      {
        if (type == 5)
        {
          v14 = PKLocalizedFeatureString();
          if (state == 3)
          {
LABEL_27:
            formattedStringValue = PKLocalizedFeatureString();
LABEL_29:
            v19 = formattedStringValue;
            label = v8->_label;
            v8->_label = v14;
            v21 = v14;

            value = v8->_value;
            v8->_value = v19;

            goto LABEL_30;
          }

          negativeValue = [v12 negativeValue];

          v12 = negativeValue;
LABEL_28:
          formattedStringValue = [v12 formattedStringValue];
          goto LABEL_29;
        }

        if (type != 6)
        {
LABEL_26:
          if (state == 3)
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        itemDescription = [itemCopy itemDescription];
        if (!itemDescription)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (type != 3)
      {
        goto LABEL_17;
      }
    }

    v14 = PKLocalizedFeatureString();
    goto LABEL_26;
  }

LABEL_30:

  return v8;
}

@end