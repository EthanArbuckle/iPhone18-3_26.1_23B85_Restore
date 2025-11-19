@interface VUIWatchNowTemplateBackgroundLayer
- (VUIWatchNowTemplateBackgroundLayer)initWithRect:(CGRect)a3 withStyle:(int64_t)a4;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation VUIWatchNowTemplateBackgroundLayer

- (VUIWatchNowTemplateBackgroundLayer)initWithRect:(CGRect)a3 withStyle:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = VUIWatchNowTemplateBackgroundLayer;
  v9 = [(VUIWatchNowTemplateBackgroundLayer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(VUIWatchNowTemplateBackgroundLayer *)v9 setNeedsDisplay];
    [(VUIWatchNowTemplateBackgroundLayer *)v10 setFrame:x, y, width, height];
    v10->_uiStyle = a4;
  }

  return v10;
}

- (void)drawInContext:(CGContext *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = xmmword_1E42979E8;
  v16 = unk_1E42979F8;
  v17 = xmmword_1E4297A08;
  v18 = unk_1E4297A18;
  v11 = xmmword_1E4297A28;
  v12 = unk_1E4297A38;
  v13 = xmmword_1E4297A48;
  v14 = unk_1E4297A58;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = DeviceRGB;
  if (self->_uiStyle == 1)
  {
    v7 = &v15;
  }

  else
  {
    v7 = &v11;
  }

  v8 = CGGradientCreateWithColorComponents(DeviceRGB, v7, 0, 2uLL);
  CGColorSpaceRelease(v6);
  [(VUIWatchNowTemplateBackgroundLayer *)self bounds:v11];
  MidX = CGRectGetMidX(v22);
  [(VUIWatchNowTemplateBackgroundLayer *)self bounds];
  v10 = CGRectGetHeight(v23) * 0.800000012;
  v20.y = 0.0;
  v21.y = 0.0;
  v20.x = MidX;
  v21.x = MidX;
  CGContextDrawRadialGradient(a3, v8, v20, 0.0, v21, v10, 2u);
  CGGradientRelease(v8);
}

@end