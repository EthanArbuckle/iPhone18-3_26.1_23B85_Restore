@interface TSDImageFill
- (BOOL)canApplyToCALayer;
- (BOOL)canApplyToCALayerByAddingSublayers;
- (BOOL)drawsInOneStep;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOpaque;
- (BOOL)p_shouldApplyTintedImage;
- (BOOL)shouldBeReappliedToCALayer:(id)a3;
- (CGImage)p_newTintedImageWithScale:(double)a3;
- (CGRect)p_drawnRectForImageSize:(CGSize)a3 destRect:(CGRect)a4 inContext:(CGContext *)a5;
- (CGSize)fillSize;
- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)a3 inContext:(CGContext *)a4;
- (CGSize)renderedImageSizeForObjectSize:(CGSize)a3;
- (TSDImageFill)initWithGenericImageData:(id)a3 technique:(int)a4 tintColor:(id)a5 size:(CGSize)a6 originalImageData:(id)a7;
- (TSDImageFill)initWithImageData:(id)a3 technique:(int)a4 tintColor:(id)a5 size:(CGSize)a6 originalImageData:(id)a7;
- (double)scale;
- (id)imageDataAtFillSize;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_cachedImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orLayer:(id)a5;
- (id)p_halfSizeCachedImage;
- (id)p_quarterSizeCachedImage;
- (id)p_standardSizeCachedImage;
- (id)p_validatedImageProvider;
- (id)referenceColor;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)addBitmapsToRenderingQualityInfo:(id)a3 forShapeRep:(id)a4 inContext:(CGContext *)a5;
- (void)applyToCALayer:(id)a3 withScale:(double)a4;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)p_drawBitmapImage:(CGImage *)a3 withOrientation:(int64_t)a4 inContext:(CGContext *)a5 bounds:(CGRect)a6;
- (void)p_drawPDFWithProvider:(id)a3 inContext:(CGContext *)a4 bounds:(CGRect)a5;
- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)p_setFillSizeForApplicationData;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
@end

@implementation TSDImageFill

- (TSDImageFill)initWithImageData:(id)a3 technique:(int)a4 tintColor:(id)a5 size:(CGSize)a6 originalImageData:(id)a7
{
  height = a6.height;
  width = a6.width;
  if (a4 >= 5)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill initWithImageData:technique:tintColor:size:originalImageData:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 71, @"bogus technique"}];
  }

  v18.receiver = self;
  v18.super_class = TSDImageFill;
  v16 = [(TSDImageFill *)&v18 init];
  if (v16)
  {
    v16->mImageData = a3;
    v16->mOriginalImageData = a7;
    v16->mTechnique = a4;
    v16->mTintColor = [a5 copy];
    v16->mFillSize.width = width;
    v16->mFillSize.height = height;
    v16->mTempRenderLock = dispatch_queue_create("com.apple.iwork.drawing.fills.image", 0);
  }

  return v16;
}

- (TSDImageFill)initWithGenericImageData:(id)a3 technique:(int)a4 tintColor:(id)a5 size:(CGSize)a6 originalImageData:(id)a7
{
  result = [(TSDImageFill *)self initWithImageData:a3 technique:*&a4 tintColor:a5 size:a7 originalImageData:a6.width, a6.height];
  if (result)
  {
    result->mInterpretsUntaggedImageDataAsGeneric = 1;
  }

  return result;
}

- (void)dealloc
{
  if (self->mImageData && self->mHasIndicatedInterestInProvider)
  {
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  dispatch_release(self->mTempRenderLock);

  CGImageRelease(self->mTempRenderCopy);
  v3.receiver = self;
  v3.super_class = TSDImageFill;
  [(TSDImageFill *)&v3 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableImageFill allocWithZone:a3];
  mTechnique = self->mTechnique;
  mTintColor = self->mTintColor;
  [(TSDImageFill *)self fillSize];
  v7 = [(TSDImageFill *)v4 initWithImageData:0 technique:mTechnique tintColor:mTintColor size:0 originalImageData:?];
  if (v7)
  {
    *(v7 + 16) = self->mImageData;
    *(v7 + 24) = self->mOriginalImageData;
    *(v7 + 32) = self->mInterpretsUntaggedImageDataAsGeneric;
  }

  return v7;
}

- (double)scale
{
  [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
  if (v4 == 0.0 || v3 == 0.0)
  {
    return 1.0;
  }

  [(TSDImageFill *)self fillSize];
  v6 = v5;
  [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
  v8 = v6 / v7;
  [(TSDImageFill *)self fillSize];
  v10 = v9;
  [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
  v12 = v10 / v11;
  if (vabdd_f64(v8, v12) >= 0.00999999978)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill scale]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 215, @"The scaled fill size should respect the aspect ratio of the natural size"}];
  }

  return fmin(v8, v12);
}

- (CGSize)fillSize
{
  p_mFillSize = &self->mFillSize;
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    if ([(TSPData *)[(TSDImageFill *)self imageData] isApplicationData])
    {
      [(TSDImageFill *)self p_setFillSizeForApplicationData];
      width = p_mFillSize->width;
      height = p_mFillSize->height;
    }

    else
    {
      [-[TSDImageFill p_validatedImageProvider](self "p_validatedImageProvider")];
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isOpaque
{
  [(TSDImageFill *)self p_validatedImageProvider];
  objc_opt_class();
  v3 = TSUDynamicCast();
  if ([(TSDImageFill *)self tintColor])
  {
    [(TSUColor *)[(TSDImageFill *)self tintColor] alphaComponent];
    v5 = v4 == 1.0;
  }

  else
  {
    v5 = 0;
  }

  return ([v3 isOpaque] | v5) & 1;
}

- (void)p_setFillSizeForApplicationData
{
  mOriginalImageData = self->mOriginalImageData;
  if (!mOriginalImageData || mOriginalImageData == self->mImageData)
  {
    v4 = [(TSDImageFill *)self p_validatedImageProvider];
  }

  else
  {
    v4 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  v5 = v4;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    [v6 dpiAdjustedFillSize];
  }

  else
  {
    [v5 naturalSize];
  }

  self->mFillSize.width = v7;
  self->mFillSize.height = v8;
}

- (id)imageDataAtFillSize
{
  if ([(TSDImageFill *)self originalImageData])
  {
    v3 = [(TSDImageFill *)self originalImageData];
  }

  else
  {
    v3 = [(TSDImageFill *)self imageData];
  }

  v4 = v3;
  v5 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  [v5 naturalSize];
  v7 = v6;
  v9 = v8;
  [(TSDImageFill *)self fillSize];
  if (v7 != v11 || v9 != v10)
  {
    v13 = [TSDImageResamplingOperation alloc];
    [(TSDImageFill *)self fillSize];
    v14 = [(TSDImageResamplingOperation *)v13 initWithImageProvider:v5 desiredSize:?];
    [(TSDImageResamplingOperation *)v14 setDisplayName:[(TSPData *)v4 filename]];
    v15 = [(TSDImageResamplingOperation *)v14 performResampleOperationWithResampleOptions:10 bitmapContextOptions:11];
    if (v15)
    {
      v4 = v15;
    }
  }

  [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  v17 = v16;
  v19 = v18;
  [(TSDImageFill *)self fillSize];
  if (v17 != v21 || v19 != v20)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill imageDataAtFillSize]"];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 287, @"Fill size is incorrect."}];
  }

  return v4;
}

- (id)referenceColor
{
  result = self->mReferenceColor;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mReferenceColor)
    {
      v4 = [MEMORY[0x277D6C2A8] clearColor];
      if ([(TSDImageFill *)self p_validatedImageProvider])
      {
        v5 = TSDBitmapContextCreate(3, 1.0);
        if (v5)
        {
          Mutable = CGPathCreateMutable();
          if (Mutable)
          {
            [(TSDImageFill *)self fillSize];
            v8 = v7;
            v10 = v9;
            v19.origin.x = TSDRectWithSize();
            CGPathAddRect(Mutable, 0, v19);
            CGContextScaleCTM(v5, 1.0 / v8, 1.0 / v10);
            [(TSDImageFill *)self paintPath:Mutable inContext:v5];
            CGPathRelease(Mutable);
          }

          else
          {
            v15 = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
            [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 312, @"invalid nil value for '%s'", "path"}];
          }

          Data = CGBitmapContextGetData(v5);
          if (Data)
          {
            v4 = [MEMORY[0x277D6C2A8] colorWithRed:BYTE2(*Data) / 255.0 green:BYTE1(*Data) / 255.0 blue:*Data / 255.0 alpha:1.0];
          }

          CGContextRelease(v5);
        }

        else
        {
          v13 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
          [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 308, @"invalid nil value for '%s'", "smallContext"}];
        }
      }

      else
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 302, @"invalid nil value for '%s'", "provider"}];
      }

      v18 = v4;
      __dmb(0xBu);
      self->mReferenceColor = v4;
    }

    objc_sync_exit(self);
    return self->mReferenceColor;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v24 = v5;
    v25 = v4;
    v26 = v3;
    objc_opt_class();
    v12 = TSUDynamicCast();
    if (v12)
    {
      v13 = v12;
      LODWORD(v12) = -[TSPData isEqual:](-[TSDImageFill imageData](self, "imageData"), "isEqual:", [v12 imageData]);
      if (v12)
      {
        v14 = [(TSDImageFill *)self technique];
        if (v14 == [v13 technique])
        {
          v15 = [(TSDImageFill *)self tintColor];
          v16 = [v13 tintColor];
          if (!(v15 | v16) || (LODWORD(v12) = [v15 isEqual:v16], v12))
          {
            [(TSDImageFill *)self fillSize:v10];
            v18 = v17;
            v20 = v19;
            [v13 fillSize];
            LOBYTE(v12) = v20 == v22 && v18 == v21;
          }
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }
    }
  }

  return v12;
}

- (BOOL)drawsInOneStep
{
  if (self->mTintColor)
  {
    isKindOfClass = 1;
  }

  else
  {
    [(TSDImageFill *)self p_validatedImageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & (self->mTechnique != 2);
}

- (BOOL)canApplyToCALayer
{
  if (self->mTintColor)
  {
    LOBYTE(v2) = 0;
  }

  else if ((self->mTechnique | 2) == 2)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    objc_opt_class();
    [(TSDImageFill *)self p_validatedImageProvider];
    v2 = TSUDynamicCast();
    if (v2)
    {
      LOBYTE(v2) = [v2 orientation] == 0;
    }
  }

  return v2;
}

- (BOOL)canApplyToCALayerByAddingSublayers
{
  if (self->mTintColor)
  {
    LOBYTE(v2) = 0;
  }

  else if (self->mTechnique == 2)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    objc_opt_class();
    [(TSDImageFill *)self p_validatedImageProvider];
    v2 = TSUDynamicCast();
    if (v2)
    {
      LOBYTE(v2) = [v2 orientation] == 0;
    }
  }

  return v2;
}

- (BOOL)p_shouldApplyTintedImage
{
  v3 = [(TSDImageFill *)self p_standardSizeCachedImage];
  if (v3)
  {
    LOBYTE(v3) = [(TSDImageFill *)self tintColor]!= 0;
  }

  return v3;
}

- (BOOL)shouldBeReappliedToCALayer:(id)a3
{
  if (!self->mTechnique)
  {
    return 1;
  }

  if ([(TSDImageFill *)self p_shouldApplyTintedImage])
  {
    return 0;
  }

  objc_opt_class();
  [(TSDImageFill *)self p_validatedImageProvider];
  v6 = TSUDynamicCast();
  [a3 bounds];
  v9 = [v6 CGImageForSize:0 inContext:a3 orLayer:{v7, v8}];
  return [a3 contents] != v9;
}

- (id)p_cachedImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orLayer:(id)a5
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    if (a5)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_cachedImageForSize:inContext:orLayer:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 442, @"using context to determine requested image size. layer should be nil"}];
    }

    if ((TSDCGContextIsPrintContext(a4) & 1) != 0 || TSDCGContextIsPDFContext(a4))
    {

      return [(TSDImageFill *)self p_standardSizeCachedImage];
    }

    v13 = TSDCGContextAssociatedScreenScale(a4);
    width = TSDMultiplySizeScalar(width, height, v13);
    height = v14;
    CGContextGetCTM(&v22, a4);
    v12 = TSDTransformScale(&v22.a);
    goto LABEL_12;
  }

  if (a5)
  {
    [a5 contentsScale];
LABEL_12:
    width = TSDMultiplySizeScalar(width, height, v12);
    height = v15;
  }

  [(TSDImageFill *)self fillSize];
  v17 = v16;
  v19 = v18;
  if (width <= TSDMultiplySizeScalar(v16, v18, 0.25) && height <= v20)
  {
    return [(TSDImageFill *)self p_quarterSizeCachedImage];
  }

  if (width <= TSDMultiplySizeScalar(v17, v19, 0.5))
  {
    return [(TSDImageFill *)self p_halfSizeCachedImage];
  }

  return [(TSDImageFill *)self p_standardSizeCachedImage];
}

- (void)applyToCALayer:(id)a3 withScale:(double)a4
{
  if (![(TSDImageFill *)self canApplyToCALayer]&& ![(TSDImageFill *)self canApplyToCALayerByAddingSublayers])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill applyToCALayer:withScale:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 472, @"Applying image fill with unsupported properties to CALayer"}];
  }

  objc_opt_class();
  [(TSDImageFill *)self p_validatedImageProvider];
  v9 = TSUDynamicCast();
  v10 = [(TSDImageFill *)self p_shouldApplyTintedImage];
  [a3 bounds];
  if (v10)
  {
    v13 = [-[TSDImageFill p_cachedImageForSize:inContext:orLayer:](self p_cachedImageForSize:0 inContext:a3 orLayer:{v11, v12), "newImage"}];
  }

  else
  {
    v13 = CGImageRetain([v9 CGImageForSize:0 inContext:a3 orLayer:{v11, v12}]);
  }

  v14 = v13;
  v15 = MEMORY[0x277CBF348];
  if ([a3 sublayers])
  {
    v16 = [objc_msgSend(a3 "sublayers")];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  x = *v15;
  y = v15[1];
  mTechnique = self->mTechnique;
  if (mTechnique > 2)
  {
    if (mTechnique == 3)
    {
      v24 = *MEMORY[0x277CDA720];
      [(TSDImageFill *)self fillSize];
      v29 = v28;
      v31 = v30;
      [a3 bounds];
      v33 = v32;
      v35 = v34;
      v36 = TSDRectWithSize();
      v40 = TSDFitOrFillSizeInRect(1, v29, v31, v36, v37, v38, v39);
      v42 = 1.0 / v41;
      v44 = 1.0 / v43;
      v79.origin.x = -(v40 * v42);
      v79.origin.y = -(v45 * v44);
      v79.size.width = v33 * v42;
      v79.size.height = v35 * v44;
      v76.size.width = 1.0;
      v76.size.height = 1.0;
      v76.origin.x = x;
      v76.origin.y = y;
      v77 = CGRectIntersection(v76, v79);
      x = v77.origin.x;
      y = v77.origin.y;
      width = v77.size.width;
      height = v77.size.height;
      v20 = 0;
      goto LABEL_23;
    }

    if (mTechnique == 4)
    {
      v20 = 0;
      v21 = MEMORY[0x277CDA710];
LABEL_19:
      v24 = *v21;
      height = 1.0;
      width = 1.0;
LABEL_23:
      v46 = v14;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (mTechnique)
  {
    if (mTechnique == 1)
    {
LABEL_18:
      v20 = 0;
      v21 = MEMORY[0x277CDA700];
      goto LABEL_19;
    }

LABEL_17:
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill applyToCALayer:withScale:]"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 565, @"bogus fill technique to apply to CALayer"}];
    goto LABEL_18;
  }

  v24 = *MEMORY[0x277CDA700];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x277CD9ED0] layer];
    v27 = [MEMORY[0x277CD9ED0] layer];
    [v20 addSublayer:v27];
  }

  else
  {
    v20 = [objc_msgSend(a3 "sublayers")];
    v27 = [objc_msgSend(v20 "sublayers")];
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [a3 bounds];
  [v20 setPosition:{TSDCenterOfRect(v47, v48, v49, v50)}];
  [a3 bounds];
  [v20 setBounds:?];
  [v20 setMasksToBounds:1];
  [v20 setEdgeAntialiasingMask:1];
  [v20 bounds];
  v55 = TSDCenterOfRect(v51, v52, v53, v54);
  v57 = v56;
  [(TSDImageFill *)self fillSize];
  v59 = TSDRectWithCenterAndSize(v55, v57, v58);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  [a3 contentsScale];
  v67 = TSDRoundedRectForScale(v59, v61, v63, v65, v66 * a4);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  [v27 setContents:v14];
  [v27 setPosition:{TSDCenterOfRect(v67, v69, v71, v73)}];
  [v27 setBounds:TSDRectWithSize()];
  [a3 contentsScale];
  [v27 setContentsScale:?];
  height = 1.0;
  CATransform3DMakeScale(&v75, a4, a4, 1.0);
  v74 = v75;
  [v27 setTransform:&v74];
  [v27 setDelegate:{objc_msgSend(a3, "delegate")}];
  [v27 setEdgeAntialiasingMask:0];
  [MEMORY[0x277CD9FF0] commit];
  v46 = 0;
  width = 1.0;
LABEL_24:
  if ([a3 contents] != v46)
  {
    [a3 setContents:v46];
  }

  if ([a3 contentsGravity] != v24)
  {
    [a3 setContentsGravity:v24];
  }

  [a3 contentsRect];
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  if (!CGRectEqualToRect(v78, v80))
  {
    [a3 setContentsRect:{x, y, width, height}];
  }

  if ([a3 backgroundColor])
  {
    [a3 setBackgroundColor:0];
  }

  if (v20 && v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v20 setName:@"TSDImageFillSublayer"];
    [a3 addSublayer:v20];
  }

  else if (!v20 && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [objc_msgSend(objc_msgSend(a3 "sublayers")];
  }

  CGImageRelease(v14);
}

uint64_t __41__TSDImageFill_applyToCALayer_withScale___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];

  return [v2 isEqualToString:@"TSDImageFillSublayer"];
}

- (CGSize)renderedImageSizeForObjectSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TSDImageFill *)self technique];
  v7 = 0.0;
  if (v6 > 2)
  {
    v8 = 0.0;
    if ((v6 - 3) < 2)
    {
      [(TSDImageFill *)self fillSize:0.0];
      v8 = TSDFitOrFillSizeInSize([(TSDImageFill *)self technique]== 3, v9, v10, width, height);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    if (v6 == 1)
    {
      v7 = height;
      v8 = width;
      goto LABEL_9;
    }

    v8 = 0.0;
    if (v6 == 2)
    {
LABEL_5:
      [(TSDImageFill *)self fillSize];
    }
  }

LABEL_9:
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    Mutable = CGPathCreateMutable();
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGPathAddRect(Mutable, 0, v14);
    [(TSDImageFill *)self paintPath:Mutable inContext:a4];

    CGPathRelease(Mutable);
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill drawSwatchInRect:inContext:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 621, @"invalid nil value for '%s'", "ctx"}];
  }
}

- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)a3 inContext:(CGContext *)a4
{
  v6 = [(TSDImageFill *)self technique];
  [(TSDImageFill *)self fillSize];
  if (v6 != 2)
  {
    [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a4 inContext:?];
    v7 = v9;
    v8 = v10;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  if (!a3)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_paintPath:inContext:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 648, @"invalid nil value for '%s'", "path"}];
    if (a4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_paintPath:inContext:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 649, @"invalid nil value for '%s'", "ctx"}];
    return;
  }

  v7 = [(TSDImageFill *)self p_validatedImageProvider];
  if (v7)
  {
    v8 = v7;
    CGContextSaveGState(a4);
    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);
    CGContextClip(a4);
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) == 0 || TSDCGContextGetBitmapQualityInfo(a4) == 0;
    PathBoundingBox = CGPathGetPathBoundingBox(a3);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (-[TSDImageFill tintColor](self, "tintColor") && v9 && ([v8 isError] & 1) == 0)
    {
      [(TSDImageFill *)self p_sizeOfFillImageForDestRect:a4 inContext:x, y, width, height];
      v18 = [-[TSDImageFill p_cachedImageForSize:inContext:orLayer:](self p_cachedImageForSize:a4 inContext:0) orLayer:"newImage"];
      [(TSDImageFill *)self p_drawBitmapImage:v18 withOrientation:0 inContext:a4 bounds:x, y, width, height];
      CGImageRelease(v18);
    }

    else
    {
      CGContextSaveGState(a4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TSDImageFill *)self p_sizeOfFillImageForDestRect:a4 inContext:x, y, width, height];
        -[TSDImageFill p_drawBitmapImage:withOrientation:inContext:bounds:](self, "p_drawBitmapImage:withOrientation:inContext:bounds:", [v8 CGImageForSize:a4 inContext:0 orLayer:?], objc_msgSend(v8, "orientation"), a4, x, y, width, height);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TSDImageFill *)self p_drawPDFWithProvider:v8 inContext:a4 bounds:x, y, width, height];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(TSDImageFill *)self p_drawnRectForImageSize:a4 destRect:width inContext:height, x, y, width, height];
            [v8 drawImageInContext:a4 rect:?];
          }
        }
      }

      CGContextRestoreGState(a4);
      if (!v9 && [(TSDImageFill *)self tintColor])
      {
        [(TSUColor *)[(TSDImageFill *)self tintColor] paintRect:a4 inContext:x, y, width, height];
      }
    }

    CGContextRestoreGState(a4);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)a3 forShapeRep:(id)a4 inContext:(CGContext *)a5
{
  objc_opt_class();
  [(TSDImageFill *)self p_validatedImageProvider];
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = v9;
    [(TSDImageFill *)self fillSize];
    v12 = v11;
    v14 = v13;
    [a4 layerFrameInScaledCanvas];
    [(TSDImageFill *)self p_drawnRectForImageSize:a5 destRect:v12 inContext:v14, v15, v16, v17, v18];

    [a3 cacheProvider:v10 ofSize:{v19, v20}];
  }
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill paintPath:inContext:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 715, @"invalid nil value for '%s'", "path"}];
  }

  [(TSDImageFill *)self p_paintPath:a3 inContext:a4];
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  if (!a3)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill paintPath:naturalBounds:inContext:isPDF:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 722, @"invalid nil value for '%s'", "path"}];
  }

  [(TSDImageFill *)self p_paintPath:a3 inContext:a5, a6, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

- (CGImage)p_newTintedImageWithScale:(double)a3
{
  v5 = [(TSDImageFill *)self p_validatedImageProvider];
  if (!-[TSDImageFill tintColor](self, "tintColor") || !v5 || ([v5 isError] & 1) != 0)
  {
    return 0;
  }

  [v5 naturalSize];
  TSDMultiplySizeScalar(v7, v8, a3);
  v9 = TSDRoundedSize();
  if ([v5 imageGamut] == 2)
  {
    v10 = 11;
  }

  else
  {
    v10 = 43;
  }

  v11 = TSDBitmapContextCreate(v10, v9);
  v12 = TSDRectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGContextSaveGState(v11);
  [v5 drawImageInContext:v11 rect:{v12, v14, v16, v18}];
  CGContextRestoreGState(v11);
  CGContextSetFillColorWithColor(v11, [(TSUColor *)[(TSDImageFill *)self tintColor] CGColor]);
  v20.origin.x = v12;
  v20.origin.y = v14;
  v20.size.width = v16;
  v20.size.height = v18;
  CGContextFillRect(v11, v20);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  return Image;
}

- (id)p_standardSizeCachedImage
{
  result = [(TSDImageFill *)self tintColor];
  if (result)
  {
    mStandardSizeTintedImage = self->mStandardSizeTintedImage;
    if (!mStandardSizeTintedImage)
    {
      objc_sync_enter(self);
      if (!self->mStandardSizeTintedImage)
      {
        v5 = [objc_alloc(MEMORY[0x277D6C2D8]) initWithDelegate:self createImageSelector:sel_p_newStandardSizeImage];
        __dmb(0xBu);
        self->mStandardSizeTintedImage = v5;
        [v5 ownerAutoreleasedAccess];
      }

      objc_sync_exit(self);
      mStandardSizeTintedImage = self->mStandardSizeTintedImage;
    }

    return [(TSUFlushableCachedImage *)mStandardSizeTintedImage ownerAutoreleasedAccess];
  }

  return result;
}

- (id)p_halfSizeCachedImage
{
  result = [(TSDImageFill *)self tintColor];
  if (result)
  {
    mHalfSizeTintedImage = self->mHalfSizeTintedImage;
    if (!mHalfSizeTintedImage)
    {
      objc_sync_enter(self);
      if (!self->mHalfSizeTintedImage)
      {
        v5 = [objc_alloc(MEMORY[0x277D6C2D8]) initWithDelegate:self createImageSelector:sel_p_newHalfSizeImage];
        __dmb(0xBu);
        self->mHalfSizeTintedImage = v5;
        [v5 ownerAutoreleasedAccess];
      }

      objc_sync_exit(self);
      mHalfSizeTintedImage = self->mHalfSizeTintedImage;
    }

    return [(TSUFlushableCachedImage *)mHalfSizeTintedImage ownerAutoreleasedAccess];
  }

  return result;
}

- (id)p_quarterSizeCachedImage
{
  result = [(TSDImageFill *)self tintColor];
  if (result)
  {
    mQuarterSizeTintedImage = self->mQuarterSizeTintedImage;
    if (!mQuarterSizeTintedImage)
    {
      objc_sync_enter(self);
      if (!self->mQuarterSizeTintedImage)
      {
        v5 = [objc_alloc(MEMORY[0x277D6C2D8]) initWithDelegate:self createImageSelector:sel_p_newQuarterSizeImage];
        __dmb(0xBu);
        self->mQuarterSizeTintedImage = v5;
        [v5 ownerAutoreleasedAccess];
      }

      objc_sync_exit(self);
      mQuarterSizeTintedImage = self->mQuarterSizeTintedImage;
    }

    return [(TSUFlushableCachedImage *)mQuarterSizeTintedImage ownerAutoreleasedAccess];
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDImageFill_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __37__TSDImageFill_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 855, @"nil object after cast"}];
  }

  if ([objc_msgSend(*(a1 + 40) "imageData")])
  {
    v5 = 5;
  }

  else
  {
    v5 = TSDMixingTypeBestFromMixingTypes(5, 1);
  }

  v6 = [*(a1 + 40) technique];
  if (v6 != [v2 technique])
  {
    v5 = TSDMixingTypeBestFromMixingTypes(v5, 2);
  }

  v7 = [*(a1 + 40) tintColor];
  if (v7 == [v2 tintColor] || objc_msgSend(*(a1 + 40), "tintColor") && objc_msgSend(v2, "tintColor") && (objc_msgSend(objc_msgSend(*(a1 + 40), "tintColor"), "isEqual:", objc_msgSend(v2, "tintColor")) & 1) != 0)
  {
    return v5;
  }

  return TSDMixingTypeBestFromMixingTypes(v5, 3);
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDImageFill_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDImageFill *__49__TSDImageFill_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if ([*(a1 + 40) tintColor] || objc_msgSend(v2, "tintColor"))
  {
    v3 = [*(a1 + 40) tintColor];
    if (!v3)
    {
      v3 = [MEMORY[0x277D6C2A8] clearColor];
    }

    v4 = [v2 tintColor];
    if (!v4)
    {
      v4 = [MEMORY[0x277D6C2A8] clearColor];
    }

    v5 = [v3 blendedColorWithFraction:v4 ofColor:*(a1 + 48)];
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 40) fillSize];
  v7 = v6;
  v9 = v8;
  [v2 fillSize];
  v12 = TSDMixSizes(v7, v9, v10, v11, *(a1 + 48));
  v14 = -[TSDImageFill initWithImageData:technique:tintColor:size:originalImageData:]([TSDImageFill alloc], "initWithImageData:technique:tintColor:size:originalImageData:", [*(a1 + 40) imageData], objc_msgSend(*(a1 + 40), "technique"), v5, 0, v12, v13);

  return v14;
}

- (id)p_validatedImageProvider
{
  if (!self->mHasIndicatedInterestInProvider && self->mImageData)
  {
    self->mHasIndicatedInterestInProvider = 1;
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  v3 = +[TSDImageProviderPool sharedPool];
  mImageData = self->mImageData;

  return [v3 providerForData:mImageData shouldValidate:1];
}

- (CGRect)p_drawnRectForImageSize:(CGSize)a3 destRect:(CGRect)a4 inContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  v13 = [(TSDImageFill *)self technique];
  if ((v13 - 3) < 2)
  {
    v14 = TSDFitOrFillSizeInRect([(TSDImageFill *)self technique]== 3, v11, v10, x, y, width, height);
LABEL_3:
    x = v14;
    y = v15;
    width = v16;
    height = v17;
    goto LABEL_7;
  }

  if (!v13)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v33, a5);
    v18 = TSDIsTransformAxisAligned(&v33.a);
    v19 = TSDCenterOfRect(x, y, width, height);
    v21 = TSDRectWithCenterAndSize(v19, v20, v11);
    x = v21;
    y = v22;
    width = v23;
    height = v24;
    if (v18)
    {
      CGContextConvertRectToDeviceSpace(a5, *&v21);
      v25 = TSDRoundedPoint();
      v27 = v26;
      v34.size.width = TSDRoundedSize();
      v34.size.height = v28;
      v34.origin.x = v25;
      v34.origin.y = v27;
      *&v14 = CGContextConvertRectToUserSpace(a5, v34);
      goto LABEL_3;
    }
  }

LABEL_7:
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)p_drawBitmapImage:(CGImage *)a3 withOrientation:(int64_t)a4 inContext:(CGContext *)a5 bounds:(CGRect)a6
{
  if (a3)
  {
    height = a6.size.height;
    width = a6.size.width;
    y = a6.origin.y;
    x = a6.origin.x;
    [(TSDImageFill *)self fillSize];
    v14 = v13;
    v16 = v15;
    [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a5 inContext:?];
    v43 = v17;
    v44 = v18;
    v20 = v19;
    v22 = v21;
    v23 = [(TSDImageFill *)self technique];
    if (v23 > 4 || v23 == 2)
    {
      if (width > v14 || height > v16)
      {
        CGContextTranslateCTM(a5, v43, v44);
        CGContextScaleCTM(a5, 1.0, -1.0);
        v32 = TSDRectWithSize();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        TSUImageOrientationTransform();
        memset(&transform, 0, sizeof(transform));
        CGContextConcatCTM(a5, &transform);
        mTempRenderLock = self->mTempRenderLock;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__TSDImageFill_p_drawBitmapImage_withOrientation_inContext_bounds___block_invoke;
        block[3] = &unk_279D47810;
        block[4] = self;
        block[5] = a3;
        dispatch_sync(mTempRenderLock, block);
        v40 = CGImageRetain(self->mTempRenderCopy);
        v52.origin.x = v32;
        v52.origin.y = v34;
        v52.size.width = v36;
        v52.size.height = v38;
        CGContextDrawTiledImage(a5, v52, v40);
        CGImageRelease(v40);
        return;
      }

      v53.origin.x = v43;
      v53.origin.y = v44;
      v53.size.width = v14;
      v53.size.height = v16;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = v43;
      v54.origin.y = v44;
      v54.size.width = v14;
      v54.size.height = v16;
      MaxY = CGRectGetMaxY(v54);
      CGContextTranslateCTM(a5, 0.0, MinY + MaxY);
      CGContextScaleCTM(a5, 1.0, -1.0);
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(a5, &transform);
      v26 = a5;
      v27 = v43;
      v28 = v44;
      v29 = v14;
      v30 = v16;
    }

    else
    {
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v24 = CGRectGetMinY(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v25 = CGRectGetMaxY(v51);
      CGContextTranslateCTM(a5, 0.0, v24 + v25);
      CGContextScaleCTM(a5, 1.0, -1.0);
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(a5, &transform);
      v26 = a5;
      v27 = v43;
      v28 = v44;
      v29 = v20;
      v30 = v22;
    }

    CGContextDrawImage(v26, *&v27, a3);
  }
}

CGImage *__67__TSDImageFill_p_drawBitmapImage_withOrientation_inContext_bounds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = v2[14];
  if (!result || v2[15] != *(a1 + 40) || (v4 = v2[16], v4 >= 4))
  {
    CGImageRelease(result);
    result = CGImageCreateCopy(*(a1 + 40));
    *(*(a1 + 32) + 112) = result;
    *(*(a1 + 32) + 120) = *(a1 + 40);
    *(*(a1 + 32) + 128) = 0;
    v2 = *(a1 + 32);
    v4 = v2[16];
  }

  v2[16] = v4 + 1;
  return result;
}

- (void)p_drawPDFWithProvider:(id)a3 inContext:(CGContext *)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [a3 CGPDFDocument];
  if (v11)
  {
    Page = CGPDFDocumentGetPage(v11, 1uLL);
    if (Page)
    {
      v13 = Page;
      CGContextSaveGState(a4);
      memset(&v51, 0, sizeof(v51));
      v49 = 0.0;
      v50 = 0.0;
      v44.origin.x = TSDComputeBoxTransformAndSizeForPDFPage(v13, &v51, &v49);
      v44.origin.y = v14;
      v44.size.width = v15;
      v44.size.height = v16;
      [(TSDImageFill *)self fillSize];
      v41 = v18;
      v42 = v17;
      [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a4 inContext:?];
      v20 = v19;
      v22 = v21;
      v43 = v23;
      v25 = v24;
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      MaxY = CGRectGetMaxY(v54);
      CGContextTranslateCTM(a4, 0.0, MinY + MaxY);
      CGContextScaleCTM(a4, 1.0, -1.0);
      v28 = [(TSDImageFill *)self technique];
      if (v28 > 4 || v28 == 2)
      {
        v52.width = 1.0;
        v52.height = 1.0;
        v29 = CGContextConvertSizeToDeviceSpace(a4, v52);
        v30 = TSDMultiplySizeScalar(v42, v41, fmax(fabs(v29.width), fabs(v29.height)));
        v31 = TSDCeilSize(v30);
        v32 = TSDBitmapContextCreate(3, v31);
        if (v32)
        {
          v33 = v32;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          v34 = TSDRectWithSize();
          transform = v51;
          TSDComputeDrawTransformForPDFPage(&transform, &v46, v49, v50, v34, v35, v36, v37);
          *&transform.a = v46;
          *&transform.c = v47;
          *&transform.tx = v48;
          CGContextConcatCTM(v33, &transform);
          CGContextClipToRect(v33, v44);
          CGContextDrawPDFPage(v33, v13);
          Image = CGBitmapContextCreateImage(v33);
          CGContextRelease(v33);
          if (Image)
          {
            v55.origin.x = x;
            v55.origin.y = y;
            v55.size.width = width;
            v55.size.height = height;
            MinX = CGRectGetMinX(v55);
            v56.origin.x = x;
            v56.origin.y = y;
            v56.size.width = width;
            v56.size.height = height;
            v40 = CGRectGetMaxY(v56);
            CGContextTranslateCTM(a4, MinX, v40);
            v57.origin.x = TSDRectWithSize();
            CGContextDrawTiledImage(a4, v57, Image);
            CGImageRelease(Image);
          }
        }
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
        transform = v51;
        v46 = 0u;
        TSDComputeDrawTransformForPDFPage(&transform, &v46, v49, v50, v20, v22, v43, v25);
        *&transform.a = v46;
        *&transform.c = v47;
        *&transform.tx = v48;
        CGContextConcatCTM(a4, &transform);
        CGContextClipToRect(a4, v44);
        CGContextDrawPDFPage(a4, v13);
      }

      CGContextRestoreGState(a4);
    }
  }
}

@end