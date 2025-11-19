@interface USAnalysisEnablementSubscription
- (USAnalysisEnablementSubscription)initWithObserver:(id)a3;
@end

@implementation USAnalysisEnablementSubscription

- (USAnalysisEnablementSubscription)initWithObserver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = USAnalysisEnablementSubscription;
  v6 = [(USAnalysisEnablementSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analysisAvailabilityObserver, a3);
  }

  return v7;
}

@end