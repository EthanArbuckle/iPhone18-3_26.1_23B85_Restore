@interface TSDBitmapImageProvider
+ (CGImage)CGImageForImageData:(id)data;
+ (CGImage)temporaryCGImageForImageData:(id)data;
+ (CGImageSource)p_newImageSourceFromCacheForData:(id)data withFilenameSuffix:(id)suffix;
+ (CGImageSource)p_newImageSourceFromFilePath:(id)path;
+ (CGImageSource)temporaryCGImageSourceForImageData:(id)data;
+ (CGSize)naturalSizeForImageData:(id)data;
+ (id)TSUImageForImageData:(id)data;
+ (void)clearCacheForData:(id)data;
- (BOOL)isValid;
- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orLayer:(id)layer;
- (CGImage)CGImageForSize:(CGSize)size lowQuality:(BOOL)quality;
- (CGImage)p_loadOrCreateResampledImageWithScale:(unint64_t)scale andCGImage:(CGImage *)image;
- (CGImage)p_newImageFromSource:(CGImageSource *)source;
- (CGImage)p_resampledImageOfSizeType:(int)type;
- (CGImageSource)p_newCGImageSource;
- (CGImageSource)p_newCGImageSourceForTemporaryUse;
- (CGImageSource)p_newImageOfSize:(CGSize)size andWriteToCacheWithSuffix:(id)suffix;
- (CGSize)dpiAdjustedFillSize;
- (CGSize)dpiAdjustedNaturalSize;
- (CGSize)naturalSize;
- (unint64_t)imageDPI;
- (unint64_t)imageGamut;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
- (void)flush;
- (void)i_commonInit;
- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image;
- (void)p_loadFullSizedImageIfNecessary;
- (void)p_loadSourceRefIfNecessary;
@end

@implementation TSDBitmapImageProvider

+ (CGImage)CGImageForImageData:(id)data
{
  objc_opt_class();
  [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  v4 = TSUDynamicCast();

  return [v4 CGImageForNaturalSize];
}

+ (CGImage)temporaryCGImageForImageData:(id)data
{
  type = [data type];
  if (UTTypeConformsTo(type, *MEMORY[0x277CC20B0]))
  {
    v5 = [(TSDImageProvider *)[TSDBitmapImageProvider alloc] initWithImageData:data];
  }

  else
  {
    v5 = 0;
  }

  return [(TSDBitmapImageProvider *)v5 CGImageForNaturalSize];
}

+ (CGImageSource)temporaryCGImageSourceForImageData:(id)data
{
  type = [data type];
  if (UTTypeConformsTo(type, *MEMORY[0x277CC20B0]))
  {
    v5 = [(TSDImageProvider *)[TSDBitmapImageProvider alloc] initWithImageData:data];
  }

  else
  {
    v5 = 0;
  }

  return [(TSDBitmapImageProvider *)v5 CGImageSource];
}

+ (id)TSUImageForImageData:(id)data
{
  result = [self CGImageForImageData:data];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x277D6C2F8];

    return [v5 imageWithCGImage:v4];
  }

  return result;
}

+ (CGSize)naturalSizeForImageData:(id)data
{
  objc_opt_class();
  [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  v4 = TSUDynamicCast();
  if (v4)
  {
    [v4 naturalSize];
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)i_commonInit
{
  v5.receiver = self;
  v5.super_class = TSDBitmapImageProvider;
  [(TSDImageProvider *)&v5 i_commonInit];
  if (self->mImageLock)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider i_commonInit]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 181, @"called i_common init twice on same object!"}];
  }

  self->mImageLock = dispatch_semaphore_create(1);
  __dmb(0xBu);
}

- (void)dealloc
{
  CGImageRelease(self->mImage);
  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRelease(mImageSource);
  }

  CGImageRelease(self->mHalfSizeImage);
  CGImageRelease(self->mQuarterSizeImage);
  mImageLock = self->mImageLock;
  if (mImageLock)
  {
    dispatch_release(mImageLock);
  }

  v5.receiver = self;
  v5.super_class = TSDBitmapImageProvider;
  [(TSDImageProvider *)&v5 dealloc];
}

- (CGSize)naturalSize
{
  [(TSDBitmapImageProvider *)self p_loadImageMetadata];
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isValid
{
  [(TSDBitmapImageProvider *)self p_loadSourceRefIfNecessary];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TSDBitmapImageProvider_isValid__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (self->mCheckIfValidToken != -1)
  {
    dispatch_once(&self->mCheckIfValidToken, block);
  }

  return self->mIsValid;
}

void __33__TSDBitmapImageProvider_isValid__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) || *(v2 + 128) || *(v2 + 136))
  {
    *(v2 + 97) = 1;
  }

  else
  {
    v3 = [v2 p_newImageFromSource:*(v2 + 48)];
    *(*(a1 + 32) + 97) = v3 != 0;

    CGImageRelease(v3);
  }
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(TSDBitmapImageProvider *)self isValid])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider drawImageInContext:rect:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 234, @"shouldn't be drawing an invalid image provider"}];
  }

  height = [(TSDBitmapImageProvider *)self CGImageForSize:context inContext:0 orLayer:width, height];
  if (height)
  {
    v13 = height;
    CGContextSaveGState(context);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MinY = CGRectGetMinY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MaxY = CGRectGetMaxY(v18);
    CGContextTranslateCTM(context, 0.0, MinY + MaxY);
    CGContextScaleCTM(context, 1.0, -1.0);
    [(TSDBitmapImageProvider *)self orientation];
    TSUImageOrientationTransform();
    CGContextConcatCTM(context, &v16);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGContextDrawImage(context, v19, v13);
    CGContextRestoreGState(context);
  }
}

- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orLayer:(id)layer
{
  height = size.height;
  width = size.width;
  [(TSDBitmapImageProvider *)self p_loadImageMetadata];
  BitmapQualityInfo = TSDCGContextGetBitmapQualityInfo(context);
  if (context)
  {
    if (layer)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider CGImageForSize:inContext:orLayer:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 288, @"using context to determine requested image size. layer should be nil"}];
    }

    if ((TSDCGContextIsPrintContext(context) & 1) != 0 || TSDCGContextIsPDFContext(context))
    {
      [(TSDBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
      if (!BitmapQualityInfo)
      {
        return self->mImage;
      }
    }

    v13 = TSDCGContextAssociatedScreenScale(context);
    v14 = TSDMultiplySizeScalar(width, height, v13);
    v16 = v15;
    CGContextGetCTM(&v34, context);
    v17 = TSDTransformScale(&v34.a);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    if (!layer)
    {
      goto LABEL_11;
    }

    [layer contentsScale];
    v17 = v20;
    v18 = width;
    v19 = height;
  }

  width = TSDMultiplySizeScalar(v18, v19, v17);
  height = v21;
LABEL_11:
  if (BitmapQualityInfo)
  {
    return [BitmapQualityInfo degradedImageRefForProvider:self ofSize:{width, height}];
  }

  [(TSDBitmapImageProvider *)self naturalSize];
  v24 = v23;
  v26 = v25;
  v27 = TSDMultiplySizeScalar(v23, v25, 0.25);
  v29 = v28;
  v30 = TSDMultiplySizeScalar(v24, v26, 0.5);
  if (width > v27 || v29 < 1.0 || height > v29 || v27 < 1.0)
  {
    if (width <= v30 && v31 >= 1.0 && height <= v31 && v30 >= 1.0)
    {
      selfCopy2 = self;
      v33 = 1;
      return [(TSDBitmapImageProvider *)selfCopy2 p_resampledImageOfSizeType:v33, v30];
    }

    [(TSDBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
    return self->mImage;
  }

  selfCopy2 = self;
  v33 = 2;
  return [(TSDBitmapImageProvider *)selfCopy2 p_resampledImageOfSizeType:v33, v30];
}

- (CGImage)CGImageForSize:(CGSize)size lowQuality:(BOOL)quality
{
  qualityCopy = quality;
  height = size.height;
  width = size.width;
  [(TSDBitmapImageProvider *)self naturalSize];
  v10 = v9;
  if (width < v8)
  {
LABEL_5:
    v11 = width;
    v12 = ceilf(v11);
    if (height >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = height;
    }

    v14 = v13;
    v15 = ceilf(v14);
    imageData = [(TSDImageProvider *)self imageData];
    v17 = TSDResampledImageFromProvider(self, 0, [objc_msgSend(imageData "filename")], objc_msgSend(imageData, "context"), qualityCopy | 0x14, v12, v15);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = imageData;
    }

    return [TSDBitmapImageProvider CGImageForImageData:v18];
  }

  if (height < v9)
  {
    width = v8;
    goto LABEL_5;
  }

  width = v8;
  if ([(TSDBitmapImageProvider *)self isOpaque])
  {
    goto LABEL_5;
  }

  return [(TSDBitmapImageProvider *)self CGImageForNaturalSize];
}

- (CGImage)p_loadOrCreateResampledImageWithScale:(unint64_t)scale andCGImage:(CGImage *)image
{
  v19[3] = *MEMORY[0x277D85DE8];
  [(TSDBitmapImageProvider *)self naturalSize];
  v9 = TSDMultiplySizeScalar(v7, v8, scale / 100.0);
  if (v9 <= v10)
  {
    v9 = v10;
  }

  v11 = v9;
  v12 = *MEMORY[0x277CD3578];
  v18[0] = *MEMORY[0x277CD3568];
  v18[1] = v12;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = MEMORY[0x277CBEC28];
  v18[2] = *MEMORY[0x277CD3660];
  v19[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtps_u32_f32(v11)];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  p_newCGImageSourceForTemporaryUse = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (p_newCGImageSourceForTemporaryUse)
  {
    v15 = p_newCGImageSourceForTemporaryUse;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(p_newCGImageSourceForTemporaryUse, 0, v13);
    CFRelease(v15);
  }

  else
  {
    ThumbnailAtIndex = 0;
  }

  *image = ThumbnailAtIndex;
  return ThumbnailAtIndex;
}

- (CGImage)p_resampledImageOfSizeType:(int)type
{
  dispatch_semaphore_wait(self->mImageLock, 0xFFFFFFFFFFFFFFFFLL);
  if (type)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        dispatch_semaphore_signal(self->mImageLock);
LABEL_13:
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider p_resampledImageOfSizeType:]"];
        [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 466, @"Couldn't resample image for faster rendering"}];
        return self->mImage;
      }

      mQuarterSizeImage = self->mQuarterSizeImage;
      if (!mQuarterSizeImage)
      {
        p_mQuarterSizeImage = &self->mQuarterSizeImage;
        selfCopy3 = self;
        v8 = 25;
        goto LABEL_12;
      }

LABEL_9:
      dispatch_semaphore_signal(self->mImageLock);
      return mQuarterSizeImage;
    }

    mQuarterSizeImage = self->mHalfSizeImage;
    if (mQuarterSizeImage)
    {
      goto LABEL_9;
    }

    p_mQuarterSizeImage = &self->mHalfSizeImage;
    selfCopy3 = self;
    v8 = 50;
  }

  else
  {
    mQuarterSizeImage = self->mImage;
    if (mQuarterSizeImage)
    {
      goto LABEL_9;
    }

    p_mQuarterSizeImage = &self->mImage;
    selfCopy3 = self;
    v8 = 100;
  }

LABEL_12:
  mQuarterSizeImage = [(TSDBitmapImageProvider *)selfCopy3 p_loadOrCreateResampledImageWithScale:v8 andCGImage:p_mQuarterSizeImage];
  dispatch_semaphore_signal(self->mImageLock);
  if (!mQuarterSizeImage)
  {
    goto LABEL_13;
  }

  return mQuarterSizeImage;
}

- (unint64_t)imageGamut
{
  [(TSDBitmapImageProvider *)self p_loadImageMetadata];
  result = self->mImageGamut;
  if (!result)
  {
    [(TSDBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
    result = self->mImage;
    if (result)
    {
      ColorSpace = CGImageGetColorSpace(result);
      if (CGColorSpaceIsWideGamutRGB(ColorSpace))
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      self->mImageGamut = result;
    }
  }

  return result;
}

- (unint64_t)imageDPI
{
  result = self->mDPI;
  if (!result)
  {
    p_newCGImageSourceForTemporaryUse = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
    if (p_newCGImageSourceForTemporaryUse)
    {
      v5 = p_newCGImageSourceForTemporaryUse;
      v6 = CGImageSourceCopyPropertiesAtIndex(p_newCGImageSourceForTemporaryUse, 0, 0);
      CFRelease(v5);
      v7 = [-[__CFDictionary objectForKey:](v6 objectForKey:{*MEMORY[0x277CD2F28]), "unsignedIntegerValue"}];
      if (v6)
      {
        CFRelease(v6);
      }

      if (v7)
      {
        result = v7;
      }

      else
      {
        result = 72;
      }

      self->mDPI = result;
    }

    else
    {
      return self->mDPI;
    }
  }

  return result;
}

- (CGSize)dpiAdjustedFillSize
{
  imageDPI = [(TSDBitmapImageProvider *)self imageDPI];
  [(TSDBitmapImageProvider *)self naturalSize];
  if (imageDPI >= 0x49)
  {
    v6 = TSDMultiplySizeScalar(v4, v5, 72.0 / imageDPI);

    v4 = TSDCeilSize(v6);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)dpiAdjustedNaturalSize
{
  imageDPI = [(TSDBitmapImageProvider *)self imageDPI];
  v4 = 1.0;
  if (imageDPI >= 0x79)
  {
    v4 = 72.0 / imageDPI;
  }

  if ([objc_msgSend(-[TSDImageProvider imageData](self "imageData")])
  {
    v4 = 0.5;
  }

  [(TSDBitmapImageProvider *)self naturalSize];
  if (v4 != 1.0 && fabs(v4 + -1.0) >= 0.000000999999997)
  {
    v7 = TSDMultiplySizeScalar(v5, v6, v4);

    v5 = TSDCeilSize(v7);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)flush
{
  dispatch_semaphore_wait(self->mImageLock, 0xFFFFFFFFFFFFFFFFLL);
  mImage = self->mImage;
  if (mImage)
  {
    CGImageRelease(mImage);
    self->mImage = 0;
  }

  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRelease(mImageSource);
    self->mImageSource = 0;
  }

  if (self->super.mLoadState == 1)
  {
    self->super.mLoadState = 0;
  }

  mHalfSizeImage = self->mHalfSizeImage;
  if (mHalfSizeImage)
  {
    CGImageRelease(mHalfSizeImage);
    self->mHalfSizeImage = 0;
  }

  mQuarterSizeImage = self->mQuarterSizeImage;
  if (mQuarterSizeImage)
  {
    CGImageRelease(mQuarterSizeImage);
    self->mQuarterSizeImage = 0;
  }

  mImageLock = self->mImageLock;

  dispatch_semaphore_signal(mImageLock);
}

- (void)p_loadFullSizedImageIfNecessary
{
  if (self->mImage || self->super.mLoadState == 2)
  {
    return;
  }

  dispatch_semaphore_wait(self->mImageLock, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->mImage && self->super.mLoadState != 2)
  {
    mImageSource = self->mImageSource;
    if (mImageSource)
    {
      CFRetain(self->mImageSource);
    }

    else
    {
      mImageSource = [(TSDBitmapImageProvider *)self p_newCGImageSource];
      if (!mImageSource)
      {
        v4 = 0;
LABEL_12:
        self->mImage = v4;
        if (v4)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }

        self->super.mLoadState = v5;
        goto LABEL_16;
      }
    }

    v4 = [(TSDBitmapImageProvider *)self p_newImageFromSource:mImageSource];
    if (v4)
    {
      [(TSDBitmapImageProvider *)self p_configureOrientationAndSizeFromImageSource:mImageSource andImage:v4];
    }

    CFRelease(mImageSource);
    goto LABEL_12;
  }

LABEL_16:
  mImageLock = self->mImageLock;

  dispatch_semaphore_signal(mImageLock);
}

- (void)p_loadSourceRefIfNecessary
{
  if (!self->mImageSource && self->super.mLoadState != 2)
  {
    dispatch_semaphore_wait(self->mImageLock, 0xFFFFFFFFFFFFFFFFLL);
    if (!self->mImageSource && self->super.mLoadState != 2)
    {
      p_newCGImageSource = [(TSDBitmapImageProvider *)self p_newCGImageSource];
      if (p_newCGImageSource)
      {
        [(TSDBitmapImageProvider *)self p_configureOrientationAndSizeFromImageSource:p_newCGImageSource andImage:0];
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      self->mImageSource = p_newCGImageSource;
      self->super.mLoadState = v4;
    }

    mImageLock = self->mImageLock;

    dispatch_semaphore_signal(mImageLock);
  }
}

- (CGImageSource)p_newCGImageSource
{
  imageData = [(TSDImageProvider *)self imageData];

  return [imageData newCGImageSource];
}

- (CGImage)p_newImageFromSource:(CGImageSource *)source
{
  if (!source)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [v4 dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x277CD3618], 0}];

  return CGImageSourceCreateImageAtIndex(source, 0, v6);
}

- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image
{
  v7 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
  if (!v7)
  {
    v9 = 0;
LABEL_12:
    if (!image)
    {
      image = [(TSDBitmapImageProvider *)self p_newImageFromSource:source];
      self->mImage = image;
    }

    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [-[__CFDictionary objectForKey:](v7 objectForKey:{*MEMORY[0x277CD3410]), "intValue"}];
  Value = CFDictionaryGetValue(v8, *MEMORY[0x277CD3450]);
  Height = 0.0;
  Width = 0.0;
  if (Value)
  {
    [Value tsu_CGFloatValue];
    Width = v13;
  }

  v14 = CFDictionaryGetValue(v8, *MEMORY[0x277CD3448]);
  if (v14)
  {
    [v14 tsu_CGFloatValue];
    Height = v15;
  }

  v16 = CFDictionaryGetValue(v8, *MEMORY[0x277CD3368]);
  if (v16)
  {
    v17 = CFEqual(v16, *MEMORY[0x277CBED10]) != 0;
  }

  else
  {
    v17 = 1;
  }

  self->mIsOpaque = v17;
  CFRelease(v8);
  if (Width == 0.0 || Height == 0.0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v18 = v9 - 1;
  if ((v9 - 1) >= 8)
  {
    self->mOrientation = 0;
  }

  else
  {
    self->mOrientation = p_configureOrientationAndSizeFromImageSource_andImage____orientationMapping[v18];
    if (v18 >= 4)
    {
      v19 = Height;
    }

    else
    {
      v19 = Width;
    }

    if (v18 >= 4)
    {
      Height = Width;
    }

    Width = v19;
  }

  self->mNaturalSize.width = Width;
  self->mNaturalSize.height = Height;
}

+ (void)clearCacheForData:(id)data
{
  if (([data isApplicationData] & 1) == 0)
  {
    v5 = [self p_cacheStringForData:data];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 stringByAppendingString:@"-50.png"];
      v8 = [v6 stringByAppendingString:@"-25.png"];
      if ([v6 isAbsolutePath])
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v7 error:0];

        [defaultManager removeItemAtPath:v8 error:0];
      }

      else
      {
        v10 = [objc_msgSend(data "context")];
        [v10 writeData:0 atDocumentCachePath:v7];

        [v10 writeData:0 atDocumentCachePath:v8];
      }
    }
  }
}

+ (CGImageSource)p_newImageSourceFromCacheForData:(id)data withFilenameSuffix:(id)suffix
{
  result = [self p_cacheStringForData:?];
  if (result)
  {
    v8 = [(CGImageSource *)result stringByAppendingString:suffix];
    if ([v8 isAbsolutePath])
    {

      return [self p_newImageSourceFromFilePath:v8];
    }

    else
    {
      v9 = [objc_msgSend(data "context")];

      return [v9 newImageSourceForDocumentCachePath:v8];
    }
  }

  return result;
}

+ (CGImageSource)p_newImageSourceFromFilePath:(id)path
{
  result = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], path, kCFURLPOSIXPathStyle, 0);
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x277CBEAC0];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v7 = CGImageSourceCreateWithURL(v4, [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277CD3618], 0}]);
    CFRelease(v4);
    return v7;
  }

  return result;
}

- (CGImageSource)p_newCGImageSourceForTemporaryUse
{
  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRetain(self->mImageSource);
    return mImageSource;
  }

  else
  {

    return [(TSDBitmapImageProvider *)self p_newCGImageSource];
  }
}

- (CGImageSource)p_newImageOfSize:(CGSize)size andWriteToCacheWithSuffix:(id)suffix
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x277CBEAC0];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10 = *MEMORY[0x277CD3568];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v12 = *MEMORY[0x277CD3578];
  if (width <= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  v14 = v13;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtps_u32_f32(v14)];
  v16 = [v8 dictionaryWithObjectsAndKeys:{v9, v10, v11, v12, v15, *MEMORY[0x277CD3660], 0}];
  p_newCGImageSourceForTemporaryUse = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (p_newCGImageSourceForTemporaryUse)
  {
    v18 = p_newCGImageSourceForTemporaryUse;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(p_newCGImageSourceForTemporaryUse, 0, v16);
    CFRelease(v18);
    if (ThumbnailAtIndex)
    {
      v20 = MEMORY[0x277CE1E10];
      if (suffix && (v21 = [objc_msgSend(objc_opt_class() p_cacheStringForData:{-[TSDImageProvider imageData](self, "imageData")), "stringByAppendingString:", suffix}], (suffix = v21) != 0))
      {
        if ([v21 isAbsolutePath])
        {
          identifier = [*v20 identifier];
          v23 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], suffix, kCFURLPOSIXPathStyle, 0);
          v24 = CGImageDestinationCreateWithURL(v23, identifier, 1uLL, 0);
          if (v24)
          {
            v25 = v24;
            CGImageDestinationAddImage(v24, ThumbnailAtIndex, 0);
            CGImageDestinationFinalize(v25);
            CFRelease(v25);
            v26 = MEMORY[0x277CBEAC0];
            v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
            v28 = CGImageSourceCreateWithURL(v23, [v26 dictionaryWithObjectsAndKeys:{v27, *MEMORY[0x277CD3618], 0}]);
            CFRelease(v23);
LABEL_19:
            CGImageRelease(ThumbnailAtIndex);
            return v28;
          }

          CFRelease(v23);
        }

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v31 = CGImageDestinationCreateWithData(v30, [*v20 identifier], 1uLL, 0);
      CGImageDestinationAddImage(v31, ThumbnailAtIndex, 0);
      CGImageDestinationFinalize(v31);
      CFRelease(v31);
      v28 = CGImageSourceCreateWithData(v30, 0);
      if ((v29 & 1) == 0 && ([suffix isAbsolutePath] & 1) == 0)
      {
        [objc_msgSend(objc_msgSend(-[TSDImageProvider imageData](self "imageData")];
      }

      goto LABEL_19;
    }
  }

  return 0;
}

@end