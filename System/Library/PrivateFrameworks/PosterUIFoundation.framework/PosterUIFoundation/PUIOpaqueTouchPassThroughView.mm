@interface PUIOpaqueTouchPassThroughView
+ (id)new;
- (PUIOpaqueTouchPassThroughView)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PUIOpaqueTouchPassThroughView

- (PUIOpaqueTouchPassThroughView)init
{
  v6.receiver = self;
  v6.super_class = PUIOpaqueTouchPassThroughView;
  v2 = [(PUIOpaqueTouchPassThroughView *)&v6 init];
  layer = [(PUIOpaqueTouchPassThroughView *)v2 layer];
  [layer setHitTestsAsOpaque:1];

  layer2 = [(PUIOpaqueTouchPassThroughView *)v2 layer];
  [layer2 setAllowsHitTesting:0];

  return v2;
}

+ (id)new
{
  v2 = objc_opt_class();

  return objc_alloc_init(v2);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = PUIOpaqueTouchPassThroughView;
  v5 = [(PUIOpaqueTouchPassThroughView *)&v9 hitTest:event withEvent:test.x, test.y];
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