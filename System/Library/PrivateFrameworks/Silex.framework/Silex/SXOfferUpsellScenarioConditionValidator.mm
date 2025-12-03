@interface SXOfferUpsellScenarioConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXOfferUpsellScenarioConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  if ([conditionCopy offerUpsellScenario] == 1)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (![conditionCopy offerUpsellScenario])
  {
LABEL_9:
    v7 = 1;
    goto LABEL_14;
  }

  if ([conditionCopy offerUpsellScenario] == 4)
  {
    if ([contextCopy offerUpsellScenario] == 5 || objc_msgSend(contextCopy, "offerUpsellScenario") == 6 || objc_msgSend(contextCopy, "offerUpsellScenario") == 9 || objc_msgSend(contextCopy, "offerUpsellScenario") == 8)
    {
      goto LABEL_9;
    }

    v9 = [contextCopy offerUpsellScenario] == 7;
  }

  else
  {
    offerUpsellScenario = [conditionCopy offerUpsellScenario];
    v9 = offerUpsellScenario == [contextCopy offerUpsellScenario];
  }

  v7 = v9;
LABEL_14:

  return v7;
}

@end