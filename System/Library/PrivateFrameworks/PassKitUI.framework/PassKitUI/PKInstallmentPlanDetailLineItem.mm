@interface PKInstallmentPlanDetailLineItem
- (PKInstallmentPlanDetailLineItem)initWithLineItem:(id)a3 currencyCode:(id)a4;
@end

@implementation PKInstallmentPlanDetailLineItem

- (PKInstallmentPlanDetailLineItem)initWithLineItem:(id)a3 currencyCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PKInstallmentPlanDetailLineItem;
  v8 = [(PKInstallmentPlanDetailLineItem *)&v24 init];
  if (v8)
  {
    v9 = [v6 type];
    v10 = [v6 state];
    v11 = [v6 amount];

    v12 = 0;
    if (v7 && v11)
    {
      v13 = [v6 amount];
      v12 = PKCurrencyAmountCreate(v13, v7);
    }

    v14 = 0;
    if (v9 <= 2)
    {
      if (!v9)
      {
LABEL_17:
        v15 = [v6 itemDescription];
        if (!v15)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v9 == 1)
      {
        v15 = [v6 itemDescription];
        if (!v15)
        {
LABEL_24:
          v17 = PKLocalizedFeatureString();
          goto LABEL_25;
        }

LABEL_23:
        v17 = v15;
LABEL_25:
        v14 = v17;

        goto LABEL_26;
      }

      if (v9 != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v9 > 4)
      {
        if (v9 == 5)
        {
          v14 = PKLocalizedFeatureString();
          if (v10 == 3)
          {
LABEL_27:
            v18 = PKLocalizedFeatureString();
LABEL_29:
            v19 = v18;
            label = v8->_label;
            v8->_label = v14;
            v21 = v14;

            value = v8->_value;
            v8->_value = v19;

            goto LABEL_30;
          }

          v16 = [v12 negativeValue];

          v12 = v16;
LABEL_28:
          v18 = [v12 formattedStringValue];
          goto LABEL_29;
        }

        if (v9 != 6)
        {
LABEL_26:
          if (v10 == 3)
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        v15 = [v6 itemDescription];
        if (!v15)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v9 != 3)
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