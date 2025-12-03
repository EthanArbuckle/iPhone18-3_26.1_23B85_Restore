@interface SymptomExpertSystemState
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
@end

@implementation SymptomExpertSystemState

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  predsCopy = preds;
  labelCopy = label;
  v9 = [(ExpertSystemStateCore *)[SymptomExpertSystemState alloc] initStateWithLabel:labelCopy rank:rank entryPreds:predsCopy];

  return v9;
}

@end