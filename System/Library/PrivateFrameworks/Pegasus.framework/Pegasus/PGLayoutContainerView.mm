@interface PGLayoutContainerView
- (PGLayoutContainerView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PGLayoutContainerView

- (PGLayoutContainerView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = PGLayoutContainerView;
  v5 = [(PGLayoutContainerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5 && !a4)
  {
    v7 = [(PGLayoutContainerView *)v5 layer];
    [v7 setAllowsGroupBlending:0];
  }

  return v6;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PGLayoutContainerView;
  v5 = [(PGLayoutContainerView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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