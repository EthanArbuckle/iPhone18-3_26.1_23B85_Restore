@interface NSTextAttachment(UIAccessibilityContentSizeCategoryImageAdjusting)
- (uint64_t)adjustsImageSizeForAccessibilityContentSizeCategory;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:()UIAccessibilityContentSizeCategoryImageAdjusting;
@end

@implementation NSTextAttachment(UIAccessibilityContentSizeCategoryImageAdjusting)

- (uint64_t)adjustsImageSizeForAccessibilityContentSizeCategory
{
  v1 = objc_getAssociatedObject(self, &adjustsImageSizeForAccessibilityContentSizeCategoryKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:()UIAccessibilityContentSizeCategoryImageAdjusting
{
  if ([self adjustsImageSizeForAccessibilityContentSizeCategory] != a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(self, &adjustsImageSizeForAccessibilityContentSizeCategoryKey, v5, 1);
  }
}

@end