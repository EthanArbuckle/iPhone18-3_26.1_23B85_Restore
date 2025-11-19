@interface IntervalTrackedFlowCounts
- (id)description;
- (void)addFlowCounts:(id)a3;
- (void)addIntervalFlowCounts:(id)a3;
- (void)subtractFlowCounts:(id)a3;
- (void)subtractIntervalFlowCounts:(id)a3;
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

- (void)addFlowCounts:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  [(TrackedFlowCounts *)&v6 addFlowCounts:v4];
  if ([v4 rxDupeBytes])
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
  }

  else
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
    if (![v4 rxOOOBytes] && !objc_msgSend(v4, "txReTxBytes"))
    {
      v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numUnblemishedFlows;
    }
  }

  ++*(&self->super.super.isa + *v5);
}

- (void)addIntervalFlowCounts:(id)a3
{
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  v4 = a3;
  [(TrackedFlowCounts *)&v6 addFlowCounts:v4];
  self->_numBlemishedFlows += [v4 numBlemishedFlows];
  v5 = [v4 numUnblemishedFlows];

  self->_numUnblemishedFlows += v5;
}

- (void)subtractFlowCounts:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  [(TrackedFlowCounts *)&v6 subtractFlowCounts:v4];
  if ([v4 rxDupeBytes])
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
  }

  else
  {
    v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numBlemishedFlows;
    if (![v4 rxOOOBytes] && !objc_msgSend(v4, "txReTxBytes"))
    {
      v5 = &OBJC_IVAR___IntervalTrackedFlowCounts__numUnblemishedFlows;
    }
  }

  --*(&self->super.super.isa + *v5);
}

- (void)subtractIntervalFlowCounts:(id)a3
{
  v6.receiver = self;
  v6.super_class = IntervalTrackedFlowCounts;
  v4 = a3;
  [(TrackedFlowCounts *)&v6 subtractFlowCounts:v4];
  self->_numBlemishedFlows -= [v4 numBlemishedFlows];
  v5 = [v4 numUnblemishedFlows];

  self->_numUnblemishedFlows -= v5;
}

@end