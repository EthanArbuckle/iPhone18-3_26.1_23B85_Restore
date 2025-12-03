@interface _SBSceneHandleObserverBehavior
+ (id)behaviorFromObserver:(id)observer;
- (SBSceneHandleObserver)observer;
- (_SBSceneHandleObserverBehavior)initWithObserver:(id)observer;
@end

@implementation _SBSceneHandleObserverBehavior

+ (id)behaviorFromObserver:(id)observer
{
  observerCopy = observer;
  v4 = [objc_alloc(objc_opt_class()) initWithObserver:observerCopy];

  return v4;
}

- (_SBSceneHandleObserverBehavior)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = _SBSceneHandleObserverBehavior;
  v5 = [(_SBSceneHandleObserverBehavior *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
    v6->_didCreateScene = objc_opt_respondsToSelector() & 1;
    v6->_didDestroyScene = objc_opt_respondsToSelector() & 1;
    v6->_didUpdateContentState = objc_opt_respondsToSelector() & 1;
    v6->_didUpdateSettingsWithDiff = objc_opt_respondsToSelector() & 1;
    v6->_didUpdateClientSettings = objc_opt_respondsToSelector() & 1;
    v6->_replacedWithSceneHandle = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (SBSceneHandleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end