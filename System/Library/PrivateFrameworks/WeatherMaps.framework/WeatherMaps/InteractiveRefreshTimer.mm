@interface InteractiveRefreshTimer
- (void)notifiedSignificantTimeChange:(id)change;
@end

@implementation InteractiveRefreshTimer

- (void)notifiedSignificantTimeChange:(id)change
{
  changeCopy = change;

  sub_220EECB64();
}

@end