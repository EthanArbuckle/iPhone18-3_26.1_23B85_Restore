@interface SXNewsletterConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXNewsletterConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  if ([conditionCopy newsletterSubscriptionStatus])
  {
    if ([conditionCopy newsletterSubscriptionStatus] == 1)
    {
      v7 = 0;
    }

    else
    {
      newsletterSubscriptionStatus = [conditionCopy newsletterSubscriptionStatus];
      v7 = newsletterSubscriptionStatus == [contextCopy newsletterSubscriptionStatus];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end