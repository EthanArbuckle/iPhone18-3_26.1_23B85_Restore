@interface SXOfferIdentifierConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXOfferIdentifierConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 offerIdentifier];

  if (v7)
  {
    v8 = [v5 offerIdentifier];
    v9 = [v6 offerIdentifier];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end