@interface TSDImager
- (BOOL)drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4;
- (BOOL)isCanvasDrawingIntoPDF:(id)a3;
- (BOOL)p_configureCanvas;
- (CGImage)newImage;
- (CGImage)p_newImageInReusableContext;
- (CGRect)actualScaledClipRect;
- (CGRect)unscaledClipRect;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3;
- (CGSize)maximumScaledImageSize;
- (CGSize)scaledImageSize;
- (TSDImager)initWithDocumentRoot:(id)a3;
- (UIEdgeInsets)contentInset;
- (double)viewScale;
- (id)pdfData;
- (void)dealloc;
- (void)p_drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setInfos:(id)a3;
- (void)setMaximumScaledImageSize:(CGSize)a3;
- (void)setScaledImageSize:(CGSize)a3;
- (void)setViewScale:(double)a3;
@end

@implementation TSDImager

- (TSDImager)initWithDocumentRoot:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager initWithDocumentRoot:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 51, @"invalid nil value for '%s'", "documentRoot"}];
  }

  v12.receiver = self;
  v12.super_class = TSDImager;
  v7 = [(TSDImager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(MEMORY[0x277CBF390] + 16);
    *(v7 + 24) = *MEMORY[0x277CBF390];
    *(v7 + 40) = v9;
    *(v7 + 104) = TSDEdgeInsetsZero;
    *(v7 + 17) = a3;
    *(v7 + 7) = 0x3FF0000000000000;
    *(v7 + 120) = *&qword_26CA652C0;
    v10 = objc_alloc_init(TSDCanvas);
    v8->mCanvas = v10;
    [(TSDCanvas *)v10 setDelegate:v8];
    v8->mPostRenderAction = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(TSDCanvas *)self->mCanvas teardown];
  [(TSDCanvas *)self->mCanvas setDelegate:0];

  CGColorRelease(self->mBackgroundColor);
  TSDClearCGContextInfo(self->mReusableBitmapContext);
  CGContextRelease(self->mReusableBitmapContext);
  v3.receiver = self;
  v3.super_class = TSDImager;
  [(TSDImager *)&v3 dealloc];
}

- (void)setInfos:(id)a3
{
  if (self->mInfos != a3)
  {
    v5 = a3;

    self->mInfos = a3;
    if (![a3 count])
    {
      [(TSDCanvas *)self->mCanvas setInfosToDisplay:self->mInfos];
      mCanvas = self->mCanvas;

      [(TSDCanvas *)mCanvas layoutIfNeeded];
    }
  }
}

- (void)setBackgroundColor:(CGColor *)a3
{
  mBackgroundColor = self->mBackgroundColor;
  if (mBackgroundColor != a3)
  {
    CGColorRelease(mBackgroundColor);
    if (a3)
    {
      Copy = CGColorCreateCopy(a3);
    }

    else
    {
      Copy = 0;
    }

    self->mBackgroundColor = Copy;
  }
}

- (double)viewScale
{
  if (self->mUseScaledImageSize)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager viewScale]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 125, @"Cannot call viewScale if scaledImageSize has been set."}];
  }

  return self->mViewScale;
}

- (void)setViewScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager setViewScale:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 131, @"Scale must be > 0."}];
  }

  self->mViewScale = a3;
  self->mScaledImageSize = *MEMORY[0x277CBF3A8];
  self->mUseScaledImageSize = 0;
}

- (CGSize)scaledImageSize
{
  if (!self->mUseScaledImageSize)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager scaledImageSize]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 139, @"Cannot call scaledImageSize if viewScale has been set."}];
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
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager setScaledImageSize:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 145, @"can't make an image with 0 width or height"}];
  }

  v9 = TSDCeilSize(width);
  v10 = v8;
  if (width != v9 || height != v8)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager setScaledImageSize:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 147, @"given a non-integral scaled image size"}];
  }

  self->mScaledImageSize.width = v9;
  self->mScaledImageSize.height = v10;
  self->mViewScale = -1.0;
  self->mUseScaledImageSize = 1;
}

- (CGSize)maximumScaledImageSize
{
  width = self->mMaximumScaledImageSize.width;
  height = self->mMaximumScaledImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setMaximumScaledImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = TSDCeilSize(a3.width);
  v8 = v6;
  if (width != v7 || height != v6)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager setMaximumScaledImageSize:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 161, @"given a non-integral maximum image size"}];
  }

  self->mMaximumScaledImageSize.width = v7;
  self->mMaximumScaledImageSize.height = v8;
}

- (CGImage)newImage
{
  mDocumentRoot = self->mDocumentRoot;
  v4 = mDocumentRoot;
  if ([(TSDImager *)self p_configureCanvas])
  {
    if (self->mUseScaledImageSize)
    {
      if ([(TSDImager *)self shouldReuseBitmapContext])
      {
        v5 = [(TSDImager *)self p_newImageInReusableContext];
      }

      else
      {
        v5 = [(TSDCanvas *)self->mCanvas i_imageInScaledRect:self->mDistortedToMatch withTargetIntegralSize:self->mActualScaledClipRect.origin.x distortedToMatch:self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height];
      }

      v6 = v5;
    }

    else
    {
      [(TSDCanvas *)self->mCanvas i_clipsImagesToBounds:0];
      v6 = [(TSDCanvas *)self->mCanvas i_imageInScaledRect:self->mActualScaledClipRect.origin.x, self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height];
      [(TSDCanvas *)self->mCanvas i_clipsImagesToBounds:1];
    }

    mPostRenderAction = self->mPostRenderAction;
    if (mPostRenderAction)
    {
      mPostRenderAction[2](mPostRenderAction, 0, self->mCanvas);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pdfData
{
  if (![(TSDImager *)self p_configureCanvas])
  {
    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGDataConsumerCreateWithCFData(v3);
  if (v5)
  {
    v6 = v5;
    v13.origin.x = TSDRectWithSize();
    v13.origin.y = v7;
    v13.size.width = v8;
    v13.size.height = v9;
    v10 = CGPDFContextCreate(v6, &v13, 0);
    [(TSDImager *)self p_drawPageInContext:v10 createPage:1];
    CGPDFContextClose(v10);
    CGContextRelease(v10);
    v11 = v4;
    CGDataConsumerRelease(v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4
{
  v4 = a4;
  v7 = [(TSDImager *)self p_configureCanvas];
  if (v7)
  {
    BitmapQualityInfo = TSDCGContextGetBitmapQualityInfo(a3);
    if (BitmapQualityInfo)
    {
      [(TSDCanvas *)self->mCanvas addBitmapsToRenderingQualityInfo:BitmapQualityInfo inContext:a3];
    }

    [(TSDImager *)self p_drawPageInContext:a3 createPage:v4];
  }

  return v7;
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3
{
  mCanvas = self->mCanvas;
  if (mCanvas != a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager visibleScaledBoundsForClippingRepsOnCanvas:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 293, @"wrong canvas"}];
    mCanvas = self->mCanvas;
  }

  [(TSDCanvas *)mCanvas viewScale];
  v8 = v7;
  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;

  v13 = TSDMultiplyRectScalar(x, y, width, height, v8);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)isCanvasDrawingIntoPDF:(id)a3
{
  if (self->mCanvas != a3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager isCanvasDrawingIntoPDF:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 300, @"wrong canvas"}];
  }

  return self->mDrawingIntoPDF;
}

- (BOOL)p_configureCanvas
{
  [(TSDCanvas *)self->mCanvas setBackgroundColor:self->mBackgroundColor];
  [(TSDCanvas *)self->mCanvas setContentInset:self->mContentInset.top, self->mContentInset.left, self->mContentInset.bottom, self->mContentInset.right];
  [(TSDCanvas *)self->mCanvas setInfosToDisplay:self->mInfos];
  [(TSDCanvas *)self->mCanvas layoutInvalidated];
  [(TSDCanvas *)self->mCanvas layoutIfNeeded];
  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  if (CGRectEqualToRect(v51, *MEMORY[0x277CBF390]))
  {
    [(TSDCanvas *)self->mCanvas i_unscaledRectOfLayouts];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MinX = CGRectGetMinX(v52);
  v12 = fminf(MinX, 0.0);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  MinY = CGRectGetMinY(v53);
  v14 = fminf(MinY, 0.0);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  MaxX = CGRectGetMaxX(v54);
  v16 = fmaxf(MaxX, 0.0);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MaxY = CGRectGetMaxY(v55);
  v18 = v16 - v12;
  v19 = fmaxf(MaxY, 0.0) - v14;
  v20 = v19 > 0.0 && v18 > 0.0;
  if (v20)
  {
    [(TSDCanvas *)self->mCanvas unscaledSize];
    if (v22 != v18 || v21 != v19)
    {
      [(TSDCanvas *)self->mCanvas setUnscaledSize:v18, v19];
      [(TSDCanvas *)self->mCanvas layoutIfNeeded];
    }

    if (self->mUseScaledImageSize)
    {
      v24 = self->mScaledImageSize.width / width;
      v25 = self->mScaledImageSize.height / height;
      mViewScale = fminf(v24, v25);
    }

    else
    {
      mViewScale = self->mViewScale;
    }

    v27 = self->mMaximumScaledImageSize.width;
    if (v27 != 0.0 || self->mMaximumScaledImageSize.height != 0.0)
    {
      v28 = self->mMaximumScaledImageSize.height;
      if (width > v27 || height > v28)
      {
        if (v27 == 0.0)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = width / v27;
        }

        if (v28 == 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = height / v28;
        }

        if (v29 == 0.0 && v30 == 0.0)
        {
          v31 = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager p_configureCanvas]"];
          [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 374, @"both ratios in imager are zero!"}];
        }

        if (v29 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v29;
        }

        mViewScale = 1.0 / v33;
      }
    }

    [(TSDCanvas *)self->mCanvas setViewScale:mViewScale];
    [(TSDCanvas *)self->mCanvas viewScale];
    self->mActualScaledClipRect.origin.x = TSDMultiplyRectScalar(x, y, width, height, v34);
    self->mActualScaledClipRect.origin.y = v35;
    self->mActualScaledClipRect.size.width = v36;
    self->mActualScaledClipRect.size.height = v37;
    if (self->mUseScaledImageSize && self->mImageMustHaveEvenDimensions)
    {
      *v38.i64 = TSDRoundedSize();
      *v40.i64 = *v39.i64 - trunc(*v39.i64 * 0.5) * 2.0;
      v41.f64[0] = NAN;
      v41.f64[1] = NAN;
      v42 = vnegq_f64(v41);
      v43 = *vbslq_s8(v42, v40, v39).i64;
      *v44.i64 = *v38.i64 - trunc(*v38.i64 * 0.5) * 2.0;
      *&v45 = vbslq_s8(v42, v44, v38).u64[0];
      if (v43 != 0.0 || v45 != 0.0)
      {
        if (v43 == 0.0)
        {
          v46 = *v39.i64;
        }

        else
        {
          v46 = *v39.i64 + -1.0;
        }

        if (v45 == 0.0)
        {
          v47 = *v38.i64;
        }

        else
        {
          v47 = *v38.i64 + -1.0;
        }

        if (v47 > self->mScaledImageSize.width || v46 > self->mScaledImageSize.height)
        {
          v48 = [MEMORY[0x277D6C290] currentHandler];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager p_configureCanvas]"];
          [v48 handleFailureInFunction:v49 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 401, @"new image dimensions not calculated as expected! Image may be the wrong size."}];
        }

        self->mActualScaledClipRect.size.width = v47;
        self->mActualScaledClipRect.size.height = v46;
      }
    }
  }

  return v20;
}

- (void)p_drawPageInContext:(CGContext *)a3 createPage:(BOOL)a4
{
  v4 = a4;
  self->mDrawingIntoPDF = 1;
  TSDSetCGContextInfo(a3, [(TSDImager *)self isPrinting], self->mDrawingIntoPDF, 0, [(TSDCanvas *)self->mCanvas shouldSuppressBackgrounds], 1.0);
  x = self->mActualScaledClipRect.origin.x;
  y = self->mActualScaledClipRect.origin.y;
  width = self->mActualScaledClipRect.size.width;
  height = self->mActualScaledClipRect.size.height;
  if (v4)
  {
    v15.origin.x = TSDRectWithSize();
    v15.origin.y = v11;
    v15.size.width = v12;
    v15.size.height = v13;
    CGContextBeginPage(a3, &v15);
  }

  CGContextTranslateCTM(a3, 0.0, height);
  CGContextScaleCTM(a3, 1.0, -1.0);
  CGContextTranslateCTM(a3, -x, -y);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextClipToRect(a3, v16);
  [(TSDCanvas *)self->mCanvas i_drawBackgroundInContext:a3];
  [(TSDCanvas *)self->mCanvas i_drawRepsInContext:a3];
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
  if (![(TSDImager *)self shouldReuseBitmapContext])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImager p_newImageInReusableContext]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImager.m"), 451, @"shouldn't be reusing context"}];
  }

  if (!self->mReusableBitmapContext)
  {
    goto LABEL_11;
  }

  if (!CGRectEqualToRect(self->mReusableActualScaledClipRect, self->mActualScaledClipRect) || (self->mReusableScaledImageSize.width == self->mScaledImageSize.width ? (v5 = self->mReusableScaledImageSize.height == self->mScaledImageSize.height) : (v5 = 0), !v5))
  {
    mReusableBitmapContext = self->mReusableBitmapContext;
    if (mReusableBitmapContext)
    {
      TSDClearCGContextInfo(mReusableBitmapContext);
      CGContextRelease(self->mReusableBitmapContext);
      self->mReusableBitmapContext = 0;
    }

LABEL_11:
    v7 = [(TSDCanvas *)self->mCanvas i_createContextToDrawImageInScaledRect:&self->mReusableBounds withTargetIntegralSize:&self->mReusableIntegralBounds returningBounds:self->mActualScaledClipRect.origin.x integralBounds:self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height];
    self->mReusableBitmapContext = v7;
    TSDSetCGContextInfo(v7, [(TSDImager *)self isPrinting], self->mDrawingIntoPDF, 0, [(TSDCanvas *)self->mCanvas shouldSuppressBackgrounds], 1.0);
    size = self->mActualScaledClipRect.size;
    self->mReusableActualScaledClipRect.origin = self->mActualScaledClipRect.origin;
    self->mReusableActualScaledClipRect.size = size;
    self->mReusableScaledImageSize = self->mScaledImageSize;
    goto LABEL_12;
  }

  mBackgroundColor = self->mBackgroundColor;
  if (!mBackgroundColor || CGColorGetAlpha(mBackgroundColor) < 1.0)
  {
    CGContextClearRect(self->mReusableBitmapContext, *MEMORY[0x277CBF390]);
  }

LABEL_12:
  mCanvas = self->mCanvas;
  v10 = self->mReusableBitmapContext;
  mDistortedToMatch = self->mDistortedToMatch;
  x = self->mReusableBounds.origin.x;
  y = self->mReusableBounds.origin.y;
  width = self->mReusableBounds.size.width;
  height = self->mReusableBounds.size.height;
  v16 = self->mReusableIntegralBounds.origin.x;
  v17 = self->mReusableIntegralBounds.origin.y;
  v18 = self->mReusableIntegralBounds.size.width;
  v19 = self->mReusableIntegralBounds.size.height;

  return [(TSDCanvas *)mCanvas i_newImageInContext:v10 bounds:mDistortedToMatch integralBounds:x distortedToMatch:y, width, height, v16, v17, v18, v19];
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

- (UIEdgeInsets)contentInset
{
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  bottom = self->mContentInset.bottom;
  right = self->mContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)actualScaledClipRect
{
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

@end