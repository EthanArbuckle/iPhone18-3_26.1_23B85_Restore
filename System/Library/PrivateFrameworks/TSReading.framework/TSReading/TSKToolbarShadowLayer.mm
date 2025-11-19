@interface TSKToolbarShadowLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TSKToolbarShadowLayer

- (void)drawInContext:(CGContext *)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TSKToolbarShadowLayer;
  [(TSKToolbarShadowLayer *)&v11 drawInContext:?];
  CGContextSaveGState(a3);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12[0] = [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.0 alpha:{0.100000001), "CGColor"}];
  v12[1] = [objc_msgSend(MEMORY[0x277D75348] "clearColor")];
  v6 = CGGradientCreateWithColors(DeviceRGB, [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2], 0);
  [(TSKToolbarShadowLayer *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  CGContextClipToRect(a3, v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v13.y = CGRectGetHeight(v15);
  v13.x = 0.0;
  CGContextDrawLinearGradient(a3, v6, *MEMORY[0x277CBF348], v13, 0);
  CGGradientRelease(v6);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRestoreGState(a3);
}

@end