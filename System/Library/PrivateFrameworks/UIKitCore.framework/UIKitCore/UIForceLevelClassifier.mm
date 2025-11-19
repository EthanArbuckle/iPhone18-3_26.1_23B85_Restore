@interface UIForceLevelClassifier
@end

@implementation UIForceLevelClassifier

uint64_t __48___UIForceLevelClassifier_receiveObservedValue___block_invoke(uint64_t a1, void *a2)
{
  if (![a2 shouldFilterDueToSystemGestures] || (result = objc_msgSend(*(a1 + 32), "respectsSystemGestureTouchFiltering"), (result & 1) == 0))
  {
    v5 = *(a1 + 32);
    [a2 touchForce];
    v7 = v6;
    [a2 timestamp];
    v9 = v8;
    [a2 centroid];

    return [v5 observeTouchWithForceValue:v7 atTimestamp:v9 withCentroidAtLocation:{v10, v11}];
  }

  return result;
}

void __39___UIForceLevelClassifier_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained[5];
    if (v5 <= 2 && v5 + 1 == *(a1 + 40))
    {
      v6 = WeakRetained;
      [a2 doubleValue];
      [v6 _notifyDelegateOfProgress:*(a1 + 40) toForceLevel:?];
      WeakRetained = v6;
    }
  }
}

@end