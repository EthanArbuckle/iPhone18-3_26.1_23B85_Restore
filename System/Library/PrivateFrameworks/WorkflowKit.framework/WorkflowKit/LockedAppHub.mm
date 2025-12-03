@interface LockedAppHub
- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change;
@end

@implementation LockedAppHub

- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change
{
  contextCopy = context;

  sub_1CA611660();
}

@end