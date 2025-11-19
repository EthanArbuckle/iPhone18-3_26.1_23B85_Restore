@interface NSObject(UIAccessibilityAction)
- (uint64_t)accessibilityActivate;
@end

@implementation NSObject(UIAccessibilityAction)

- (uint64_t)accessibilityActivate
{
  if (accessibilityActivate_onceToken != -1)
  {
    dispatch_once(&accessibilityActivate_onceToken, &__block_literal_global_336);
  }

  return 0;
}

@end