@interface NotifyObserversWithContentProtectionState
@end

@implementation NotifyObserversWithContentProtectionState

void ___NotifyObserversWithContentProtectionState_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 contentProtectionStateChanged:*(a1 + 40) previousState:*(a1 + 44)];
}

@end