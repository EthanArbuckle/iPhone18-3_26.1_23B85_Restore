@interface UIView(PGCABackdropLayerViewSupport)
- (id)PG_backdropGroupLeader;
- (uint64_t)PG_preferredVisibilityForView:()PGCABackdropLayerViewSupport;
@end

@implementation UIView(PGCABackdropLayerViewSupport)

- (id)PG_backdropGroupLeader
{
  v1 = [a1 superview];
  v2 = [v1 PG_backdropGroupLeader];

  return v2;
}

- (uint64_t)PG_preferredVisibilityForView:()PGCABackdropLayerViewSupport
{
  v4 = a3;
  v5 = [a1 superview];
  v6 = [v5 PG_preferredVisibilityForView:v4];

  return v6;
}

@end