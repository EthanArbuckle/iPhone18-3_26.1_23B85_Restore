@interface NSObject(UIAccessibilityContainer)
- (uint64_t)accessibilityContainerType;
- (void)setAccessibilityContainerType:()UIAccessibilityContainer;
@end

@implementation NSObject(UIAccessibilityContainer)

- (uint64_t)accessibilityContainerType
{
  storedAccessibilityContainerType = [self storedAccessibilityContainerType];
  integerValue = [storedAccessibilityContainerType integerValue];

  return integerValue;
}

- (void)setAccessibilityContainerType:()UIAccessibilityContainer
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, &AXContainerTypeIdentifier, v2, 1);
}

@end