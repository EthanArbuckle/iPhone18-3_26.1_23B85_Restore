@interface SUInnerShadowLabel
- (void)drawRect:(CGRect)a3;
@end

@implementation SUInnerShadowLabel

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [objc_msgSend(MEMORY[0x1E69DC888] "whiteColor")];
  v13.width = 0.0;
  v13.height = 1.0;
  CGContextSetShadowWithColor(CurrentContext, v13, 0.0, v9);
  CGContextBeginTransparencyLayer(CurrentContext, 0);
  v12.receiver = self;
  v12.super_class = SUInnerShadowLabel;
  [(SUInnerShadowLabel *)&v12 drawRect:x, y, width, height];
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
  CGContextBeginTransparencyLayer(CurrentContext, 0);
  v10 = [objc_msgSend(MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:{0.45), "CGColor"}];
  v14.width = 0.0;
  v14.height = 1.0;
  CGContextSetShadowWithColor(CurrentContext, v14, 0.0, v10);
  CGContextBeginTransparencyLayer(CurrentContext, 0);
  [(SUInnerShadowLabel *)self bounds];
  CGContextFillRect(CurrentContext, v15);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
  v11.receiver = self;
  v11.super_class = SUInnerShadowLabel;
  [(SUInnerShadowLabel *)&v11 drawRect:x, y, width, height];
  CGContextEndTransparencyLayer(CurrentContext);
  CGContextEndTransparencyLayer(CurrentContext);
  CGContextEndTransparencyLayer(CurrentContext);
}

@end