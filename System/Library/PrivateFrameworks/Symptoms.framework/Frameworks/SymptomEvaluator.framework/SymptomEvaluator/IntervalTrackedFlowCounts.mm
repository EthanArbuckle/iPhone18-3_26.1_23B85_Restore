@interface IntervalTrackedFlowCounts
- (id)description;
- (void)addFlowCounts:(id)counts;
- (void)addIntervalFlowCounts:(id)counts;
- (void)subtractFlowCounts:(id)counts;
- (void)subtractIntervalFlowCounts:(id)counts;
@end

@implementation IntervalTrackedFlowCounts

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  numBlemishedFlows = self->_numBlemishedFlows;
  numUnblemishedFlows = self->_numUnblemishedFlows;
  v9.receiver = self;
  v9.super_class = IntervalTrackedFlowCounts;
  v6 = [(TrackedFlowCounts *)&v9 description];
  v7 = [v3 stringWithFormat:@"IntervalTrackedFlowCounts at %p, blemished %lld unblemished %lld, counts %@", self, numBlemishedFlows, numUnblemishedFlows, v6];

  return v7;
}

- (void)addFlowCounts:(id)counts
{
  countsCopy = counts;
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  [(TrackedFlowCounts *)&v6 addFlowCounts:countsCopy];
  if ([countsCopy rxDupeBytes])
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
  }

  else
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
    if (![countsCopy rxOOOBytes] && !objc_msgSend(countsCopy, "txReTxBytes"))
    {
      v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numUnblemishedFlows;
    }
  }

  ++*(&self->super.super.isa + *v5);
}

- (void)addIntervalFlowCounts:(id)counts
{
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  countsCopy = counts;
  [(TrackedFlowCounts *)&v6 addFlowCounts:countsCopy];
  self->_numBlemishedFlows += [countsCopy numBlemishedFlows];
  numUnblemishedFlows = [countsCopy numUnblemishedFlows];

  self->_numUnblemishedFlows += numUnblemishedFlows;
}

- (void)subtractFlowCounts:(id)counts
{
  countsCopy = counts;
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  [(TrackedFlowCounts *)&v6 subtractFlowCounts:countsCopy];
  if ([countsCopy rxDupeBytes])
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
  }

  else
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
    if (![countsCopy rxOOOBytes] && !objc_msgSend(countsCopy, "txReTxBytes"))
    {
      v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numUnblemishedFlows;
    }
  }

  --*(&self->super.super.isa + *v5);
}

- (void)subtractIntervalFlowCounts:(id)counts
{
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  countsCopy = counts;
  [(TrackedFlowCounts *)&v6 subtractFlowCounts:countsCopy];
  self->_numBlemishedFlows -= [countsCopy numBlemishedFlows];
  numUnblemishedFlows = [countsCopy numUnblemishedFlows];

  self->_numUnblemishedFlows -= numUnblemishedFlows;
}

@end