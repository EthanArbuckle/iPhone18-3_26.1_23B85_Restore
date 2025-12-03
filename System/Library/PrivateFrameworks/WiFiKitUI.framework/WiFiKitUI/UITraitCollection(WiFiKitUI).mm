@interface UITraitCollection(WiFiKitUI)
- (uint64_t)isLargeTextTraitCollection;
@end

@implementation UITraitCollection(WiFiKitUI)

- (uint64_t)isLargeTextTraitCollection
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  v3 = *MEMORY[0x277D76800];

  if (preferredContentSizeCategory == v3)
  {
    return 1;
  }

  preferredContentSizeCategory2 = [self preferredContentSizeCategory];
  v5 = *MEMORY[0x277D767F8];

  if (preferredContentSizeCategory2 == v5)
  {
    return 1;
  }

  preferredContentSizeCategory3 = [self preferredContentSizeCategory];
  v7 = *MEMORY[0x277D767F0];

  if (preferredContentSizeCategory3 == v7)
  {
    return 1;
  }

  preferredContentSizeCategory4 = [self preferredContentSizeCategory];
  v9 = *MEMORY[0x277D767E8];

  if (preferredContentSizeCategory4 == v9)
  {
    return 1;
  }

  preferredContentSizeCategory5 = [self preferredContentSizeCategory];
  v11 = preferredContentSizeCategory5 == *MEMORY[0x277D76818];

  return v11;
}

@end