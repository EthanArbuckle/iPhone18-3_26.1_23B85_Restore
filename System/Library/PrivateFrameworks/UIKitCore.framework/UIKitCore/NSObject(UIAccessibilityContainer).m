@interface NSObject(UIAccessibilityContainer)
- (uint64_t)accessibilityContainerType;
- (void)setAccessibilityContainerType:()UIAccessibilityContainer;
@end

@implementation NSObject(UIAccessibilityContainer)

- (uint64_t)accessibilityContainerType
{
  v1 = [a1 storedAccessibilityContainerType];
  v2 = [v1 integerValue];

  return v2;
}

- (void)setAccessibilityContainerType:()UIAccessibilityContainer
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, &AXContainerTypeIdentifier, v2, 1);
}

@end