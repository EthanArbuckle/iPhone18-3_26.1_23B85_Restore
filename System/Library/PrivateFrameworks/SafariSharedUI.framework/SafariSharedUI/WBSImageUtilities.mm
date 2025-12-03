@interface WBSImageUtilities
+ (BOOL)image:(id)image isEqualToImage:(id)toImage;
+ (BOOL)saveCGImage:(CGImage *)image toFile:(id)file options:(id)options;
+ (CGSize)imageSizeScalingSize:(CGSize)result proportionallyToFitSize:(CGSize)size;
+ (NSSet)safari_CGImageTypes;
+ (id)_pixelDataForImage:(id)image;
+ (id)flatImage:(id)image withColor:(id)color;
+ (id)handoffIconForDeviceType:(id)type;
+ (id)readingListThumbnailDataFromImage:(id)image;
+ (id)resizedImage:(id)image withSize:(CGSize)size;
+ (id)squareThumbnailImageFromImage:(id)image thumbnailWidthInPixels:(double)pixels;
@end

@implementation WBSImageUtilities

+ (NSSet)safari_CGImageTypes
{
  if (+[WBSImageUtilities safari_CGImageTypes]::once != -1)
  {
    +[WBSImageUtilities safari_CGImageTypes];
  }

  v3 = +[WBSImageUtilities safari_CGImageTypes]::supportedImageTypes;

  return v3;
}

void __40__WBSImageUtilities_safari_CGImageTypes__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v3 = CGImageSourceCopyTypeIdentifiers();
  v1 = [v0 setWithArray:?];
  v2 = +[WBSImageUtilities safari_CGImageTypes]::supportedImageTypes;
  +[WBSImageUtilities safari_CGImageTypes]::supportedImageTypes = v1;
}

+ (BOOL)saveCGImage:(CGImage *)image toFile:(id)file options:(id)options
{
  fileCopy = file;
  optionsCopy = options;
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v10 = CGImageDestinationCreateWithURL(fileCopy, identifier, 1uLL, 0);

  if (v10)
  {
    CGImageDestinationAddImage(v10, image, optionsCopy);
    v11 = CGImageDestinationFinalize(v10);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)squareThumbnailImageFromImage:(id)image thumbnailWidthInPixels:(double)pixels
{
  imageCopy = image;
  v6 = [MEMORY[0x1E69C8ED8] imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
  CGImageGetWidth([v6 CGImage]);
  CGImageGetHeight([v6 CGImage]);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = pixels;
  v16.size.height = pixels;
  Width = CGRectGetWidth(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = pixels;
  v17.size.height = pixels;
  Height = CGRectGetHeight(v17);
  v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, 0, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = pixels;
  v18.size.height = pixels;
  v11 = CGRectGetWidth(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = pixels;
  v19.size.height = pixels;
  v20.size.height = CGRectGetHeight(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v11;
  CGContextClearRect(v10, v20);
  CGContextSetBlendMode(v10, kCGBlendModeCopy);
  [v6 CGImage];
  CGContextDrawImageFromRect();
  v12 = [MEMORY[0x1E69C8ED8] imageByAdoptingCGImage:CGBitmapContextCreateImage(v10)];
  CGContextRelease(v10);
  v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v12, "CGImage")}];

  return v13;
}

+ (id)flatImage:(id)image withColor:(id)color
{
  v4 = [image _flatImageWithColor:color];

  return v4;
}

+ (id)_pixelDataForImage:(id)image
{
  DataProvider = CGImageGetDataProvider([image CGImage]);
  v4 = CGDataProviderCopyData(DataProvider);

  return v4;
}

+ (BOOL)image:(id)image isEqualToImage:(id)toImage
{
  toImageCopy = toImage;
  v7 = [self _pixelDataForImage:image];
  v8 = [self _pixelDataForImage:toImageCopy];
  v9 = [v7 isEqualToData:v8];

  return v9;
}

+ (CGSize)imageSizeScalingSize:(CGSize)result proportionallyToFitSize:(CGSize)size
{
  if (result.width > size.width || result.height > size.height)
  {
    v5 = size.width / result.width;
    v6 = size.height / result.height;
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    result.width = result.width * v7;
    result.height = result.height * v7;
  }

  return result;
}

+ (id)resizedImage:(id)image withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  [imageCopy size];
  if (v8 != width || v7 != height)
  {
    v14.width = width;
    v14.height = height;
    UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
    [imageCopy drawInRect:{0.0, 0.0, width, height}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if ([imageCopy renderingMode])
    {
      v11 = [v10 imageWithRenderingMode:{objc_msgSend(imageCopy, "renderingMode")}];

      v10 = v11;
    }

    imageCopy = v10;
  }

  return imageCopy;
}

+ (id)handoffIconForDeviceType:(id)type
{
  typeCopy = type;
  if ([(__CFString *)typeCopy length])
  {
    if (UTTypeConformsTo(typeCopy, @"com.apple.mac.laptop"))
    {
      v4 = @"HandoffMacBookTemplate";
    }

    else if (UTTypeConformsTo(typeCopy, @"com.apple.mac"))
    {
      v4 = @"HandoffMacTemplate";
    }

    else if (UTTypeConformsTo(typeCopy, @"com.apple.watch"))
    {
      v4 = @"HandoffWatchTemplate";
    }

    else if (UTTypeConformsTo(typeCopy, @"com.apple.iphone") || UTTypeConformsTo(typeCopy, @"com.apple.ipod"))
    {
      v4 = @"HandoffIphoneTemplate";
    }

    else if (UTTypeConformsTo(typeCopy, @"com.apple.ipad"))
    {
      v4 = @"HandoffIpadTemplate";
    }

    else
    {
      UTTypeConformsTo(typeCopy, @"public.device");
      v4 = @"HandoffGenericTemplate";
    }

    v5 = [MEMORY[0x1E69DCAB8] imageNamed:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] imageNamed:@"HandoffGenericTemplate"];
  }

  v6 = v5;

  return v6;
}

+ (id)readingListThumbnailDataFromImage:(id)image
{
  v3 = [self squareThumbnailImageFromImage:image thumbnailWidthInPixels:192.0];
  safari_pngData = [v3 safari_pngData];

  return safari_pngData;
}

@end