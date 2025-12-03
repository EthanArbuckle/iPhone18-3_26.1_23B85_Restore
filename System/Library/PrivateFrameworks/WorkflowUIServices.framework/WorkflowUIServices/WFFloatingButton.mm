@interface WFFloatingButton
- (CGSize)intrinsicContentSize;
- (WFFloatingButton)initWithConfiguration:(id)configuration frame:(CGRect)frame;
- (WFFloatingButton)initWithFrame:(CGRect)frame;
- (WFGradient)gradient;
- (void)applyConfiguration:(id)configuration;
- (void)setGradient:(id)gradient;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFFloatingButton

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v6 traitCollectionDidChange:change];
  layer = [(WFFloatingButton *)self layer];
  traitCollection = [(WFFloatingButton *)self traitCollection];
  [layer setTraitCollection:traitCollection];
}

- (CGSize)intrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v4 intrinsicContentSize];
  if (v3 < 36.0)
  {
    v3 = 36.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy titleFontSize];
  v5 = v4;
  boldTitle = [configurationCopy boldTitle];
  if (v5 != 0.0 || boldTitle != 0)
  {
    v8 = boldTitle;
    if (v5 == 0.0)
    {
      titleLabel = [(WFFloatingButton *)self titleLabel];
      font = [titleLabel font];
      [font pointSize];
      v5 = v11;
    }

    if (v8)
    {
      [MEMORY[0x1E69DB878] boldSystemFontOfSize:v5];
    }

    else
    {
      [MEMORY[0x1E69DB878] systemFontOfSize:v5];
    }
    v12 = ;
    titleLabel2 = [(WFFloatingButton *)self titleLabel];
    [titleLabel2 setFont:v12];
  }

  layer = [(WFFloatingButton *)self layer];
  [layer applyConfiguration:configurationCopy];
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  layer = [(WFFloatingButton *)self layer];
  [layer setGradient:gradientCopy];
}

- (WFGradient)gradient
{
  layer = [(WFFloatingButton *)self layer];
  gradient = [layer gradient];

  return gradient;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v6 setHighlighted:?];
  layer = [(WFFloatingButton *)self layer];
  [layer setPressed:highlightedCopy];
}

- (WFFloatingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_new();
  height = [(WFFloatingButton *)self initWithConfiguration:v8 frame:x, y, width, height];

  return height;
}

- (WFFloatingButton)initWithConfiguration:(id)configuration frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = WFFloatingButton;
  height = [(WFFloatingButton *)&v19 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(WFFloatingButton *)height setAdjustsImageWhenHighlighted:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(WFFloatingButton *)v11 setTintColor:whiteColor];

    [(WFFloatingButton *)v11 setContentEdgeInsets:0.0, 20.0, 0.0, 20.0];
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    titleLabel = [(WFFloatingButton *)v11 titleLabel];
    [titleLabel setFont:v13];

    [(WFFloatingButton *)v11 applyConfiguration:configurationCopy];
    layer = [(WFFloatingButton *)v11 layer];
    traitCollection = [(WFFloatingButton *)v11 traitCollection];
    [layer setTraitCollection:traitCollection];

    v17 = v11;
  }

  return v11;
}

@end