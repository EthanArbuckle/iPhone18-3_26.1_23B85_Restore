@interface USAnalysisEnablementSubscription
- (USAnalysisEnablementSubscription)initWithObserver:(id)observer;
@end

@implementation USAnalysisEnablementSubscription

- (USAnalysisEnablementSubscription)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = USAnalysisEnablementSubscription;
  v6 = [(USAnalysisEnablementSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analysisAvailabilityObserver, observer);
  }

  return v7;
}

@end