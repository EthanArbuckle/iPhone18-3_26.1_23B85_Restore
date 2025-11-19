@interface WFPassthroughDimmingView
- (WFPassthroughDimmingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCaptureTouches:(BOOL)a3;
@end

@implementation WFPassthroughDimmingView

- (void)setCaptureTouches:(BOOL)a3
{
  self->_captureTouches = a3;
  if (a3)
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
  v5 = [v7 CGPath];
  v6 = [(WFPassthroughDimmingView *)self layer];
  [v6 setShadowPath:v5];
}

- (WFPassthroughDimmingView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = WFPassthroughDimmingView;
  v3 = [(WFPassthroughDimmingView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    v5 = [v4 CGColor];
    v6 = [(WFPassthroughDimmingView *)v3 layer];
    [v6 setShadowColor:v5];

    v7 = [(WFPassthroughDimmingView *)v3 layer];
    LODWORD(v8) = 1051931443;
    [v7 setShadowOpacity:v8];

    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v11 = [(WFPassthroughDimmingView *)v3 layer];
    [v11 setShadowOffset:{v9, v10}];

    v12 = [(WFPassthroughDimmingView *)v3 layer];
    [v12 setShadowRadius:0.0];

    v13 = v3;
  }

  return v3;
}

@end