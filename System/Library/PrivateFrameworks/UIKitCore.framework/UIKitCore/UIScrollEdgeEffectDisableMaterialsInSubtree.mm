@interface UIScrollEdgeEffectDisableMaterialsInSubtree
@end

@implementation UIScrollEdgeEffectDisableMaterialsInSubtree

void ___UIScrollEdgeEffectDisableMaterialsInSubtree_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = (*(a3 + 16))(a3);
  v6 = [v5 _userInterfaceRenderingMode];

  if (v6 == 2)
  {
    v7 = v8[2]();
    [v7 _setNSIntegerValue:1 forTraitToken:0x1EFE325C0];
  }
}

@end