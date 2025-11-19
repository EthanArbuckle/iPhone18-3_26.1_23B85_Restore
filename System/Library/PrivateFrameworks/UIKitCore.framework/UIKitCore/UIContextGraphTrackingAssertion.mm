@interface UIContextGraphTrackingAssertion
@end

@implementation UIContextGraphTrackingAssertion

uint64_t __64___UIContextGraphTrackingAssertion__setWindowGraph_callHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 _contextId];

  return [v2 numberWithUnsignedInt:v3];
}

@end