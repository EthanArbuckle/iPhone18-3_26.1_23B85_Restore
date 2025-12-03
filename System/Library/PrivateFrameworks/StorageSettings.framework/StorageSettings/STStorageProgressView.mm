@interface STStorageProgressView
- (STStorageProgressView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setPercent:(double)percent;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColors;
@end

@implementation STStorageProgressView

- (void)updateColors
{
  traitCollection = [(STStorageProgressView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemLightMidGrayColor];
  }
  v5 = ;
  objc_storeStrong(&self->_grayColor, v5);

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] systemDarkLightMidGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }
  v6 = ;
  objc_storeStrong(&self->_blueColor, v6);
}

- (STStorageProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = STStorageProgressView;
  v3 = [(STStorageProgressView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(STStorageProgressView *)v3 setBackgroundColor:clearColor];

    [(STStorageProgressView *)v3 updateColors];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  [(STStorageProgressView *)self bounds:rect.origin.x];
  v20 = CGRectInset(v19, 2.0, 2.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  percent = self->_percent;
  if (percent > 0.0 && percent < 1.0)
  {
    v13 = floor(height * 0.5);
    v14 = x + width - v13;
    v15 = y + v13;
    v16 = percent * 6.28318531 + -1.57079633;
    v17 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v14 startAngle:v15 endAngle:v13 clockwise:?];
    [v17 setLineWidth:4.0];
    [(UIColor *)self->_blueColor setStroke];
    [v17 stroke];
    v11 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v14 startAngle:v15 endAngle:v13 clockwise:{v16, 4.71238898}];

    [v11 setLineWidth:4.0];
    v12 = &OBJC_IVAR___STStorageProgressView__grayColor;
  }

  else
  {
    v11 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
    [v11 setLineWidth:4.0];
    v12 = &OBJC_IVAR___STStorageProgressView__grayColor;
    if (self->_percent > 0.0)
    {
      v12 = &OBJC_IVAR___STStorageProgressView__blueColor;
    }
  }

  [*(&self->super.super.super.isa + *v12) setStroke];
  [v11 stroke];

  UIGraphicsPopContext();
}

- (void)setPercent:(double)percent
{
  if (self->_percent != percent)
  {
    self->_percent = percent;
    [(STStorageProgressView *)self setNeedsDisplay];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = STStorageProgressView;
  [(STStorageProgressView *)&v4 traitCollectionDidChange:change];
  [(STStorageProgressView *)self updateColors];
}

@end