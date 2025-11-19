@interface WFFloatingView
- (BOOL)isPressed;
- (WFFloatingView)initWithConfiguration:(id)a3 frame:(CGRect)a4;
- (WFFloatingView)initWithFrame:(CGRect)a3;
- (WFGradient)gradient;
- (void)applyConfiguration:(id)a3;
- (void)setGradient:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFFloatingView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFFloatingView;
  [(WFFloatingView *)&v6 traitCollectionDidChange:a3];
  v4 = [(WFFloatingView *)self layer];
  v5 = [(WFFloatingView *)self traitCollection];
  [v4 setTraitCollection:v5];
}

- (void)applyConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(WFFloatingView *)self layer];
  [v5 applyConfiguration:v4];
}

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(WFFloatingView *)self layer];
  [v6 setPressed:v5 animated:v4];
}

- (void)setPressed:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFFloatingView *)self layer];
  [v4 setPressed:v3];
}

- (BOOL)isPressed
{
  v2 = [(WFFloatingView *)self layer];
  v3 = [v2 isPressed];

  return v3;
}

- (void)setGradient:(id)a3
{
  v4 = a3;
  v5 = [(WFFloatingView *)self layer];
  [v5 setGradient:v4];
}

- (WFGradient)gradient
{
  v2 = [(WFFloatingView *)self layer];
  v3 = [v2 gradient];

  return v3;
}

- (WFFloatingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_new();
  v9 = [(WFFloatingView *)self initWithConfiguration:v8 frame:x, y, width, height];

  return v9;
}

- (WFFloatingView)initWithConfiguration:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v16.receiver = self;
  v16.super_class = WFFloatingView;
  v10 = [(WFFloatingView *)&v16 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(WFFloatingView *)v10 applyConfiguration:v9];
    v12 = [(WFFloatingView *)v11 layer];
    v13 = [(WFFloatingView *)v11 traitCollection];
    [v12 setTraitCollection:v13];

    v14 = v11;
  }

  return v11;
}

@end