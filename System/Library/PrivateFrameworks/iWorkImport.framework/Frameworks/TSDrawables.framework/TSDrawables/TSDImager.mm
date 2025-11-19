@interface TSDImager
- (BOOL)drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4;
- (BOOL)isCanvasDrawingIntoPDF:(id)a3;
- (BOOL)p_configureCanvas;
- (BOOL)shouldShowInstructionalTextForLayout:(id)a3;
- (CGImage)newImage;
- (CGImage)p_newImageInReusableContext;
- (CGRect)actualScaledClipRect;
- (CGRect)unscaledClipRect;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3;
- (CGSize)maximumImagePixelSize;
- (CGSize)p_evenDimensionsWithSize:(CGSize)a3;
- (CGSize)scaledImageSize;
- (TSDImager)init;
- (TSDImager)initWithDocumentRoot:(id)a3 renderForWideGamut:(BOOL)a4 renderHDRContent:(BOOL)a5 willBeCalledSafelyOutsideOfReadLock:(BOOL)a6;
- (double)contentsScale;
- (double)viewScale;
- (id)documentRoot;
- (id)dynamicOverrideForLayout:(id)a3;
- (id)dynamicOverrideForRep:(id)a3;
- (id)generateImage;
- (id)pdfData;
- (id)pngData;
- (void)dealloc;
- (void)p_assertHasReadLock;
- (void)p_drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4;
- (void)setContentsScale:(double)a3;
- (void)setDynamicOverride:(id)a3 forInfo:(id)a4;
- (void)setInfos:(id)a3 allowLayoutIfNeeded:(BOOL)a4;
- (void)setMaximumImagePixelSize:(CGSize)a3;
- (void)setPostRenderAction:(id)a3;
- (void)setScaledImageSize:(CGSize)a3;
- (void)setViewScale:(double)a3;
@end

@implementation TSDImager

- (TSDImager)initWithDocumentRoot:(id)a3 renderForWideGamut:(BOOL)a4 renderHDRContent:(BOOL)a5 willBeCalledSafelyOutsideOfReadLock:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDImager initWithDocumentRoot:renderForWideGamut:renderHDRContent:willBeCalledSafelyOutsideOfReadLock:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 119, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v33.receiver = self;
  v33.super_class = TSDImager;
  v19 = [(TSDImager *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->mDocumentRoot, v11);
    v21 = *(MEMORY[0x277CBF390] + 16);
    *(v20 + 24) = *MEMORY[0x277CBF390];
    *(v20 + 40) = v21;
    __asm { FMOV            V0.2D, #1.0 }

    *(v20 + 56) = _Q0;
    v27 = objc_alloc_init(TSDCanvas);
    v28 = *(v20 + 120);
    *(v20 + 120) = v27;

    objc_msgSend_i_setCanvasIsWideGamut_(*(v20 + 120), v29, v8);
    objc_msgSend_setSupportsHDR_(*(v20 + 120), v30, v7);
    *(v20 + 350) = 1;
    objc_msgSend_setDelegate_(*(v20 + 120), v31, v20);
    *(v20 + 344) = a6;
  }

  return v20;
}

- (TSDImager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 143, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDImager init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)dealloc
{
  objc_msgSend_teardown(self->mCanvas, a2, v2);
  TSDClearCGContextInfo(self->mReusableBitmapContext);
  CGContextRelease(self->mReusableBitmapContext);
  v4.receiver = self;
  v4.super_class = TSDImager;
  [(TSDImager *)&v4 dealloc];
}

- (void)setPostRenderAction:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  mPostRenderAction = self->mPostRenderAction;
  self->mPostRenderAction = v4;
}

- (void)setInfos:(id)a3 allowLayoutIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v9 = v7;
  if (self->mInfos != v7)
  {
    v24 = v7;
    if (v7)
    {
      if (objc_msgSend_count(v7, v7, v8))
      {
        objc_msgSend_p_assertHasReadLock(self, v10, v11);
        if (self->mHasBeenUsed && !self->mMayBeReused)
        {
          v13 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDImager setInfos:allowLayoutIfNeeded:]");
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 165, 0, "Should not reuse an imager unless it has been explicitly marked as safe to reuse");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
        }
      }
    }

    objc_storeStrong(&self->mInfos, a3);
    v22 = objc_msgSend_count(self->mInfos, v20, v21);
    v9 = v24;
    if (!v22)
    {
      objc_msgSend_setInfosToDisplay_(self->mCanvas, v24, self->mInfos);
      v9 = v24;
      if (v4)
      {
        objc_msgSend_nonInteractiveLayoutIfNeeded(self->mCanvas, v24, v23);
        v9 = v24;
      }
    }
  }
}

- (double)viewScale
{
  if (self->mUseScaledImageSize)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager viewScale]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 183, 0, "Cannot call viewScale if scaledImageSize has been set.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return self->mViewScale;
}

- (void)setViewScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager setViewScale:]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 189, 0, "viewScale must be > 0.0");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }

  else
  {
    self->mViewScale = a3;
    self->mScaledImageSize = *MEMORY[0x277CBF3A8];
    self->mUseScaledImageSize = 0;
  }
}

- (double)contentsScale
{
  if (self->mUseScaledImageSize)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager contentsScale]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 199, 0, "Cannot call contentsScale if scaledImageSize has been set.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return self->mContentsScale;
}

- (void)setContentsScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager setContentsScale:]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 205, 0, "contentsScale must be > 0.0");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }

  else
  {
    self->mContentsScale = a3;
    self->mScaledImageSize = *MEMORY[0x277CBF3A8];
    self->mUseScaledImageSize = 0;
  }
}

- (CGSize)scaledImageSize
{
  if (!self->mUseScaledImageSize)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager scaledImageSize]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 215, 0, "Cannot call scaledImageSize if viewScale or contentsScale has been set.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  width = self->mScaledImageSize.width;
  height = self->mScaledImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setScaledImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width <= 0.0 || a3.height <= 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager setScaledImageSize:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 220, 0, "can't make an image with 0 width or height");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v11, v12);
  }

  TSUCeilSize();
  v16 = v15;
  v17 = v14;
  if (width != v15 || height != v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDImager setScaledImageSize:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 222, 0, "given a non-integral scaled image size");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v24, v25);
  }

  self->mScaledImageSize.width = v16;
  self->mScaledImageSize.height = v17;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->mViewScale = _Q0;
  self->mUseScaledImageSize = 1;
}

- (CGSize)maximumImagePixelSize
{
  width = self->mMaximumImagePixelSize.width;
  height = self->mMaximumImagePixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setMaximumImagePixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  TSUCeilSize();
  v9 = v8;
  v10 = v7;
  if (width != v8 || height != v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImager setMaximumImagePixelSize:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 235, 0, "given a non-integral maximum image size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  self->mMaximumImagePixelSize.width = v9;
  self->mMaximumImagePixelSize.height = v10;
}

- (void)setDynamicOverride:(id)a3 forInfo:(id)a4
{
  v12 = a3;
  v8 = a4;
  mDynamicOverrides = self->mDynamicOverrides;
  if (!mDynamicOverrides)
  {
    v10 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
    v11 = self->mDynamicOverrides;
    self->mDynamicOverrides = v10;

    mDynamicOverrides = self->mDynamicOverrides;
  }

  objc_msgSend_setObject_forKey_(mDynamicOverrides, v6, v12, v8);
}

- (CGImage)newImage
{
  objc_msgSend_p_assertHasReadLock(self, a2, v2);
  if (objc_msgSend_supportsHDR(self->mCanvas, v4, v5))
  {
    v8 = objc_msgSend_currentCapabilities(TSDCapabilities, v6, v7);
    isHDRCapable = objc_msgSend_isHDRCapable(v8, v9, v10);

    if ((isHDRCapable & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDImager newImage]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 261, 0, "Requesting HDR Image from Imager on Unsupported Platform!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->mDocumentRoot);
  if (objc_msgSend_p_configureCanvas(self, v21, v22))
  {
    if (self->mUseScaledImageSize)
    {
      if (objc_msgSend_shouldReuseBitmapContext(self, v23, v24))
      {
        matched = objc_msgSend_p_newImageInReusableContext(self, v25, v26);
      }

      else
      {
        matched = objc_msgSend_i_imageInScaledRect_withTargetIntegralSize_distortedToMatch_preservingContentHeadroom_tonemappedHDRContentToSDR_keepingChildrenPassingTest_(self->mCanvas, v25, self->mDistortedToMatch, &self->mPreviousRenderContentHeadroom, &self->mPreviousRenderTonemappedHDRContentToSDR, self->mInfoToDrawBeneathFilter, self->mActualScaledClipRect.origin.x, self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height);
      }
    }

    else
    {
      matched = objc_msgSend_i_imageInScaledRect_withTargetIntegralSize_distortedToMatch_preservingContentHeadroom_tonemappedHDRContentToSDR_keepingChildrenPassingTest_(self->mCanvas, v23, 0, &self->mPreviousRenderContentHeadroom, &self->mPreviousRenderTonemappedHDRContentToSDR, self->mInfoToDrawBeneathFilter, self->mActualScaledClipRect.origin.x, self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    }

    v28 = matched;
    mPostRenderAction = self->mPostRenderAction;
    if (mPostRenderAction)
    {
      mPostRenderAction[2](mPostRenderAction, 0, self->mCanvas);
    }
  }

  else
  {
    v28 = 0;
  }

  self->mHasBeenUsed = 1;

  return v28;
}

- (id)generateImage
{
  v3 = objc_msgSend_newImage(self, a2, v2);
  if (v3)
  {
    v5 = v3;
    v6 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v4, v3);
    CGImageRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pngData
{
  v3 = objc_msgSend_newImage(self, a2, v2);
  if (v3)
  {
    v4 = v3;
    v5 = CGImagePNGRepresentation();
    CGImageRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pdfData
{
  if (objc_msgSend_supportsHDR(self->mCanvas, a2, v2))
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImager pdfData]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 342, 0, "Requesting HDR PDF from Imager! Forcing SDR PDF rendering.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  objc_msgSend_setSupportsHDR_(self->mCanvas, v4, 0);
  objc_msgSend_p_assertHasReadLock(self, v12, v13);
  if (objc_msgSend_p_configureCanvas(self, v14, v15))
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v17 = v16;
    if (v16 && (v18 = CGDataConsumerCreateWithCFData(v16)) != 0)
    {
      v19 = v18;
      TSURectWithSize();
      v28.origin.x = v20;
      v28.origin.y = v21;
      v28.size.width = v22;
      v28.size.height = v23;
      v24 = CGPDFContextCreate(v19, &v28, 0);
      objc_msgSend_p_drawPageInContext_createPage_(self, v25, v24, 1);
      CGPDFContextClose(v24);
      CGContextRelease(v24);
      v26 = v17;
      CGDataConsumerRelease(v19);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  self->mHasBeenUsed = 1;

  return v26;
}

- (BOOL)drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4
{
  v4 = a4;
  objc_msgSend_p_assertHasReadLock(self, a2, a3);
  v9 = objc_msgSend_p_configureCanvas(self, v7, v8);
  if (v9)
  {
    v11 = TSDCGContextGetBitmapQualityInfo(a3);
    if (v11)
    {
      objc_msgSend_addBitmapsToRenderingQualityInfo_inContext_(self->mCanvas, v10, v11, a3);
    }

    objc_msgSend_p_drawPageInContext_createPage_(self, v10, a3, v4);
  }

  return v9;
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->mDocumentRoot);

  return WeakRetained;
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3
{
  mCanvas = self->mCanvas;
  if (mCanvas != a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager visibleScaledBoundsForClippingRepsOnCanvas:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 403, 0, "wrong canvas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    mCanvas = self->mCanvas;
  }

  objc_msgSend_viewScale(mCanvas, a2, a3);

  TSUMultiplyRectScalar();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isCanvasDrawingIntoPDF:(id)a3
{
  if (self->mCanvas != a3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImager isCanvasDrawingIntoPDF:]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 409, 0, "wrong canvas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  return self->mDrawingIntoPDF;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)a3
{
  v4 = a3;
  shouldShowInstructionalText = objc_msgSend_shouldShowInstructionalText(self, v5, v6);
  if ((shouldShowInstructionalText & 1) != 0 || !objc_msgSend_shouldShowCaptionInstructionalText(self, v7, v8))
  {
    isCaption = 0;
  }

  else
  {
    objc_opt_class();
    v12 = objc_msgSend_info(v4, v10, v11);
    v13 = TSUDynamicCast();
    v14 = objc_opt_class();
    isCaption = objc_msgSend_isCaption(v14, v15, v16);
  }

  return shouldShowInstructionalText | isCaption;
}

- (id)dynamicOverrideForLayout:(id)a3
{
  v5 = objc_msgSend_info(a3, a2, a3);
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(self->mDynamicOverrides, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dynamicOverrideForRep:(id)a3
{
  v4 = objc_msgSend_layout(a3, a2, a3);
  v6 = objc_msgSend_dynamicOverrideForLayout_(self, v5, v4);

  return v6;
}

- (void)p_assertHasReadLock
{
  if (!self->mWillBeCalledSafelyOutsideOfReadLock)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDocumentRoot);
    v16 = objc_msgSend_accessController(WeakRetained, v4, v5);

    v8 = v16;
    if (!v16)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImager p_assertHasReadLock]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 470, 0, "invalid nil value for '%{public}s'", "ac");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      v8 = 0;
    }

    objc_msgSend_assertHasRead(v8, v6, v7);
  }
}

- (CGRect)actualScaledClipRect
{
  objc_msgSend_p_configureCanvas(self, a2, v2);
  x = self->mActualScaledClipRect.origin.x;
  y = self->mActualScaledClipRect.origin.y;
  width = self->mActualScaledClipRect.size.width;
  height = self->mActualScaledClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)p_configureCanvas
{
  v125 = *MEMORY[0x277D85DE8];
  objc_msgSend_setBackgroundColor_(self->mCanvas, a2, self->mBackgroundColor);
  objc_msgSend_setInfosToDisplay_(self->mCanvas, v3, self->mInfos);
  shouldShowInstructionalText = objc_msgSend_shouldShowInstructionalText(self, v4, v5);
  objc_msgSend_setEnableInstructionalText_(self->mCanvas, v7, shouldShowInstructionalText);
  if (objc_msgSend_mayBeReused(self, v8, v9))
  {
    objc_msgSend_recreateAllLayoutsAndReps(self->mCanvas, v10, v11);
  }

  objc_msgSend_nonInteractiveLayoutIfNeeded(self->mCanvas, v10, v11);
  if (self->mDynamicOverrides)
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v14 = objc_msgSend_topLevelReps(self->mCanvas, v12, v13);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v119, v124, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v120;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v120 != v19)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_recursivelyPerformSelector_(*(*(&v119 + 1) + 8 * i), v17, sel_dynamicOverrideDidChange);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v119, v124, 16);
      }

      while (v18);
    }
  }

  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  if (CGRectEqualToRect(v126, *MEMORY[0x277CBF390]))
  {
    objc_msgSend_unscaledRectOfLayouts(self->mCanvas, v25, v26);
    x = v27;
    y = v28;
    width = v29;
    height = v30;
  }

  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  MinX = CGRectGetMinX(v127);
  v32 = fminf(MinX, 0.0);
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = height;
  MinY = CGRectGetMinY(v128);
  v34 = fminf(MinY, 0.0);
  v129.origin.x = x;
  v129.origin.y = y;
  v129.size.width = width;
  v129.size.height = height;
  MaxX = CGRectGetMaxX(v129);
  v36 = fmaxf(MaxX, 0.0);
  v130.origin.x = x;
  v130.origin.y = y;
  v130.size.width = width;
  v130.size.height = height;
  MaxY = CGRectGetMaxY(v130);
  v40 = v36 - v32;
  v41 = fmaxf(MaxY, 0.0) - v34;
  v42 = v41 > 0.0 && v40 > 0.0;
  if (v42)
  {
    objc_msgSend_unscaledSize(self->mCanvas, v37, v38);
    if (v46 != v40 || v45 != v41)
    {
      objc_msgSend_setUnscaledSize_(self->mCanvas, v43, v44, v40, v41);
      objc_msgSend_nonInteractiveLayoutIfNeeded(self->mCanvas, v48, v49);
    }

    if (self->mUseScaledImageSize)
    {
      v50 = self->mScaledImageSize.width / width;
      v51 = self->mScaledImageSize.height / height;
      mViewScale = fminf(v50, v51);
      mContentsScale = 1.0;
    }

    else
    {
      mViewScale = self->mViewScale;
      mContentsScale = self->mContentsScale;
    }

    v54 = self->mMaximumImagePixelSize.width;
    if (v54 != 0.0 || self->mMaximumImagePixelSize.height != 0.0)
    {
      if (self->mUseScaledImageSize)
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDImager p_configureCanvas]");
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 533, 0, "Using a specific scaled image size and max image size at the same time is unsupported.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
        v54 = self->mMaximumImagePixelSize.width;
      }

      TSUMultiplySizeScalar();
      TSUMultiplySizeScalar();
      v64 = self->mMaximumImagePixelSize.height;
      if (v62 > v54 || v63 > v64)
      {
        v65 = v62 / v54;
        if (v54 == 0.0)
        {
          v66 = 0.0;
        }

        else
        {
          v66 = v65;
        }

        if (v64 == 0.0)
        {
          v67 = 0.0;
        }

        else
        {
          v67 = v63 / v64;
        }

        if (v66 == 0.0 && v67 == 0.0)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDImager p_configureCanvas]");
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 540, 0, "both ratios in imager are zero!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
        }

        if (v66 <= v67)
        {
          v75 = v67;
        }

        else
        {
          v75 = v66;
        }

        mViewScale = mViewScale * (1.0 / v75);
      }
    }

    objc_msgSend_setViewScale_(self->mCanvas, v43, v44, mViewScale);
    objc_msgSend_i_setContentsScale_(self->mCanvas, v76, v77, mContentsScale);
    objc_msgSend_viewScale(self->mCanvas, v78, v79);
    TSUMultiplyRectScalar();
    self->mActualScaledClipRect.origin.x = v84;
    self->mActualScaledClipRect.origin.y = v85;
    self->mActualScaledClipRect.size.width = v82;
    self->mActualScaledClipRect.size.height = v83;
    if (self->mUseScaledImageSize && self->mImageMustHaveEvenDimensions)
    {
      objc_msgSend_p_evenDimensionsWithSize_(self, v80, v81, v82, v83);
      self->mActualScaledClipRect.size.width = v86;
      self->mActualScaledClipRect.size.height = v87;
      objc_msgSend_p_evenDimensionsWithSize_(self, v88, v89, self->mScaledImageSize.width, self->mScaledImageSize.height);
      self->mScaledImageSize.width = v90;
      self->mScaledImageSize.height = v91;
    }

    if (self->mInfoToDrawBeneath)
    {
      v92 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v95 = objc_msgSend_allRepsOrdered(self->mCanvas, v93, v94);
      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v115, v123, 16);
      if (v97)
      {
        v100 = v97;
        v101 = *v116;
LABEL_51:
        v102 = 0;
        while (1)
        {
          if (*v116 != v101)
          {
            objc_enumerationMutation(v95);
          }

          v103 = *(*(&v115 + 1) + 8 * v102);
          v104 = objc_msgSend_info(v103, v98, v99);
          mInfoToDrawBeneath = self->mInfoToDrawBeneath;

          if (v104 == mInfoToDrawBeneath)
          {
            break;
          }

          objc_msgSend_addObject_(v92, v106, v103);
          if (v100 == ++v102)
          {
            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v98, &v115, v123, 16);
            if (v100)
            {
              goto LABEL_51;
            }

            break;
          }
        }
      }

      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = sub_27671E6F8;
      v113[3] = &unk_27A6CCF00;
      v114 = v92;
      v107 = v92;
      v110 = objc_msgSend_copy(v113, v108, v109);
      mInfoToDrawBeneathFilter = self->mInfoToDrawBeneathFilter;
      self->mInfoToDrawBeneathFilter = v110;
    }

    else
    {
      v107 = self->mInfoToDrawBeneathFilter;
      self->mInfoToDrawBeneathFilter = 0;
    }
  }

  return v42;
}

- (CGSize)p_evenDimensionsWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  TSURoundedSize();
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 0.5) * 2.0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  *v11.i64 = *v6.i64 - trunc(*v6.i64 * 0.5) * 2.0;
  *&v12 = vbslq_s8(v10, v11, v6).u64[0];
  if (*vbslq_s8(v10, v8, v7).i64 == 0.0)
  {
    v13 = *v7.i64;
    if (v12 == 0.0)
    {
      v13 = height;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *v7.i64 + -1.0;
  }

  if (v12 == 0.0)
  {
    width = *v6.i64;
  }

  else
  {
    width = *v6.i64 + -1.0;
  }

  if (width > *v6.i64 || v13 > *v7.i64)
  {
    v15 = MEMORY[0x277D81150];
    v24 = v7.i64[0];
    v25 = v6.i64[0];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDImager p_evenDimensionsWithSize:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 594, 0, "New image dimensions (%f, %f) not calculated as expected from original size (%f, %f)! Image may be the wrong size.", *&width, *&v13, v25, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

LABEL_14:
  v22 = width;
  v23 = v13;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)p_drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4
{
  v4 = a4;
  self->mDrawingIntoPDF = 1;
  isPrinting = objc_msgSend_isPrinting(self, a2, a3);
  mDrawingIntoPDF = self->mDrawingIntoPDF;
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(self->mCanvas, v9, v10);
  TSDSetCGContextInfo(a3, isPrinting, mDrawingIntoPDF, 0, shouldSuppressBackgrounds, 1.0);
  x = self->mActualScaledClipRect.origin.x;
  y = self->mActualScaledClipRect.origin.y;
  height = self->mActualScaledClipRect.size.height;
  if (v4)
  {
    TSURectWithSize();
    v22.origin.x = v15;
    v22.origin.y = v16;
    v22.size.width = v17;
    v22.size.height = v18;
    CGContextBeginPage(a3, &v22);
  }

  CGContextTranslateCTM(a3, 0.0, height);
  CGContextScaleCTM(a3, 1.0, -1.0);
  CGContextTranslateCTM(a3, -x, -y);
  CGContextClipToRectSafe();
  objc_msgSend_i_drawBackgroundInContext_(self->mCanvas, v19, a3);
  objc_msgSend_i_drawRepsInContext_passingTest_(self->mCanvas, v20, a3, self->mInfoToDrawBeneathFilter);
  mPostRenderAction = self->mPostRenderAction;
  if (mPostRenderAction)
  {
    mPostRenderAction[2](mPostRenderAction, a3, self->mCanvas);
  }

  if (v4)
  {
    CGContextEndPage(a3);
  }

  TSDClearCGContextInfo(a3);
  self->mDrawingIntoPDF = 0;
}

- (CGImage)p_newImageInReusableContext
{
  if ((objc_msgSend_shouldReuseBitmapContext(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImager p_newImageInReusableContext]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 639, 0, "shouldn't be reusing context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (!self->mReusableBitmapContext)
  {
    goto LABEL_11;
  }

  if (!CGRectEqualToRect(self->mReusableActualScaledClipRect, self->mActualScaledClipRect) || (self->mReusableScaledImageSize.width == self->mScaledImageSize.width ? (v13 = self->mReusableScaledImageSize.height == self->mScaledImageSize.height) : (v13 = 0), !v13))
  {
    mReusableBitmapContext = self->mReusableBitmapContext;
    if (mReusableBitmapContext)
    {
      TSDClearCGContextInfo(mReusableBitmapContext);
      CGContextRelease(self->mReusableBitmapContext);
      self->mReusableBitmapContext = 0;
    }

LABEL_11:
    ContextToDrawImageInScaledRect_withTargetIntegralSize_distortedToMatch_returningBounds_integralBounds = objc_msgSend_i_createContextToDrawImageInScaledRect_withTargetIntegralSize_distortedToMatch_returningBounds_integralBounds_(self->mCanvas, v4, self->mDistortedToMatch, &self->mReusableBounds, &self->mReusableIntegralBounds, self->mActualScaledClipRect.origin.x, self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height);
    self->mReusableBitmapContext = ContextToDrawImageInScaledRect_withTargetIntegralSize_distortedToMatch_returningBounds_integralBounds;
    isPrinting = objc_msgSend_isPrinting(self, v16, v17);
    mDrawingIntoPDF = self->mDrawingIntoPDF;
    shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(self->mCanvas, v20, v21);
    TSDSetCGContextInfo(ContextToDrawImageInScaledRect_withTargetIntegralSize_distortedToMatch_returningBounds_integralBounds, isPrinting, mDrawingIntoPDF, 0, shouldSuppressBackgrounds, 1.0);
    self->mReusableActualScaledClipRect.origin = self->mActualScaledClipRect.origin;
    self->mReusableActualScaledClipRect.size = self->mActualScaledClipRect.size;
    self->mReusableScaledImageSize = self->mScaledImageSize;
    goto LABEL_12;
  }

  mBackgroundColor = self->mBackgroundColor;
  if (!mBackgroundColor || (objc_msgSend_alphaComponent(mBackgroundColor, v4, v12), v32 < 1.0))
  {
    CGContextClearRect(self->mReusableBitmapContext, *MEMORY[0x277CBF390]);
  }

LABEL_12:
  TSDCGContextSetMaxHDRHeadroom(self->mReusableBitmapContext, 0.0);
  sub_276649C64(self->mReusableBitmapContext);
  matched = objc_msgSend_i_newImageInContext_bounds_integralBounds_distortedToMatch_keepingChildrenPassingTest_(self->mCanvas, v23, self->mReusableBitmapContext, self->mDistortedToMatch, self->mInfoToDrawBeneathFilter, self->mReusableBounds.origin.x, self->mReusableBounds.origin.y, self->mReusableBounds.size.width, self->mReusableBounds.size.height, self->mReusableIntegralBounds.origin.x, self->mReusableIntegralBounds.origin.y, self->mReusableIntegralBounds.size.width, self->mReusableIntegralBounds.size.height);
  v25 = sub_27664A1A4(self->mReusableBitmapContext);
  objc_msgSend_setPreviousRenderDatasNeedingDownload_(self, v26, v25);

  MaxHDRHeadroom = TSDCGContextGetMaxHDRHeadroom(self->mReusableBitmapContext);
  objc_msgSend_setPreviousRenderContentHeadroom_(self, v28, v29, MaxHDRHeadroom);
  return matched;
}

- (CGRect)unscaledClipRect
{
  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end