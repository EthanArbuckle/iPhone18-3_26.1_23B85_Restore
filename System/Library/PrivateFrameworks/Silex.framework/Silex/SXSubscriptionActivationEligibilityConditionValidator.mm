@interface SXSubscriptionActivationEligibilityConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXSubscriptionActivationEligibilityConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  if (![conditionCopy subscriptionActivationEligibility])
  {
    goto LABEL_4;
  }

  if ([conditionCopy subscriptionActivationEligibility] == 2)
  {
    if ([contextCopy subscriptionActivationEligibility] == 3)
    {
LABEL_4:
      v7 = 1;
      goto LABEL_10;
    }

    v9 = [contextCopy subscriptionActivationEligibility] == 4;
  }

  else
  {
    subscriptionActivationEligibility = [conditionCopy subscriptionActivationEligibility];
    v9 = subscriptionActivationEligibility == [contextCopy subscriptionActivationEligibility];
  }

  v7 = v9;
LABEL_10:

  return v7;
}

@end