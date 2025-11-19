@interface TVImage
+ (id)imageWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5;
+ (id)imageWithData:(id)a3;
+ (id)imageWithPath:(id)a3 cacheImmediately:(BOOL)a4;
+ (id)imageWithRotationFromPath:(id)a3;
+ (id)imageWithRotationFromURL:(id)a3;
+ (id)imageWithURL:(id)a3 cacheImmediately:(BOOL)a4;
+ (int)exifOrientationForImageOrientation:(int64_t)a3;
+ (int64_t)imageOrientationForExifOrientation:(int)a3;
- (CGImage)image;
- (CGRect)largestSquareRect;
- (CGSize)pixelBounds;
- (TVImage)initWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5;
- (TVImage)initWithData:(id)a3;
- (TVImage)initWithURL:(id)a3 cacheImmediately:(BOOL)a4;
- (float)aspectRatio;
- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)a3;
- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)a3;
- (id)uiImage;
- (int64_t)_uiImageOrientation;
- (void)_initializeCGImageWithRotation;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)setEnableCache:(BOOL)a3;
@end

@implementation TVImage

+ (id)imageWithURL:(id)a3 cacheImmediately:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [[a1 alloc] initWithURL:v6 cacheImmediately:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)imageWithPath:(id)a3 cacheImmediately:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = MEMORY[0x277CBEBC0];
    v7 = a3;
    v8 = [[v6 alloc] initFileURLWithPath:v7];

    v9 = [a1 imageWithURL:v8 cacheImmediately:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)imageWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)imageWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5
{
  if (a3)
  {
    v6 = [[a1 alloc] initWithCGImageRef:a3 imageOrientation:a4 preserveAlpha:a5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)imageWithRotationFromURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = CGImageSourceCreateWithURL(v4, 0)) != 0)
  {
    v7 = v6;
    v8 = [[a1 alloc] _initWithCGImageSourceRotationEnabled:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)imageWithRotationFromPath:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v5 = [a1 imageWithRotationFromURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TVImage)initWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v14.receiver = self;
    v14.super_class = TVImage;
    self = [(TVImage *)&v14 init];
    v8 = self;
    if (self)
    {
      self->_image = a3;
      CFRetain(a3);
      v8->_imageWidth = CGImageGetWidth(v8->_image);
      v8->_imageHeight = CGImageGetHeight(v8->_image);
      v8->_imageOrientation = [objc_opt_class() exifOrientationForImageOrientation:a4];
      v8->_enableCache = 0;
      AlphaInfo = CGImageGetAlphaInfo(a3);
      if (v5)
      {
        if (AlphaInfo > kCGImageAlphaNoneSkipFirst)
        {
          v10 = MEMORY[0x277CC2120];
        }

        else
        {
          v10 = qword_279D6EDC0[AlphaInfo];
        }
      }

      else
      {
        v10 = MEMORY[0x277CC20C8];
      }

      v11 = [*v10 copy];
      imageType = v8->_imageType;
      v8->_imageType = v11;

      v8->_imageBufferInMemory = 1;
      self = v8;
      v8 = self;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TVImage)initWithURL:(id)a3 cacheImmediately:(BOOL)a4
{
  v4 = a4;
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7 && (v23.receiver = self, v23.super_class = TVImage, (self = [(TVImage *)&v23 init]) != 0))
  {
    v26 = *MEMORY[0x277CD3618];
    v8 = MEMORY[0x277CBEC38];
    v27[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    self->_cacheImmediately = v4;
    if (v4)
    {
      v24 = *MEMORY[0x277CD3620];
      v25 = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

      v9 = v10;
    }

    else
    {
      v10 = 0;
    }

    v12 = CGImageSourceCreateWithURL(v7, v10);
    self->_imageSource = v12;
    if (v12)
    {
      v13 = CGImageSourceCopyPropertiesAtIndex(v12, 0, v9);
      v14 = [(__CFDictionary *)v13 objectForKey:*MEMORY[0x277CD3450]];
      [v14 floatValue];
      self->_imageWidth = v15;

      v16 = [(__CFDictionary *)v13 objectForKey:*MEMORY[0x277CD3448]];
      [v16 floatValue];
      self->_imageHeight = v17;

      v18 = [(__CFDictionary *)v13 objectForKey:*MEMORY[0x277CD3410]];
      self->_imageOrientation = [v18 intValue];

      Type = CGImageSourceGetType(self->_imageSource);
      if (Type)
      {
        v20 = [(__CFString *)Type copy];
        imageType = self->_imageType;
        self->_imageType = v20;
      }

      self->_enableCache = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      objc_storeStrong(&self->_imageURL, a3);
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TVImage)initWithData:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && (v19.receiver = self, v19.super_class = TVImage, (self = [(TVImage *)&v19 init]) != 0))
  {
    v20 = *MEMORY[0x277CD3620];
    v21[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v7 = CGImageSourceCreateWithData(v5, v6);
    self->_imageSource = v7;
    if (v7)
    {
      v8 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v6);
      v9 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3450]];
      [v9 floatValue];
      self->_imageWidth = v10;

      v11 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3448]];
      [v11 floatValue];
      self->_imageHeight = v12;

      v13 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3410]];
      self->_imageOrientation = [v13 intValue];

      Type = CGImageSourceGetType(self->_imageSource);
      if (Type)
      {
        v15 = [(__CFString *)Type copy];
        imageType = self->_imageType;
        self->_imageType = v15;
      }

      self->_enableCache = 0;
      self->_imageBufferInMemory = 1;
      self->_cacheImmediately = !+[TVMLUtilities canHandleDecodingOnRenderThread];
      if (v8)
      {
        CFRelease(v8);
      }

      objc_storeStrong(&self->_imageData, a3);
      v17 = self;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CGImageRelease(image);
  }

  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  imageURL = self->_imageURL;
  self->_imageURL = 0;

  imageData = self->_imageData;
  self->_imageData = 0;

  imageType = self->_imageType;
  self->_imageType = 0;

  v8.receiver = self;
  v8.super_class = TVImage;
  [(TVImage *)&v8 dealloc];
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(TVImage *)self image];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextDrawImage(a3, *&v10, v9);
}

- (id)uiImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(TVImage *)self image];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = [v3 imageWithCGImage:v4 scale:-[TVImage _uiImageOrientation](self orientation:{"_uiImageOrientation"), v6}];

  return v7;
}

- (CGImage)image
{
  v2 = self;
  objc_sync_enter(v2);
  image = v2->_image;
  if (!image)
  {
    [(TVImage *)v2 _initializeCGImageWithRotation];
    image = v2->_image;
  }

  objc_sync_exit(v2);

  return image;
}

- (CGSize)pixelBounds
{
  imageWidth = self->_imageWidth;
  imageHeight = self->_imageHeight;
  result.height = imageHeight;
  result.width = imageWidth;
  return result;
}

- (float)aspectRatio
{
  imageHeight = self->_imageHeight;
  if (imageHeight == 0.0)
  {
    return 0.0;
  }

  else
  {
    return self->_imageWidth / imageHeight;
  }
}

- (void)setEnableCache:(BOOL)a3
{
  self->_enableCache = a3;
  if (a3 && !self->_imageBufferInMemory)
  {
    self->_imageBufferInMemory = 1;
  }
}

- (CGRect)largestSquareRect
{
  [(TVImage *)self pixelBounds];
  v4 = v2;
  if (v3 < v4)
  {
    v5 = v3;
    v4 = v5;
  }

  v6 = (v4 * 0.5);
  v7 = v2 == v4;
  v8 = v2 * 0.5 - v6;
  v9 = floorf(v8);
  v10 = floor(v3 * 0.5 - v6);
  if (v7)
  {
    v9 = 0.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = floorf(v4);
  v12 = v11;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)a3
{
  v5 = [(TVImage *)self image];
  if (!v5)
  {
    goto LABEL_10;
  }

  imageHeight = self->_imageHeight;
  if (imageHeight == 0.0)
  {
    goto LABEL_10;
  }

  imageWidth = self->_imageWidth;
  if (imageWidth == 0.0 || imageWidth == imageHeight)
  {
    goto LABEL_10;
  }

  v9 = imageWidth < imageHeight;
  v10 = imageHeight / imageWidth;
  v11 = imageWidth / imageHeight;
  if (!v9)
  {
    v11 = v10;
  }

  v12 = v11;
  if (v12 < a3)
  {
LABEL_10:
    v13 = self;
  }

  else
  {
    v15 = v5;
    [(TVImage *)self largestSquareRect];
    v16 = CGImageCreateWithImageInRect(v15, v18);
    v13 = [TVImage imageWithCGImageRef:v16 preserveAlpha:0];
    CGImageRelease(v16);
  }

  return v13;
}

- (int64_t)_uiImageOrientation
{
  v3 = objc_opt_class();
  v4 = [(TVImage *)self orientation];

  return [v3 imageOrientationForExifOrientation:v4];
}

+ (int)exifOrientationForImageOrientation:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_26CE87C30[a3 - 1];
  }
}

+ (int64_t)imageOrientationForExifOrientation:(int)a3
{
  if ((a3 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_26CE87C50[a3 - 2];
  }
}

- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)a3
{
  if (a3)
  {
    v15.receiver = self;
    v15.super_class = TVImage;
    self = [(TVImage *)&v15 init];
    v4 = self;
    if (self)
    {
      self->_imageSource = a3;
      CFRetain(a3);
      Type = CGImageSourceGetType(v4->_imageSource);
      if (Type)
      {
        v6 = [(__CFString *)Type copy];
        imageType = v4->_imageType;
        v4->_imageType = v6;
      }

      v8 = CGImageSourceCopyPropertiesAtIndex(v4->_imageSource, 0, 0);
      v9 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3450]];
      [v9 floatValue];
      v4->_imageWidth = v10;

      v11 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3448]];
      [v11 floatValue];
      v4->_imageHeight = v12;

      v13 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3410]];
      v4->_imageOrientation = [v13 intValue];

      v4->_rotationEnabled = 1;
      v4->_enableCache = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      [(TVImage *)v4 _initializeCGImageWithRotation];
      self = v4;
      v4 = self;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initializeCGImageWithRotation
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_DEBUG, "_imageSource is unexpectedly NULL. %@, %p", &v4, 0x16u);
}

void __41__TVImage__initializeCGImageWithRotation__block_invoke(uint64_t a1, CGContextRef c)
{
  ClipBoundingBox = CGContextGetClipBoundingBox(c);
  v4 = *(*(a1 + 32) + 8);

  CGContextDrawImage(c, ClipBoundingBox, v4);
}

@end