@interface UIView(PGCABackdropLayerViewSupport)
- (id)PG_backdropGroupLeader;
- (uint64_t)PG_preferredVisibilityForView:()PGCABackdropLayerViewSupport;
@end

@implementation UIView(PGCABackdropLayerViewSupport)

- (id)PG_backdropGroupLeader
{
  superview = [self superview];
  pG_backdropGroupLeader = [superview PG_backdropGroupLeader];

  return pG_backdropGroupLeader;
}

- (uint64_t)PG_preferredVisibilityForView:()PGCABackdropLayerViewSupport
{
  v4 = a3;
  superview = [self superview];
  v6 = [superview PG_preferredVisibilityForView:v4];

  return v6;
}

@end