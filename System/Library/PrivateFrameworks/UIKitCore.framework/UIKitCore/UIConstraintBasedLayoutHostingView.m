@interface UIConstraintBasedLayoutHostingView
@end

@implementation UIConstraintBasedLayoutHostingView

void __69___UIConstraintBasedLayoutHostingView__layoutSizeThatFits_fixedAxes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(UIView *)*(a1 + 32) _nsis_layoutSizeInEngine:a2];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
}

@end