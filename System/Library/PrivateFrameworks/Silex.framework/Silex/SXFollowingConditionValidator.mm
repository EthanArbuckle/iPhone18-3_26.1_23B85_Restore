@interface SXFollowingConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXFollowingConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  contextCopy = context;
  following = [condition following];
  v7 = following;
  if (following)
  {
    tagIdentifier = [following tagIdentifier];

    tagSubscriptionStatus = [contextCopy tagSubscriptionStatus];
    v10 = tagSubscriptionStatus;
    if (tagIdentifier)
    {
      tags = [tagSubscriptionStatus tags];
      tagIdentifier2 = [v7 tagIdentifier];
      v13 = [tags containsObject:tagIdentifier2];
    }

    else
    {
      following2 = [tagSubscriptionStatus following];
      v15 = following2 ^ [v7 following];

      v13 = v15 ^ 1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end