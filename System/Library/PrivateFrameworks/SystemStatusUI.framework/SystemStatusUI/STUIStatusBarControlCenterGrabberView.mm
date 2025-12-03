@interface STUIStatusBarControlCenterGrabberView
- (STUIStatusBarControlCenterGrabberView)initWithFrame:(CGRect)frame;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation STUIStatusBarControlCenterGrabberView

- (STUIStatusBarControlCenterGrabberView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarControlCenterGrabberView;
  v3 = [(STUIStatusBarRoundedCornerView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUIStatusBarControlCenterGrabberView *)v3 setClipsToBounds:1];
  return v3;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  imageTintColor = [attributesCopy imageTintColor];
  v6 = [imageTintColor colorWithAlphaComponent:0.5];
  [(STUIStatusBarControlCenterGrabberView *)self setBackgroundColor:v6];

  style = [attributesCopy style];
  layer = [(STUIStatusBarControlCenterGrabberView *)self layer];
  v8 = MEMORY[0x277CDA5D8];
  if (style == 2)
  {
    v8 = MEMORY[0x277CDA5E8];
  }

  v9 = [MEMORY[0x277CD9EA0] filterWithType:*v8];
  [layer setCompositingFilter:v9];
}

@end