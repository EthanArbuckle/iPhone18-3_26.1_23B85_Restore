@interface SOSKappaStatus
- (BOOL)isKappaFlow;
- (BOOL)isKappaFlowActive;
- (SOSKappaStatus)init;
- (SOSKappaStatus)initWithSOSStatus:(id)status;
- (id)description;
@end

@implementation SOSKappaStatus

- (SOSKappaStatus)init
{
  [(SOSKappaStatus *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SOSKappaStatus)initWithSOSStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = SOSKappaStatus;
  v6 = [(SOSKappaStatus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sosStatus, status);
  }

  return v7;
}

- (BOOL)isKappaFlow
{
  sosStatus = [(SOSKappaStatus *)self sosStatus];
  v3 = [sosStatus trigger] == 7;

  return v3;
}

- (BOOL)isKappaFlowActive
{
  isKappaFlow = [(SOSKappaStatus *)self isKappaFlow];
  if (isKappaFlow)
  {
    sosStatus = [(SOSKappaStatus *)self sosStatus];
    isFlowActiveAndNotResting = [sosStatus isFlowActiveAndNotResting];

    LOBYTE(isKappaFlow) = isFlowActiveAndNotResting;
  }

  return isKappaFlow;
}

- (id)description
{
  sosStatus = [(SOSKappaStatus *)self sosStatus];
  v3 = [sosStatus description];

  return v3;
}

@end