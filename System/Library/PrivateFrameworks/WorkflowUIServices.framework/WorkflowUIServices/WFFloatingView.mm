@interface WFFloatingView
- (BOOL)isPressed;
- (WFFloatingView)initWithConfiguration:(id)configuration frame:(CGRect)frame;
- (WFFloatingView)initWithFrame:(CGRect)frame;
- (WFGradient)gradient;
- (void)applyConfiguration:(id)configuration;
- (void)setGradient:(id)gradient;
- (void)setPressed:(BOOL)pressed;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFFloatingView

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = WFFloatingView;
  [(WFFloatingView *)&v6 traitCollectionDidChange:change];
  layer = [(WFFloatingView *)self layer];
  traitCollection = [(WFFloatingView *)self traitCollection];
  [layer setTraitCollection:traitCollection];
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  layer = [(WFFloatingView *)self layer];
  [layer applyConfiguration:configurationCopy];
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  animatedCopy = animated;
  pressedCopy = pressed;
  layer = [(WFFloatingView *)self layer];
  [layer setPressed:pressedCopy animated:animatedCopy];
}

- (void)setPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  layer = [(WFFloatingView *)self layer];
  [layer setPressed:pressedCopy];
}

- (BOOL)isPressed
{
  layer = [(WFFloatingView *)self layer];
  isPressed = [layer isPressed];

  return isPressed;
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  layer = [(WFFloatingView *)self layer];
  [layer setGradient:gradientCopy];
}

- (WFGradient)gradient
{
  layer = [(WFFloatingView *)self layer];
  gradient = [layer gradient];

  return gradient;
}

- (WFFloatingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_new();
  height = [(WFFloatingView *)self initWithConfiguration:v8 frame:x, y, width, height];

  return height;
}

- (WFFloatingView)initWithConfiguration:(id)configuration frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = WFFloatingView;
  height = [(WFFloatingView *)&v16 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(WFFloatingView *)height applyConfiguration:configurationCopy];
    layer = [(WFFloatingView *)v11 layer];
    traitCollection = [(WFFloatingView *)v11 traitCollection];
    [layer setTraitCollection:traitCollection];

    v14 = v11;
  }

  return v11;
}

@end