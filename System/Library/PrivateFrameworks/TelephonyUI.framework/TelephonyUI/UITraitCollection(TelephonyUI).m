@interface UITraitCollection(TelephonyUI)
- (uint64_t)isPreferredContentSizeCategoryAccessible;
- (uint64_t)preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells;
@end

@implementation UITraitCollection(TelephonyUI)

- (uint64_t)isPreferredContentSizeCategoryAccessible
{
  v1 = [a1 preferredContentSizeCategory];
  if ([v1 isEqualToString:*MEMORY[0x1E69DDC40]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E69DDC20]];
  }

  return v2;
}

- (uint64_t)preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells
{
  v2 = [a1 preferredContentSizeCategory];
  if ([a1 isPreferredContentSizeCategoryAccessible] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E69DDC60]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E69DDC58]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:*MEMORY[0x1E69DDC50]];
  }

  return v3;
}

@end