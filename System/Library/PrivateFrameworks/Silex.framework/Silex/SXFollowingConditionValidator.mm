@interface SXFollowingConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXFollowingConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 following];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 tagIdentifier];

    v9 = [v5 tagSubscriptionStatus];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 tags];
      v12 = [v7 tagIdentifier];
      v13 = [v11 containsObject:v12];
    }

    else
    {
      v14 = [v9 following];
      v15 = v14 ^ [v7 following];

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