@interface PLAccountingCorrectionDependency
- (PLAccountingCorrectionDependency)initWithEnergyEvent:(id)a3;
- (id)ID;
- (id)activationDate;
- (id)range;
@end

@implementation PLAccountingCorrectionDependency

- (id)range
{
  v2 = [(PLAccountingCorrectionDependency *)self energyEvent];
  v3 = [v2 range];

  return v3;
}

- (id)ID
{
  v2 = [(PLAccountingCorrectionDependency *)self energyEvent];
  v3 = [v2 nodeID];

  return v3;
}

- (id)activationDate
{
  v2 = [(PLAccountingCorrectionDependency *)self energyEvent];
  v3 = [v2 entryDate];

  return v3;
}

- (PLAccountingCorrectionDependency)initWithEnergyEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAccountingCorrectionDependency;
  v6 = [(PLAccountingCorrectionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_energyEvent, a3);
  }

  return v7;
}

@end