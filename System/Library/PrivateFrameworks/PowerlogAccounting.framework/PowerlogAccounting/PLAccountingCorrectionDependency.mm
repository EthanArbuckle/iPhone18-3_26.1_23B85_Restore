@interface PLAccountingCorrectionDependency
- (PLAccountingCorrectionDependency)initWithEnergyEvent:(id)event;
- (id)ID;
- (id)activationDate;
- (id)range;
@end

@implementation PLAccountingCorrectionDependency

- (id)range
{
  energyEvent = [(PLAccountingCorrectionDependency *)self energyEvent];
  range = [energyEvent range];

  return range;
}

- (id)ID
{
  energyEvent = [(PLAccountingCorrectionDependency *)self energyEvent];
  nodeID = [energyEvent nodeID];

  return nodeID;
}

- (id)activationDate
{
  energyEvent = [(PLAccountingCorrectionDependency *)self energyEvent];
  entryDate = [energyEvent entryDate];

  return entryDate;
}

- (PLAccountingCorrectionDependency)initWithEnergyEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = PLAccountingCorrectionDependency;
  v6 = [(PLAccountingCorrectionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_energyEvent, event);
  }

  return v7;
}

@end