@interface UITouchForceObservable
@end

@implementation UITouchForceObservable

void __40___UITouchForceObservable_initWithView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receiveObservedValue:v3];
}

void __56___UITouchForceObservable__touchForceMessageForTouches___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 _unclampedTouchForceForTouches:v4];
  [v5 setUnclampedTouchForce:?];
  [*(a1 + 32) _maximumPossibleForceForTouches:*(a1 + 40)];
  [v5 setMaximumPossibleForce:?];
  [v5 setTimestamp:CACurrentMediaTime()];
  [v5 setShouldFilterDueToSystemGestures:{objc_msgSend(*(a1 + 32), "_shouldFilterDueToSystemGesturesForTouches:", *(a1 + 40))}];
  [v5 setCentroid:{_CentroidOfTouches(*(a1 + 40), 0)}];
}

@end