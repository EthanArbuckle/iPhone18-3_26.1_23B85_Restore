@interface VUIImage
+ (id)imageWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5;
+ (id)imageWithCGImageRef:(CGImage *)a3 preserveAlpha:(BOOL)a4;
+ (id)imageWithData:(id)a3;
+ (id)imageWithPath:(id)a3 cacheImmediately:(BOOL)a4;
+ (id)imageWithRotationFromPath:(id)a3;
+ (id)imageWithRotationFromURL:(id)a3;
+ (id)imageWithURL:(id)a3 cacheImmediately:(BOOL)a4;
+ (int)exifOrientationForImageOrientation:(int64_t)a3;
+ (int64_t)imageOrientationForExifOrientation:(int)a3;
- (BOOL)hasAlpha;
- (CGImage)image;
- (CGRect)largestSquareRect;
- (CGSize)pixelBounds;
- (VUIImage)initWithCGImageRef:(CGImage *)a3 exifOrientation:(int)a4 preserveAlpha:(BOOL)a5;
- (VUIImage)initWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5;
- (VUIImage)initWithData:(id)a3;
- (VUIImage)initWithURL:(id)a3 cacheImmediately:(BOOL)a4;
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

@implementation VUIImage

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

+ (id)imageWithCGImageRef:(CGImage *)a3 preserveAlpha:(BOOL)a4
{
  v4 = [[a1 alloc] initWithCGImageRef:a3 imageOrientation:0 preserveAlpha:a4];

  return v4;
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

- (VUIImage)initWithCGImageRef:(CGImage *)a3 imageOrientation:(int64_t)a4 preserveAlpha:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v13.receiver = self;
    v13.super_class = VUIImage;
    self = [(VUIImage *)&v13 init];
    v8 = self;
    if (self)
    {
      self->_image = a3;
      CFRetain(a3);
      v8->_imageWidth = CGImageGetWidth(v8->_image);
      v8->_imageHeight = CGImageGetHeight(v8->_image);
      v8->_imageOrientation = [objc_opt_class() exifOrientationForImageOrientation:a4];
      v8->_enableCache = 0;
      if (v5 && [VUIImage cgImageHasAlpha:a3])
      {
        v9 = MEMORY[0x277CC2120];
      }

      else
      {
        v9 = MEMORY[0x277CC20C8];
      }

      v10 = [*v9 copy];
      imageType = v8->_imageType;
      v8->_imageType = v10;

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

- (VUIImage)initWithCGImageRef:(CGImage *)a3 exifOrientation:(int)a4 preserveAlpha:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v13.receiver = self;
    v13.super_class = VUIImage;
    self = [(VUIImage *)&v13 init];
    v8 = self;
    if (self)
    {
      self->_image = a3;
      CFRetain(a3);
      v8->_imageWidth = CGImageGetWidth(v8->_image);
      v8->_imageHeight = CGImageGetHeight(v8->_image);
      v8->_imageOrientation = a4;
      v8->_enableCache = 0;
      if (v5 && [VUIImage cgImageHasAlpha:a3])
      {
        v9 = MEMORY[0x277CC2120];
      }

      else
      {
        v9 = MEMORY[0x277CC20C8];
      }

      v10 = [*v9 copy];
      imageType = v8->_imageType;
      v8->_imageType = v10;

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

- (VUIImage)initWithURL:(id)a3 cacheImmediately:(BOOL)a4
{
  v4 = a4;
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7 && (v23.receiver = self, v23.super_class = VUIImage, (self = [(VUIImage *)&v23 init]) != 0))
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

- (VUIImage)initWithData:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && (v19.receiver = self, v19.super_class = VUIImage, (self = [(VUIImage *)&v19 init]) != 0))
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
      self->_cacheImmediately = !+[VUICoreUtilities canHandleDecodingOnRenderThread];
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
  v8.super_class = VUIImage;
  [(VUIImage *)&v8 dealloc];
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(VUIImage *)self image];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextDrawImage(a3, *&v10, v9);
}

- (id)uiImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(VUIImage *)self image];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = [v3 imageWithCGImage:v4 scale:-[VUIImage _uiImageOrientation](self orientation:{"_uiImageOrientation"), v6}];

  return v7;
}

- (CGImage)image
{
  v2 = self;
  objc_sync_enter(v2);
  image = v2->_image;
  if (!image)
  {
    [(VUIImage *)v2 _initializeCGImageWithRotation];
    image = v2->_image;
  }

  objc_sync_exit(v2);

  return image;
}

- (BOOL)hasAlpha
{
  imageType = self->_imageType;
  v4 = [*MEMORY[0x277CE1D90] identifier];
  LODWORD(imageType) = [(NSString *)imageType isEqualToString:v4];

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

- (id)squareImageFromNearSquareImageWithAspectRatioLimit:(float)a3
{
  v5 = [(VUIImage *)self image];
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
    [(VUIImage *)self largestSquareRect];
    v16 = CGImageCreateWithImageInRect(v15, v18);
    v13 = [VUIImage imageWithCGImageRef:v16 preserveAlpha:0];
    CGImageRelease(v16);
  }

  return v13;
}

- (int64_t)_uiImageOrientation
{
  v3 = objc_opt_class();
  v4 = [(VUIImage *)self orientation];

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
    return dword_270EA2CD8[a3 - 1];
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
    return qword_270EA2CF8[a3 - 2];
  }
}

- (id)_initWithCGImageSourceRotationEnabled:(CGImageSource *)a3
{
  if (a3)
  {
    v15.receiver = self;
    v15.super_class = VUIImage;
    self = [(VUIImage *)&v15 init];
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

      [(VUIImage *)v4 _initializeCGImageWithRotation];
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
    v8 = [MEMORY[0x277CCACC8] isMainThread];
    cacheImmediately = self->_cacheImmediately;
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v8;
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
        v16 = [v15 imageByPreparingForDisplay];

        if (v16)
        {
          CGImageRelease(self->_image);
          v17 = [v16 CGImage];
          self->_image = v17;
          CGImageRetain(v17);
        }
      }

      else
      {
        Width = CGImageGetWidth(self->_image);
        Height = CGImageGetHeight(self->_image);
        v16 = [VUIGraphicsImageRenderer formatWithCGImage:self->_image];
        [v16 setScale:1.0];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __42__VUIImage__initializeCGImageWithRotation__block_invoke;
        v45[3] = &unk_279E21F88;
        v45[4] = self;
        v28 = [VUIGraphicsImageRenderer imageWithSize:v16 format:v45 cgContextActions:Width, Height];
        if (v28)
        {
          CGImageRelease(self->_image);
          v29 = [v28 CGImage];
          self->_image = v29;
          CGImageRetain(v29);
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