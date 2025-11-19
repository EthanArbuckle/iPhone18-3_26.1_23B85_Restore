@interface PLAccountingQualificationDependency
- (PLAccountingQualificationDependency)initWithQualificationEvent:(id)a3;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)setRange:(id)a3;
@end

@implementation PLAccountingQualificationDependency

- (id)ID
{
  v2 = [(PLAccountingQualificationDependency *)self qualificationEvent];
  v3 = [v2 qualificationID];

  return v3;
}

- (id)range
{
  v2 = [(PLAccountingQualificationDependency *)self qualificationEvent];
  v3 = [v2 range];

  return v3;
}

- (PLAccountingQualificationDependency)initWithQualificationEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAccountingQualificationDependency;
  v6 = [(PLAccountingQualificationDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qualificationEvent, a3);
  }

  return v7;
}

- (void)setRange:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingQualificationDependency *)self qualificationEvent];
  [v5 setRange:v4];
}

- (id)activationDate
{
  v2 = [(PLAccountingQualificationDependency *)self qualificationEvent];
  v3 = [v2 entryDate];

  return v3;
}

@end