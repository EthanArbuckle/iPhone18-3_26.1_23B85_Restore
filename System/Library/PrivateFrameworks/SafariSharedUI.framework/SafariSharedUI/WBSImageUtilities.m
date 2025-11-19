@interface WBSImageUtilities
+ (BOOL)image:(id)a3 isEqualToImage:(id)a4;
+ (BOOL)saveCGImage:(CGImage *)a3 toFile:(id)a4 options:(id)a5;
+ (CGSize)imageSizeScalingSize:(CGSize)result proportionallyToFitSize:(CGSize)a4;
+ (NSSet)safari_CGImageTypes;
+ (id)_pixelDataForImage:(id)a3;
+ (id)flatImage:(id)a3 withColor:(id)a4;
+ (id)handoffIconForDeviceType:(id)a3;
+ (id)readingListThumbnailDataFromImage:(id)a3;
+ (id)resizedImage:(id)a3 withSize:(CGSize)a4;
+ (id)squareThumbnailImageFromImage:(id)a3 thumbnailWidthInPixels:(double)a4;
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

+ (BOOL)saveCGImage:(CGImage *)a3 toFile:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [*MEMORY[0x1E6982E58] identifier];
  v10 = CGImageDestinationCreateWithURL(v7, v9, 1uLL, 0);

  if (v10)
  {
    CGImageDestinationAddImage(v10, a3, v8);
    v11 = CGImageDestinationFinalize(v10);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)squareThumbnailImageFromImage:(id)a3 thumbnailWidthInPixels:(double)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69C8ED8] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];
  CGImageGetWidth([v6 CGImage]);
  CGImageGetHeight([v6 CGImage]);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a4;
  v16.size.height = a4;
  Width = CGRectGetWidth(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a4;
  v17.size.height = a4;
  Height = CGRectGetHeight(v17);
  v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, 0, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = a4;
  v18.size.height = a4;
  v11 = CGRectGetWidth(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a4;
  v19.size.height = a4;
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

+ (id)flatImage:(id)a3 withColor:(id)a4
{
  v4 = [a3 _flatImageWithColor:a4];

  return v4;
}

+ (id)_pixelDataForImage:(id)a3
{
  DataProvider = CGImageGetDataProvider([a3 CGImage]);
  v4 = CGDataProviderCopyData(DataProvider);

  return v4;
}

+ (BOOL)image:(id)a3 isEqualToImage:(id)a4
{
  v6 = a4;
  v7 = [a1 _pixelDataForImage:a3];
  v8 = [a1 _pixelDataForImage:v6];
  v9 = [v7 isEqualToData:v8];

  return v9;
}

+ (CGSize)imageSizeScalingSize:(CGSize)result proportionallyToFitSize:(CGSize)a4
{
  if (result.width > a4.width || result.height > a4.height)
  {
    v5 = a4.width / result.width;
    v6 = a4.height / result.height;
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

+ (id)resizedImage:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 size];
  if (v8 != width || v7 != height)
  {
    v14.width = width;
    v14.height = height;
    UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
    [v6 drawInRect:{0.0, 0.0, width, height}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if ([v6 renderingMode])
    {
      v11 = [v10 imageWithRenderingMode:{objc_msgSend(v6, "renderingMode")}];

      v10 = v11;
    }

    v6 = v10;
  }

  return v6;
}

+ (id)handoffIconForDeviceType:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 length])
  {
    if (UTTypeConformsTo(v3, @"com.apple.mac.laptop"))
    {
      v4 = @"HandoffMacBookTemplate";
    }

    else if (UTTypeConformsTo(v3, @"com.apple.mac"))
    {
      v4 = @"HandoffMacTemplate";
    }

    else if (UTTypeConformsTo(v3, @"com.apple.watch"))
    {
      v4 = @"HandoffWatchTemplate";
    }

    else if (UTTypeConformsTo(v3, @"com.apple.iphone") || UTTypeConformsTo(v3, @"com.apple.ipod"))
    {
      v4 = @"HandoffIphoneTemplate";
    }

    else if (UTTypeConformsTo(v3, @"com.apple.ipad"))
    {
      v4 = @"HandoffIpadTemplate";
    }

    else
    {
      UTTypeConformsTo(v3, @"public.device");
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

+ (id)readingListThumbnailDataFromImage:(id)a3
{
  v3 = [a1 squareThumbnailImageFromImage:a3 thumbnailWidthInPixels:192.0];
  v4 = [v3 safari_pngData];

  return v4;
}

@end