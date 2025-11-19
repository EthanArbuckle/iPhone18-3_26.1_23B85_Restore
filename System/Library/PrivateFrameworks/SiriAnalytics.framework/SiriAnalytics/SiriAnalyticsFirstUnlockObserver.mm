@interface SiriAnalyticsFirstUnlockObserver
- (void)afterFirstUnlock:(id)a3;
@end

@implementation SiriAnalyticsFirstUnlockObserver

- (void)afterFirstUnlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D98D2590(sub_1D988C448, v5);
}

@end