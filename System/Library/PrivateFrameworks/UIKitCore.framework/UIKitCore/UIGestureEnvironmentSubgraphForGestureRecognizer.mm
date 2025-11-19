@interface UIGestureEnvironmentSubgraphForGestureRecognizer
@end

@implementation UIGestureEnvironmentSubgraphForGestureRecognizer

uint64_t ___UIGestureEnvironmentSubgraphForGestureRecognizer_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 propertyForKey:@"gestureRecognizerNode"];
  [v2 addObject:v3];

  return 1;
}

@end