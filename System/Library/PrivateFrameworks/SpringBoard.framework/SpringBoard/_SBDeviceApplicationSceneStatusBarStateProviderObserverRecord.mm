@interface _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord
- (SBDeviceApplicationSceneStatusBarStateObserver)observer;
- (_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord)initWithObserver:(id)a3 andFlags:(SBDeviceApplicationSceneStatusBarStateObserverFlags)a4;
@end

@implementation _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord

- (SBDeviceApplicationSceneStatusBarStateObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord)initWithObserver:(id)a3 andFlags:(SBDeviceApplicationSceneStatusBarStateObserverFlags)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord;
  v7 = [(_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, v6);
    v8->_flags = a4;
  }

  return v8;
}

@end