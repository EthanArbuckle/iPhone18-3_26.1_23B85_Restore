@interface VUIImage
+ (id)imageWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha;
+ (id)imageWithCGImageRef:(CGImage *)ref preserveAlpha:(BOOL)alpha;
+ (id)imageWithData:(id)data;
+ (id)imageWithPath:(id)path cacheImmediately:(BOOL)immediately;
+ (id)imageWithRotationFromPath:(id)path;
+ (id)imageWithRotationFromURL:(id)l;
+ (id)imageWithURL:(id)l cacheImmediately:(BOOL)immediately;
+ (int)exifOrientationForImageOrientation:(int64_t)orientation;
+ (int64_t)imageOrientationForExifOrientation:(int)orientation;
- (BOOL)hasAlpha;
- (CGImage)image;
- (CGRect)largestSquareRect;
- (CGSize)pixelBounds;
- (VUIImage)initWithCGImageRef:(CGImage *)ref exifOrientation:(int)orientation preserveAlpha:(BOOL)alpha;
- (VUIImage)initWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha;
- (VUIImage)initWithData:(id)data;
- (VUIImage)initWithURL:(id)l cacheImmediately:(BOOL)immediately;
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

@implementation VUIImage

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

+ (id)imageWithCGImageRef:(CGImage *)ref preserveAlpha:(BOOL)alpha
{
  v4 = [[self alloc] initWithCGImageRef:ref imageOrientation:0 preserveAlpha:alpha];

  return v4;
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

- (VUIImage)initWithCGImageRef:(CGImage *)ref imageOrientation:(int64_t)orientation preserveAlpha:(BOOL)alpha
{
  if (ref)
  {
    alphaCopy = alpha;
    v13.receiver = self;
    v13.super_class = VUIImage;
    self = [(VUIImage *)&v13 init];
    selfCopy2 = self;
    if (self)
    {
      self->_image = ref;
      CFRetain(ref);
      selfCopy2->_imageWidth = CGImageGetWidth(selfCopy2->_image);
      selfCopy2->_imageHeight = CGImageGetHeight(selfCopy2->_image);
      selfCopy2->_imageOrientation = [objc_opt_class() exifOrientationForImageOrientation:orientation];
      selfCopy2->_enableCache = 0;
      if (alphaCopy && [VUIImage cgImageHasAlpha:ref])
      {
        v9 = MEMORY[0x277CC2120];
      }

      else
      {
        v9 = MEMORY[0x277CC20C8];
      }

      v10 = [*v9 copy];
      imageType = selfCopy2->_imageType;
      selfCopy2->_imageType = v10;

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

- (VUIImage)initWithCGImageRef:(CGImage *)ref exifOrientation:(int)orientation preserveAlpha:(BOOL)alpha
{
  if (ref)
  {
    alphaCopy = alpha;
    v13.receiver = self;
    v13.super_class = VUIImage;
    self = [(VUIImage *)&v13 init];
    selfCopy2 = self;
    if (self)
    {
      self->_image = ref;
      CFRetain(ref);
      selfCopy2->_imageWidth = CGImageGetWidth(selfCopy2->_image);
      selfCopy2->_imageHeight = CGImageGetHeight(selfCopy2->_image);
      selfCopy2->_imageOrientation = orientation;
      selfCopy2->_enableCache = 0;
      if (alphaCopy && [VUIImage cgImageHasAlpha:ref])
      {
        v9 = MEMORY[0x277CC2120];
      }

      else
      {
        v9 = MEMORY[0x277CC20C8];
      }

      v10 = [*v9 copy];
      imageType = selfCopy2->_imageType;
      selfCopy2->_imageType = v10;

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

- (VUIImage)initWithURL:(id)l cacheImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v27[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy && (v23.receiver = self, v23.super_class = VUIImage, (self = [(VUIImage *)&v23 init]) != 0))
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

- (VUIImage)initWithData:(id)data
{
  v21[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy && (v19.receiver = self, v19.super_class = VUIImage, (self = [(VUIImage *)&v19 init]) != 0))
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
      self->_cacheImmediately = !+[VUICoreUtilities canHandleDecodingOnRenderThread];
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
  v8.super_class = VUIImage;
  [(VUIImage *)&v8 dealloc];
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  image = [(VUIImage *)self image];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextDrawImage(context, *&v10, image);
}

- (id)uiImage
{
  v3 = MEMORY[0x277D755B8];
  image = [(VUIImage *)self image];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = [v3 imageWithCGImage:image scale:-[VUIImage _uiImageOrientation](self orientation:{"_uiImageOrientation"), v6}];

  return v7;
}

- (CGImage)image
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  image = selfCopy->_image;
  if (!image)
  {
    [(VUIImage *)selfCopy _initializeCGImageWithRotation];
    image = selfCopy->_image;
  }

  objc_sync_exit(selfCopy);

  return image;
}

- (BOOL)hasAlpha
{
  imageType = self->_imageType;
  identifier = [*MEMORY[0x277CE1D90] identifier];
  LODWORD(imageType) = [(NSString *)imageType isEqualToString:identifier];

  if (imageType)
  {
    if (self->_image)
    {

      return [VUIImage cgImageHasAlpha:?];
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = self->_imageType;
    v7 = *MEMORY[0x277CC2120];

    return [(NSString *)v6 isEqualToString:v7];
  }
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
  [(VUIImage *)self pixelBounds];
  v4 = v2;
  if (v3 >= v4)
  {
    v6 = v2;
  }

  else
  {
    v5 = v3;
    v6 = v5;
  }

  v7 = v2 == v6;
  v8 = floorf((v4 * 0.5) - (v6 * 0.5));
  v9 = floor(v3 * 0.5 - (v6 * 0.5));
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = floorf(v6);
  v11 = v10;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)limit
{
  image = [(VUIImage *)self image];
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
    [(VUIImage *)self largestSquareRect];
    v16 = CGImageCreateWithImageInRect(v15, v18);
    selfCopy = [VUIImage imageWithCGImageRef:v16 preserveAlpha:0];
    CGImageRelease(v16);
  }

  return selfCopy;
}

- (int64_t)_uiImageOrientation
{
  v3 = objc_opt_class();
  orientation = [(VUIImage *)self orientation];

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
    return dword_270EA2CD8[orientation - 1];
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
    return qword_270EA2CF8[orientation - 2];
  }
}

- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)enabled
{
  if (enabled)
  {
    v15.receiver = self;
    v15.super_class = VUIImage;
    self = [(VUIImage *)&v15 init];
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

      [(VUIImage *)selfCopy2 _initializeCGImageWithRotation];
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
  v50 = *MEMORY[0x277D85DE8];
  if (self->_image || !self->_imageSource)
  {
    return;
  }

  v3 = VUICImageLogObject();
  v4 = os_signpost_id_generate(v3);

  v5 = VUICImageLogObject();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270E6E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Perf.VUIImage.InitCGImage", "", buf, 2u);
  }

  v7 = VUICImageLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    cacheImmediately = self->_cacheImmediately;
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = isMainThread;
    *&buf[18] = 1024;
    *&buf[20] = cacheImmediately;
    _os_log_impl(&dword_270E6E000, v7, OS_LOG_TYPE_DEFAULT, "VUIImage::InitCGImage (%p), isMainThread: %d, cacheImmediately: %d", buf, 0x18u);
  }

  if ([(VUIImage *)self rotationEnabled])
  {
    imageOrientation = self->_imageOrientation;
    if (imageOrientation - 9 > 0xFFFFFFF8)
    {
      imageWidth = self->_imageWidth;
      v19 = imageWidth;
      imageHeight = self->_imageHeight;
      if (imageOrientation <= 4)
      {
        v21 = self->_imageHeight;
      }

      else
      {
        v21 = imageWidth;
      }

      if (imageOrientation <= 4)
      {
        imageHeight = v19;
      }

      if (imageHeight >= v21)
      {
        v22 = imageHeight;
      }

      else
      {
        v22 = v21;
      }

      valuePtr = v22;
      if (imageHeight <= 1920.0 && v21 <= 1080.0)
      {
        goto LABEL_60;
      }

      if ((imageHeight / v21) <= 1.7778)
      {
        v24 = 1149698048;
        if (imageHeight > v21)
        {
          valuePtr = ((v21 + (imageHeight * 1080.0)) + -1.0) / v21;
          goto LABEL_60;
        }
      }

      else
      {
        v24 = 1156579328;
      }

      valuePtr = *&v24;
LABEL_60:
      v38 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (v38)
      {
        v39 = v38;
        v40 = *MEMORY[0x277CBED28];
        v41 = *MEMORY[0x277CD3578];
        *buf = *MEMORY[0x277CD3568];
        *&buf[8] = v41;
        values[0] = v40;
        values[1] = v40;
        *&buf[16] = *MEMORY[0x277CD3660];
        values[2] = v38;
        v42 = CFDictionaryCreate(0, buf, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(v39);
      }

      else
      {
        v42 = 0;
      }

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(self->_imageSource, 0, v42);
      self->_image = ThumbnailAtIndex;
      self->_imageWidth = CGImageGetWidth(ThumbnailAtIndex);
      self->_imageHeight = CGImageGetHeight(self->_image);
      self->_imageOrientation = 1;
      if (v42)
      {
        CFRelease(v42);
      }

      goto LABEL_44;
    }
  }

  if (self->_cacheImmediately)
  {
    v47 = *MEMORY[0x277CD3620];
    v48 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
LABEL_14:
    v12 = v11;
    goto LABEL_15;
  }

  if (self->_enableCache)
  {
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBED28], *MEMORY[0x277CD3618], 0}];
    goto LABEL_14;
  }

  if (self->_imageURL)
  {
    CFRelease(self->_imageSource);
    imageSource = CGImageSourceCreateWithURL(self->_imageURL, 0);
    self->_imageSource = imageSource;
    if (!imageSource)
    {
      v25 = VUICImageLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
LABEL_67:
        _os_log_impl(&dword_270E6E000, v25, OS_LOG_TYPE_INFO, "Null image source after creation", buf, 2u);
        goto LABEL_68;
      }

      goto LABEL_68;
    }

    goto LABEL_56;
  }

  if (self->_imageData)
  {
    CFRelease(self->_imageSource);
    imageSource = CGImageSourceCreateWithData(self->_imageData, 0);
    self->_imageSource = imageSource;
    if (!imageSource)
    {
      v25 = VUICImageLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        goto LABEL_67;
      }

LABEL_68:

      goto LABEL_69;
    }

LABEL_56:
    v12 = 0;
    goto LABEL_16;
  }

LABEL_69:
  v12 = 0;
LABEL_15:
  imageSource = self->_imageSource;
  if (imageSource)
  {
LABEL_16:
    ImageAtIndex = CGImageSourceCreateImageAtIndex(imageSource, 0, v12);
    self->_image = ImageAtIndex;
    if (self->_cacheImmediately && ImageAtIndex)
    {
      if ([(VUIImage *)self usePrepareImageForDisplay])
      {
        v15 = [MEMORY[0x277D755B8] imageWithCGImage:self->_image];
        imageByPreparingForDisplay = [v15 imageByPreparingForDisplay];

        if (imageByPreparingForDisplay)
        {
          CGImageRelease(self->_image);
          cGImage = [imageByPreparingForDisplay CGImage];
          self->_image = cGImage;
          CGImageRetain(cGImage);
        }
      }

      else
      {
        Width = CGImageGetWidth(self->_image);
        Height = CGImageGetHeight(self->_image);
        imageByPreparingForDisplay = [VUIGraphicsImageRenderer formatWithCGImage:self->_image];
        [imageByPreparingForDisplay setScale:1.0];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __42__VUIImage__initializeCGImageWithRotation__block_invoke;
        v45[3] = &unk_279E21F88;
        v45[4] = self;
        height = [VUIGraphicsImageRenderer imageWithSize:imageByPreparingForDisplay format:v45 cgContextActions:Width, Height];
        if (height)
        {
          CGImageRelease(self->_image);
          cGImage2 = [height CGImage];
          self->_image = cGImage2;
          CGImageRetain(cGImage2);
        }
      }
    }
  }

LABEL_44:
  v30 = self->_imageSource;
  if (v30)
  {
    CFRelease(v30);
    self->_imageSource = 0;
  }

  else
  {
    v31 = VUICImageLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      imageURL = self->_imageURL;
      imageData = self->_imageData;
      *buf = 138412546;
      *&buf[4] = imageURL;
      *&buf[12] = 2048;
      *&buf[14] = imageData;
      _os_log_impl(&dword_270E6E000, v31, OS_LOG_TYPE_INFO, "_imageSource is unexpectedly NULL. %@, %p", buf, 0x16u);
    }
  }

  v34 = self->_imageURL;
  self->_imageURL = 0;

  v35 = self->_imageData;
  self->_imageData = 0;

  v36 = VUICImageLogObject();
  v37 = v36;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270E6E000, v37, OS_SIGNPOST_INTERVAL_END, v4, "Perf.VUIImage.InitCGImage", "", buf, 2u);
  }
}

void __42__VUIImage__initializeCGImageWithRotation__block_invoke(uint64_t a1, CGContextRef c)
{
  ClipBoundingBox = CGContextGetClipBoundingBox(c);
  v4 = *(*(a1 + 32) + 8);

  CGContextDrawImage(c, ClipBoundingBox, v4);
}

@end