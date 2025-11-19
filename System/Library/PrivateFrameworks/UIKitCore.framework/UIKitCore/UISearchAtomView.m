@interface UISearchAtomView
@end

@implementation UISearchAtomView

uint64_t __41___UISearchAtomView_setEnabled_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateColors];
  v2 = *(a1 + 32);

  return [v2 setNeedsDisplay];
}

@end