@interface SiriAnalyticsFirstUnlockObserver
- (void)afterFirstUnlock:(id)unlock;
@end

@implementation SiriAnalyticsFirstUnlockObserver

- (void)afterFirstUnlock:(id)unlock
{
  v4 = _Block_copy(unlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D98D2590(sub_1D988C448, v5);
}

@end