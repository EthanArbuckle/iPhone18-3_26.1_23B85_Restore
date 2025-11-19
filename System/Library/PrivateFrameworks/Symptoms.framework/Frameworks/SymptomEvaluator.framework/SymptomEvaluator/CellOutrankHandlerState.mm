@interface CellOutrankHandlerState
+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5;
- (id)_initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5;
- (id)description;
@end

@implementation CellOutrankHandlerState

+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[CellOutrankHandlerState alloc] _initStateWithLabel:v8 rank:a4 entryPreds:v7];

  return v9;
}

- (id)_initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5
{
  v6.receiver = self;
  v6.super_class = CellOutrankHandlerState;
  return [(ExpertSystemStateCore *)&v6 initStateWithLabel:a3 rank:a4 entryPreds:a5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ExpertSystemStateCore *)self label];
  v5 = [(ExpertSystemStateCore *)self rank];
  v6 = [(ExpertSystemStateCore *)self entryPreds];
  v7 = [v3 stringWithFormat:@"CellOutrankHandlerState at %p label %@ rank %d preds %@", self, v4, v5, v6];

  return v7;
}

@end