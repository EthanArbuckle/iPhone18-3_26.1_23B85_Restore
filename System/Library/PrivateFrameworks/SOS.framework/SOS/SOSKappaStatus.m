@interface SOSKappaStatus
- (BOOL)isKappaFlow;
- (BOOL)isKappaFlowActive;
- (SOSKappaStatus)init;
- (SOSKappaStatus)initWithSOSStatus:(id)a3;
- (id)description;
@end

@implementation SOSKappaStatus

- (SOSKappaStatus)init
{
  [(SOSKappaStatus *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SOSKappaStatus)initWithSOSStatus:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SOSKappaStatus;
  v6 = [(SOSKappaStatus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sosStatus, a3);
  }

  return v7;
}

- (BOOL)isKappaFlow
{
  v2 = [(SOSKappaStatus *)self sosStatus];
  v3 = [v2 trigger] == 7;

  return v3;
}

- (BOOL)isKappaFlowActive
{
  v3 = [(SOSKappaStatus *)self isKappaFlow];
  if (v3)
  {
    v4 = [(SOSKappaStatus *)self sosStatus];
    v5 = [v4 isFlowActiveAndNotResting];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)description
{
  v2 = [(SOSKappaStatus *)self sosStatus];
  v3 = [v2 description];

  return v3;
}

@end