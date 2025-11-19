@interface SiriSharedUIContentPlatterDarkenMaskView
- (SiriSharedUIContentPlatterDarkenMaskView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SiriSharedUIContentPlatterDarkenMaskView

- (SiriSharedUIContentPlatterDarkenMaskView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterDarkenMaskView;
  v3 = [(SiriSharedUIContentPlatterDarkenMaskView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [(SiriSharedUIContentPlatterDarkenMaskView *)v3 setBackgroundColor:v4];

    [(SiriSharedUIContentPlatterDarkenMaskView *)v3 setAlpha:0.0];
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SiriSharedUIContentPlatterDarkenMaskView;
  v5 = [(SiriSharedUIContentPlatterDarkenMaskView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end