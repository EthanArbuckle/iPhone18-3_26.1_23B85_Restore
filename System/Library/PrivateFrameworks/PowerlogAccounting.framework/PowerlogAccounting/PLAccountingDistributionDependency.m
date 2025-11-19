@interface PLAccountingDistributionDependency
- (PLAccountingDistributionDependency)initWithDistributionEvent:(id)a3;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)setRange:(id)a3;
@end

@implementation PLAccountingDistributionDependency

- (id)range
{
  v2 = [(PLAccountingDistributionDependency *)self distributionEvent];
  v3 = [v2 range];

  return v3;
}

- (id)ID
{
  v2 = [(PLAccountingDistributionDependency *)self distributionEvent];
  v3 = [v2 distributionID];

  return v3;
}

- (id)activationDate
{
  v2 = [(PLAccountingDistributionDependency *)self distributionEvent];
  v3 = [v2 entryDate];

  return v3;
}

- (PLAccountingDistributionDependency)initWithDistributionEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAccountingDistributionDependency;
  v6 = [(PLAccountingDistributionDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distributionEvent, a3);
  }

  return v7;
}

- (void)setRange:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingDistributionDependency *)self distributionEvent];
  [v5 setRange:v4];
}

@end