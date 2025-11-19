@interface UITraitCollection(WiFiKitUI)
- (uint64_t)isLargeTextTraitCollection;
@end

@implementation UITraitCollection(WiFiKitUI)

- (uint64_t)isLargeTextTraitCollection
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = *MEMORY[0x277D76800];

  if (v2 == v3)
  {
    return 1;
  }

  v4 = [a1 preferredContentSizeCategory];
  v5 = *MEMORY[0x277D767F8];

  if (v4 == v5)
  {
    return 1;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = *MEMORY[0x277D767F0];

  if (v6 == v7)
  {
    return 1;
  }

  v8 = [a1 preferredContentSizeCategory];
  v9 = *MEMORY[0x277D767E8];

  if (v8 == v9)
  {
    return 1;
  }

  v10 = [a1 preferredContentSizeCategory];
  v11 = v10 == *MEMORY[0x277D76818];

  return v11;
}

@end