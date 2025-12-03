@interface TSDBitmapRenderingQualityImageMapValue
- (CGImage)degradedImageRefForProvider:(id)provider quality:(unint64_t)quality canvasScale:(double)scale;
- (CGImage)getDegradedImageRefFromProvider:(id)provider quality:(unint64_t)quality canvasScale:(double)scale;
- (CGSize)maxSize;
- (void)addSize:(CGSize)size;
- (void)dealloc;
@end

@implementation TSDBitmapRenderingQualityImageMapValue

- (void)dealloc
{
  CGImageRelease(self->mDegradedImageRef);
  v3.receiver = self;
  v3.super_class = TSDBitmapRenderingQualityImageMapValue;
  [(TSDBitmapRenderingQualityImageMapValue *)&v3 dealloc];
}

- (void)addSize:(CGSize)size
{
  TSUCeilSize();
  height = self->mMaxSize.height;
  if (width > self->mMaxSize.width || (width = self->mMaxSize.width, v5 > height))
  {
    if (height >= v5)
    {
      v5 = self->mMaxSize.height;
    }

    self->mMaxSize.width = width;
    self->mMaxSize.height = v5;
    mDegradedImageRef = self->mDegradedImageRef;
    if (mDegradedImageRef)
    {
      CGImageRelease(mDegradedImageRef);
      self->mDegradedImageRef = 0;
    }
  }
}

- (CGImage)degradedImageRefForProvider:(id)provider quality:(unint64_t)quality canvasScale:(double)scale
{
  result = self->mDegradedImageRef;
  if (!result)
  {
    DegradedImageRefFromProvider_quality_canvasScale = objc_msgSend_getDegradedImageRefFromProvider_quality_canvasScale_(self, a2, provider, quality, scale);
    self->mDegradedImageRef = DegradedImageRefFromProvider_quality_canvasScale;
    CGImageRetain(DegradedImageRefFromProvider_quality_canvasScale);
    return self->mDegradedImageRef;
  }

  return result;
}

- (CGImage)getDegradedImageRefFromProvider:(id)provider quality:(unint64_t)quality canvasScale:(double)scale
{
  providerCopy = provider;
  if (quality == 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDBitmapRenderingQualityImageMapValue getDegradedImageRefFromProvider:quality:canvasScale:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapRenderingQualityInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 132, 0, "Shouldn't be called for high DPI");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  TSUMultiplySizeScalar();
  TSUCeilSize();
  v17 = v16;
  v19 = v18;
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    TSDMaxPixelAreaForiOSImages();
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
    v17 = v20;
    v19 = v21;
  }

  v22 = [TSDBitmapRenderingQualityInfo alloc];
  v24 = objc_msgSend_initWithQuality_canvasScale_(v22, v23, quality, scale);
  v25 = [TSDImageRenderingConfiguration alloc];
  v27 = objc_msgSend_initWithBitmapQualityInfo_(v25, v26, v24);
  v29 = objc_msgSend_CGImageResampledToSize_renderingConfiguration_(providerCopy, v28, v27, v17, v19);

  return v29;
}

- (CGSize)maxSize
{
  width = self->mMaxSize.width;
  height = self->mMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end