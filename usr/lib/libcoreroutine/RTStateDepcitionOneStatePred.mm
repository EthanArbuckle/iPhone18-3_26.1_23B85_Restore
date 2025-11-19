@interface RTStateDepcitionOneStatePred
- (RTStateDepcitionOneStatePred)init;
@end

@implementation RTStateDepcitionOneStatePred

- (RTStateDepcitionOneStatePred)init
{
  v6.receiver = self;
  v6.super_class = RTStateDepcitionOneStatePred;
  v2 = [(RTStateDepcitionOneStatePred *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RTStateDepictionOnePredEl);
    [(RTStateDepcitionOneStatePred *)v2 setWeekly:v3];

    v4 = objc_alloc_init(RTStateDepictionOnePredEl);
    [(RTStateDepcitionOneStatePred *)v2 setDaily:v4];
  }

  return v2;
}

@end