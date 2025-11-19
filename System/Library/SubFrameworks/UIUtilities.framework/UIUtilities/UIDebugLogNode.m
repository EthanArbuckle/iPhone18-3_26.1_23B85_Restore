@interface UIDebugLogNode
@end

@implementation UIDebugLogNode

void __73___UIDebugLogNode__appendChildDescription_withPrefix_inheritedTreeStyle___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a2 _stringRepresentation];
  [v6 appendFormat:@"%@%@", v7, v8];
}

@end