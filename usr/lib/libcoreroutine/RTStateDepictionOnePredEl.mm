@interface RTStateDepictionOnePredEl
- (RTStateDepictionOnePredEl)init;
@end

@implementation RTStateDepictionOnePredEl

- (RTStateDepictionOnePredEl)init
{
  v6.receiver = self;
  v6.super_class = RTStateDepictionOnePredEl;
  v2 = [(RTStateDepictionOnePredEl *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(RTStateDepictionOnePredEl *)v2 setNumOfClustEntries:0];
    [(RTStateDepictionOnePredEl *)v3 setAggregateTime_s:0.0];
    [(RTStateDepictionOnePredEl *)v3 setLatestVisitTime_s:-1.0];
    [(RTStateDepictionOnePredEl *)v3 setDensity:0.0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTStateDepictionOnePredEl *)v3 setVisitHist:v4];
  }

  return v3;
}

@end