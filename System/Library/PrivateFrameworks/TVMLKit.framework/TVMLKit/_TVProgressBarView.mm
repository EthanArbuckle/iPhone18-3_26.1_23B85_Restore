@interface _TVProgressBarView
- (UIEdgeInsets)padding;
- (_TVProgressBarView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setCompleteTintColor:(id)color;
- (void)setCornerRadius:(double)radius;
- (void)setGradientStartColor:(id)color;
- (void)setPadding:(UIEdgeInsets)padding;
- (void)setProgress:(double)progress;
- (void)setProgressTintColor:(id)color;
- (void)setShouldProgressBarUseRoundCorner:(BOOL)corner;
- (void)setUseMaterial:(BOOL)material;
- (void)setgradientEndColor:(id)color;
@end

@implementation _TVProgressBarView

- (_TVProgressBarView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVProgressBarView;
  v3 = [(_TVProgressBarView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVProgressBarView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGContextClearRect(CurrentContext, v43);
  [(_TVProgressBarView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (!self->_useMaterial)
  {
    completeTintColor = [(_TVProgressBarView *)self completeTintColor];
    [completeTintColor setFill];
    v18 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, self->_cornerRadius}];
    [v18 fill];
  }

  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  v22 = v14 - left - self->_padding.right;
  [(_TVProgressBarView *)self progress];
  v23 = 0.0;
  if (v24 > 0.0)
  {
    [(_TVProgressBarView *)self progress];
    v23 = 0.02;
    if (v25 >= 0.02)
    {
      v23 = v25;
    }
  }

  v26 = v10 + left;
  v27 = v12 + top;
  v28 = v14 - (left + ceil(v22 * (1.0 - v23)));
  v29 = v16 - (top + bottom);
  if (self->_shouldProgressBarUseRoundCorner)
  {
    v30 = -1;
  }

  else
  {
    v30 = 5;
  }

  v31 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v30 byRoundingCorners:v26 cornerRadii:{v27, v28, v29, self->_cornerRadius, self->_cornerRadius}];
  if (self->_gradientStartColor && self->_gradientEndColor)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_26CE87A60;
    *&v38[1] = [(UIColor *)self->_gradientEndColor CGColor];
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v34 = CGGradientCreateWithColors(DeviceRGB, v33, locations);
    if (v34)
    {
      v35 = v34;
      v44.origin.x = v26;
      v44.origin.y = v27;
      v44.size.width = v28;
      v44.size.height = v29;
      MaxX = CGRectGetMaxX(v44);
      CGContextAddPath(CurrentContext, [v31 CGPath]);
      CGContextClip(CurrentContext);
      v41.x = 0.0;
      v41.y = 0.0;
      v42.y = 0.0;
      v42.x = MaxX;
      CGContextDrawLinearGradient(CurrentContext, v35, v41, v42, 3u);
      CGGradientRelease(v35);
    }

    CFRelease(DeviceRGB);
  }

  else
  {
    progressTintColor = [(_TVProgressBarView *)self progressTintColor];
    [progressTintColor setFill];

    [v31 fill];
  }
}

- (void)setCompleteTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_completeTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_completeTintColor, color);
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (vabdd_f64(self->_cornerRadius, radius) > 0.00000011920929)
  {
    self->_cornerRadius = radius;
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setProgress:(double)progress
{
  if (vabdd_f64(self->_progress, progress) > 0.00000011920929)
  {
    self->_progress = progress;
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setProgressTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_progressTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_progressTintColor, color);
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setGradientStartColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_gradientStartColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientStartColor, color);
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setgradientEndColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_gradientEndColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientEndColor, color);
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setUseMaterial:(BOOL)material
{
  if (self->_useMaterial != material)
  {
    self->_useMaterial = material;
    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_padding.top), vceqq_f64(v4, *&self->_padding.bottom)))) & 1) == 0)
  {
    self->_padding = padding;
    [(_TVProgressBarView *)self setPadding:?];

    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (void)setShouldProgressBarUseRoundCorner:(BOOL)corner
{
  if (self->_shouldProgressBarUseRoundCorner != corner)
  {
    self->_shouldProgressBarUseRoundCorner = corner;
    [(_TVProgressBarView *)self setShouldProgressBarUseRoundCorner:?];

    [(_TVProgressBarView *)self setNeedsDisplay];
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end