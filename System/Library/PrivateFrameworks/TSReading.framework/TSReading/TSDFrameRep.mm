@interface TSDFrameRep
- (CGImage)p_newFrameForMask:(BOOL)mask size:(CGSize)size forCALayer:(BOOL)layer viewScale:(double)scale;
- (CGImage)p_newRenderedFrameForMask:(BOOL)mask size:(CGSize)size forCALayer:(BOOL)layer viewScale:(double)scale;
- (TSDFrameRep)initWithTSDFrame:(id)frame;
- (id)applyToCALayer:(id)layer withRepLayer:(id)repLayer maskLayer:(id)maskLayer viewScale:(double)scale;
- (id)p_createRepeatingLayerWithImage:(CGImage *)image vertical:(BOOL)vertical screenScale:(double)scale;
- (void)applyMaskForRectWithCoverage:(CGRect)coverage toContext:(CGContext *)context;
- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)context;
- (void)dealloc;
- (void)frameRect:(CGRect)rect inContext:(CGContext *)context withTotalScale:(double)scale;
- (void)p_addEdgeLayerForIndex:(unsigned int)index toLayer:(id)layer maskLayer:(id)maskLayer;
- (void)p_addUnreplicatedLayerForIndex:(unsigned int)index toLayer:(id)layer maskLayer:(id)maskLayer;
- (void)p_adjustRepeatingLayer:(id)layer withImageRect:(CGRect)rect start:(double)start end:(double)end vertical:(BOOL)vertical;
- (void)p_drawFrameIntoRect:(CGRect)rect inContext:(CGContext *)context withImages:(id)images atViewScale:(double)scale isMask:(BOOL)mask;
- (void)p_drawTiles:(id)tiles inContext:(CGContext *)context rect:(CGRect)rect start:(double)start end:(double)end vertical:(BOOL)vertical;
- (void)p_setRepeatingLayerWithIndex:(unsigned int)index sublayers:(id)sublayers maskLayers:(id)layers toRect:(CGRect)rect start:(double)start end:(double)end;
- (void)p_setUnreplicatedLayerWithIndex:(unsigned int)index sublayers:(id)sublayers maskLayers:(id)layers toRect:(CGRect)rect;
- (void)updateCALayer:(id)layer toRect:(CGRect)rect withRepLayer:(id)repLayer maskLayer:(id)maskLayer viewScale:(double)scale maskLayerTransform:(CGAffineTransform *)transform;
@end

@implementation TSDFrameRep

- (TSDFrameRep)initWithTSDFrame:(id)frame
{
  if (!frame)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 70, @"invalid nil value for '%s'", "frame"}];
  }

  v22.receiver = self;
  v22.super_class = TSDFrameRep;
  v7 = [(TSDFrameRep *)&v22 init];
  if (v7)
  {
    frameCopy = frame;
    v7->mFrame = frameCopy;
    frameSpec = [(TSDFrame *)frameCopy frameSpec];
    if (!frameSpec)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
      [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 76, @"invalid nil value for '%s'", "frameSpec"}];
    }

    [(TSDFrameSpec *)frameSpec i_addInterestInProviders];
    if ([(TSDFrameSpec *)frameSpec i_hasImages])
    {
      v12 = 0;
      v7->mImages = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        v13 = [(TSDFrameSpec *)frameSpec i_providerForIndex:v12 mask:0];
        if (!v13)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
          [currentHandler3 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 83, @"invalid nil value for '%s'", "provider"}];
        }

        [(NSArray *)v7->mImages addObject:v13];
        [v13 addInterest];
        v12 = (v12 + 1);
      }

      while (v12 != 8);
    }

    if ([(TSDFrameSpec *)frameSpec i_hasMask])
    {
      v16 = 0;
      v7->mMasks = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        v17 = [(TSDFrameSpec *)frameSpec i_providerForIndex:v16 mask:1];
        if (!v17)
        {
          currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
          [currentHandler4 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 93, @"invalid nil value for '%s'", "provider"}];
        }

        [(NSArray *)v7->mMasks addObject:v17];
        [v17 addInterest];
        v16 = (v16 + 1);
      }

      while (v16 != 8);
    }

    if ([(TSDFrameSpec *)frameSpec i_hasAdornment])
    {
      v20 = [(TSDFrameSpec *)frameSpec i_providerForIndex:8 mask:0];
      v7->mAdornment = v20;
      [(TSDImageProvider *)v20 addInterest];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(NSArray *)self->mImages makeObjectsPerformSelector:sel_removeInterest];
  [(NSArray *)self->mMasks makeObjectsPerformSelector:sel_removeInterest];
  [(TSDImageProvider *)self->mAdornment removeInterest];

  [(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_removeInterestInProviders];
  v3.receiver = self;
  v3.super_class = TSDFrameRep;
  [(TSDFrameRep *)&v3 dealloc];
}

- (void)frameRect:(CGRect)rect inContext:(CGContext *)context withTotalScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(TSDFrame *)self->mFrame i_willRenderForRect:?])
  {
    [(TSDFrame *)self->mFrame coverageRectWithoutAdornment:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGContextSaveGState(context);
    if (self->mImages)
    {
      v20 = [(TSDFrameRep *)self p_newFrameForMask:0 size:0 forCALayer:v17 viewScale:v19, fmax(scale, 1.0)];
      if (v20)
      {
        v21 = v20;
        v30.origin.x = v13;
        v30.origin.y = v15;
        v30.size.width = v17;
        v30.size.height = v19;
        CGContextDrawImage(context, v30, v20);
        CGImageRelease(v21);
      }

      else
      {
        [(TSDFrameRep *)self p_drawFrameIntoRect:context inContext:self->mImages withImages:0 atViewScale:v13 isMask:v15, v17, v19, 1.0];
      }
    }

    if (self->mAdornment)
    {
      [(TSDFrame *)self->mFrame i_adornmentRectForRect:v13, v15, v17, v19];
      v22 = v31.origin.x;
      v23 = v31.origin.y;
      v24 = v31.size.width;
      v25 = v31.size.height;
      MaxY = CGRectGetMaxY(v31);
      CGContextTranslateCTM(context, 0.0, MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v32.origin.x = v22;
      v32.origin.y = v23;
      v32.size.width = v24;
      v32.size.height = v25;
      MinY = CGRectGetMinY(v32);
      CGContextTranslateCTM(context, 0.0, -MinY);
      v28 = [(TSDBitmapImageProvider *)self->mAdornment CGImageForSize:context inContext:0 orLayer:v24, v25];
      v33.origin.x = v22;
      v33.origin.y = v23;
      v33.size.width = v24;
      v33.size.height = v25;
      CGContextDrawImage(context, v33, v28);
    }

    CGContextRestoreGState(context);
  }
}

- (void)applyMaskForRectWithCoverage:(CGRect)coverage toContext:(CGContext *)context
{
  if (self->mMasks)
  {
    height = coverage.size.height;
    width = coverage.size.width;
    y = coverage.origin.y;
    x = coverage.origin.x;
    if ([(TSDFrame *)self->mFrame shouldRenderForSizeIncludingCoverage:coverage.size.width, coverage.size.height])
    {
      v10 = [(TSDFrameRep *)self p_newFrameForMask:1 size:0 forCALayer:width viewScale:height, TSDCGContextAssociatedScreenScale(context)];
      if (v10)
      {
        v11 = v10;
        v13.origin.x = x;
        v13.origin.y = y;
        v13.size.width = width;
        v13.size.height = height;
        CGContextClipToMask(context, v13, v10);

        CGImageRelease(v11);
      }

      else
      {
        [(TSDFrameRep *)self p_drawFrameIntoRect:context inContext:self->mMasks withImages:1 atViewScale:x isMask:y, width, height, 1.0];
        self->mShouldEnableBlendMode = 1;
      }
    }
  }
}

- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)context
{
  if (self->mShouldEnableBlendMode)
  {
    self->mShouldEnableBlendMode = 0;
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
  }
}

- (id)applyToCALayer:(id)layer withRepLayer:(id)repLayer maskLayer:(id)maskLayer viewScale:(double)scale
{
  if (![(TSDFrame *)self->mFrame shouldRender:layer])
  {
    return 0;
  }

  [layer contentsScale];
  v10 = v9;
  [layer setSublayers:0];
  if (self->mImages)
  {
    mMasks = self->mMasks;
    if (mMasks)
    {
      if (!maskLayer)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep applyToCALayer:withRepLayer:maskLayer:viewScale:]"];
        [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 223, @"invalid nil value for '%s'", "repMaskLayer"}];
      }

      if (self->mMaskLayer)
      {
        v14 = [objc_msgSend(maskLayer "sublayers")];
        mMaskLayer = self->mMaskLayer;
        if (v14)
        {
          [(CALayer *)mMaskLayer removeFromSuperlayer];
          mMaskLayer = self->mMaskLayer;
        }
      }

      else
      {
        mMaskLayer = 0;
      }

      self->mMaskLayer = 0;
      v18 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      self->mMaskLayer = v18;
      [(CALayer *)v18 setContentsScale:v10];
      [maskLayer addSublayer:self->mMaskLayer];
    }

    else
    {
      v17 = self->mMaskLayer;
      if (v17)
      {
        [(CALayer *)v17 removeFromSuperlayer];

        self->mMaskLayer = 0;
      }
    }

    v19 = 0;
    do
    {
      [(TSDFrameRep *)self p_addUnreplicatedLayerForIndex:v19 toLayer:layer maskLayer:self->mMaskLayer];
      [(TSDFrameRep *)self p_addEdgeLayerForIndex:(v19 + 1) toLayer:layer maskLayer:self->mMaskLayer];
      v20 = v19 >= 5;
      v19 = (v19 + 2);
    }

    while (!v20);
    if (mMasks)
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      DeviceRGB = TSUCGColorCreateDeviceRGB();
      [layer setBackgroundColor:DeviceRGB];
      CGColorRelease(DeviceRGB);
      [layer setEdgeAntialiasingMask:0];
      [(CALayer *)self->mMaskLayer addSublayer:layer];
    }
  }

  if (self->mAdornment)
  {
    layer2 = [MEMORY[0x277CD9ED0] layer];
    [layer2 setContentsScale:v10];
    [layer2 setContents:{-[TSDBitmapImageProvider CGImageForNaturalSize](self->mAdornment, "CGImageForNaturalSize")}];
    [layer addSublayer:layer2];
  }

  return self->mMaskLayer;
}

- (void)updateCALayer:(id)layer toRect:(CGRect)rect withRepLayer:(id)repLayer maskLayer:(id)maskLayer viewScale:(double)scale maskLayerTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (transform->a == 0.0 && transform->b == 0.0 || transform->c == 0.0 && transform->d == 0.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"];
    v20 = *&transform->c;
    *&transform.a = *&transform->a;
    *&transform.c = v20;
    *&transform.tx = *&transform->tx;
    [currentHandler handleFailureInFunction:v18 file:v19 lineNumber:270 description:{@"bad maskLayerTransform: %@", NSStringFromCGAffineTransform(&transform)}];
  }

  if ([(TSDFrame *)self->mFrame shouldRender])
  {
    mFrame = self->mFrame;
    [(TSDFrame *)mFrame coverageRectWithoutAdornment:x, y, width, height];
    if ([(TSDFrame *)mFrame shouldRenderForSizeIncludingCoverage:v22, v23])
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      sublayers = [layer sublayers];
      mMasks = self->mMasks;
      if (mMasks)
      {
        if (!self->mMaskLayer)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
          [currentHandler2 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 284, @"invalid nil value for '%s'", "mMaskLayer"}];
        }

        if (([objc_msgSend(maskLayer "sublayers")] & 1) == 0)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
          [currentHandler3 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 285, @"TSDFrameRep's mask layer is not a sublayer of the mask layer passed in"}];
        }
      }

      v30 = [(TSDFrame *)self->mFrame i_willRenderForRect:x, y, width, height]^ 1;
      if (v30)
      {
        [layer bounds];
        v42 = v41;
        v31 = v43;
        DeviceRGB = TSUCGColorCreateDeviceRGB();
        v45 = DeviceRGB;
        if ([layer isHidden])
        {
LABEL_19:
          mMaskLayer = self->mMaskLayer;
          if (mMaskLayer)
          {
            if (!CGColorEqualToColor([(CALayer *)mMaskLayer backgroundColor], v45))
            {
              [(CALayer *)self->mMaskLayer setBackgroundColor:v45];
            }

            v47 = TSDRectWithSize();
            v49 = v48;
            v51 = v50;
            v53 = v52;
            [(CALayer *)self->mMaskLayer bounds];
            v162.origin.x = v54;
            v162.origin.y = v55;
            v162.size.width = v56;
            v162.size.height = v57;
            v153.origin.x = v47;
            v153.origin.y = v49;
            v153.size.width = v51;
            v153.size.height = v53;
            if (!CGRectEqualToRect(v153, v162))
            {
              [(CALayer *)self->mMaskLayer setBounds:v47, v49, v51, v53];
            }

            v58 = -v42 / v51;
            v59 = -v31 / v53;
            [(CALayer *)self->mMaskLayer anchorPoint];
            if (v58 != v61 || v59 != v60)
            {
              [(CALayer *)self->mMaskLayer setAnchorPoint:v58, v59];
            }

            v63 = *MEMORY[0x277CBF348];
            v64 = *(MEMORY[0x277CBF348] + 8);
            [(CALayer *)self->mMaskLayer position];
            if (v63 != v66 || v64 != v65)
            {
              [(CALayer *)self->mMaskLayer setPosition:v63, v64];
            }

            v67 = self->mMaskLayer;
            if (v67)
            {
              [(CALayer *)v67 affineTransform];
            }

            else
            {
              memset(&transform, 0, sizeof(transform));
            }

            v68 = *&transform->c;
            *&t1.a = *&transform->a;
            *&t1.c = v68;
            *&t1.tx = *&transform->tx;
            if (!CGAffineTransformEqualToTransform(&t1, &transform))
            {
              v69 = *&transform->c;
              *&transform.a = *&transform->a;
              *&transform.c = v69;
              *&transform.tx = *&transform->tx;
              [(CALayer *)self->mMaskLayer setAffineTransform:&transform];
            }
          }

          CGColorRelease(v45);
          [MEMORY[0x277CD9FF0] commit];
          return;
        }

LABEL_18:
        [layer setHidden:v30];
        v45 = DeviceRGB;
        goto LABEL_19;
      }

      v31 = *(MEMORY[0x277CBF3A0] + 8);
      v150 = *MEMORY[0x277CBF3A0];
      [(TSDFrame *)self->mFrame coverageRectWithoutAdornment:x, y, width, height];
      v147 = v32;
      v148 = v33;
      v146 = v34;
      v149 = v35;
      v36 = TSDMultiplyRectScalar(v32, v34, v35, v33, scale);
      if (self->mImages)
      {
        if (mMasks)
        {
          v38 = v36;
          v39 = v37;
          sublayers2 = [(CALayer *)self->mMaskLayer sublayers];
          v145 = v39;
          v150 = v38;
        }

        else
        {
          v145 = v31;
          sublayers2 = 0;
        }

        [(TSDFrame *)self->mFrame i_leftWidth];
        v71 = v70;
        [(TSDFrame *)self->mFrame i_rightWidth];
        v73 = v149 - v72;
        [(TSDFrame *)self->mFrame i_topHeight];
        v75 = v74;
        [(TSDFrame *)self->mFrame i_bottomHeight];
        v77 = v71 * scale;
        v78 = v75 * scale;
        v79 = (v148 - v76) * scale;
        if (v77 == v73 * scale)
        {
          v80 = v77 + 1.0;
        }

        else
        {
          v80 = v73 * scale;
        }

        if (v78 == v79)
        {
          v81 = v78 + 1.0;
        }

        else
        {
          v81 = v79;
        }

        if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 2)
        {
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:0 sublayers:sublayers maskLayers:sublayers2 toRect:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v77, v78];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:1 sublayers:sublayers maskLayers:sublayers2 toRect:v77, 0.0];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v83 = v82 * scale;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:2 sublayers:sublayers maskLayers:sublayers2 toRect:v80, 0.0, v83, v84 * scale];
          [(TSDFrame *)self->mFrame i_rightWidth];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:3 sublayers:sublayers maskLayers:sublayers2 toRect:v80, v78, v85 * scale, v81 - v78];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v87 = v86 * scale;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          v89 = v87;
          v90 = v80 - v77;
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:4 sublayers:sublayers maskLayers:sublayers2 toRect:v80, v81, v89, v88 * scale];
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:5 sublayers:sublayers maskLayers:sublayers2 toRect:v77, v81, v80 - v77, v91 * scale];
          [(TSDFrame *)self->mFrame i_leftWidth];
          v93 = v92 * scale;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:6 sublayers:sublayers maskLayers:sublayers2 toRect:0.0, v81, v93, v94 * scale];
          [(TSDFrame *)self->mFrame i_leftWidth];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:7 sublayers:sublayers maskLayers:sublayers2 toRect:0.0, v78, v95 * scale, v81 - v78];
          if (mMasks)
          {
            v96 = [(NSArray *)sublayers2 objectAtIndex:8];
            v154.origin.x = v77;
            v154.origin.y = v78;
            v154.size.width = v90;
            v154.size.height = v81 - v78;
            v155 = CGRectInset(v154, -1.0, -1.0);
            v156 = CGRectIntegral(v155);
            v97 = v156.origin.x;
            v98 = v156.origin.y;
            v99 = v156.size.width;
            v100 = v156.size.height;
            [v96 frame];
            v163.origin.x = v97;
            v163.origin.y = v98;
            v163.size.width = v99;
            v163.size.height = v100;
            v31 = v145;
            if (!CGRectEqualToRect(v157, v163))
            {
              [v96 setFrame:{v97, v98, v99, v100}];
            }

            goto LABEL_64;
          }
        }

        else
        {
          [(TSDFrame *)self->mFrame assetScale];
          v102 = v101;
          v144 = v101;
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:0 sublayers:sublayers maskLayers:sublayers2 toRect:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v77, v78];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{1), "dpiAdjustedFillSize"}];
          if (v103 > 1.0)
          {
            v103 = v102 * v103;
          }

          v104 = v103 * scale;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:1 sublayers:sublayers maskLayers:sublayers2 toRect:v77 start:0.0 end:v104, v105 * scale, v77, v80];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v107 = v106 * scale;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:2 sublayers:sublayers maskLayers:sublayers2 toRect:v80, 0.0, v107, v108 * scale];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{3), "dpiAdjustedFillSize"}];
          if (v109 <= 1.0)
          {
            v110 = v109;
          }

          else
          {
            v110 = v144 * v109;
          }

          [(TSDFrame *)self->mFrame i_rightWidth];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:3 sublayers:sublayers maskLayers:sublayers2 toRect:v80 start:v78 end:v111 * scale, v110 * scale, v78, v81];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v113 = v112 * scale;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:4 sublayers:sublayers maskLayers:sublayers2 toRect:v80, v81, v113, v114 * scale];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{5), "dpiAdjustedFillSize"}];
          if (v115 > 1.0)
          {
            v115 = v144 * v115;
          }

          v116 = v115 * scale + 1.0;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:5 sublayers:sublayers maskLayers:sublayers2 toRect:v77 start:v81 end:v116, v117 * scale, v77, v80];
          [(TSDFrame *)self->mFrame i_leftWidth];
          v119 = v118 * scale;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:6 sublayers:sublayers maskLayers:sublayers2 toRect:0.0, v81, v119, v120 * scale];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{7), "dpiAdjustedFillSize"}];
          if (v121 <= 1.0)
          {
            v122 = v121;
          }

          else
          {
            v122 = v144 * v121;
          }

          [(TSDFrame *)self->mFrame i_leftWidth];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:7 sublayers:sublayers maskLayers:sublayers2 toRect:0.0 start:v78 end:v123 * scale, v122 * scale, v78, v81];
          if (mMasks)
          {
            v124 = [(NSArray *)sublayers2 objectAtIndex:8];
            v158.size.width = v80 - v77;
            v158.size.height = v81 - v78;
            v158.origin.x = v77;
            v158.origin.y = v78;
            v159 = CGRectInset(v158, -1.0, -1.0);
            v160 = CGRectIntegral(v159);
            v125 = v160.origin.x;
            v126 = v160.origin.y;
            v127 = v160.size.width;
            v128 = v160.size.height;
            [v124 frame];
            v164.origin.x = v125;
            v164.origin.y = v126;
            v164.size.width = v127;
            v164.size.height = v128;
            if (!CGRectEqualToRect(v161, v164))
            {
              [v124 setFrame:{v125, v126, v127, v128}];
            }
          }
        }

        v31 = v145;
      }

LABEL_64:
      if (self->mAdornment)
      {
        [(TSDFrame *)self->mFrame i_adornmentRectForRect:v147, v146, v149, v148];
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;
        v137 = TSDSubtractPoints(x, y, v147);
        v138 = TSDAddPoints(v130, v132, v137);
        v140 = TSDMultiplyRectScalar(v138, v139, v134, v136, scale);
        [objc_msgSend(sublayers objectAtIndex:{8 * (self->mImages != 0)), "setFrame:", v140, v141, v142, v143}];
      }

      DeviceRGB = 0;
      v45 = 0;
      v42 = v150;
      if (([layer isHidden] & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }
}

- (CGImage)p_newFrameForMask:(BOOL)mask size:(CGSize)size forCALayer:(BOOL)layer viewScale:(double)scale
{
  layerCopy = layer;
  height = size.height;
  width = size.width;
  maskCopy = mask;
  v12 = +[TSDFrameImageCache sharedFrameImageCache];
  result = [v12 newCachedImageForFrame:self->mFrame size:layerCopy viewScale:maskCopy forCALayer:width mask:{height, scale}];
  if (!result)
  {
    result = [(TSDFrameRep *)self p_newRenderedFrameForMask:maskCopy size:layerCopy forCALayer:width viewScale:height, scale];
    if (result)
    {
      v14 = result;
      v15 = [v12 setCachedImage:result forFrame:self->mFrame size:layerCopy viewScale:maskCopy forCALayer:width mask:{height, scale}];
      CGImageRelease(v14);
      return v15;
    }
  }

  return result;
}

- (CGImage)p_newRenderedFrameForMask:(BOOL)mask size:(CGSize)size forCALayer:(BOOL)layer viewScale:(double)scale
{
  layerCopy = layer;
  maskCopy = mask;
  v44 = *MEMORY[0x277D85DE8];
  if (TSDMultiplySizeScalar(size.width, size.height, scale) >= 4096.0 || v10 >= 4096.0)
  {
    return 0;
  }

  TSURound();
  v14 = v13;
  TSURound();
  v16 = v15;
  v17 = 16;
  if (maskCopy)
  {
    v17 = 24;
  }

  v18 = *(&self->super.isa + v17);
  if (maskCopy)
  {
    AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
    v20 = TSUDeviceGrayColorSpace();
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], AlignedBytesPerRow * v16);
    CFDataSetLength(Mutable, AlignedBytesPerRow * v16);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v23 = 0;
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    mImages = self->mImages;
    v25 = [(NSArray *)mImages countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(mImages);
          }

          if ([*(*(&v39 + 1) + 8 * i) imageGamut] < 2)
          {
            AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
            v20 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
            Mutable = 0;
            MutableBytePtr = 0;
            v23 = 8193;
            goto LABEL_20;
          }
        }

        v26 = [(NSArray *)mImages countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
    v23 = 8193;
    v20 = TSUDeviceRGBColorSpace();
    Mutable = 0;
    MutableBytePtr = 0;
  }

LABEL_20:
  v29 = CGBitmapContextCreate(MutableBytePtr, v14, v16, 8uLL, AlignedBytesPerRow, v20, v23);
  if (v29)
  {
    v30 = v29;
    if (layerCopy)
    {
      CGContextTranslateCTM(v29, 0.0, v16);
      CGContextScaleCTM(v30, 1.0, -1.0);
    }

    if (maskCopy)
    {
      CGContextSetGrayFillColor(v30, 1.0, 1.0);
      v31 = v14;
      v32 = v16;
      v45.origin.x = 0.0;
      v45.origin.y = 0.0;
      v45.size.width = v14;
      v45.size.height = v16;
      CGContextFillRect(v30, v45);
    }

    else
    {
      v32 = v16;
      v31 = v14;
    }

    [(TSDFrameRep *)self p_drawFrameIntoRect:v30 inContext:v18 withImages:maskCopy atViewScale:0.0 isMask:0.0, v31 / scale, v32 / scale, scale];
    if (maskCopy)
    {
      CGContextRelease(v30);
      v33 = CGDataProviderCreateWithCFData(Mutable);
      v12 = CGImageMaskCreate(v14, v16, 8uLL, 8uLL, AlignedBytesPerRow, v33, 0, 1);
      CGDataProviderRelease(v33);
      if (layerCopy)
      {
        v34 = TSDBitmapContextCreate(3, v31);
        v35 = *MEMORY[0x277CBF348];
        v36 = *(MEMORY[0x277CBF348] + 8);
        v46.origin.x = *MEMORY[0x277CBF348];
        v46.origin.y = v36;
        v46.size.width = v31;
        v46.size.height = v32;
        CGContextClipToMask(v34, v46, v12);
        CGContextSetRGBFillColor(v34, 1.0, 1.0, 1.0, 1.0);
        v47.origin.x = v35;
        v47.origin.y = v36;
        v47.size.width = v31;
        v47.size.height = v32;
        CGContextFillRect(v34, v47);
        Image = CGBitmapContextCreateImage(v34);
        CGContextRelease(v34);
        CGImageRelease(v12);
        v12 = Image;
      }
    }

    else
    {
      v12 = CGBitmapContextCreateImage(v30);
      CGContextRelease(v30);
    }
  }

  else
  {
    v12 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

- (void)p_drawFrameIntoRect:(CGRect)rect inContext:(CGContext *)context withImages:(id)images atViewScale:(double)scale isMask:(BOOL)mask
{
  maskCopy = mask;
  v57.origin.x = TSDRoundedRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  CGRectGetMaxX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  CGRectGetMaxY(v60);
  [(TSDFrame *)self->mFrame i_leftWidth];
  TSURound();
  v54 = v17;
  [(TSDFrame *)self->mFrame i_topHeight];
  TSURound();
  v55 = v18;
  [(TSDFrame *)self->mFrame i_rightWidth];
  TSURound();
  [(TSDFrame *)self->mFrame i_bottomHeight];
  TSURound();
  [(TSDFrame *)self->mFrame i_leftWidth];
  [(TSDFrame *)self->mFrame i_rightWidth];
  [(TSDFrame *)self->mFrame i_topHeight];
  v19 = MinY;
  [(TSDFrame *)self->mFrame i_bottomHeight];
  TSURound();
  v21 = v20;
  TSURound();
  v23 = v22;
  TSURound();
  v25 = v24;
  TSURound();
  v27 = v21 + 1.0;
  if (v21 != v23)
  {
    v27 = v23;
  }

  v51 = v27;
  v52 = v21;
  if (v25 == v26)
  {
    v28 = v25 + 1.0;
  }

  else
  {
    v28 = v26;
  }

  [(TSDFrame *)self->mFrame assetScale];
  v53 = v19;
  [objc_msgSend(images objectAtIndex:{0), "drawImageInContext:rect:", context, MinX, v19, v54, v55}];
  v29 = TSDRoundedSize();
  [objc_msgSend(images objectAtIndex:{6), "drawImageInContext:rect:", context, MinX, v28, v29, v30}];
  v31 = TSDRoundedSize();
  v33 = v32;
  v34 = [images objectAtIndex:2];
  v35 = v19;
  v36 = v52;
  [v34 drawImageInContext:context rect:{v51, v35, v31, v33}];
  v37 = TSDRoundedSize();
  [objc_msgSend(images objectAtIndex:{4), "drawImageInContext:rect:", context, v51, v28, v37, v38}];
  [objc_msgSend(images objectAtIndex:{7), "dpiAdjustedFillSize"}];
  v39 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [images objectAtIndex:7], context, 1, MinX, v25, v39, v40, v25, v28);
  [objc_msgSend(images objectAtIndex:{3), "dpiAdjustedFillSize"}];
  v41 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [images objectAtIndex:3], context, 1, v51, v25, v41, v42, v25, v28);
  [objc_msgSend(images objectAtIndex:{1), "dpiAdjustedFillSize"}];
  v43 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [images objectAtIndex:1], context, 0, v36, v53, v43, v44, v36, v51);
  [objc_msgSend(images objectAtIndex:{5), "dpiAdjustedFillSize"}];
  v45 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [images objectAtIndex:5], context, 0, v36, v28, v45, v46, v36, v51);
  if (maskCopy)
  {
    CGContextSetGrayFillColor(context, 0.0, 1.0);
    v49 = v52;
    v50 = v25;

    v47 = v51 - v52;
    v48 = v28 - v25;
    CGContextFillRect(context, *&v49);
  }
}

- (void)p_drawTiles:(id)tiles inContext:(CGContext *)context rect:(CGRect)rect start:(double)start end:(double)end vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  v32 = CGRectIntegral(rect);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if (!CGRectIsEmpty(v32))
  {
    v18 = end - start;
    if (verticalCopy)
    {
      v19 = width;
    }

    else
    {
      v19 = end - start;
    }

    if (verticalCopy)
    {
      v20 = end - start;
    }

    else
    {
      v20 = height;
    }

    if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 2)
    {

      [tiles drawImageInContext:context rect:{x, y, v19, v20}];
    }

    else
    {
      if (verticalCopy)
      {
        v21 = height;
      }

      else
      {
        v21 = width;
      }

      v22 = v18 / v21;
      v23 = vcvtps_s32_f32(v22);
      if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 1)
      {
        if (v23 >= 1)
        {
          v24 = v18 / v23;
          do
          {
            start = v24 + start;
            TSURound();
            v26 = v25;
            v27 = x;
            v28 = y;
            v29 = width;
            v30 = height;
            if (verticalCopy)
            {
              height = v26 - CGRectGetMinY(*&v27);
              [tiles drawImageInContext:context rect:{x, y, width, height}];
              v33.origin.x = x;
              v33.origin.y = y;
              v33.size.width = width;
              v33.size.height = height;
              y = CGRectGetMaxY(v33);
            }

            else
            {
              width = v26 - CGRectGetMinX(*&v27);
              [tiles drawImageInContext:context rect:{x, y, width, height}];
              v34.origin.x = x;
              v34.origin.y = y;
              v34.size.width = width;
              v34.size.height = height;
              x = CGRectGetMaxX(v34);
            }

            --v23;
          }

          while (v23);
        }
      }

      else
      {
        CGContextSaveGState(context);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v19;
        v35.size.height = v20;
        CGContextClipToRect(context, v35);
        if (v23 >= 1)
        {
          do
          {
            [tiles drawImageInContext:context rect:{x, y, width, height}];
            if (verticalCopy)
            {
              y = height + y;
            }

            else
            {
              x = width + x;
            }

            --v23;
          }

          while (v23);
        }

        CGContextRestoreGState(context);
      }
    }
  }
}

- (void)p_addUnreplicatedLayerForIndex:(unsigned int)index toLayer:(id)layer maskLayer:(id)maskLayer
{
  v8 = p_addUnreplicatedLayerForIndex_toLayer_maskLayer__edgeAAMasks[index];
  indexCopy = index;
  [layer contentsScale];
  v11 = v10;
  layer = [MEMORY[0x277CD9ED0] layer];
  v13 = [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{indexCopy), "CGImageForNaturalSize"}];
  [layer setContents:v13];
  Width = CGImageGetWidth(v13);
  Height = CGImageGetHeight(v13);
  if (Width > 0x7FF || Height >= 0x800)
  {
    v16 = Height;
    v17 = Width;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_addUnreplicatedLayerForIndex:toLayer:maskLayer:]"];
    [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 937, @"frame image is too big for %@ (%f, %f)", -[TSDFrame frameName](self->mFrame, "frameName"), *&v17, *&v16}];
  }

  [layer setEdgeAntialiasingMask:v8];
  [layer setContentsScale:v11];
  [layer addSublayer:layer];
  if (maskLayer)
  {
    layer2 = [MEMORY[0x277CD9ED0] layer];
    [layer2 setContents:{objc_msgSend(-[NSArray objectAtIndex:](self->mMasks, "objectAtIndex:", indexCopy), "CGImageForNaturalSize")}];
    [layer2 setContentsScale:v11];
    [layer2 setEdgeAntialiasingMask:v8];

    [maskLayer addSublayer:layer2];
  }
}

- (void)p_addEdgeLayerForIndex:(unsigned int)index toLayer:(id)layer maskLayer:(id)maskLayer
{
  v7 = *&index;
  if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 2)
  {

    [(TSDFrameRep *)self p_addUnreplicatedLayerForIndex:v7 toLayer:layer maskLayer:maskLayer];
  }

  else
  {
    v9 = v7 & 0xFFFFFFFB;
    v10 = [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{v7), "CGImageForNaturalSize"}];
    [layer contentsScale];
    [layer addSublayer:{-[TSDFrameRep p_createRepeatingLayerWithImage:vertical:screenScale:](self, "p_createRepeatingLayerWithImage:vertical:screenScale:", v10, (v7 & 0xFFFFFFFB) == 3)}];
    if (maskLayer)
    {
      v11 = [-[NSArray objectAtIndex:](self->mMasks objectAtIndex:{v7), "CGImageForNaturalSize"}];
      [layer contentsScale];
      v12 = [(TSDFrameRep *)self p_createRepeatingLayerWithImage:v11 vertical:v9 == 3 screenScale:?];

      [maskLayer addSublayer:v12];
    }
  }
}

- (id)p_createRepeatingLayerWithImage:(CGImage *)image vertical:(BOOL)vertical screenScale:(double)scale
{
  verticalCopy = vertical;
  layer = [MEMORY[0x277CD9FF8] layer];
  layer2 = [MEMORY[0x277CD9ED0] layer];
  [layer2 setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [layer2 setContentsScale:scale];
  [layer addSublayer:layer2];
  [layer2 setContents:image];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (Width > 0x7FF || Height >= 0x800)
  {
    v13 = Height;
    v14 = Width;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_createRepeatingLayerWithImage:vertical:screenScale:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 994, @"frame image is too big for %@ (%f, %f)", -[TSDFrame frameName](self->mFrame, "frameName"), *&v14, *&v13}];
  }

  if (verticalCopy)
  {
    v17 = 3;
  }

  else
  {
    v17 = 12;
  }

  [layer2 setEdgeAntialiasingMask:v17];
  return layer;
}

- (void)p_setUnreplicatedLayerWithIndex:(unsigned int)index sublayers:(id)sublayers maskLayers:(id)layers toRect:(CGRect)rect
{
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = fmax(rect.size.width, 1.0);
  v10 = fmax(rect.size.height, 1.0);
  indexCopy = index;
  v12 = [sublayers objectAtIndex:index];
  [v12 frame];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = v9;
  v17.size.height = v10;
  if (!CGRectEqualToRect(v15, v17))
  {
    [v12 setFrame:{x, y, v9, v10}];
  }

  if (layers)
  {
    v13 = [layers objectAtIndex:indexCopy];
    [v13 frame];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = v9;
    v18.size.height = v10;
    if (!CGRectEqualToRect(v16, v18))
    {

      [v13 setFrame:{x, y, v9, v10}];
    }
  }
}

- (void)p_setRepeatingLayerWithIndex:(unsigned int)index sublayers:(id)sublayers maskLayers:(id)layers toRect:(CGRect)rect start:(double)start end:(double)end
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = index & 0xFFFFFFFB;
  indexCopy = index;
  -[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:](self, "p_adjustRepeatingLayer:withImageRect:start:end:vertical:", [sublayers objectAtIndex:index], (index & 0xFFFFFFFB) == 3, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, start, end);
  if (layers)
  {
    v18 = [layers objectAtIndex:indexCopy];

    [(TSDFrameRep *)self p_adjustRepeatingLayer:v18 withImageRect:v16 == 3 start:x end:y vertical:width, height, start, end];
  }
}

- (void)p_adjustRepeatingLayer:(id)layer withImageRect:(CGRect)rect start:(double)start end:(double)end vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v88 = *MEMORY[0x277D85DE8];
  v15 = [objc_msgSend(layer "sublayers")];
  v16 = [objc_msgSend(layer "sublayers")];
  [v15 bounds];
  v71 = v18;
  v72 = v17;
  v69 = v20;
  v70 = v19;
  [layer contentsScale];
  v22 = v21;
  v23 = end - start;
  if (verticalCopy)
  {
    v24 = height;
  }

  else
  {
    v24 = width;
  }

  if (verticalCopy)
  {
    v25 = end - start;
  }

  else
  {
    v25 = height;
  }

  if (verticalCopy)
  {
    v26 = width;
  }

  else
  {
    v26 = end - start;
  }

  v74 = v26;
  v75 = v25;
  v27 = v23 / v24;
  v28 = vcvtps_u32_f32(v27);
  if (!v28)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:]"];
    [currentHandler handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 1070, @"Need at least one tile for a frame"}];
  }

  if (v16 <= v28)
  {
    if (v16 < v28)
    {
      if (verticalCopy)
      {
        v32 = 3;
      }

      else
      {
        v32 = 12;
      }

      contents = [v15 contents];
      v34 = *MEMORY[0x277CBF348];
      v35 = *(MEMORY[0x277CBF348] + 8);
      v36 = v28 - v16;
      do
      {
        layer = [MEMORY[0x277CD9ED0] layer];
        [layer setAnchorPoint:{v34, v35}];
        [layer setContentsScale:v22];
        [layer addSublayer:layer];
        [layer setContents:contents];
        [layer setEdgeAntialiasingMask:v32];
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v31 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(layer, "sublayers")}];
    [v31 removeObjectsInRange:{v28, v16 - v28}];
    [layer setSublayers:v31];
  }

  if ([objc_msgSend(layer "sublayers")] != v28)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:]"];
    [currentHandler2 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 1093, @"Wrong number of layers: %li when expected %li", objc_msgSend(objc_msgSend(layer, "sublayers"), "count"), v28}];
  }

  v77 = y;
  v73 = v28;
  if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 1)
  {
    v24 = v23 / v28;
  }

  v40 = TSDRectWithSize();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v89.origin.y = v71;
  v89.origin.x = v72;
  v89.size.height = v69;
  v89.size.width = v70;
  v91.origin.x = v40;
  v91.origin.y = v42;
  v91.size.width = v44;
  v91.size.height = v46;
  if (!CGRectEqualToRect(v89, v91))
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    sublayers = [layer sublayers];
    v48 = [sublayers countByEnumeratingWithState:&v82 objects:v87 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v83;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v83 != v50)
          {
            objc_enumerationMutation(sublayers);
          }

          [*(*(&v82 + 1) + 8 * i) setBounds:{v40, v42, v44, v46}];
        }

        v49 = [sublayers countByEnumeratingWithState:&v82 objects:v87 count:16];
      }

      while (v49);
    }
  }

  if (verticalCopy)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v24;
  }

  v80 = 0u;
  v81 = 0u;
  if (verticalCopy)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0.0;
  }

  v78 = 0uLL;
  v79 = 0uLL;
  sublayers2 = [layer sublayers];
  v55 = [sublayers2 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = 0;
    v58 = *v79;
    if (verticalCopy)
    {
      v59 = width;
    }

    else
    {
      v59 = v24;
    }

    if (verticalCopy)
    {
      v60 = v24;
    }

    else
    {
      v60 = height;
    }

    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v79 != v58)
        {
          objc_enumerationMutation(sublayers2);
        }

        v62 = *(*(&v78 + 1) + 8 * j);
        [v62 setBounds:{0.0, 0.0, v59, v60}];
        [v62 setPosition:{v52 * v57, v53 * v57}];
        [v62 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
        ++v57;
      }

      v56 = [sublayers2 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v56);
  }

  v63 = [objc_msgSend(layer "sublayers")];
  v64 = v24 * v73;
  if (v24 * v73 > v23)
  {
    v65 = v63;
    v66 = -(v23 - v73 * v24);
    if (verticalCopy)
    {
      v67 = 1.0;
    }

    else
    {
      v67 = 1.0 - v66 / v24;
    }

    if (verticalCopy)
    {
      v68 = 1.0 - v66 / v24;
    }

    else
    {
      v68 = 1.0;
    }

    [v63 setContentsRect:{0.0, 0.0, v67, v68}];
    [v65 bounds];
    [v65 setBounds:?];
  }

  [layer frame];
  v92.origin.x = x;
  v92.origin.y = v77;
  v92.size.width = v74;
  v92.size.height = v75;
  if (!CGRectEqualToRect(v90, v92))
  {
    [layer setFrame:{x, v77, v74, v75}];
  }
}

@end