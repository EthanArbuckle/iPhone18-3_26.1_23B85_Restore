@interface ArbitratorExpertSystemState
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
@end

@implementation ArbitratorExpertSystemState

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  predsCopy = preds;
  labelCopy = label;
  v9 = [(ExpertSystemStateCore *)[ArbitratorExpertSystemState alloc] initStateWithLabel:labelCopy rank:rank entryPreds:predsCopy];

  return v9;
}

@end