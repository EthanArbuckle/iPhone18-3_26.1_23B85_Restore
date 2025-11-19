@interface UIHomeAffordanceRegistrationTokenForNotifierAndRecord
@end

@implementation UIHomeAffordanceRegistrationTokenForNotifierAndRecord

void ___UIHomeAffordanceRegistrationTokenForNotifierAndRecord_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _unregisterHomeAffordanceObserverForRecord:*(a1 + 32)];
}

@end