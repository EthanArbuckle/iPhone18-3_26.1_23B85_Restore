@interface WFPassthroughDimmingView
- (WFPassthroughDimmingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCaptureTouches:(BOOL)touches;
@end

@implementation WFPassthroughDimmingView

- (void)setCaptureTouches:(BOOL)touches
{
  self->_captureTouches = touches;
  if (touches)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.01];
    [(WFPassthroughDimmingView *)self setBackgroundColor:v4];
  }

  else
  {

    [(WFPassthroughDimmingView *)self setBackgroundColor:0];
  }
}

- (void)layoutSubviews
{
  v3 = MEMORY[0x277D75208];
  [(WFPassthroughDimmingView *)self bounds];
  v7 = [v3 bezierPathWithRect:?];
  v4 = v7;
  cGPath = [v7 CGPath];
  layer = [(WFPassthroughDimmingView *)self layer];
  [layer setShadowPath:cGPath];
}

- (WFPassthroughDimmingView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = WFPassthroughDimmingView;
  v3 = [(WFPassthroughDimmingView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(WFPassthroughDimmingView *)v3 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(WFPassthroughDimmingView *)v3 layer];
    LODWORD(v8) = 1051931443;
    [layer2 setShadowOpacity:v8];

    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    layer3 = [(WFPassthroughDimmingView *)v3 layer];
    [layer3 setShadowOffset:{v9, v10}];

    layer4 = [(WFPassthroughDimmingView *)v3 layer];
    [layer4 setShadowRadius:0.0];

    v13 = v3;
  }

  return v3;
}

@end