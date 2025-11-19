@interface SXSubscriptionActivationEligibilityConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXSubscriptionActivationEligibilityConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 subscriptionActivationEligibility])
  {
    goto LABEL_4;
  }

  if ([v5 subscriptionActivationEligibility] == 2)
  {
    if ([v6 subscriptionActivationEligibility] == 3)
    {
LABEL_4:
      v7 = 1;
      goto LABEL_10;
    }

    v9 = [v6 subscriptionActivationEligibility] == 4;
  }

  else
  {
    v8 = [v5 subscriptionActivationEligibility];
    v9 = v8 == [v6 subscriptionActivationEligibility];
  }

  v7 = v9;
LABEL_10:

  return v7;
}

@end