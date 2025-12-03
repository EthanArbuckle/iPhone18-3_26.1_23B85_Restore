@interface TSDBitmapImageProvider
+ (CGImage)CGImageForImageData:(id)data renderingConfiguration:(id)configuration;
+ (CGSize)naturalSizeForImageData:(id)data;
+ (id)TSUImageForImageData:(id)data renderingConfiguration:(id)configuration;
- (BOOL)hasHDRGainMap;
- (BOOL)i_hasFlushableContent;
- (BOOL)isOpaque;
- (BOOL)isValid;
- (BOOL)p_shouldScaleRetinaImages;
- (BOOL)prefersHDRRendering;
- (CGImage)CGImageForNaturalSizeWithRenderingConfiguration:(id)configuration;
- (CGImage)CGImageForSize:(CGSize)size withRenderingConfiguration:(id)configuration;
- (CGImage)CGImageOfAnySizeAndConfiguration;
- (CGImage)CGImageOfAnySizeWithRenderingConfiguration:(id)configuration;
- (CGImage)CGImageOfLargestSafeSizeWithRenderingConfiguration:(id)configuration;
- (CGImage)CGImageResampledToSize:(CGSize)size lowQuality:(BOOL)quality;
- (CGImage)CGImageResampledToSize:(CGSize)size renderingConfiguration:(id)configuration;
- (CGImage)p_createResampledImageWithReciprocalScale:(unint64_t)scale renderingConfiguration:(id)configuration;
- (CGImage)p_newImageFromSource:(CGImageSource *)source renderingConfiguration:(id)configuration;
- (CGImage)p_newImageOfSize:(CGSize)size fromSource:(CGImageSource *)source renderingConfiguration:(id)configuration;
- (CGImage)p_resampledImageOfReciprocalScale:(unint64_t)scale renderingConfiguration:(id)configuration;
- (CGImage)p_smallestImagePossibleWithRenderingConfiguration:(id)configuration;
- (CGImageSource)CGImageSource;
- (CGImageSource)p_newCGImageSource;
- (CGImageSource)p_newCGImageSourceForTemporaryUse;
- (CGSize)dpiAdjustedFillSize;
- (CGSize)dpiAdjustedNaturalSize;
- (CGSize)naturalSize;
- (int64_t)orientation;
- (int64_t)p_reciprocalScaleForImageSize:(CGSize)size;
- (unint64_t)imageDPI;
- (unint64_t)imageGamut;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
- (void)flush;
- (void)i_commonInit;
- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image;
- (void)p_configureRawBehaviorFromImageSource:(CGImageSource *)source;
- (void)p_flush;
- (void)p_loadFullSizedImageIfNecessaryWithRenderingConfiguration:(id)configuration;
- (void)p_loadLargestSafeImageIfNecessaryWithRenderingConfiguration:(id)configuration;
- (void)p_loadSourceRefIfNecessary;
- (void)p_updateEstimatedSize;
@end

@implementation TSDBitmapImageProvider

+ (CGImage)CGImageForImageData:(id)data renderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dataCopy = data;
  objc_opt_class();
  v9 = objc_msgSend_sharedPool(TSDImageProviderPool, v7, v8);
  v11 = objc_msgSend_temporaryProviderForData_shouldValidate_(v9, v10, dataCopy, 1);

  v12 = TSUDynamicCast();

  v14 = objc_msgSend_CGImageForNaturalSizeWithRenderingConfiguration_(v12, v13, configurationCopy);
  return v14;
}

+ (id)TSUImageForImageData:(id)data renderingConfiguration:(id)configuration
{
  v4 = objc_msgSend_CGImageForImageData_renderingConfiguration_(self, a2, data, configuration);
  if (v4)
  {
    v4 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v5, v4);
  }

  return v4;
}

+ (CGSize)naturalSizeForImageData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v6 = objc_msgSend_sharedPool(TSDImageProviderPool, v4, v5);
  v8 = objc_msgSend_temporaryProviderForData_shouldValidate_(v6, v7, dataCopy, 1);

  v9 = TSUDynamicCast();

  if (v9)
  {
    objc_msgSend_naturalSize(v9, v10, v11);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)i_commonInit
{
  v17.receiver = self;
  v17.super_class = TSDBitmapImageProvider;
  [(TSDImageProvider *)&v17 i_commonInit];
  if (self->mImageQueue)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDBitmapImageProvider i_commonInit]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 135, 0, "called i_common init twice on same object!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = dispatch_queue_create("com.apple.iWork.TSDBitmapImageProvider", 0);
  mImageQueue = self->mImageQueue;
  self->mImageQueue = v11;

  v13 = dispatch_semaphore_create(1);
  mFlushableContentLock = self->mFlushableContentLock;
  self->mFlushableContentLock = v13;

  v15 = objc_alloc_init(MEMORY[0x277D812A0]);
  mCheckIfValidOnce = self->mCheckIfValidOnce;
  self->mCheckIfValidOnce = v15;

  self->mImageDynamicRangeType = 0;
}

- (void)dealloc
{
  CGImageRelease(self->mFullSizedSDRImage);
  CGImageRelease(self->mFullSizedHDRImage);
  CGImageRelease(self->mLargestSafeSDRImage);
  CGImageRelease(self->mLargestSafeHDRImage);
  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRelease(mImageSource);
  }

  v4.receiver = self;
  v4.super_class = TSDBitmapImageProvider;
  [(TSDImageProvider *)&v4 dealloc];
}

- (CGSize)naturalSize
{
  objc_msgSend_p_loadImageMetadata(self, a2, v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  mImageQueue = self->mImageQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276775AC0;
  v9[3] = &unk_27A6CCAC0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(mImageQueue, v9);
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isValid
{
  objc_msgSend_p_loadSourceRefIfNecessary(self, a2, v2);
  mCheckIfValidOnce = self->mCheckIfValidOnce;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276775B70;
  v7[3] = &unk_27A6CC658;
  v7[4] = self;
  objc_msgSend_performBlockOnce_(mCheckIfValidOnce, v5, v7);
  return self->mIsValid;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((objc_msgSend_isValid(self, a2, context) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDBitmapImageProvider drawImageInContext:rect:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 221, 0, "shouldn't be drawing an invalid image provider");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v17, v18);
  }

  if (objc_msgSend_isValid(self, v10, v11))
  {
    v19 = [TSDImageRenderingConfiguration alloc];
    v21 = objc_msgSend_initWithCGContext_(v19, v20, context);
    v23 = objc_msgSend_CGImageForSize_withRenderingConfiguration_(self, v22, v21, width, height);
    if (v23)
    {
      v24 = v23;
      CGContextSaveGState(context);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      MinY = CGRectGetMinY(v33);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MaxY = CGRectGetMaxY(v34);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v29 = TSDCGContextGetBitmapQualityInfo(context);
      if (!v29)
      {
        objc_msgSend_orientation(self, v27, v28);
        TSUImageOrientationTransform();
        CGContextConcatCTM(context, &v32);
      }

      TSDCGContextDrawImageRecordingMaxHeadroom(context, v24, x, y, width, height);
      if (objc_msgSend_prefersHDRRendering(self, v30, v31))
      {
        if ((TSUCGImageWantsHDRRendering() & 1) == 0)
        {
          TSDCGContextMarkTonemappedHDRContentToSDR(context, 1);
        }
      }

      CGContextRestoreGState(context);
    }
  }
}

- (CGImage)CGImageOfAnySizeAndConfiguration
{
  if (objc_msgSend_isValid(self, a2, v2))
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    mImageQueue = self->mImageQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2767762D0;
    v29[3] = &unk_27A6CDB08;
    v29[4] = self;
    v29[5] = &v30;
    dispatch_sync(mImageQueue, v29);
    v6 = v31[3];
    if (!v6 || (CFAutorelease(v6), (v7 = v31[3]) == 0))
    {
      v8 = [TSDImageRenderingConfiguration alloc];
      inited = objc_msgSend_initWantsHDR_(v8, v9, 0);
      v12 = objc_msgSend_p_smallestImagePossibleWithRenderingConfiguration_(self, v11, inited);
      v31[3] = v12;
      if (!v12)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDBitmapImageProvider CGImageOfAnySizeAndConfiguration]");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 286, 0, "Failed to generate CGImageOfAnySizeAndConfiguration despite image provider being valid!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      }

      v7 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDBitmapImageProvider CGImageOfAnySizeAndConfiguration]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 262, 0, "Invalid image provider trying to render an image at any size");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
    return 0;
  }

  return v7;
}

- (CGImage)CGImageOfAnySizeWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_isValid(self, v5, v6))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    mImageQueue = self->mImageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2767765B4;
    block[3] = &unk_27A6CC8A8;
    v9 = configurationCopy;
    v30 = v9;
    selfCopy = self;
    v32 = &v33;
    dispatch_sync(mImageQueue, block);
    v11 = v34[3];
    if (!v11 || (CFAutorelease(v11), (v12 = v34[3]) == 0))
    {
      v12 = objc_msgSend_p_smallestImagePossibleWithRenderingConfiguration_(self, v10, v9);
      v34[3] = v12;
      if (!v12)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDBitmapImageProvider CGImageOfAnySizeWithRenderingConfiguration:]");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 334, 0, "Failed to generate CGImageOfAnySizeWithRenderingConfiguration despite image provider being valid!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        v12 = v34[3];
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDBitmapImageProvider CGImageOfAnySizeWithRenderingConfiguration:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 295, 0, "Invalid image provider trying to render an image at any size");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
    v12 = 0;
  }

  return v12;
}

- (CGImage)CGImageOfLargestSafeSizeWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_isValid(self, v5, v6))
  {
    v8 = TSDPlatformRisksMemoryCrashFromLargeImages();
    objc_msgSend_naturalSize(self, v9, v10);
    if (v8 && v12 * v13 > TSDMaxPixelAreaForiOSImages())
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      objc_msgSend_p_loadLargestSafeImageIfNecessaryWithRenderingConfiguration_(self, v11, configurationCopy);
      mImageQueue = self->mImageQueue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2767769B8;
      v30[3] = &unk_27A6CDB30;
      v15 = v31;
      v16 = configurationCopy;
      v31[1] = self;
      v31[2] = &v34;
      v31[0] = v16;
      dispatch_sync(mImageQueue, v30);
      v17 = v35[3];
      if (v17)
      {
        CFAutorelease(v17);
      }
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      objc_msgSend_p_loadFullSizedImageIfNecessaryWithRenderingConfiguration_(self, v11, configurationCopy);
      v26 = self->mImageQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276776948;
      block[3] = &unk_27A6CDB30;
      v15 = v33;
      v27 = configurationCopy;
      v33[1] = self;
      v33[2] = &v34;
      v33[0] = v27;
      dispatch_sync(v26, block);
      v28 = v35[3];
      if (v28)
      {
        CFAutorelease(v28);
      }
    }

    v25 = v35[3];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDBitmapImageProvider CGImageOfLargestSafeSizeWithRenderingConfiguration:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 343, 0, "Trying to get an image out of an invalid image provider.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v23, v24);
    v25 = 0;
  }

  return v25;
}

- (CGImage)CGImageForNaturalSizeWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_isValid(self, v5, v6))
  {
    objc_msgSend_p_loadFullSizedImageIfNecessaryWithRenderingConfiguration_(self, v7, configurationCopy);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    mImageQueue = self->mImageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276776BC4;
    block[3] = &unk_27A6CDB30;
    selfCopy = self;
    v22 = &v23;
    v20 = configurationCopy;
    dispatch_sync(mImageQueue, block);
    v9 = v24[3];
    if (v9)
    {
      CFAutorelease(v9);
      v10 = v24[3];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDBitmapImageProvider CGImageForNaturalSizeWithRenderingConfiguration:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 391, 0, "Invalid image provider trying to render an image at natural size");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17);
    v10 = 0;
  }

  return v10;
}

- (CGImage)CGImageForSize:(CGSize)size withRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_isValid(self, v6, v7))
  {
    objc_msgSend_p_loadImageMetadata(self, v8, v9);
    v12 = objc_msgSend_qualityInfo(configurationCopy, v10, v11);
    if (((objc_msgSend_isForPrinting(configurationCopy, v13, v14) & 1) != 0 || objc_msgSend_isForPDF(configurationCopy, v15, v16)) && !v12)
    {
      v25 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(self, v15, configurationCopy);
      goto LABEL_10;
    }

    objc_msgSend_contentsScale(configurationCopy, v15, v16);
    TSUMultiplySizeScalar();
    objc_msgSend_additionalScale(configurationCopy, v17, v18);
    TSUMultiplySizeScalar();
    v22 = v21;
    v24 = v23;
    if (qword_280A4CEF0 == -1)
    {
      if (v12)
      {
LABEL_7:
        v25 = objc_msgSend_degradedImageRefForProvider_ofSize_(v12, v19, self, v22, v24);
LABEL_10:
        v33 = v25;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      sub_27680E48C();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    v34 = objc_msgSend_p_reciprocalScaleForImageSize_(self, v19, v20, v22, v24);
    v36 = v34;
    if (qword_280A4CEF0 != -1)
    {
      v41 = v34;
      sub_27680E4A0();
      v36 = v41;
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    if (v36 < 2)
    {
      objc_msgSend_p_loadFullSizedImageIfNecessaryWithRenderingConfiguration_(self, v35, configurationCopy);
      mImageQueue = self->mImageQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276776F88;
      block[3] = &unk_27A6CDB30;
      selfCopy = self;
      v45 = &v46;
      v43 = configurationCopy;
      dispatch_sync(mImageQueue, block);
      v39 = v47[3];
      if (v39)
      {
        CFAutorelease(v39);
      }
    }

    else
    {
      v37 = objc_msgSend_p_resampledImageOfReciprocalScale_renderingConfiguration_(self, v35, v36, configurationCopy);
      v47[3] = v37;
    }

    if (qword_280A4CEF8 != -1)
    {
      sub_27680E4B4();
    }

    v33 = v47[3];
    _Block_object_dispose(&v46, 8);
    goto LABEL_22;
  }

  v26 = MEMORY[0x277D81150];
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDBitmapImageProvider CGImageForSize:withRenderingConfiguration:]");
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 416, 0, "Invalid image provider trying to render an image at natural size");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v31, v32);
  v33 = 0;
LABEL_23:

  return v33;
}

- (int64_t)p_reciprocalScaleForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_naturalSize(self, a2, v3);
  v7 = v6;
  v9 = v8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v36 = "";
  v37 = v6;
  v38 = v8;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = "";
  TSUMultiplySizeScalar();
  v31 = v10;
  v32 = v11;
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    TSDMaxPixelAreaForiOSImages();
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
    v7 = v12;
    v9 = v13;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2767772D8;
  v26[3] = &unk_27A6CDB58;
  *&v26[5] = width;
  *&v26[6] = height;
  v26[4] = &v27;
  v14 = MEMORY[0x277C9C8B0](v26);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_27677730C;
  v25[3] = &unk_27A6CDB80;
  v25[4] = &v27;
  v15 = MEMORY[0x277C9C8B0](v25);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_27677733C;
  v24[3] = &unk_27A6CDB58;
  v24[4] = &v33;
  v24[5] = v7;
  v24[6] = v9;
  v16 = MEMORY[0x277C9C8B0](v24);
  v17 = 1;
  v18 = 2;
  while (1)
  {
    v19 = v18;
    if ((v14[2](v14) & 1) == 0 && !v16[2](v16))
    {
      break;
    }

    if (!v15[2](v15))
    {
      break;
    }

    v20 = v28;
    *(v34 + 2) = *(v28 + 2);
    TSUMultiplySizeScalar();
    v20[4] = v21;
    v20[5] = v22;
    v18 = 2 * v19;
    v17 = v19;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  return v17;
}

- (CGImage)CGImageResampledToSize:(CGSize)size lowQuality:(BOOL)quality
{
  height = size.height;
  width = size.width;
  v7 = !quality;
  v8 = [TSDBitmapRenderingQualityInfo alloc];
  v10 = objc_msgSend_initWithQuality_canvasScale_(v8, v9, v7, 1.0);
  v11 = [TSDImageRenderingConfiguration alloc];
  v13 = objc_msgSend_initWithBitmapQualityInfo_(v11, v12, v10);
  v15 = objc_msgSend_CGImageResampledToSize_renderingConfiguration_(self, v14, v13, width, height);

  return v15;
}

- (CGImage)CGImageResampledToSize:(CGSize)size renderingConfiguration:(id)configuration
{
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  objc_msgSend_naturalSize(self, v8, v9);
  v11 = v10;
  v13 = v12;
  v14 = [TSDImageRenderingConfiguration alloc];
  v17 = objc_msgSend_prefersHDRRendering(self, v15, v16);
  inited = objc_msgSend_initWantsHDR_(v14, v18, v17);
  if (width >= v11)
  {
    if (height >= v13)
    {
      width = v11;
      if (!objc_msgSend_isOpaque(self, v19, v20))
      {
        v48 = objc_msgSend_CGImageForNaturalSizeWithRenderingConfiguration_(self, v19, inited);
        goto LABEL_16;
      }
    }

    else
    {
      width = v11;
    }
  }

  v22 = width;
  v23 = ceilf(v22);
  if (height >= v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = height;
  }

  v25 = v24;
  v26 = ceilf(v25);
  v27 = objc_msgSend_imageData(self, v19, v20);
  v30 = objc_msgSend_context(v27, v28, v29);
  v33 = objc_msgSend_qualityInfo(configurationCopy, v31, v32);
  if (v33)
  {
    v36 = v33;
    v37 = objc_msgSend_qualityInfo(configurationCopy, v34, v35);
    v40 = objc_msgSend_quality(v37, v38, v39);

    if (v40)
    {
      v41 = 20;
    }

    else
    {
      v41 = 21;
    }
  }

  else
  {
    v41 = 20;
  }

  v42 = objc_msgSend_filename(v27, v34, v35);
  v45 = objc_msgSend_lastPathComponent(v42, v43, v44);
  v46 = sub_276646084(self, v45, v30, v41, v23, v26);

  if (!v46)
  {
    v46 = v27;
  }

  v48 = objc_msgSend_CGImageForImageData_renderingConfiguration_(TSDBitmapImageProvider, v47, v46, inited);

LABEL_16:
  return v48;
}

- (CGImage)p_createResampledImageWithReciprocalScale:(unint64_t)scale renderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_msgSend_naturalSize(self, v6, v7);
  TSUMultiplySizeScalar();
  v11 = v10;
  v13 = v12;
  if (qword_280A4CEF0 != -1)
  {
    sub_27680E4DC();
  }

  v14 = objc_msgSend_p_newCGImageSourceForTemporaryUse(self, v8, v9);
  v16 = objc_msgSend_p_newImageOfSize_fromSource_renderingConfiguration_(self, v15, v14, configurationCopy, v11, v13);

  CFRelease(v14);
  if (v16)
  {
    CFAutorelease(v16);
  }

  return v16;
}

- (CGImage)p_resampledImageOfReciprocalScale:(unint64_t)scale renderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v9 = objc_msgSend_sharedPool(TSDImageProviderPool, v7, v8);
  objc_msgSend_flushProvidersToFreeMemoryIfNecessaryExcludingProvider_(v9, v10, self);

  mImageQueue = self->mImageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2767778E4;
  block[3] = &unk_27A6CDBA8;
  v12 = configurationCopy;
  v31 = v12;
  selfCopy = self;
  v33 = &v35;
  scaleCopy = scale;
  dispatch_sync(mImageQueue, block);
  v14 = v36[3];
  if (!v14 || (CFAutorelease(v14), (v15 = v36[3]) == 0))
  {
    ResampledImageWithReciprocalScale_renderingConfiguration = objc_msgSend_p_createResampledImageWithReciprocalScale_renderingConfiguration_(self, v13, scale, v12);
    v36[3] = ResampledImageWithReciprocalScale_renderingConfiguration;
    if (!ResampledImageWithReciprocalScale_renderingConfiguration || (objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v16, ResampledImageWithReciprocalScale_renderingConfiguration), v18 = objc_claimAutoreleasedReturnValue(), v19 = self->mImageQueue, v22 = MEMORY[0x277D85DD0], v23 = 3221225472, v24 = sub_2767779FC, v25 = &unk_27A6CDBD0, v26 = v12, v27 = self, v28 = v18, v29 = scale, v20 = v18, dispatch_async(v19, &v22), v28, v26, v20, (v15 = v36[3]) == 0))
    {
      v15 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(self, v16, v12, v22, v23, v24, v25);
      v36[3] = v15;
    }
  }

  _Block_object_dispose(&v35, 8);
  return v15;
}

- (int64_t)orientation
{
  objc_msgSend_p_loadImageMetadata(self, a2, v2);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mImageQueue = self->mImageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276777BE4;
  v7[3] = &unk_27A6CCAC0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(mImageQueue, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isOpaque
{
  selfCopy = self;
  objc_msgSend_p_loadImageMetadata(self, a2, v2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mImageQueue = selfCopy->mImageQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276777CB8;
  v6[3] = &unk_27A6CCAC0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(mImageQueue, v6);
  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (unint64_t)imageGamut
{
  objc_msgSend_p_loadImageMetadata(self, a2, v2);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mImageQueue = self->mImageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276777E28;
  block[3] = &unk_27A6CCAC0;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(mImageQueue, block);
  v7 = v15[3];
  if (!v7)
  {
    v8 = objc_msgSend_CGImageOfAnySizeAndConfiguration(self, v5, v6);
    ColorSpace = CGImageGetColorSpace(v8);
    v10 = self->mImageQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276777E44;
    v12[3] = &unk_27A6CCC78;
    v12[4] = self;
    v12[5] = &v14;
    v12[6] = ColorSpace;
    dispatch_sync(v10, v12);
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v7;
}

- (BOOL)prefersHDRRendering
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  mImageQueue = self->mImageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2767781A4;
  block[3] = &unk_27A6CCAC0;
  block[4] = self;
  block[5] = &v40;
  dispatch_sync(mImageQueue, block);
  v6 = v41[3];
  if (v6)
  {
LABEL_10:
    v17 = v6 == 1;
    goto LABEL_11;
  }

  if (objc_msgSend_isValid(self, v4, v5))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v8 = self->mImageQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2767781C0;
    v34[3] = &unk_27A6CDB08;
    v34[4] = self;
    v34[5] = &v35;
    dispatch_sync(v8, v34);
    v9 = v36[3];
    if (v9)
    {
      CFAutorelease(v9);
    }

    else
    {
      v18 = [TSDImageRenderingConfiguration alloc];
      inited = objc_msgSend_initWantsHDR_(v18, v19, 1);
      v22 = objc_msgSend_p_smallestImagePossibleWithRenderingConfiguration_(self, v21, inited);
      v36[3] = v22;
      if (!v22)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDBitmapImageProvider prefersHDRRendering]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 740, 0, "Failed to generate small image despite image provider being valid!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
      }
    }

    v31 = self->mImageQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_276778284;
    v33[3] = &unk_27A6CDBF8;
    v33[4] = self;
    v33[5] = &v35;
    v33[6] = &v40;
    dispatch_sync(v31, v33);
    _Block_object_dispose(&v35, 8);
    v6 = v41[3];
    goto LABEL_10;
  }

  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDBitmapImageProvider prefersHDRRendering]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 717, 0, "Invalid image provider trying to determine image dynamic range");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v15, v16);
  v17 = 0;
LABEL_11:
  _Block_object_dispose(&v40, 8);
  return v17;
}

- (BOOL)hasHDRGainMap
{
  v3 = objc_msgSend_p_newCGImageSourceForTemporaryUse(self, a2, v2);
  HasHDRGainmap = TSUCGImageSourceHasHDRGainmap();
  CFRelease(v3);
  return HasHDRGainmap;
}

- (unint64_t)imageDPI
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (self->mDPI)
  {
    return self->mDPI;
  }

  v4 = objc_msgSend_p_newCGImageSourceForTemporaryUse(self, a2, v2);
  if (!v4)
  {
    return self->mDPI;
  }

  v6 = v4;
  v18 = *MEMORY[0x277CD3648];
  v19[0] = MEMORY[0x277CBEC38];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v19, &v18, 1);
  v8 = CGImageSourceCopyPropertiesAtIndex(v6, 0, v7);
  CFRelease(v6);
  v10 = objc_msgSend_objectForKey_(v8, v9, *MEMORY[0x277CD2F28]);
  v13 = v10;
  if (!v10)
  {
    v15 = 0.0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_msgSend_doubleValue(v10, v11, v12);
  v15 = v14;
  if (v8)
  {
LABEL_5:
    CFRelease(v8);
  }

LABEL_6:
  v16 = 72.0;
  if (v15 != 0.0)
  {
    v16 = v15;
  }

  self->mDPI = llround(v16);

  return self->mDPI;
}

- (CGSize)dpiAdjustedFillSize
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  if (objc_msgSend_isApplicationData(v4, v5, v6))
  {
  }

  else
  {
    v11 = objc_msgSend_imageData(self, v7, v8);
    v14 = objc_msgSend_context(v11, v12, v13);
    v17 = objc_msgSend_documentRoot(v14, v15, v16);

    if (v17)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDBitmapImageProvider dpiAdjustedFillSize]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 800, 0, "getting DPI adjusted fill size for non-theme asset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }
  }

  objc_msgSend_dpiAdjustedNaturalSize(self, v9, v10);
  v26 = v25;
  v28 = v27;
  v31 = objc_msgSend_imageData(self, v29, v30);
  isApplicationData = objc_msgSend_isApplicationData(v31, v32, v33);

  if (isApplicationData && objc_msgSend_imageDPI(self, v35, v36) > 72.0)
  {
    TSUMultiplySizeScalar();

    TSUCeilSize();
  }

  else
  {
    v37 = v26;
    v38 = v28;
  }

  result.height = v38;
  result.width = v37;
  return result;
}

- (CGSize)dpiAdjustedNaturalSize
{
  if (objc_msgSend_p_shouldScaleRetinaImages(self, a2, v2))
  {
    v6 = objc_msgSend_imageData(self, v4, v5);
    v9 = objc_msgSend_filename(v6, v7, v8);

    v12 = objc_msgSend_imageDPI(self, v10, v11);
    v14 = 0.5;
    if (v12 != 144.0 && vabdd_f64(v12, 144.0) >= fabs(144.0 * 0.000000999999997) && (objc_msgSend_tsu_containsSubstring_(v9, v13, @"@2x") & 1) == 0)
    {
      v17 = objc_msgSend_imageDPI(self, v15, v16);
      if (v17 == 216.0 || vabdd_f64(v17, 216.0) < fabs(216.0 * 0.000000999999997) || (v14 = 1.0, objc_msgSend_tsu_containsSubstring_(v9, v18, @"@3x")))
      {
        v14 = 0.333333333;
      }
    }

    objc_msgSend_naturalSize(self, v19, v20);
    if (v14 != 1.0 && fabs(v14 + -1.0) >= 0.000000999999997)
    {
      TSUMultiplySizeScalar();

      TSUCeilSize();
    }
  }

  else
  {

    objc_msgSend_naturalSize(self, v4, v5);
  }

  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)p_shouldScaleRetinaImages
{
  v3 = objc_msgSend_imageData(self, a2, v2);
  isApplicationData = objc_msgSend_isApplicationData(v3, v4, v5);

  if (isApplicationData)
  {
    return 0;
  }

  v10 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  v12 = objc_msgSend_BOOLForKey_(v10, v11, @"TSDSuppressScalingRetinaScreenshots");

  return v12 ^ 1;
}

- (void)flush
{
  mImageQueue = self->mImageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27677886C;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  dispatch_async(mImageQueue, block);
}

- (void)p_flush
{
  v5 = self->mImageQueue;
  if (v5 != MEMORY[0x277D85CD0] || (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4) & 1) == 0)
  {
    dispatch_assert_queue_V2(v5);
  }

  if (qword_280A4CEF0 != -1)
  {
    sub_27680E504();
  }

  mFullSizedSDRImage = self->mFullSizedSDRImage;
  if (mFullSizedSDRImage)
  {
    CFRelease(mFullSizedSDRImage);
    self->mFullSizedSDRImage = 0;
  }

  mFullSizedHDRImage = self->mFullSizedHDRImage;
  if (mFullSizedHDRImage)
  {
    CFRelease(mFullSizedHDRImage);
    self->mFullSizedHDRImage = 0;
  }

  mLargestSafeSDRImage = self->mLargestSafeSDRImage;
  if (mLargestSafeSDRImage)
  {
    CFRelease(mLargestSafeSDRImage);
    self->mLargestSafeSDRImage = 0;
  }

  mLargestSafeHDRImage = self->mLargestSafeHDRImage;
  if (mLargestSafeHDRImage)
  {
    CFRelease(mLargestSafeHDRImage);
    self->mLargestSafeHDRImage = 0;
  }

  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRelease(mImageSource);
    self->mImageSource = 0;
  }

  if (objc_msgSend_i_loadState(self, v6, v7) == 1)
  {
    objc_msgSend_setI_loadState_(self, v13, 0);
  }

  objc_msgSend_removeAllObjects(self->mResampledSDRImages, v13, v14);
  objc_msgSend_removeAllObjects(self->mResampledHDRImages, v15, v16);
  self->mEstimatedSize = 0;
  dispatch_semaphore_wait(self->mFlushableContentLock, 0xFFFFFFFFFFFFFFFFLL);
  self->mHasFlushableContent = 0;
  mFlushableContentLock = self->mFlushableContentLock;

  dispatch_semaphore_signal(mFlushableContentLock);
}

- (BOOL)i_hasFlushableContent
{
  dispatch_semaphore_wait(self->mFlushableContentLock, 0xFFFFFFFFFFFFFFFFLL);
  mHasFlushableContent = self->mHasFlushableContent;
  dispatch_semaphore_signal(self->mFlushableContentLock);
  return mHasFlushableContent;
}

- (void)p_updateEstimatedSize
{
  v45 = *MEMORY[0x277D85DE8];
  mFullSizedSDRImage = self->mFullSizedSDRImage;
  if (mFullSizedSDRImage)
  {
    BytesPerRow = CGImageGetBytesPerRow(mFullSizedSDRImage);
    v6 = CGImageGetHeight(self->mFullSizedSDRImage) * BytesPerRow;
  }

  else
  {
    v6 = 0;
  }

  mFullSizedHDRImage = self->mFullSizedHDRImage;
  if (mFullSizedHDRImage)
  {
    v8 = CGImageGetBytesPerRow(mFullSizedHDRImage);
    v6 += CGImageGetHeight(self->mFullSizedHDRImage) * v8;
  }

  mLargestSafeSDRImage = self->mLargestSafeSDRImage;
  if (mLargestSafeSDRImage)
  {
    v10 = CGImageGetBytesPerRow(mLargestSafeSDRImage);
    v6 += CGImageGetHeight(self->mLargestSafeSDRImage) * v10;
  }

  mLargestSafeHDRImage = self->mLargestSafeHDRImage;
  if (mLargestSafeHDRImage)
  {
    v12 = CGImageGetBytesPerRow(mLargestSafeHDRImage);
    v6 += CGImageGetHeight(self->mLargestSafeHDRImage) * v12;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = objc_msgSend_allValues(self->mResampledSDRImages, a2, v2);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v39, v44, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_CGImage(*(*(&v39 + 1) + 8 * v20), v16, v17);
        v22 = CGImageGetBytesPerRow(v21);
        v6 += CGImageGetHeight(v21) * v22;
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v39, v44, 16);
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = objc_msgSend_allValues(self->mResampledHDRImages, v23, v24, 0);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v35, v43, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = objc_msgSend_CGImage(*(*(&v35 + 1) + 8 * v32), v28, v29);
        v34 = CGImageGetBytesPerRow(v33);
        v6 += CGImageGetHeight(v33) * v34;
        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v35, v43, 16);
    }

    while (v30);
  }

  self->mEstimatedSize = v6;
}

- (CGImage)p_smallestImagePossibleWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  objc_msgSend_naturalSize(self, v5, v6);
  if (v10 > 100.0 || v9 > 100.0)
  {
    v12 = objc_msgSend_p_reciprocalScaleForImageSize_(self, v7, v8, 100.0, 100.0);
    v14 = objc_msgSend_p_resampledImageOfReciprocalScale_renderingConfiguration_(self, v13, v12, configurationCopy);
    v23[3] = v14;
  }

  else
  {
    objc_msgSend_p_loadFullSizedImageIfNecessaryWithRenderingConfiguration_(self, v7, configurationCopy);
    mImageQueue = self->mImageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276778E6C;
    block[3] = &unk_27A6CDB30;
    selfCopy = self;
    v21 = &v22;
    v19 = configurationCopy;
    dispatch_sync(mImageQueue, block);
    v16 = v23[3];
    if (v16)
    {
      CFAutorelease(v16);
    }

    v14 = v23[3];
  }

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)p_loadFullSizedImageIfNecessaryWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (qword_280A4CEF8 != -1)
  {
    sub_27680E518();
  }

  v7 = objc_msgSend_sharedPool(TSDImageProviderPool, v4, v5);
  objc_msgSend_flushProvidersToFreeMemoryIfNecessaryExcludingProvider_(v7, v8, self);

  mImageQueue = self->mImageQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276779000;
  v11[3] = &unk_27A6CCBD8;
  v11[4] = self;
  v12 = configurationCopy;
  v10 = configurationCopy;
  dispatch_async(mImageQueue, v11);
}

- (void)p_loadLargestSafeImageIfNecessaryWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_msgSend_naturalSize(self, v5, v6);
  if (qword_280A4CEF8 != -1)
  {
    sub_27680E52C();
  }

  v9 = objc_msgSend_sharedPool(TSDImageProviderPool, v7, v8);
  objc_msgSend_flushProvidersToFreeMemoryIfNecessaryExcludingProvider_(v9, v10, self);

  TSDMaxPixelAreaForiOSImages();
  TSUShrinkSizeToFitInArea();
  TSUFlooredSize();
  mImageQueue = self->mImageQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276779370;
  v15[3] = &unk_27A6CDC20;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = v12;
  v18 = v13;
  v14 = configurationCopy;
  dispatch_async(mImageQueue, v15);
}

- (void)p_loadSourceRefIfNecessary
{
  mImageQueue = self->mImageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27677963C;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  dispatch_async(mImageQueue, block);
}

- (CGImageSource)p_newCGImageSource
{
  v3 = objc_msgSend_imageData(self, a2, v2);
  v6 = objc_msgSend_newCGImageSource(v3, v4, v5);

  return v6;
}

- (CGImage)p_newImageFromSource:(CGImageSource *)source renderingConfiguration:(id)configuration
{
  sourceCopy = source;
  v30[1] = *MEMORY[0x277D85DE8];
  if (source)
  {
    v6 = MEMORY[0x277CBEB38];
    configurationCopy = configuration;
    v10 = objc_msgSend_dictionary(v6, v8, v9);
    v13 = objc_msgSend_wantsHDR(configurationCopy, v11, v12);

    v15 = *MEMORY[0x277CD3580];
    if (v13)
    {
      v16 = MEMORY[0x277CBEC28];
      objc_msgSend_setObject_forKeyedSubscript_(v10, v14, *MEMORY[0x277CD3590], v15);
      v29 = *MEMORY[0x277CD35B0];
      v30[0] = v16;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v30, &v29, 1);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v19, v18, *MEMORY[0x277CD3588]);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v14, *MEMORY[0x277CD3598], v15);
    }

    if (self->mIsRawImage && ((mImageSource = self->mImageSource, mImageSource != sourceCopy) ? (v22 = mImageSource == 0) : (v22 = 1), v22))
    {
      v23 = MEMORY[0x277CBEC28];
      objc_msgSend_setObject_forKeyedSubscript_(v10, v20, MEMORY[0x277CBEC28], *MEMORY[0x277CD3568]);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v24, v23, *MEMORY[0x277CD3570]);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v25, &unk_28859C610, *MEMORY[0x277CD3660]);
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(sourceCopy, 0, v10);
    }

    else
    {
      if ((TSUCGImageSourceHasHDRGainmap() & 1) == 0)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v10, v27, MEMORY[0x277CBEC38], *MEMORY[0x277CD3648]);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v10, v27, MEMORY[0x277CBEC28], *MEMORY[0x277CD3618]);
      ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(sourceCopy, 0, v10);
    }

    sourceCopy = ThumbnailAtIndex;
  }

  return sourceCopy;
}

- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image
{
  v44[1] = *MEMORY[0x277D85DE8];
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    v9 = objc_msgSend_imageData(self, v7, v8);
    v10 = sub_276647270(v9, source);

    if (!v10)
    {
      return;
    }
  }

  v43 = *MEMORY[0x277CD3648];
  v44[0] = MEMORY[0x277CBEC38];
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v44, &v43, 1);
  v12 = CGImageSourceCopyPropertiesAtIndex(source, 0, v11);
  if (v12)
  {
    v14 = v12;
    v15 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x277CD3410]);
    v18 = objc_msgSend_intValue(v15, v16, v17);

    Value = CFDictionaryGetValue(v14, *MEMORY[0x277CD3450]);
    Height = 0.0;
    v23 = 0.0;
    if (Value)
    {
      objc_msgSend_tsu_CGFloatValue(Value, v20, v21);
      v23 = v24;
    }

    v25 = CFDictionaryGetValue(v14, *MEMORY[0x277CD3448]);
    if (v25)
    {
      objc_msgSend_tsu_CGFloatValue(v25, v26, v27);
      Height = v28;
    }

    v29 = CFDictionaryGetValue(v14, *MEMORY[0x277CD3368]);
    if (v29)
    {
      v30 = CFEqual(v29, *MEMORY[0x277CBED10]) != 0;
    }

    else
    {
      v30 = 1;
    }

    self->mIsOpaque = v30;
    CFRelease(v14);
    if (v23 != 0.0 && Height != 0.0 && !self->mIsRawImage)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
  }

  if (!image)
  {
    v31 = [TSDImageRenderingConfiguration alloc];
    inited = objc_msgSend_initWantsHDR_(v31, v32, 0);
    image = objc_msgSend_p_newImageFromSource_renderingConfiguration_(self, v34, source, inited);

    if (TSDPlatformRisksMemoryCrashFromLargeImages() && (Width = CGImageGetWidth(image), v36 = CGImageGetHeight(image) * Width, v36 > TSDMaxPixelAreaForiOSImages()))
    {
      if (image)
      {
        CFAutorelease(image);
      }
    }

    else
    {
      mImageQueue = self->mImageQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276779CFC;
      block[3] = &unk_27A6CCCA0;
      block[4] = self;
      block[5] = image;
      dispatch_async(mImageQueue, block);
    }
  }

  v23 = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
LABEL_22:
  if ((v18 - 1) > 7)
  {
    v38 = 0;
  }

  else
  {
    v38 = qword_27682CEF0[v18 - 1];
  }

  self->mOrientation = v38;
  IsRotatedBy90Degrees = TSUImageOrientationTransformIsRotatedBy90Degrees();
  if (IsRotatedBy90Degrees)
  {
    v40 = Height;
  }

  else
  {
    v40 = v23;
  }

  if (IsRotatedBy90Degrees)
  {
    v41 = v23;
  }

  else
  {
    v41 = Height;
  }

  self->mNaturalSize.width = v40;
  self->mNaturalSize.height = v41;
}

- (void)p_configureRawBehaviorFromImageSource:(CGImageSource *)source
{
  if (source)
  {
    Type = CGImageSourceGetType(source);
    v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E48], v5, v6);
    self->mIsRawImage = objc_msgSend_tsu_conformsToUTI_(Type, v7, v8);
  }
}

- (CGImageSource)p_newCGImageSourceForTemporaryUse
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  mImageQueue = self->mImageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276779EF4;
  v8[3] = &unk_27A6CDB08;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(mImageQueue, v8);
  v6 = v10[3];
  if (!v6)
  {
    v6 = objc_msgSend_p_newCGImageSource(self, v4, v5);
    v10[3] = v6;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CGImage)p_newImageOfSize:(CGSize)size fromSource:(CGImageSource *)source renderingConfiguration:(id)configuration
{
  height = size.height;
  width = size.width;
  v40[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (source)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = MEMORY[0x277CBEC28];
    objc_msgSend_setObject_forKeyedSubscript_(v11, v13, MEMORY[0x277CBEC28], *MEMORY[0x277CD3578]);
    if (width >= height)
    {
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, width);
    }

    else
    {
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, height);
    }
    v16 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v11, v17, v16, *MEMORY[0x277CD3660]);

    if ((TSUCGImageSourceHasHDRGainmap() & 1) == 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v18, MEMORY[0x277CBEC38], *MEMORY[0x277CD3648]);
    }

    v20 = objc_msgSend_wantsHDR(configurationCopy, v18, v19);
    v22 = *MEMORY[0x277CD3580];
    if (v20)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v21, *MEMORY[0x277CD3590], v22);
      v39 = *MEMORY[0x277CD35B0];
      v40[0] = v12;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v40, &v39, 1);
      objc_msgSend_setObject_forKeyedSubscript_(v11, v25, v24, *MEMORY[0x277CD3588]);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v21, *MEMORY[0x277CD3598], v22);
    }

    v35 = *MEMORY[0x277CD3568];
    if (self->mIsRawImage)
    {
      v36 = MEMORY[0x277CBEC28];
      objc_msgSend_setObject_forKeyedSubscript_(v11, v26, MEMORY[0x277CBEC28], v35);
      objc_msgSend_setObject_forKeyedSubscript_(v11, v37, v36, *MEMORY[0x277CD3570]);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v26, MEMORY[0x277CBEC38], v35);
    }

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(source, 0, v11);
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDBitmapImageProvider p_newImageOfSize:fromSource:renderingConfiguration:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1302, 0, "invalid nil value for '%{public}s'", "sourceRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    ThumbnailAtIndex = 0;
  }

  return ThumbnailAtIndex;
}

- (CGImageSource)CGImageSource
{
  objc_msgSend_p_loadSourceRefIfNecessary(self, a2, v2);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  mImageQueue = self->mImageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27677A2B0;
  v8[3] = &unk_27A6CCAC0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(mImageQueue, v8);
  v5 = v10[3];
  if (v5)
  {
    CFAutorelease(v5);
    v6 = v10[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

@end