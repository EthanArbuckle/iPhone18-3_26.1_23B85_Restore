@interface _HKSPObserverRecord
- (_HKSPObserverRecord)initWithObserver:(id)a3 callbackScheduler:(id)a4;
- (id)observer;
@end

@implementation _HKSPObserverRecord

- (_HKSPObserverRecord)initWithObserver:(id)a3 callbackScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _HKSPObserverRecord;
  v8 = [(_HKSPObserverRecord *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeStrong(&v9->_callbackScheduler, a4);
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