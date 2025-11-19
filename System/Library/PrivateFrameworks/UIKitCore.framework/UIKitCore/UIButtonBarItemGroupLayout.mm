@interface UIButtonBarItemGroupLayout
@end

@implementation UIButtonBarItemGroupLayout

void __72___UIButtonBarItemGroupLayout_initWithLayoutMetrics_barButtonItemGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 widthAnchor];
  [v3 setGroupSizeGuide:v4];
}

@end