@interface TSDBitmapImageProvider
+ (CGImage)CGImageForImageData:(id)a3;
+ (CGImage)temporaryCGImageForImageData:(id)a3;
+ (CGImageSource)p_newImageSourceFromCacheForData:(id)a3 withFilenameSuffix:(id)a4;
+ (CGImageSource)p_newImageSourceFromFilePath:(id)a3;
+ (CGImageSource)temporaryCGImageSourceForImageData:(id)a3;
+ (CGSize)naturalSizeForImageData:(id)a3;
+ (id)TSUImageForImageData:(id)a3;
+ (void)clearCacheForData:(id)a3;
- (BOOL)isValid;
- (CGImage)CGImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orLayer:(id)a5;
- (CGImage)CGImageForSize:(CGSize)a3 lowQuality:(BOOL)a4;
- (CGImage)p_loadOrCreateResampledImageWithScale:(unint64_t)a3 andCGImage:(CGImage *)a4;
- (CGImage)p_newImageFromSource:(CGImageSource *)a3;
- (CGImage)p_resampledImageOfSizeType:(int)a3;
- (CGImageSource)p_newCGImageSource;
- (CGImageSource)p_newCGImageSourceForTemporaryUse;
- (CGImageSource)p_newImageOfSize:(CGSize)a3 andWriteToCacheWithSuffix:(id)a4;
- (CGSize)dpiAdjustedFillSize;
- (CGSize)dpiAdjustedNaturalSize;
- (CGSize)naturalSize;
- (unint64_t)imageDPI;
- (unint64_t)imageGamut;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)flush;
- (void)i_commonInit;
- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)a3 andImage:(CGImage *)a4;
- (void)p_loadFullSizedImageIfNecessary;
- (void)p_loadSourceRefIfNecessary;
@end

@implementation TSDBitmapImageProvider

+ (CGImage)CGImageForImageData:(id)a3
{
  objc_opt_class();
  [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  v4 = TSUDynamicCast();

  return [v4 CGImageForNaturalSize];
}

+ (CGImage)temporaryCGImageForImageData:(id)a3
{
  v4 = [a3 type];
  if (UTTypeConformsTo(v4, *MEMORY[0x277CC20B0]))
  {
    v5 = [(TSDImageProvider *)[TSDBitmapImageProvider alloc] initWithImageData:a3];
  }

  else
  {
    v5 = 0;
  }

  return [(TSDBitmapImageProvider *)v5 CGImageForNaturalSize];
}

+ (CGImageSource)temporaryCGImageSourceForImageData:(id)a3
{
  v4 = [a3 type];
  if (UTTypeConformsTo(v4, *MEMORY[0x277CC20B0]))
  {
    v5 = [(TSDImageProvider *)[TSDBitmapImageProvider alloc] initWithImageData:a3];
  }

  else
  {
    v5 = 0;
  }

  return [(TSDBitmapImageProvider *)v5 CGImageSource];
}

+ (id)TSUImageForImageData:(id)a3
{
  result = [a1 CGImageForImageData:a3];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x277D6C2F8];

    return [v5 imageWithCGImage:v4];
  }

  return result;
}

+ (CGSize)naturalSizeForImageData:(id)a3
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider i_commonInit]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 181, @"called i_common init twice on same object!"}];
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

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![(TSDBitmapImageProvider *)self isValid])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider drawImageInContext:rect:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 234, @"shouldn't be drawing an invalid image provider"}];
  }

  v12 = [(TSDBitmapImageProvider *)self CGImageForSize:a3 inContext:0 orLayer:width, height];
  if (v12)
  {
    v13 = v12;
    CGContextSaveGState(a3);
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
    CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
    CGContextScaleCTM(a3, 1.0, -1.0);
    [(TSDBitmapImageProvider *)self orientation];
    TSUImageOrientationTransform();
    CGContextConcatCTM(a3, &v16);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGContextDrawImage(a3, v19, v13);
    CGContextRestoreGState(a3);
  }
}

- (CGImage)CGImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orLayer:(id)a5
{
  height = a3.height;
  width = a3.width;
  [(TSDBitmapImageProvider *)self p_loadImageMetadata];
  BitmapQualityInfo = TSDCGContextGetBitmapQualityInfo(a4);
  if (a4)
  {
    if (a5)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider CGImageForSize:inContext:orLayer:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 288, @"using context to determine requested image size. layer should be nil"}];
    }

    if ((TSDCGContextIsPrintContext(a4) & 1) != 0 || TSDCGContextIsPDFContext(a4))
    {
      [(TSDBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
      if (!BitmapQualityInfo)
      {
        return self->mImage;
      }
    }

    v13 = TSDCGContextAssociatedScreenScale(a4);
    v14 = TSDMultiplySizeScalar(width, height, v13);
    v16 = v15;
    CGContextGetCTM(&v34, a4);
    v17 = TSDTransformScale(&v34.a);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    [a5 contentsScale];
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
      v32 = self;
      v33 = 1;
      return [(TSDBitmapImageProvider *)v32 p_resampledImageOfSizeType:v33, v30];
    }

    [(TSDBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
    return self->mImage;
  }

  v32 = self;
  v33 = 2;
  return [(TSDBitmapImageProvider *)v32 p_resampledImageOfSizeType:v33, v30];
}

- (CGImage)CGImageForSize:(CGSize)a3 lowQuality:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
    v16 = [(TSDImageProvider *)self imageData];
    v17 = TSDResampledImageFromProvider(self, 0, [objc_msgSend(v16 "filename")], objc_msgSend(v16, "context"), v4 | 0x14, v12, v15);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
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

- (CGImage)p_loadOrCreateResampledImageWithScale:(unint64_t)a3 andCGImage:(CGImage *)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  [(TSDBitmapImageProvider *)self naturalSize];
  v9 = TSDMultiplySizeScalar(v7, v8, a3 / 100.0);
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
  v14 = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (v14)
  {
    v15 = v14;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v14, 0, v13);
    CFRelease(v15);
  }

  else
  {
    ThumbnailAtIndex = 0;
  }

  *a4 = ThumbnailAtIndex;
  return ThumbnailAtIndex;
}

- (CGImage)p_resampledImageOfSizeType:(int)a3
{
  dispatch_semaphore_wait(self->mImageLock, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        dispatch_semaphore_signal(self->mImageLock);
LABEL_13:
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapImageProvider p_resampledImageOfSizeType:]"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapImageProvider.m"), 466, @"Couldn't resample image for faster rendering"}];
        return self->mImage;
      }

      mQuarterSizeImage = self->mQuarterSizeImage;
      if (!mQuarterSizeImage)
      {
        p_mQuarterSizeImage = &self->mQuarterSizeImage;
        v7 = self;
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
    v7 = self;
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
    v7 = self;
    v8 = 100;
  }

LABEL_12:
  mQuarterSizeImage = [(TSDBitmapImageProvider *)v7 p_loadOrCreateResampledImageWithScale:v8 andCGImage:p_mQuarterSizeImage];
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
    v4 = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
    if (v4)
    {
      v5 = v4;
      v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
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
  v3 = [(TSDBitmapImageProvider *)self imageDPI];
  [(TSDBitmapImageProvider *)self naturalSize];
  if (v3 >= 0x49)
  {
    v6 = TSDMultiplySizeScalar(v4, v5, 72.0 / v3);

    v4 = TSDCeilSize(v6);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)dpiAdjustedNaturalSize
{
  v3 = [(TSDBitmapImageProvider *)self imageDPI];
  v4 = 1.0;
  if (v3 >= 0x79)
  {
    v4 = 72.0 / v3;
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
      v3 = [(TSDBitmapImageProvider *)self p_newCGImageSource];
      if (v3)
      {
        [(TSDBitmapImageProvider *)self p_configureOrientationAndSizeFromImageSource:v3 andImage:0];
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      self->mImageSource = v3;
      self->super.mLoadState = v4;
    }

    mImageLock = self->mImageLock;

    dispatch_semaphore_signal(mImageLock);
  }
}

- (CGImageSource)p_newCGImageSource
{
  v2 = [(TSDImageProvider *)self imageData];

  return [v2 newCGImageSource];
}

- (CGImage)p_newImageFromSource:(CGImageSource *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [v4 dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x277CD3618], 0}];

  return CGImageSourceCreateImageAtIndex(a3, 0, v6);
}

- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)a3 andImage:(CGImage *)a4
{
  v7 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
  if (!v7)
  {
    v9 = 0;
LABEL_12:
    if (!a4)
    {
      a4 = [(TSDBitmapImageProvider *)self p_newImageFromSource:a3];
      self->mImage = a4;
    }

    Width = CGImageGetWidth(a4);
    Height = CGImageGetHeight(a4);
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

+ (void)clearCacheForData:(id)a3
{
  if (([a3 isApplicationData] & 1) == 0)
  {
    v5 = [a1 p_cacheStringForData:a3];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 stringByAppendingString:@"-50.png"];
      v8 = [v6 stringByAppendingString:@"-25.png"];
      if ([v6 isAbsolutePath])
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        [v9 removeItemAtPath:v7 error:0];

        [v9 removeItemAtPath:v8 error:0];
      }

      else
      {
        v10 = [objc_msgSend(a3 "context")];
        [v10 writeData:0 atDocumentCachePath:v7];

        [v10 writeData:0 atDocumentCachePath:v8];
      }
    }
  }
}

+ (CGImageSource)p_newImageSourceFromCacheForData:(id)a3 withFilenameSuffix:(id)a4
{
  result = [a1 p_cacheStringForData:?];
  if (result)
  {
    v8 = [(CGImageSource *)result stringByAppendingString:a4];
    if ([v8 isAbsolutePath])
    {

      return [a1 p_newImageSourceFromFilePath:v8];
    }

    else
    {
      v9 = [objc_msgSend(a3 "context")];

      return [v9 newImageSourceForDocumentCachePath:v8];
    }
  }

  return result;
}

+ (CGImageSource)p_newImageSourceFromFilePath:(id)a3
{
  result = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], a3, kCFURLPOSIXPathStyle, 0);
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

- (CGImageSource)p_newImageOfSize:(CGSize)a3 andWriteToCacheWithSuffix:(id)a4
{
  height = a3.height;
  width = a3.width;
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
  v17 = [(TSDBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (v17)
  {
    v18 = v17;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v17, 0, v16);
    CFRelease(v18);
    if (ThumbnailAtIndex)
    {
      v20 = MEMORY[0x277CE1E10];
      if (a4 && (v21 = [objc_msgSend(objc_opt_class() p_cacheStringForData:{-[TSDImageProvider imageData](self, "imageData")), "stringByAppendingString:", a4}], (a4 = v21) != 0))
      {
        if ([v21 isAbsolutePath])
        {
          v22 = [*v20 identifier];
          v23 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], a4, kCFURLPOSIXPathStyle, 0);
          v24 = CGImageDestinationCreateWithURL(v23, v22, 1uLL, 0);
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
      if ((v29 & 1) == 0 && ([a4 isAbsolutePath] & 1) == 0)
      {
        [objc_msgSend(objc_msgSend(-[TSDImageProvider imageData](self "imageData")];
      }

      goto LABEL_19;
    }
  }

  return 0;
}

@end