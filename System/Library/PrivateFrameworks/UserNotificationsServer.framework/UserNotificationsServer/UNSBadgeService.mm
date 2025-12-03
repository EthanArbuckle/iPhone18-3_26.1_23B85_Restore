@interface UNSBadgeService
- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
@end

@implementation UNSBadgeService

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D77740];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  objc_opt_class();
  badgeValue = [v5 badgeValue];
  v7 = UNSafeCast();

  return v7;
}

- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D77740];
  identifierCopy = identifier;
  valueCopy = value;
  v8 = [[v5 alloc] initWithBundleIdentifier:identifierCopy];

  badgeValue = [v8 badgeValue];
  [v8 setBadgeValue:valueCopy];

  if (valueCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = badgeValue == 0;
  }

  v11 = !v10;

  return v11;
}

@end