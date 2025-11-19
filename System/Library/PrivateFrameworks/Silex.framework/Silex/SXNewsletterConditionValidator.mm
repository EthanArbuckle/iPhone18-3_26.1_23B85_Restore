@interface SXNewsletterConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXNewsletterConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 newsletterSubscriptionStatus])
  {
    if ([v5 newsletterSubscriptionStatus] == 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v5 newsletterSubscriptionStatus];
      v7 = v8 == [v6 newsletterSubscriptionStatus];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end