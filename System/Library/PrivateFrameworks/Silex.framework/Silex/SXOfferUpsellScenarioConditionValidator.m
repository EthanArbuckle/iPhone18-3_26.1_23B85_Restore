@interface SXOfferUpsellScenarioConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXOfferUpsellScenarioConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 offerUpsellScenario] == 1)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (![v5 offerUpsellScenario])
  {
LABEL_9:
    v7 = 1;
    goto LABEL_14;
  }

  if ([v5 offerUpsellScenario] == 4)
  {
    if ([v6 offerUpsellScenario] == 5 || objc_msgSend(v6, "offerUpsellScenario") == 6 || objc_msgSend(v6, "offerUpsellScenario") == 9 || objc_msgSend(v6, "offerUpsellScenario") == 8)
    {
      goto LABEL_9;
    }

    v9 = [v6 offerUpsellScenario] == 7;
  }

  else
  {
    v8 = [v5 offerUpsellScenario];
    v9 = v8 == [v6 offerUpsellScenario];
  }

  v7 = v9;
LABEL_14:

  return v7;
}

@end