@interface UNSBadgeService
- (BOOL)setBadgeValue:(id)a3 forBundleIdentifier:(id)a4;
- (id)badgeNumberForBundleIdentifier:(id)a3;
@end

@implementation UNSBadgeService

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277D77740];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  objc_opt_class();
  v6 = [v5 badgeValue];
  v7 = UNSafeCast();

  return v7;
}

- (BOOL)setBadgeValue:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = MEMORY[0x277D77740];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithBundleIdentifier:v6];

  v9 = [v8 badgeValue];
  [v8 setBadgeValue:v7];

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = !v10;

  return v11;
}

@end