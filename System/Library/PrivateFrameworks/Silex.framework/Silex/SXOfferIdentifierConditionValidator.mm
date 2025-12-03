@interface SXOfferIdentifierConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXOfferIdentifierConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  offerIdentifier = [conditionCopy offerIdentifier];

  if (offerIdentifier)
  {
    offerIdentifier2 = [conditionCopy offerIdentifier];
    offerIdentifier3 = [contextCopy offerIdentifier];
    v10 = [offerIdentifier2 isEqualToString:offerIdentifier3];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end