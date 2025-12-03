@interface PGLayoutContainerView
- (PGLayoutContainerView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PGLayoutContainerView

- (PGLayoutContainerView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background
{
  v9.receiver = self;
  v9.super_class = PGLayoutContainerView;
  v5 = [(PGLayoutContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5 && !background)
  {
    layer = [(PGLayoutContainerView *)v5 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v6;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PGLayoutContainerView;
  v5 = [(PGLayoutContainerView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end