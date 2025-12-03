@interface SymptomExpertSystemDiagnosingState
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
@end

@implementation SymptomExpertSystemDiagnosingState

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  predsCopy = preds;
  labelCopy = label;
  v9 = [(ExpertSystemStateCore *)[SymptomExpertSystemDiagnosingState alloc] initStateWithLabel:labelCopy rank:rank entryPreds:predsCopy];

  return v9;
}

@end