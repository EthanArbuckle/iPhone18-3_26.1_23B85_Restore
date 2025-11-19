@interface SBBadgeCountRecipe
- (void)_changeBadge:(unint64_t)a3;
- (void)handleVolumeDecrease;
@end

@implementation SBBadgeCountRecipe

- (void)handleVolumeDecrease
{
  badgeCount = self->_badgeCount;
  if (badgeCount)
  {
    self->_badgeCount = badgeCount - 1;
  }

  [(SBBadgeCountRecipe *)self _changeBadge:?];
}

- (void)_changeBadge:(unint64_t)a3
{
  v4 = +[SBApplicationController sharedInstance];
  v6 = [v4 applicationWithBundleIdentifier:@"com.apple.Test"];

  if (v6)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v6 setBadgeValue:v5];
  }
}

@end