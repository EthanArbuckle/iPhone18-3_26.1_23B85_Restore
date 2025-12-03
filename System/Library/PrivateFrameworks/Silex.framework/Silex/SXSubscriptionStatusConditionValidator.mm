@interface SXSubscriptionStatusConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXSubscriptionStatusConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  subscriptionStatus = [conditionCopy subscriptionStatus];

  if (subscriptionStatus)
  {
    subscriptionStatus2 = [conditionCopy subscriptionStatus];
    v9 = [subscriptionStatus2 isEqualToString:@"bundle"];

    if (v9)
    {
      isBundleSubscriber = [contextCopy isBundleSubscriber];
    }

    else
    {
      subscriptionStatus3 = [conditionCopy subscriptionStatus];
      v13 = [subscriptionStatus3 isEqualToString:@"subscribed"];

      if (v13)
      {
        isBundleSubscriber = [contextCopy isChannelSubscriber];
      }

      else
      {
        subscriptionStatus4 = [conditionCopy subscriptionStatus];
        v15 = [subscriptionStatus4 isEqualToString:@"bundle_trial_eligible"];

        if (!v15)
        {
          v11 = 0;
          goto LABEL_10;
        }

        isBundleSubscriber = [contextCopy isBundleTrialEligible];
      }
    }

    v11 = isBundleSubscriber;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:

  return v11;
}

@end