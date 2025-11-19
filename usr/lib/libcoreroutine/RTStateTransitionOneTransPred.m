@interface RTStateTransitionOneTransPred
- (RTStateTransitionOneTransPred)init;
@end

@implementation RTStateTransitionOneTransPred

- (RTStateTransitionOneTransPred)init
{
  v6.receiver = self;
  v6.super_class = RTStateTransitionOneTransPred;
  v2 = [(RTStateTransitionOneTransPred *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RTStateTransitionOnePredEl);
    [(RTStateTransitionOneTransPred *)v2 setWeekly:v3];

    v4 = objc_alloc_init(RTStateTransitionOnePredEl);
    [(RTStateTransitionOneTransPred *)v2 setDaily:v4];
  }

  return v2;
}

@end