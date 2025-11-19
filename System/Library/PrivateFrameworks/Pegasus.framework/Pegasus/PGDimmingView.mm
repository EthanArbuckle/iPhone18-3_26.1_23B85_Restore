@interface PGDimmingView
- (PGDimmingView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4;
@end

@implementation PGDimmingView

- (PGDimmingView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = PGDimmingView;
  v5 = [(PGDimmingView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wantsGlassBackground = v4;
    if (v4)
    {
      v7 = 0.4;
    }

    else
    {
      v7 = 0.2;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v7];
    [(PGDimmingView *)v6 setBackgroundColor:v8];
    [(PGDimmingView *)v6 setUserInteractionEnabled:0];
  }

  return v6;
}

@end