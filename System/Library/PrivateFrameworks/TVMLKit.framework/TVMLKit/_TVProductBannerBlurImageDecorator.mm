@interface _TVProductBannerBlurImageDecorator
- (id)blurImageWithImage:(id)image targetSize:(CGSize)size scaleSize:(CGSize)scaleSize;
- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit;
- (id)resizeImage:(CGImage *)image targetSize:(CGSize)size shouldDither:(BOOL)dither;
@end

@implementation _TVProductBannerBlurImageDecorator

- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit
{
  v6 = MEMORY[0x277D759A0];
  decorateCopy = decorate;
  mainScreen = [v6 mainScreen];
  [mainScreen bounds];
  v10 = v9;
  v12 = v11;

  cGImage = [decorateCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  v15 = [(_TVProductBannerBlurImageDecorator *)self blurImageWithImage:decorateCopy targetSize:v10 scaleSize:v12, 2800.0, dbl_26CE87C00[Width / CGImageGetHeight(cGImage) > 0.99]];

  return v15;
}

- (id)blurImageWithImage:(id)image targetSize:(CGSize)size scaleSize:(CGSize)scaleSize
{
  height = scaleSize.height;
  width = scaleSize.width;
  v7 = size.height;
  v8 = size.width;
  imageCopy = image;
  cGImage = [image CGImage];
  v13 = CGImageGetWidth(cGImage);
  v14 = CGImageGetHeight(cGImage);
  v27.size.width = v8 / width * v13;
  v27.size.height = v7 / height * v14;
  v27.origin.x = (v13 - v27.size.width) * 0.5;
  v27.origin.y = (v14 - v27.size.height) * 0.5;
  v15 = CGImageCreateWithImageInRect(cGImage, v27);
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

- (id)resizeImage:(CGImage *)image targetSize:(CGSize)size shouldDither:(BOOL)dither
{
  if (image && (v5 = dither, v7 = size.width, v8 = size.height, DeviceRGB = CGColorSpaceCreateDeviceRGB(), v10 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, DeviceRGB, 0x2006u), CFRelease(DeviceRGB), v10))
  {
    CGContextSetBlendMode(v10, kCGBlendModeCopy);
    ClipBoundingBox = CGContextGetClipBoundingBox(v10);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    CGContextDrawImage(v10, ClipBoundingBox, image);
    if (v5)
    {
      v15 = _TVNoiseImageOfSize(1, width, height);
      cGImage = [v15 CGImage];
      if (cGImage)
      {
        v17 = cGImage;
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