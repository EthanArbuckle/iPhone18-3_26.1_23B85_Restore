@interface UITraitCollection(TelephonyUI)
- (uint64_t)isPreferredContentSizeCategoryAccessible;
- (uint64_t)preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells;
@end

@implementation UITraitCollection(TelephonyUI)

- (uint64_t)isPreferredContentSizeCategoryAccessible
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC40]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC20]];
  }

  return v2;
}

- (uint64_t)preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  if ([self isPreferredContentSizeCategoryAccessible] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC60]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC58]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC50]];
  }

  return v3;
}

@end