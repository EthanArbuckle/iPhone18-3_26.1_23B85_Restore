@interface PKPaymentTransactionDetailAmountLineItemRewards
- (PKPaymentTransactionDetailAmountLineItemRewards)initWithRewardsValueUnit:(unint64_t)unit eligibleValue:(id)value isEligible:(BOOL)eligible totalAmount:(id)amount hasPromotionalReward:(BOOL)reward promotionName:(id)name;
@end

@implementation PKPaymentTransactionDetailAmountLineItemRewards

- (PKPaymentTransactionDetailAmountLineItemRewards)initWithRewardsValueUnit:(unint64_t)unit eligibleValue:(id)value isEligible:(BOOL)eligible totalAmount:(id)amount hasPromotionalReward:(BOOL)reward promotionName:(id)name
{
  eligibleCopy = eligible;
  valueCopy = value;
  amountCopy = amount;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = PKPaymentTransactionDetailAmountLineItemRewards;
  v16 = [(PKPaymentTransactionDetailAmountLineItemRewards *)&v26 init];
  if (v16)
  {
    if (unit && unit != 2)
    {
      if (unit != 1)
      {
        v20 = 0;
        goto LABEL_17;
      }

      v17 = PKFormattedStringMinimalFractionDigitsFromNumber();
      if (eligibleCopy)
      {
        v20 = PKLocalizedFeatureString();

LABEL_17:
        formattedStringValue = 0;
        goto LABEL_18;
      }

      v25 = v17;
      v20 = PKLocalizedFeatureString();

LABEL_16:
      formattedStringValue = [amountCopy formattedStringValue];
LABEL_18:
      label = v16->_label;
      v16->_label = v20;
      v22 = v20;

      value = v16->_value;
      v16->_value = formattedStringValue;

      goto LABEL_19;
    }

    if (eligibleCopy)
    {
      if (nameCopy)
      {
        goto LABEL_11;
      }
    }

    else if (nameCopy)
    {
LABEL_11:
      v25 = nameCopy;
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