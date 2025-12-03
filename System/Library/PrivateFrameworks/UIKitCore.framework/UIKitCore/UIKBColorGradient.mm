@interface UIKBColorGradient
+ (id)gradientWithUIColor:(id)color;
- (CGGradient)CGGradient;
- (UIKBColorGradient)initWithUIColor:(id)color;
@end

@implementation UIKBColorGradient

+ (id)gradientWithUIColor:(id)color
{
  colorCopy = color;
  v4 = [objc_alloc(objc_opt_class()) initWithUIColor:colorCopy];

  return v4;
}

- (UIKBColorGradient)initWithUIColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = UIKBColorGradient;
  v6 = [(UIKBColorGradient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (CGGradient)CGGradient
{
  v9 = *MEMORY[0x1E69E9840];
  cGColor = [(UIColor *)self->_color CGColor];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  *locations = xmmword_18A64B720;
  v7[0] = cGColor;
  v7[1] = cGColor;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = CGGradientCreateWithColors(DeviceGray, v4, locations);

  CGColorSpaceRelease(DeviceGray);
  return v5;
}

@end