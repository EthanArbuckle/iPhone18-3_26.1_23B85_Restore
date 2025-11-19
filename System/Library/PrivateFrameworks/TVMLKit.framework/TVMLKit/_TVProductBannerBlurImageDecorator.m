@interface _TVProductBannerBlurImageDecorator
- (id)blurImageWithImage:(id)a3 targetSize:(CGSize)a4 scaleSize:(CGSize)a5;
- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5;
- (id)resizeImage:(CGImage *)a3 targetSize:(CGSize)a4 shouldDither:(BOOL)a5;
@end

@implementation _TVProductBannerBlurImageDecorator

- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5
{
  v6 = MEMORY[0x277D759A0];
  v7 = a3;
  v8 = [v6 mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [v7 CGImage];
  Width = CGImageGetWidth(v13);
  v15 = [(_TVProductBannerBlurImageDecorator *)self blurImageWithImage:v7 targetSize:v10 scaleSize:v12, 2800.0, dbl_26CE87C00[Width / CGImageGetHeight(v13) > 0.99]];

  return v15;
}

- (id)blurImageWithImage:(id)a3 targetSize:(CGSize)a4 scaleSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v11 = a3;
  v12 = [a3 CGImage];
  v13 = CGImageGetWidth(v12);
  v14 = CGImageGetHeight(v12);
  v27.size.width = v8 / width * v13;
  v27.size.height = v7 / height * v14;
  v27.origin.x = (v13 - v27.size.width) * 0.5;
  v27.origin.y = (v14 - v27.size.height) * 0.5;
  v15 = CGImageCreateWithImageInRect(v12, v27);
  v16 = [(_TVProductBannerBlurImageDecorator *)self resizeImage:v15 targetSize:0 shouldDither:v8, v7];
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = self->_backdropSettings;
  if (!v17)
  {
    if (self->_lightStyle)
    {
      v18 = 2010;
    }

    else
    {
      v18 = 2030;
    }

    v17 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:v18];
  }

  [(_UIBackdropViewSettings *)v17 setBlurRadius:150.0];
  v19 = [v16 _applyBackdropViewSettings:v17 includeTints:1 includeBlur:1 allowImageResizing:0];
  if (![v19 CGImage] || (v20 = v19) == 0)
  {
    if ([v19 ioSurface] && (objc_msgSend(v19, "ioSurface"), (v21 = _UICreateCGImageFromIOSurfaceWithOptions()) != 0))
    {
      v22 = v21;
      v20 = [MEMORY[0x277D755B8] imageWithCGImage:v21];
      CFRelease(v22);
    }

    else
    {
      v20 = 0;
    }
  }

  v23 = -[_TVProductBannerBlurImageDecorator resizeImage:targetSize:shouldDither:](self, "resizeImage:targetSize:shouldDither:", [v20 CGImage], 1, v8, v7);
  if ([v23 CGImage])
  {
    v24 = v23;

    v20 = v24;
  }

  v25 = v20;

  return v20;
}

- (id)resizeImage:(CGImage *)a3 targetSize:(CGSize)a4 shouldDither:(BOOL)a5
{
  if (a3 && (v5 = a5, v7 = a4.width, v8 = a4.height, DeviceRGB = CGColorSpaceCreateDeviceRGB(), v10 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, DeviceRGB, 0x2006u), CFRelease(DeviceRGB), v10))
  {
    CGContextSetBlendMode(v10, kCGBlendModeCopy);
    ClipBoundingBox = CGContextGetClipBoundingBox(v10);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    CGContextDrawImage(v10, ClipBoundingBox, a3);
    if (v5)
    {
      v15 = _TVNoiseImageOfSize(1, width, height);
      v16 = [v15 CGImage];
      if (v16)
      {
        v17 = v16;
        CGContextSetBlendMode(v10, kCGBlendModeNormal);
        CGContextSetAlpha(v10, 0.03);
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        CGContextDrawImage(v10, v24, v17);
      }
    }

    Image = CGBitmapContextCreateImage(v10);
    if (Image)
    {
      v19 = Image;
      v20 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:1.0];
      CFRelease(v19);
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end