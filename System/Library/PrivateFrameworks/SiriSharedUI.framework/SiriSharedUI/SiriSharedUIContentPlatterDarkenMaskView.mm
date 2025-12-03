@interface SiriSharedUIContentPlatterDarkenMaskView
- (SiriSharedUIContentPlatterDarkenMaskView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SiriSharedUIContentPlatterDarkenMaskView

- (SiriSharedUIContentPlatterDarkenMaskView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterDarkenMaskView;
  v3 = [(SiriSharedUIContentPlatterDarkenMaskView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SiriSharedUIContentPlatterDarkenMaskView *)v3 setBackgroundColor:blackColor];

    [(SiriSharedUIContentPlatterDarkenMaskView *)v3 setAlpha:0.0];
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SiriSharedUIContentPlatterDarkenMaskView;
  v5 = [(SiriSharedUIContentPlatterDarkenMaskView *)&v9 hitTest:event withEvent:test.x, test.y];
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