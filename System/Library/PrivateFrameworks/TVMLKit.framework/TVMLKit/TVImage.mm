@interface TVImage
+ (id)imageWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha;
+ (id)imageWithData:(id)data;
+ (id)imageWithPath:(id)path cacheImmediately:(BOOL)immediately;
+ (id)imageWithRotationFromPath:(id)path;
+ (id)imageWithRotationFromURL:(id)l;
+ (id)imageWithURL:(id)l cacheImmediately:(BOOL)immediately;
+ (int)exifOrientationForImageOrientation:(int64_t)orientation;
+ (int64_t)imageOrientationForExifOrientation:(int)orientation;
- (CGImage)image;
- (CGRect)largestSquareRect;
- (CGSize)pixelBounds;
- (TVImage)initWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha;
- (TVImage)initWithData:(id)data;
- (TVImage)initWithURL:(id)l cacheImmediately:(BOOL)immediately;
- (float)aspectRatio;
- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)enabled;
- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)limit;
- (id)uiImage;
- (int64_t)_uiImageOrientation;
- (void)_initializeCGImageWithRotation;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
- (void)setEnableCache:(BOOL)cache;
@end

@implementation TVImage

+ (id)imageWithURL:(id)l cacheImmediately:(BOOL)immediately
{
  if (l)
  {
    immediatelyCopy = immediately;
    lCopy = l;
    v7 = [[self alloc] initWithURL:lCopy cacheImmediately:immediatelyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)imageWithPath:(id)path cacheImmediately:(BOOL)immediately
{
  if (path)
  {
    immediatelyCopy = immediately;
    v6 = MEMORY[0x277CBEBC0];
    pathCopy = path;
    v8 = [[v6 alloc] initFileURLWithPath:pathCopy];

    v9 = [self imageWithURL:v8 cacheImmediately:immediatelyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)imageWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[self alloc] initWithData:dataCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)imageWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha
{
  if (ref)
  {
    v6 = [[self alloc] initWithCGImageRef:ref imageOrientation:orientation preserveAlpha:alpha];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)imageWithRotationFromURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && (v6 = CGImageSourceCreateWithURL(lCopy, 0)) != 0)
  {
    v7 = v6;
    v8 = [[self alloc] _initWithCGImageSourceRotationEnabled:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)imageWithRotationFromPath:(id)path
{
  if (path)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v5 = [self imageWithRotationFromURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TVImage)initWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha
{
  if (ref)
  {
    alphaCopy = alpha;
    v14.receiver = self;
    v14.super_class = TVImage;
    self = [(TVImage *)&v14 init];
    selfCopy2 = self;
    if (self)
    {
      self->_image = ref;
      CFRetain(ref);
      selfCopy2->_imageWidth = CGImageGetWidth(selfCopy2->_image);
      selfCopy2->_imageHeight = CGImageGetHeight(selfCopy2->_image);
      selfCopy2->_imageOrientation = [objc_opt_class() exifOrientationForImageOrientation:orientation];
      selfCopy2->_enableCache = 0;
      AlphaInfo = CGImageGetAlphaInfo(ref);
      if (alphaCopy)
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
      imageType = selfCopy2->_imageType;
      selfCopy2->_imageType = v11;

      selfCopy2->_imageBufferInMemory = 1;
      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (TVImage)initWithURL:(id)l cacheImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v27[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy && (v23.receiver = self, v23.super_class = TVImage, (self = [(TVImage *)&v23 init]) != 0))
  {
    v26 = *MEMORY[0x277CD3618];
    v8 = MEMORY[0x277CBEC38];
    v27[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    self->_cacheImmediately = immediatelyCopy;
    if (immediatelyCopy)
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

    v12 = CGImageSourceCreateWithURL(lCopy, v10);
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

      objc_storeStrong(&self->_imageURL, l);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TVImage)initWithData:(id)data
{
  v21[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy && (v19.receiver = self, v19.super_class = TVImage, (self = [(TVImage *)&v19 init]) != 0))
  {
    v20 = *MEMORY[0x277CD3620];
    v21[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v7 = CGImageSourceCreateWithData(dataCopy, v6);
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

      objc_storeStrong(&self->_imageData, data);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  image = [(TVImage *)self image];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextDrawImage(context, *&v10, image);
}

- (id)uiImage
{
  v3 = MEMORY[0x277D755B8];
  image = [(TVImage *)self image];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = [v3 imageWithCGImage:image scale:-[TVImage _uiImageOrientation](self orientation:{"_uiImageOrientation"), v6}];

  return v7;
}

- (CGImage)image
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  image = selfCopy->_image;
  if (!image)
  {
    [(TVImage *)selfCopy _initializeCGImageWithRotation];
    image = selfCopy->_image;
  }

  objc_sync_exit(selfCopy);

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

- (void)setEnableCache:(BOOL)cache
{
  self->_enableCache = cache;
  if (cache && !self->_imageBufferInMemory)
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

- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)limit
{
  image = [(TVImage *)self image];
  if (!image)
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
  if (v12 < limit)
  {
LABEL_10:
    selfCopy = self;
  }

  else
  {
    v15 = image;
    [(TVImage *)self largestSquareRect];
    v16 = CGImageCreateWithImageInRect(v15, v18);
    selfCopy = [TVImage imageWithCGImageRef:v16 preserveAlpha:0];
    CGImageRelease(v16);
  }

  return selfCopy;
}

- (int64_t)_uiImageOrientation
{
  v3 = objc_opt_class();
  orientation = [(TVImage *)self orientation];

  return [v3 imageOrientationForExifOrientation:orientation];
}

+ (int)exifOrientationForImageOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_26CE87C30[orientation - 1];
  }
}

+ (int64_t)imageOrientationForExifOrientation:(int)orientation
{
  if ((orientation - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_26CE87C50[orientation - 2];
  }
}

- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)enabled
{
  if (enabled)
  {
    v15.receiver = self;
    v15.super_class = TVImage;
    self = [(TVImage *)&v15 init];
    selfCopy2 = self;
    if (self)
    {
      self->_imageSource = enabled;
      CFRetain(enabled);
      Type = CGImageSourceGetType(selfCopy2->_imageSource);
      if (Type)
      {
        v6 = [(__CFString *)Type copy];
        imageType = selfCopy2->_imageType;
        selfCopy2->_imageType = v6;
      }

      v8 = CGImageSourceCopyPropertiesAtIndex(selfCopy2->_imageSource, 0, 0);
      v9 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3450]];
      [v9 floatValue];
      selfCopy2->_imageWidth = v10;

      v11 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3448]];
      [v11 floatValue];
      selfCopy2->_imageHeight = v12;

      v13 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x277CD3410]];
      selfCopy2->_imageOrientation = [v13 intValue];

      selfCopy2->_rotationEnabled = 1;
      selfCopy2->_enableCache = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      [(TVImage *)selfCopy2 _initializeCGImageWithRotation];
      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)_initializeCGImageWithRotation
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(self + 48);
  v3 = *(self + 56);
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