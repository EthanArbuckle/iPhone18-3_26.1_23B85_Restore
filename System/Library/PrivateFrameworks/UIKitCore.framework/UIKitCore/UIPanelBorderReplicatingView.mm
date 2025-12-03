@interface UIPanelBorderReplicatingView
- (UIPanelBorderReplicatingView)initWithFrame:(CGRect)frame replicaOffset:(double)offset;
@end

@implementation UIPanelBorderReplicatingView

- (UIPanelBorderReplicatingView)initWithFrame:(CGRect)frame replicaOffset:(double)offset
{
  v11.receiver = self;
  v11.super_class = UIPanelBorderReplicatingView;
  v5 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    layer = [(UIView *)v5 layer];
    [layer setInstanceCount:2];
    CATransform3DMakeTranslation(&v10, offset, 0.0, 0.0);
    v9 = v10;
    [layer setInstanceTransform:&v9];
  }

  return v6;
}

@end