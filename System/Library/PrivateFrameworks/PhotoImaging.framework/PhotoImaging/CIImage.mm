@interface CIImage
@end

@implementation CIImage

void __67__CIImage_PIVideoReframe__pi_imageByApplyingStabilizationWatermark__block_invoke()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v1 = CGBitmapContextCreate(0, 0x28uLL, 0x28uLL, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  v4.size.width = 40.0;
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  v4.size.height = 40.0;
  v5 = CGRectInset(v4, 2.0, 2.0);
  v2 = CGPathCreateWithEllipseInRect(v5, 0);
  CGContextAddPath(v1, v2);
  CGPathRelease(v2);
  CGContextSetLineWidth(v1, 1.0);
  CGContextSetRGBFillColor(v1, 1.0, 0.0, 0.0, 1.0);
  CGContextSetRGBStrokeColor(v1, 0.0, 0.0, 0.0, 1.0);
  CGContextDrawPath(v1, kCGPathFillStroke);
  pi_imageByApplyingStabilizationWatermark_dotImage = CGBitmapContextCreateImage(v1);

  CGContextRelease(v1);
}

@end