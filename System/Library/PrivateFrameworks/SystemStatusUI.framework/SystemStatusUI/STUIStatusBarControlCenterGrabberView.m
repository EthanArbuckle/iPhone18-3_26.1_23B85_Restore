@interface STUIStatusBarControlCenterGrabberView
- (STUIStatusBarControlCenterGrabberView)initWithFrame:(CGRect)a3;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation STUIStatusBarControlCenterGrabberView

- (STUIStatusBarControlCenterGrabberView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarControlCenterGrabberView;
  v3 = [(STUIStatusBarRoundedCornerView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(STUIStatusBarControlCenterGrabberView *)v3 setClipsToBounds:1];
  return v3;
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 imageTintColor];
  v6 = [v5 colorWithAlphaComponent:0.5];
  [(STUIStatusBarControlCenterGrabberView *)self setBackgroundColor:v6];

  v7 = [v4 style];
  v10 = [(STUIStatusBarControlCenterGrabberView *)self layer];
  v8 = MEMORY[0x277CDA5D8];
  if (v7 == 2)
  {
    v8 = MEMORY[0x277CDA5E8];
  }

  v9 = [MEMORY[0x277CD9EA0] filterWithType:*v8];
  [v10 setCompositingFilter:v9];
}

@end