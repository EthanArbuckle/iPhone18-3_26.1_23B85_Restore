@interface NSObject(SVAXElementOcclusion)
- (uint64_t)svax_shouldBeOccluded;
@end

@implementation NSObject(SVAXElementOcclusion)

- (uint64_t)svax_shouldBeOccluded
{
  accessibilityContainer = [self accessibilityContainer];
  if (!accessibilityContainer)
  {
    return 0;
  }

  v3 = accessibilityContainer;
  while ((objc_opt_respondsToSelector() & 1) == 0)
  {
    accessibilityContainer2 = [v3 accessibilityContainer];

    v3 = accessibilityContainer2;
    if (!accessibilityContainer2)
    {
      return 0;
    }
  }

  v6 = [v3 shouldOccludeAccessibilityElement:self];

  return v6;
}

@end