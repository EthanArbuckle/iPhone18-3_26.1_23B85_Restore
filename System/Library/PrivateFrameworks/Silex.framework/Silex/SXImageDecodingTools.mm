@interface SXImageDecodingTools
+ (id)sharedInstance;
- (BOOL)dataIsAnimatedImage:(id)image;
- (CGColorSpace)P3ColorSpace;
- (CGColorSpace)RGBColorSpace;
- (CGImage)newImageByDecodingImage:(CGImage *)image size:(CGSize)size;
- (__CFString)contentTypeForImageData:(id)data;
- (id)decodeImage:(CGImage *)image;
- (id)imageFromData:(id)data;
- (id)imageFromData:(id)data size:(CGSize)size;
@end

@implementation SXImageDecodingTools

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SXImageDecodingTools sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __38__SXImageDecodingTools_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SXImageDecodingTools);

  return MEMORY[0x1EEE66BB8]();
}

- (id)imageFromData:(id)data size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E69DCAB8];
  dataCopy = data;
  v9 = [[v7 alloc] initWithData:dataCopy];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = v11;

  v13 = -[SXImageDecodingTools newImageByDecodingImage:size:](self, "newImageByDecodingImage:size:", [v9 CGImage], width * v12, height * v12);
  v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v13 scale:0 orientation:v12];
  CGImageRelease(v13);

  return v14;
}

- (id)imageFromData:(id)data
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (data)
  {
    v3 = CGImageSourceCreateWithData(data, 0);
    v8 = *MEMORY[0x1E696E0B8];
    v9[0] = *MEMORY[0x1E695E4D0];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, v4);
    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
    CGImageRelease(ImageAtIndex);
    CFRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeImage:(CGImage *)image
{
  v3 = [(SXImageDecodingTools *)self newImageByDecodingImage:image size:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = [v4 initWithCGImage:v3 scale:0 orientation:?];

  CGImageRelease(v3);

  return v6;
}

- (CGImage)newImageByDecodingImage:(CGImage *)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  CGImageRetain(image);
  v8 = CGImageGetWidth(image);
  v9 = CGImageGetHeight(image);
  rGBColorSpace = [(SXImageDecodingTools *)self RGBColorSpace];
  if ([MEMORY[0x1E69DC938] sx_isSpectreDevice])
  {
    ColorSpace = CGImageGetColorSpace(image);
    if (CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      rGBColorSpace = [(SXImageDecodingTools *)self P3ColorSpace];
    }
  }

  if (width <= 0.0 || height <= 0.0)
  {
    height = v9;
    width = v8;
  }

  v12 = CGBitmapContextCreate(0, width, height, 8uLL, 0, rGBColorSpace, 2u);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = width;
  v15.size.height = height;
  CGContextDrawImage(v12, v15, image);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  CGImageRelease(image);
  return Image;
}

- (__CFString)contentTypeForImageData:(id)data
{
  v5 = 0;
  [data getBytes:&v5 length:1];
  result = 0;
  if (v5 <= 0x4Cu)
  {
    if (v5 == 71)
    {
      v4 = MEMORY[0x1E69637D8];
      return *v4;
    }

    if (v5 != 73)
    {
      return result;
    }
  }

  else if (v5 != 77)
  {
    if (v5 == 137)
    {
      v4 = MEMORY[0x1E6963860];
    }

    else
    {
      if (v5 != 255)
      {
        return result;
      }

      v4 = MEMORY[0x1E6963808];
    }

    return *v4;
  }

  v4 = MEMORY[0x1E69638A8];
  return *v4;
}

- (BOOL)dataIsAnimatedImage:(id)image
{
  imageCopy = image;
  v5 = [(SXImageDecodingTools *)self contentTypeForImageData:imageCopy];
  if (v5 == *MEMORY[0x1E6963860] || v5 == *MEMORY[0x1E69637D8])
  {
    v7 = CGImageSourceCreateWithData(imageCopy, 0);
    v8 = CGImageSourceGetCount(v7) > 1;
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGColorSpace)RGBColorSpace
{
  if (RGBColorSpace_onceToken != -1)
  {
    [SXImageDecodingTools RGBColorSpace];
  }

  return RGBColorSpace_colorSpace;
}

CGColorSpaceRef __37__SXImageDecodingTools_RGBColorSpace__block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  RGBColorSpace_colorSpace = result;
  return result;
}

- (CGColorSpace)P3ColorSpace
{
  if (P3ColorSpace_onceToken != -1)
  {
    [SXImageDecodingTools P3ColorSpace];
  }

  return P3ColorSpace_colorSpace;
}

CGColorSpaceRef __36__SXImageDecodingTools_P3ColorSpace__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  P3ColorSpace_colorSpace = result;
  return result;
}

@end