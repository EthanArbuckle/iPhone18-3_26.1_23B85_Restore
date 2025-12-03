@interface UIImage(VUISBGraphics)
+ (id)vui_imageFromContextWithSize:()VUISBGraphics scale:type:pool:drawing:encapsulation:;
@end

@implementation UIImage(VUISBGraphics)

+ (id)vui_imageFromContextWithSize:()VUISBGraphics scale:type:pool:drawing:encapsulation:
{
  context = objc_autoreleasePoolPush();
  v15 = vcvtpd_u64_f64(self * a3);
  v16 = 32;
  if (a6 == 2)
  {
    v16 = 8;
  }

  bitsPerPixel = v16;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v18 = vcvtpd_u64_f64(a2 * a3);
  if (a6 == 2)
  {
    DeviceRGB = 0;
    v20 = 7;
    if (!a7)
    {
LABEL_5:
      Data = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 8194;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (!a7)
    {
      goto LABEL_5;
    }
  }

  Data = CGBitmapAllocateData();
LABEL_8:
  v22 = CGBitmapContextCreate(Data, v15, v18, 8uLL, AlignedBytesPerRow, DeviceRGB, v20);
  v32.size.width = v15;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.height = v18;
  CGContextClearRect(v22, v32);
  if (a8)
  {
    CGContextTranslateCTM(v22, 0.0, v18);
    CGContextScaleCTM(v22, a3, -a3);
    CGContextGetCTM(&v31, v22);
    CGContextSetBaseCTM();
    UIGraphicsPushContext(v22);
    (*(a8 + 16))(a8);
    UIGraphicsPopContext();
  }

  if (a7 && Data)
  {
    v23 = CGDataProviderCreateWithCFData([a7 nextSlotWithBytes:Data length:AlignedBytesPerRow * v18]);
    Image = CGImageCreate(v15, v18, 8uLL, bitsPerPixel, AlignedBytesPerRow, DeviceRGB, v20, v23, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v23);
    CGBitmapFreeData();
  }

  else
  {
    Image = CGBitmapContextCreateImage(v22);
  }

  if (a9)
  {
    v25 = (*(a9 + 16))(a3);
  }

  else
  {
    v25 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:a3];
  }

  v26 = v25;
  CGImageRelease(Image);
  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  CGContextRelease(v22);
  objc_autoreleasePoolPop(context);
  return v26;
}

@end