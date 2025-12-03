@interface PLAccountingQualificationDependency
- (PLAccountingQualificationDependency)initWithQualificationEvent:(id)event;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)setRange:(id)range;
@end

@implementation PLAccountingQualificationDependency

- (id)ID
{
  qualificationEvent = [(PLAccountingQualificationDependency *)self qualificationEvent];
  qualificationID = [qualificationEvent qualificationID];

  return qualificationID;
}

- (id)range
{
  qualificationEvent = [(PLAccountingQualificationDependency *)self qualificationEvent];
  range = [qualificationEvent range];

  return range;
}

- (PLAccountingQualificationDependency)initWithQualificationEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = PLAccountingQualificationDependency;
  v6 = [(PLAccountingQualificationDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qualificationEvent, event);
  }

  return v7;
}

- (void)setRange:(id)range
{
  rangeCopy = range;
  qualificationEvent = [(PLAccountingQualificationDependency *)self qualificationEvent];
  [qualificationEvent setRange:rangeCopy];
}

- (id)activationDate
{
  qualificationEvent = [(PLAccountingQualificationDependency *)self qualificationEvent];
  entryDate = [qualificationEvent entryDate];

  return entryDate;
}

@end