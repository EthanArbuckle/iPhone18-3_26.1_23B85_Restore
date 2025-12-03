@interface TSDImageFill
- (BOOL)canApplyToCALayer;
- (BOOL)canApplyToCALayerByAddingSublayers;
- (BOOL)drawsInOneStep;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOpaque;
- (BOOL)p_shouldApplyTintedImage;
- (BOOL)shouldBeReappliedToCALayer:(id)layer;
- (CGImage)p_newTintedImageWithScale:(double)scale;
- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)fillSize;
- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)renderedImageSizeForObjectSize:(CGSize)size;
- (TSDImageFill)initWithGenericImageData:(id)data technique:(int)technique tintColor:(id)color size:(CGSize)size originalImageData:(id)imageData;
- (TSDImageFill)initWithImageData:(id)data technique:(int)technique tintColor:(id)color size:(CGSize)size originalImageData:(id)imageData;
- (double)scale;
- (id)imageDataAtFillSize;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)p_cachedImageForSize:(CGSize)size inContext:(CGContext *)context orLayer:(id)layer;
- (id)p_halfSizeCachedImage;
- (id)p_quarterSizeCachedImage;
- (id)p_standardSizeCachedImage;
- (id)p_validatedImageProvider;
- (id)referenceColor;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)addBitmapsToRenderingQualityInfo:(id)info forShapeRep:(id)rep inContext:(CGContext *)context;
- (void)applyToCALayer:(id)layer withScale:(double)scale;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)p_setFillSizeForApplicationData;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
@end

@implementation TSDImageFill

- (TSDImageFill)initWithImageData:(id)data technique:(int)technique tintColor:(id)color size:(CGSize)size originalImageData:(id)imageData
{
  height = size.height;
  width = size.width;
  if (technique >= 5)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill initWithImageData:technique:tintColor:size:originalImageData:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 71, @"bogus technique"}];
  }

  v18.receiver = self;
  v18.super_class = TSDImageFill;
  v16 = [(TSDImageFill *)&v18 init];
  if (v16)
  {
    v16->mImageData = data;
    v16->mOriginalImageData = imageData;
    v16->mTechnique = technique;
    v16->mTintColor = [color copy];
    v16->mFillSize.width = width;
    v16->mFillSize.height = height;
    v16->mTempRenderLock = dispatch_queue_create("com.apple.iwork.drawing.fills.image", 0);
  }

  return v16;
}

- (TSDImageFill)initWithGenericImageData:(id)data technique:(int)technique tintColor:(id)color size:(CGSize)size originalImageData:(id)imageData
{
  result = [(TSDImageFill *)self initWithImageData:data technique:*&technique tintColor:color size:imageData originalImageData:size.width, size.height];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableImageFill allocWithZone:zone];
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill scale]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 215, @"The scaled fill size should respect the aspect ratio of the natural size"}];
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
    p_validatedImageProvider = [(TSDImageFill *)self p_validatedImageProvider];
  }

  else
  {
    p_validatedImageProvider = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  v5 = p_validatedImageProvider;
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
    originalImageData = [(TSDImageFill *)self originalImageData];
  }

  else
  {
    originalImageData = [(TSDImageFill *)self imageData];
  }

  v4 = originalImageData;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill imageDataAtFillSize]"];
    [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 287, @"Fill size is incorrect."}];
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
      clearColor = [MEMORY[0x277D6C2A8] clearColor];
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
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
            [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 312, @"invalid nil value for '%s'", "path"}];
          }

          Data = CGBitmapContextGetData(v5);
          if (Data)
          {
            clearColor = [MEMORY[0x277D6C2A8] colorWithRed:BYTE2(*Data) / 255.0 green:BYTE1(*Data) / 255.0 blue:*Data / 255.0 alpha:1.0];
          }

          CGContextRelease(v5);
        }

        else
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
          [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 308, @"invalid nil value for '%s'", "smallContext"}];
        }
      }

      else
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill referenceColor]"];
        [currentHandler3 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 302, @"invalid nil value for '%s'", "provider"}];
      }

      v18 = clearColor;
      __dmb(0xBu);
      self->mReferenceColor = clearColor;
    }

    objc_sync_exit(self);
    return self->mReferenceColor;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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
        technique = [(TSDImageFill *)self technique];
        if (technique == [v13 technique])
        {
          tintColor = [(TSDImageFill *)self tintColor];
          tintColor2 = [v13 tintColor];
          if (!(tintColor | tintColor2) || (LODWORD(v12) = [tintColor isEqual:tintColor2], v12))
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
  p_standardSizeCachedImage = [(TSDImageFill *)self p_standardSizeCachedImage];
  if (p_standardSizeCachedImage)
  {
    LOBYTE(p_standardSizeCachedImage) = [(TSDImageFill *)self tintColor]!= 0;
  }

  return p_standardSizeCachedImage;
}

- (BOOL)shouldBeReappliedToCALayer:(id)layer
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
  [layer bounds];
  v9 = [v6 CGImageForSize:0 inContext:layer orLayer:{v7, v8}];
  return [layer contents] != v9;
}

- (id)p_cachedImageForSize:(CGSize)size inContext:(CGContext *)context orLayer:(id)layer
{
  height = size.height;
  width = size.width;
  if (context)
  {
    if (layer)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_cachedImageForSize:inContext:orLayer:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 442, @"using context to determine requested image size. layer should be nil"}];
    }

    if ((TSDCGContextIsPrintContext(context) & 1) != 0 || TSDCGContextIsPDFContext(context))
    {

      return [(TSDImageFill *)self p_standardSizeCachedImage];
    }

    v13 = TSDCGContextAssociatedScreenScale(context);
    width = TSDMultiplySizeScalar(width, height, v13);
    height = v14;
    CGContextGetCTM(&v22, context);
    v12 = TSDTransformScale(&v22.a);
    goto LABEL_12;
  }

  if (layer)
  {
    [layer contentsScale];
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

- (void)applyToCALayer:(id)layer withScale:(double)scale
{
  if (![(TSDImageFill *)self canApplyToCALayer]&& ![(TSDImageFill *)self canApplyToCALayerByAddingSublayers])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill applyToCALayer:withScale:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 472, @"Applying image fill with unsupported properties to CALayer"}];
  }

  objc_opt_class();
  [(TSDImageFill *)self p_validatedImageProvider];
  v9 = TSUDynamicCast();
  p_shouldApplyTintedImage = [(TSDImageFill *)self p_shouldApplyTintedImage];
  [layer bounds];
  if (p_shouldApplyTintedImage)
  {
    v13 = [-[TSDImageFill p_cachedImageForSize:inContext:orLayer:](self p_cachedImageForSize:0 inContext:layer orLayer:{v11, v12), "newImage"}];
  }

  else
  {
    v13 = CGImageRetain([v9 CGImageForSize:0 inContext:layer orLayer:{v11, v12}]);
  }

  v14 = v13;
  v15 = MEMORY[0x277CBF348];
  if ([layer sublayers])
  {
    v16 = [objc_msgSend(layer "sublayers")];
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
      [layer bounds];
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
      layer = 0;
      goto LABEL_23;
    }

    if (mTechnique == 4)
    {
      layer = 0;
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
      layer = 0;
      v21 = MEMORY[0x277CDA700];
      goto LABEL_19;
    }

LABEL_17:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill applyToCALayer:withScale:]"];
    [currentHandler2 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 565, @"bogus fill technique to apply to CALayer"}];
    goto LABEL_18;
  }

  v24 = *MEMORY[0x277CDA700];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    layer2 = [MEMORY[0x277CD9ED0] layer];
    [layer addSublayer:layer2];
  }

  else
  {
    layer = [objc_msgSend(layer "sublayers")];
    layer2 = [objc_msgSend(layer "sublayers")];
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [layer bounds];
  [layer setPosition:{TSDCenterOfRect(v47, v48, v49, v50)}];
  [layer bounds];
  [layer setBounds:?];
  [layer setMasksToBounds:1];
  [layer setEdgeAntialiasingMask:1];
  [layer bounds];
  v55 = TSDCenterOfRect(v51, v52, v53, v54);
  v57 = v56;
  [(TSDImageFill *)self fillSize];
  v59 = TSDRectWithCenterAndSize(v55, v57, v58);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  [layer contentsScale];
  v67 = TSDRoundedRectForScale(v59, v61, v63, v65, v66 * scale);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  [layer2 setContents:v14];
  [layer2 setPosition:{TSDCenterOfRect(v67, v69, v71, v73)}];
  [layer2 setBounds:TSDRectWithSize()];
  [layer contentsScale];
  [layer2 setContentsScale:?];
  height = 1.0;
  CATransform3DMakeScale(&v75, scale, scale, 1.0);
  v74 = v75;
  [layer2 setTransform:&v74];
  [layer2 setDelegate:{objc_msgSend(layer, "delegate")}];
  [layer2 setEdgeAntialiasingMask:0];
  [MEMORY[0x277CD9FF0] commit];
  v46 = 0;
  width = 1.0;
LABEL_24:
  if ([layer contents] != v46)
  {
    [layer setContents:v46];
  }

  if ([layer contentsGravity] != v24)
  {
    [layer setContentsGravity:v24];
  }

  [layer contentsRect];
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  if (!CGRectEqualToRect(v78, v80))
  {
    [layer setContentsRect:{x, y, width, height}];
  }

  if ([layer backgroundColor])
  {
    [layer setBackgroundColor:0];
  }

  if (layer && v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [layer setName:@"TSDImageFillSublayer"];
    [layer addSublayer:layer];
  }

  else if (!layer && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [objc_msgSend(objc_msgSend(layer "sublayers")];
  }

  CGImageRelease(v14);
}

uint64_t __41__TSDImageFill_applyToCALayer_withScale___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];

  return [v2 isEqualToString:@"TSDImageFillSublayer"];
}

- (CGSize)renderedImageSizeForObjectSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  technique = [(TSDImageFill *)self technique];
  v7 = 0.0;
  if (technique > 2)
  {
    v8 = 0.0;
    if ((technique - 3) < 2)
    {
      [(TSDImageFill *)self fillSize:0.0];
      v8 = TSDFitOrFillSizeInSize([(TSDImageFill *)self technique]== 3, v9, v10, width, height);
    }
  }

  else
  {
    if (!technique)
    {
      goto LABEL_5;
    }

    if (technique == 1)
    {
      v7 = height;
      v8 = width;
      goto LABEL_9;
    }

    v8 = 0.0;
    if (technique == 2)
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

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  if (context)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    Mutable = CGPathCreateMutable();
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGPathAddRect(Mutable, 0, v14);
    [(TSDImageFill *)self paintPath:Mutable inContext:context];

    CGPathRelease(Mutable);
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill drawSwatchInRect:inContext:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 621, @"invalid nil value for '%s'", "ctx"}];
  }
}

- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context
{
  technique = [(TSDImageFill *)self technique];
  [(TSDImageFill *)self fillSize];
  if (technique != 2)
  {
    [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
    v7 = v9;
    v8 = v10;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context
{
  if (!path)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_paintPath:inContext:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 648, @"invalid nil value for '%s'", "path"}];
    if (context)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!context)
  {
LABEL_7:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill p_paintPath:inContext:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 649, @"invalid nil value for '%s'", "ctx"}];
    return;
  }

  p_validatedImageProvider = [(TSDImageFill *)self p_validatedImageProvider];
  if (p_validatedImageProvider)
  {
    v8 = p_validatedImageProvider;
    CGContextSaveGState(context);
    CGContextBeginPath(context);
    CGContextAddPath(context, path);
    CGContextClip(context);
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) == 0 || TSDCGContextGetBitmapQualityInfo(context) == 0;
    PathBoundingBox = CGPathGetPathBoundingBox(path);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (-[TSDImageFill tintColor](self, "tintColor") && v9 && ([v8 isError] & 1) == 0)
    {
      [(TSDImageFill *)self p_sizeOfFillImageForDestRect:context inContext:x, y, width, height];
      v18 = [-[TSDImageFill p_cachedImageForSize:inContext:orLayer:](self p_cachedImageForSize:context inContext:0) orLayer:"newImage"];
      [(TSDImageFill *)self p_drawBitmapImage:v18 withOrientation:0 inContext:context bounds:x, y, width, height];
      CGImageRelease(v18);
    }

    else
    {
      CGContextSaveGState(context);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TSDImageFill *)self p_sizeOfFillImageForDestRect:context inContext:x, y, width, height];
        -[TSDImageFill p_drawBitmapImage:withOrientation:inContext:bounds:](self, "p_drawBitmapImage:withOrientation:inContext:bounds:", [v8 CGImageForSize:context inContext:0 orLayer:?], objc_msgSend(v8, "orientation"), context, x, y, width, height);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TSDImageFill *)self p_drawPDFWithProvider:v8 inContext:context bounds:x, y, width, height];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(TSDImageFill *)self p_drawnRectForImageSize:context destRect:width inContext:height, x, y, width, height];
            [v8 drawImageInContext:context rect:?];
          }
        }
      }

      CGContextRestoreGState(context);
      if (!v9 && [(TSDImageFill *)self tintColor])
      {
        [(TSUColor *)[(TSDImageFill *)self tintColor] paintRect:context inContext:x, y, width, height];
      }
    }

    CGContextRestoreGState(context);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)info forShapeRep:(id)rep inContext:(CGContext *)context
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
    [rep layerFrameInScaledCanvas];
    [(TSDImageFill *)self p_drawnRectForImageSize:context destRect:v12 inContext:v14, v15, v16, v17, v18];

    [info cacheProvider:v10 ofSize:{v19, v20}];
  }
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  if (!path)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill paintPath:inContext:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 715, @"invalid nil value for '%s'", "path"}];
  }

  [(TSDImageFill *)self p_paintPath:path inContext:context];
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  if (!path)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageFill paintPath:naturalBounds:inContext:isPDF:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageFill.m"), 722, @"invalid nil value for '%s'", "path"}];
  }

  [(TSDImageFill *)self p_paintPath:path inContext:context, f, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (CGImage)p_newTintedImageWithScale:(double)scale
{
  p_validatedImageProvider = [(TSDImageFill *)self p_validatedImageProvider];
  if (!-[TSDImageFill tintColor](self, "tintColor") || !p_validatedImageProvider || ([p_validatedImageProvider isError] & 1) != 0)
  {
    return 0;
  }

  [p_validatedImageProvider naturalSize];
  TSDMultiplySizeScalar(v7, v8, scale);
  v9 = TSDRoundedSize();
  if ([p_validatedImageProvider imageGamut] == 2)
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
  [p_validatedImageProvider drawImageInContext:v11 rect:{v12, v14, v16, v18}];
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

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDImageFill_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDImageFill_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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

- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = size.height;
  v11 = size.width;
  technique = [(TSDImageFill *)self technique];
  if ((technique - 3) < 2)
  {
    v14 = TSDFitOrFillSizeInRect([(TSDImageFill *)self technique]== 3, v11, v10, x, y, width, height);
LABEL_3:
    x = v14;
    y = v15;
    width = v16;
    height = v17;
    goto LABEL_7;
  }

  if (!technique)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v33, context);
    v18 = TSDIsTransformAxisAligned(&v33.a);
    v19 = TSDCenterOfRect(x, y, width, height);
    v21 = TSDRectWithCenterAndSize(v19, v20, v11);
    x = v21;
    y = v22;
    width = v23;
    height = v24;
    if (v18)
    {
      CGContextConvertRectToDeviceSpace(context, *&v21);
      v25 = TSDRoundedPoint();
      v27 = v26;
      v34.size.width = TSDRoundedSize();
      v34.size.height = v28;
      v34.origin.x = v25;
      v34.origin.y = v27;
      *&v14 = CGContextConvertRectToUserSpace(context, v34);
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

- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds
{
  if (image)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    [(TSDImageFill *)self fillSize];
    v14 = v13;
    v16 = v15;
    [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
    v43 = v17;
    v44 = v18;
    v20 = v19;
    v22 = v21;
    technique = [(TSDImageFill *)self technique];
    if (technique > 4 || technique == 2)
    {
      if (width > v14 || height > v16)
      {
        CGContextTranslateCTM(context, v43, v44);
        CGContextScaleCTM(context, 1.0, -1.0);
        v32 = TSDRectWithSize();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        TSUImageOrientationTransform();
        memset(&transform, 0, sizeof(transform));
        CGContextConcatCTM(context, &transform);
        mTempRenderLock = self->mTempRenderLock;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__TSDImageFill_p_drawBitmapImage_withOrientation_inContext_bounds___block_invoke;
        block[3] = &unk_279D47810;
        block[4] = self;
        block[5] = image;
        dispatch_sync(mTempRenderLock, block);
        v40 = CGImageRetain(self->mTempRenderCopy);
        v52.origin.x = v32;
        v52.origin.y = v34;
        v52.size.width = v36;
        v52.size.height = v38;
        CGContextDrawTiledImage(context, v52, v40);
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
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
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
      CGContextTranslateCTM(context, 0.0, v24 + v25);
      CGContextScaleCTM(context, 1.0, -1.0);
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
      v27 = v43;
      v28 = v44;
      v29 = v20;
      v30 = v22;
    }

    CGContextDrawImage(contextCopy2, *&v27, image);
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

- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  cGPDFDocument = [provider CGPDFDocument];
  if (cGPDFDocument)
  {
    Page = CGPDFDocumentGetPage(cGPDFDocument, 1uLL);
    if (Page)
    {
      v13 = Page;
      CGContextSaveGState(context);
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
      [TSDImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
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
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      technique = [(TSDImageFill *)self technique];
      if (technique > 4 || technique == 2)
      {
        v52.width = 1.0;
        v52.height = 1.0;
        v29 = CGContextConvertSizeToDeviceSpace(context, v52);
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
            CGContextTranslateCTM(context, MinX, v40);
            v57.origin.x = TSDRectWithSize();
            CGContextDrawTiledImage(context, v57, Image);
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
        CGContextConcatCTM(context, &transform);
        CGContextClipToRect(context, v44);
        CGContextDrawPDFPage(context, v13);
      }

      CGContextRestoreGState(context);
    }
  }
}

@end