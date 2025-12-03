@interface WBSCyclerIterationCounter
- (WBSCyclerIterationCounter)init;
- (WBSCyclerIterationCounter)initWithMaximumIterationCount:(unint64_t)count;
@end

@implementation WBSCyclerIterationCounter

- (WBSCyclerIterationCounter)init
{
  v6.receiver = self;
  v6.super_class = WBSCyclerIterationCounter;
  v2 = [(WBSCyclerIterationCounter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_iterationCount = 0;
    v2->_maximumIterationCount = 0;
    v4 = v2;
  }

  return v3;
}

- (WBSCyclerIterationCounter)initWithMaximumIterationCount:(unint64_t)count
{
  v4 = [(WBSCyclerIterationCounter *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_maximumIterationCount = count;
    v6 = v4;
  }

  return v5;
}

@end