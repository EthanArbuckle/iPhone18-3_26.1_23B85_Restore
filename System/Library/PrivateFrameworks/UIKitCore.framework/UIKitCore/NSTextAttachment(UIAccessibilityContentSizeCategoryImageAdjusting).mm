@interface NSTextAttachment(UIAccessibilityContentSizeCategoryImageAdjusting)
- (uint64_t)adjustsImageSizeForAccessibilityContentSizeCategory;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:()UIAccessibilityContentSizeCategoryImageAdjusting;
@end

@implementation NSTextAttachment(UIAccessibilityContentSizeCategoryImageAdjusting)

- (uint64_t)adjustsImageSizeForAccessibilityContentSizeCategory
{
  v1 = objc_getAssociatedObject(a1, &adjustsImageSizeForAccessibilityContentSizeCategoryKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:()UIAccessibilityContentSizeCategoryImageAdjusting
{
  if ([a1 adjustsImageSizeForAccessibilityContentSizeCategory] != a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(a1, &adjustsImageSizeForAccessibilityContentSizeCategoryKey, v5, 1);
  }
}

@end