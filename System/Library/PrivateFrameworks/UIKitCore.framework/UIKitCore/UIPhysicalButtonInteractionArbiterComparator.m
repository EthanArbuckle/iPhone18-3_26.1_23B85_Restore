@interface UIPhysicalButtonInteractionArbiterComparator
@end

@implementation UIPhysicalButtonInteractionArbiterComparator

uint64_t _UIPhysicalButtonInteractionArbiterComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 view];
  v5 = [v4 _window];
  v6 = [a3 view];
  v7 = [v6 _window];
  v8 = _UIWindowCompareWindowsUsingLevel(v5, v7);
  if (!v8)
  {
    if (v5 == v7)
    {
      v8 = _UIGestureRecognizerContainerCompare(v4, v6, 1);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end