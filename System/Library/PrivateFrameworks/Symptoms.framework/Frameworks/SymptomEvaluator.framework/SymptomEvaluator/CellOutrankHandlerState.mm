@interface CellOutrankHandlerState
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
- (id)description;
@end

@implementation CellOutrankHandlerState

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  predsCopy = preds;
  labelCopy = label;
  v9 = [[CellOutrankHandlerState alloc] _initStateWithLabel:labelCopy rank:rank entryPreds:predsCopy];

  return v9;
}

- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  v6.receiver = self;
  v6.super_class = CellOutrankHandlerState;
  return [(ExpertSystemStateCore *)&v6 initStateWithLabel:label rank:rank entryPreds:preds];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  label = [(ExpertSystemStateCore *)self label];
  rank = [(ExpertSystemStateCore *)self rank];
  entryPreds = [(ExpertSystemStateCore *)self entryPreds];
  v7 = [v3 stringWithFormat:@"CellOutrankHandlerState at %p label %@ rank %d preds %@", self, label, rank, entryPreds];

  return v7;
}

@end