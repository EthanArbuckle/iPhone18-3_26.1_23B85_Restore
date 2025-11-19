@interface TSDImageDrawingHelper
- (BOOL)drawsBitmap;
- (BOOL)drawsError;
- (BOOL)p_canDrawThumbnailAsSizedImage;
- (BOOL)shouldShowCheckerboard;
- (CGRect)imageRectInContext:(CGContext *)a3;
- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4;
- (CGSize)p_desiredSizedImageSize;
- (CGSize)p_imagePixelSize;
- (TSDImageDrawingDataSource)rep;
- (TSDImageDrawingHelper)initWithRep:(id)a3;
- (TSPData)imageDataForDrawing;
- (id)p_imageProvider;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)p_validatedThumbnailImageProvider;
- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 forLayer:(BOOL)a4 forShadowOrHitTest:(BOOL)a5;
@end

@implementation TSDImageDrawingHelper

- (TSDImageDrawingHelper)initWithRep:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSDImageDrawingHelper;
  v5 = [(TSDImageDrawingHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_rep, v4);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDImageDrawingHelper;
  [(TSDImageDrawingHelper *)&v2 dealloc];
}

- (CGRect)imageRectInContext:(CGContext *)a3
{
  v5 = objc_msgSend_rep(self, a2, a3);
  v7 = v5;
  if (v5)
  {
    objc_msgSend_imageDrawingHelperImageRect_(v5, v6, self);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v18 = objc_msgSend_rep(self, v16, v17);
    v21 = objc_msgSend_canvas(v18, v19, v20);
    if (objc_msgSend_isDrawingIntoPDF(v21, v22, v23))
    {
    }

    else
    {
      v33 = objc_msgSend_rep(self, v24, v25);
      v36 = objc_msgSend_canvas(v33, v34, v35);
      isPrinting = objc_msgSend_isPrinting(v36, v37, v38);

      if ((isPrinting & 1) == 0)
      {
        objc_msgSend_p_antialiasingDefeatedRectForRect_inContext_(self, v40, a3, v9, v11, v13, v15);
        v9 = v41;
        v11 = v42;
        v13 = v43;
        v15 = v44;
      }
    }
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImageDrawingHelper imageRectInContext:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 106, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    v9 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v45 = v9;
  v46 = v11;
  v47 = v13;
  v48 = v15;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (void)drawInContext:(CGContext *)a3 forLayer:(BOOL)a4 forShadowOrHitTest:(BOOL)a5
{
  v5 = a5;
  v38 = objc_msgSend_rep(self, a2, a3, a4);
  if (v38)
  {
    objc_msgSend_imageRectInContext_(self, v8, a3);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (v5 && (objc_msgSend_imageDrawingHelperImageHasAlpha_(v38, v9, self) & 1) == 0)
    {
      v34 = objc_msgSend_blackColor(MEMORY[0x277D81180], v9, v10);
      v37 = objc_msgSend_CGColor(v34, v35, v36);
      CGContextSetFillColorWithColor(a3, v37);

      v40.origin.x = v12;
      v40.origin.y = v14;
      v40.size.width = v16;
      v40.size.height = v18;
      CGContextFillRect(a3, v40);
    }

    else
    {
      v19 = objc_msgSend_p_validatedImageProvider(self, v9, v10);
      if (objc_msgSend_isError(v19, v20, v21))
      {
        v24 = objc_msgSend_p_validatedThumbnailImageProvider(self, v22, v23);
        v25 = v24;
        if (v24)
        {
          v26 = v24;

          v19 = v26;
        }
      }

      objc_msgSend_drawImageInContext_rect_(v19, v22, a3, v12, v14, v16, v18);
    }

    CGImageRelease(0);
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDImageDrawingHelper drawInContext:forLayer:forShadowOrHitTest:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 124, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }
}

- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_msgSend_rep(self, a2, a4);
  v12 = v10;
  if (v10)
  {
    memset(&v39, 0, sizeof(v39));
    objc_msgSend_imageDrawingHelperImageTransformInRootForAntialiasingDefeat_(v10, v11, self);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDImageDrawingHelper p_antialiasingDefeatedRectForRect:inContext:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 282, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    memset(&v39, 0, sizeof(v39));
  }

  v38 = v39;
  if (TSUIsTransformAxisAligned())
  {
    v38 = v39;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    CGRectApplyAffineTransform(v40, &v38);
    TSDCGContextAssociatedScreenScale(a4);
    v22 = objc_msgSend_canvas(v12, v20, v21);
    objc_msgSend_viewScale(v22, v23, v24);

    TSURoundedRectForScale();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v37 = v39;
    CGAffineTransformInvert(&v38, &v37);
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    v42 = CGRectApplyAffineTransform(v41, &v38);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (BOOL)p_canDrawThumbnailAsSizedImage
{
  v3 = objc_msgSend_rep(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_canvas(v3, v4, v5);
    v10 = objc_msgSend_delegate(v7, v8, v9);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_msgSend_prefersThumbnailImagesToRenderForCanvas_(v10, v11, v7);
    }

    else
    {
      v13 = 0;
    }

    isCanvasInteractive = objc_msgSend_isCanvasInteractive(v7, v11, v12);
    objc_msgSend_viewScale(v7, v23, v24);
    if (v25 < 0.5)
    {
      v26 = isCanvasInteractive;
    }

    else
    {
      v26 = 0;
    }

    v21 = (v13 & 1) != 0 || v26;
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDrawingHelper p_canDrawThumbnailAsSizedImage]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 304, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    v21 = 0;
  }

  return v21;
}

- (TSPData)imageDataForDrawing
{
  v5 = objc_msgSend_rep(self, a2, v2);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDrawingHelper imageDataForDrawing]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 402, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_imageDrawingHelperAdjustedImageData_(v5, v4, self);
  if ((objc_msgSend_needsDownload(v13, v14, v15) & 1) != 0 || (objc_msgSend_null(MEMORY[0x277D80828], v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v13 == v18))
  {
    v20 = objc_msgSend_imageDrawingHelperThumbnailAdjustedImageData_(v5, v16, self);

    v13 = v20;
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_8:
    if ((objc_msgSend_needsDownload(v13, v16, v19) & 1) == 0)
    {
      v22 = objc_msgSend_null(MEMORY[0x277D80828], v16, v21);

      if (v13 != v22)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_10;
  }

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_10:
  v23 = objc_msgSend_imageDrawingHelperImageData_(v5, v16, self);

  if ((objc_msgSend_needsDownload(v23, v24, v25) & 1) != 0 || (objc_msgSend_null(MEMORY[0x277D80828], v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v28, v23 == v28))
  {
    v29 = objc_msgSend_imageDrawingHelperThumbnailImageData_(v5, v26, self);
    v30 = v29;
    if (v29)
    {
      v31 = v29;

      v23 = v31;
    }
  }

  v13 = v23;
LABEL_16:

  return v13;
}

- (BOOL)drawsError
{
  v3 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
  isError = objc_msgSend_isError(v3, v4, v5);

  return isError;
}

- (BOOL)drawsBitmap
{
  canDrawThumbnailAsSizedImage = objc_msgSend_p_canDrawThumbnailAsSizedImage(self, a2, v2);
  if (canDrawThumbnailAsSizedImage)
  {
    v7 = objc_msgSend_p_validatedThumbnailImageProvider(self, v4, v5);
    if (v7)
    {
      v8 = 1;
LABEL_6:

      return v8;
    }
  }

  v9 = objc_msgSend_p_validatedBitmapImageProvider(self, v4, v5);
  v8 = v9 != 0;

  if (canDrawThumbnailAsSizedImage)
  {
    v7 = 0;
    goto LABEL_6;
  }

  return v8;
}

- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4
{
  v11 = a3;
  v9 = objc_msgSend_p_validatedBitmapImageProvider(self, v5, v6);
  if (v9)
  {
    objc_msgSend_p_desiredSizedImageSize(self, v7, v8);
    objc_msgSend_cacheProvider_ofSize_(v11, v10, v9);
  }
}

- (BOOL)shouldShowCheckerboard
{
  v3 = objc_msgSend_imageDataForDrawing(self, a2, v2);
  v6 = objc_msgSend_needsDownload(v3, v4, v5);

  return v6;
}

- (CGSize)p_imagePixelSize
{
  v6 = objc_msgSend_rep(self, a2, v2);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDrawingHelper p_imagePixelSize]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 490, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_canvas(v6, v4, v5);
  objc_msgSend_imageDrawingHelperImageRect_(v6, v15, self);
  objc_msgSend_viewScale(v14, v16, v17);
  objc_msgSend_contentsScale(v14, v18, v19);
  TSUMultiplySizeScalar();
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (id)p_imageProvider
{
  v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
  v7 = objc_msgSend_imageDataForDrawing(self, v5, v6);
  v9 = objc_msgSend_providerForData_shouldValidate_(v4, v8, v7, 0);

  return v9;
}

- (id)p_validatedImageProvider
{
  v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
  v7 = objc_msgSend_imageDataForDrawing(self, v5, v6);
  v9 = objc_msgSend_providerForData_shouldValidate_(v4, v8, v7, 1);

  return v9;
}

- (id)p_validatedBitmapImageProvider
{
  objc_opt_class();
  v5 = objc_msgSend_p_validatedImageProvider(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)p_validatedThumbnailImageProvider
{
  v5 = objc_msgSend_rep(self, a2, v2);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDrawingHelper p_validatedThumbnailImageProvider]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 519, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_imageDrawingHelperThumbnailImageData_(v5, v4, self);
  v16 = objc_msgSend_sharedPool(TSDImageProviderPool, v14, v15);
  v18 = objc_msgSend_providerForData_shouldValidate_(v16, v17, v13, 1);

  objc_opt_class();
  v19 = TSUDynamicCast();

  return v19;
}

- (CGSize)p_desiredSizedImageSize
{
  v6 = objc_msgSend_rep(self, a2, v2);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageDrawingHelper p_desiredSizedImageSize]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageDrawingHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 587, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_p_validatedImageProvider(self, v4, v5);
  objc_msgSend_naturalSize(v14, v15, v16);
  v18 = v17;
  v20 = v19;

  objc_msgSend_p_imagePixelSize(self, v21, v22);
  v24 = v23;
  v26 = v25;
  v29 = v20;
  v30 = v18;
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    v29 = v20;
    v30 = v18;
    if (v18 * v20 > TSDMaxPixelAreaForiOSImages())
    {
      TSDMaxPixelAreaForiOSImages();
      TSUShrinkSizeToFitInArea();
      TSUFlooredSize();
      v30 = v31;
      v29 = v32;
    }
  }

  v33 = objc_msgSend_p_imageProvider(self, v27, v28);
  isError = objc_msgSend_isError(v33, v34, v35);

  if ((isError & 1) == 0 && (v24 > v30 || v26 > v29))
  {
    v45 = objc_msgSend_p_imageProvider(self, v37, v38);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      TSDDefaultResampledImageSize();
      TSUShrinkSizeToFitInSize();
    }
  }

  TSUCeilSize();
  v40 = v39;
  v42 = v41;

  v43 = v40;
  v44 = v42;
  result.height = v44;
  result.width = v43;
  return result;
}

- (TSDImageDrawingDataSource)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end