@interface SXSubscriptionStatusConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXSubscriptionStatusConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 subscriptionStatus];

  if (v7)
  {
    v8 = [v5 subscriptionStatus];
    v9 = [v8 isEqualToString:@"bundle"];

    if (v9)
    {
      v10 = [v6 isBundleSubscriber];
    }

    else
    {
      v12 = [v5 subscriptionStatus];
      v13 = [v12 isEqualToString:@"subscribed"];

      if (v13)
      {
        v10 = [v6 isChannelSubscriber];
      }

      else
      {
        v14 = [v5 subscriptionStatus];
        v15 = [v14 isEqualToString:@"bundle_trial_eligible"];

        if (!v15)
        {
          v11 = 0;
          goto LABEL_10;
        }

        v10 = [v6 isBundleTrialEligible];
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:

  return v11;
}

@end