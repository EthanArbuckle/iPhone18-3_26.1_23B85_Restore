@interface PKPaymentTransactionDetailAmountLineItemRewards
- (PKPaymentTransactionDetailAmountLineItemRewards)initWithRewardsValueUnit:(unint64_t)a3 eligibleValue:(id)a4 isEligible:(BOOL)a5 totalAmount:(id)a6 hasPromotionalReward:(BOOL)a7 promotionName:(id)a8;
@end

@implementation PKPaymentTransactionDetailAmountLineItemRewards

- (PKPaymentTransactionDetailAmountLineItemRewards)initWithRewardsValueUnit:(unint64_t)a3 eligibleValue:(id)a4 isEligible:(BOOL)a5 totalAmount:(id)a6 hasPromotionalReward:(BOOL)a7 promotionName:(id)a8
{
  v10 = a5;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v26.receiver = self;
  v26.super_class = PKPaymentTransactionDetailAmountLineItemRewards;
  v16 = [(PKPaymentTransactionDetailAmountLineItemRewards *)&v26 init];
  if (v16)
  {
    if (a3 && a3 != 2)
    {
      if (a3 != 1)
      {
        v20 = 0;
        goto LABEL_17;
      }

      v17 = PKFormattedStringMinimalFractionDigitsFromNumber();
      if (v10)
      {
        v20 = PKLocalizedFeatureString();

LABEL_17:
        v19 = 0;
        goto LABEL_18;
      }

      v25 = v17;
      v20 = PKLocalizedFeatureString();

LABEL_16:
      v19 = [v14 formattedStringValue];
LABEL_18:
      label = v16->_label;
      v16->_label = v20;
      v22 = v20;

      value = v16->_value;
      v16->_value = v19;

      goto LABEL_19;
    }

    if (v10)
    {
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else if (v15)
    {
LABEL_11:
      v25 = v15;
      v18 = PKLocalizedFeatureString();
LABEL_15:
      v20 = v18;
      goto LABEL_16;
    }

    v18 = PKLocalizedFeatureString();
    goto LABEL_15;
  }

LABEL_19:

  return v16;
}

@end