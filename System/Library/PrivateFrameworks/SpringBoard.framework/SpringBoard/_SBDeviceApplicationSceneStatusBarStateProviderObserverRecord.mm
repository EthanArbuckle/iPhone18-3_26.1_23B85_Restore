@interface _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord
- (SBDeviceApplicationSceneStatusBarStateObserver)observer;
- (_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord)initWithObserver:(id)observer andFlags:(SBDeviceApplicationSceneStatusBarStateObserverFlags)flags;
@end

@implementation _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord

- (SBDeviceApplicationSceneStatusBarStateObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord)initWithObserver:(id)observer andFlags:(SBDeviceApplicationSceneStatusBarStateObserverFlags)flags
{
  observerCopy = observer;
  v10.receiver = self;
  v10.super_class = _SBDeviceApplicationSceneStatusBarStateProviderObserverRecord;
  v7 = [(_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, observerCopy);
    v8->_flags = flags;
  }

  return v8;
}

@end