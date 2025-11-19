@interface RTStateTransitionOnePredEl
- (RTStateTransitionOnePredEl)init;
@end

@implementation RTStateTransitionOnePredEl

- (RTStateTransitionOnePredEl)init
{
  v5.receiver = self;
  v5.super_class = RTStateTransitionOnePredEl;
  v2 = [(RTStateTransitionOnePredEl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTStateTransitionOnePredEl *)v2 setNumOfTrans:0];
    [(RTStateTransitionOnePredEl *)v3 setYield:0.0];
    [(RTStateTransitionOnePredEl *)v3 setPredResidualStart_s:0.0];
    [(RTStateTransitionOnePredEl *)v3 setResUncStart_s:-1.0];
    [(RTStateTransitionOnePredEl *)v3 setPredResidualStop_s:0.0];
    [(RTStateTransitionOnePredEl *)v3 setResUncStop_s:-1.0];
    [(RTStateTransitionOnePredEl *)v3 setEarliestTransTimeStart_s:1.0e12];
    [(RTStateTransitionOnePredEl *)v3 setLatestTransTimeStart_s:-1.0e12];
    [(RTStateTransitionOnePredEl *)v3 setDensity:0.0];
    [(RTStateTransitionOnePredEl *)v3 setMotionActivityType:0];
  }

  return v3;
}

@end