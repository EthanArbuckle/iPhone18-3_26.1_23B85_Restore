@interface UIScrollEdgeEffectOnRenderingModeChange
@end

@implementation UIScrollEdgeEffectOnRenderingModeChange

void ___UIScrollEdgeEffectOnRenderingModeChange_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 traitCollection];
  (*(v2 + 16))(v2, v3, [v4 _userInterfaceRenderingMode] == 2);
}

@end