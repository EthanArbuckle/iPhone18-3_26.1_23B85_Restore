@interface PUIOpaqueTouchPassThroughView
+ (id)new;
- (PUIOpaqueTouchPassThroughView)init;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PUIOpaqueTouchPassThroughView

- (PUIOpaqueTouchPassThroughView)init
{
  v6.receiver = self;
  v6.super_class = PUIOpaqueTouchPassThroughView;
  v2 = [(PUIOpaqueTouchPassThroughView *)&v6 init];
  v3 = [(PUIOpaqueTouchPassThroughView *)v2 layer];
  [v3 setHitTestsAsOpaque:1];

  v4 = [(PUIOpaqueTouchPassThroughView *)v2 layer];
  [v4 setAllowsHitTesting:0];

  return v2;
}

+ (id)new
{
  v2 = objc_opt_class();

  return objc_alloc_init(v2);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = PUIOpaqueTouchPassThroughView;
  v5 = [(PUIOpaqueTouchPassThroughView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self || ([(PUIOpaqueTouchPassThroughView *)v5 isDescendantOfView:self]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end