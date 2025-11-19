@interface UIKBColorGradient
+ (id)gradientWithUIColor:(id)a3;
- (CGGradient)CGGradient;
- (UIKBColorGradient)initWithUIColor:(id)a3;
@end

@implementation UIKBColorGradient

+ (id)gradientWithUIColor:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithUIColor:v3];

  return v4;
}

- (UIKBColorGradient)initWithUIColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIKBColorGradient;
  v6 = [(UIKBColorGradient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (CGGradient)CGGradient
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(UIColor *)self->_color CGColor];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  *locations = xmmword_18A64B720;
  v7[0] = v2;
  v7[1] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = CGGradientCreateWithColors(DeviceGray, v4, locations);

  CGColorSpaceRelease(DeviceGray);
  return v5;
}

@end