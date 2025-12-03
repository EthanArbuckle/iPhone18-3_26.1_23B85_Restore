@interface _HKSPObserverRecord
- (_HKSPObserverRecord)initWithObserver:(id)observer callbackScheduler:(id)scheduler;
- (id)observer;
@end

@implementation _HKSPObserverRecord

- (_HKSPObserverRecord)initWithObserver:(id)observer callbackScheduler:(id)scheduler
{
  observerCopy = observer;
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = _HKSPObserverRecord;
  v8 = [(_HKSPObserverRecord *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_callbackScheduler, scheduler);
    v10 = v9;
  }

  return v9;
}

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end