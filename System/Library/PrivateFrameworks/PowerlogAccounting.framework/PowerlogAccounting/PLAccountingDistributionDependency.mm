@interface PLAccountingDistributionDependency
- (PLAccountingDistributionDependency)initWithDistributionEvent:(id)event;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)setRange:(id)range;
@end

@implementation PLAccountingDistributionDependency

- (id)range
{
  distributionEvent = [(PLAccountingDistributionDependency *)self distributionEvent];
  range = [distributionEvent range];

  return range;
}

- (id)ID
{
  distributionEvent = [(PLAccountingDistributionDependency *)self distributionEvent];
  distributionID = [distributionEvent distributionID];

  return distributionID;
}

- (id)activationDate
{
  distributionEvent = [(PLAccountingDistributionDependency *)self distributionEvent];
  entryDate = [distributionEvent entryDate];

  return entryDate;
}

- (PLAccountingDistributionDependency)initWithDistributionEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = PLAccountingDistributionDependency;
  v6 = [(PLAccountingDistributionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distributionEvent, event);
  }

  return v7;
}

- (void)setRange:(id)range
{
  rangeCopy = range;
  distributionEvent = [(PLAccountingDistributionDependency *)self distributionEvent];
  [distributionEvent setRange:rangeCopy];
}

@end