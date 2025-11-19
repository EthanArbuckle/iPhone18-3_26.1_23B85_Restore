@interface TSDFrameRep
- (CGImage)p_newFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6;
- (CGImage)p_newRenderedFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6;
- (TSDFrameRep)initWithTSDFrame:(id)a3;
- (id)applyToCALayer:(id)a3 withRepLayer:(id)a4 maskLayer:(id)a5 viewScale:(double)a6;
- (id)p_createRepeatingLayerWithImage:(CGImage *)a3 vertical:(BOOL)a4 screenScale:(double)a5;
- (void)applyMaskForRectWithCoverage:(CGRect)a3 toContext:(CGContext *)a4;
- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)a3;
- (void)dealloc;
- (void)frameRect:(CGRect)a3 inContext:(CGContext *)a4 withTotalScale:(double)a5;
- (void)p_addEdgeLayerForIndex:(unsigned int)a3 toLayer:(id)a4 maskLayer:(id)a5;
- (void)p_addUnreplicatedLayerForIndex:(unsigned int)a3 toLayer:(id)a4 maskLayer:(id)a5;
- (void)p_adjustRepeatingLayer:(id)a3 withImageRect:(CGRect)a4 start:(double)a5 end:(double)a6 vertical:(BOOL)a7;
- (void)p_drawFrameIntoRect:(CGRect)a3 inContext:(CGContext *)a4 withImages:(id)a5 atViewScale:(double)a6 isMask:(BOOL)a7;
- (void)p_drawTiles:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 start:(double)a6 end:(double)a7 vertical:(BOOL)a8;
- (void)p_setRepeatingLayerWithIndex:(unsigned int)a3 sublayers:(id)a4 maskLayers:(id)a5 toRect:(CGRect)a6 start:(double)a7 end:(double)a8;
- (void)p_setUnreplicatedLayerWithIndex:(unsigned int)a3 sublayers:(id)a4 maskLayers:(id)a5 toRect:(CGRect)a6;
- (void)updateCALayer:(id)a3 toRect:(CGRect)a4 withRepLayer:(id)a5 maskLayer:(id)a6 viewScale:(double)a7 maskLayerTransform:(CGAffineTransform *)a8;
@end

@implementation TSDFrameRep

- (TSDFrameRep)initWithTSDFrame:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 70, @"invalid nil value for '%s'", "frame"}];
  }

  v22.receiver = self;
  v22.super_class = TSDFrameRep;
  v7 = [(TSDFrameRep *)&v22 init];
  if (v7)
  {
    v8 = a3;
    v7->mFrame = v8;
    v9 = [(TSDFrame *)v8 frameSpec];
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 76, @"invalid nil value for '%s'", "frameSpec"}];
    }

    [(TSDFrameSpec *)v9 i_addInterestInProviders];
    if ([(TSDFrameSpec *)v9 i_hasImages])
    {
      v12 = 0;
      v7->mImages = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        v13 = [(TSDFrameSpec *)v9 i_providerForIndex:v12 mask:0];
        if (!v13)
        {
          v14 = [MEMORY[0x277D6C290] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
          [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 83, @"invalid nil value for '%s'", "provider"}];
        }

        [(NSArray *)v7->mImages addObject:v13];
        [v13 addInterest];
        v12 = (v12 + 1);
      }

      while (v12 != 8);
    }

    if ([(TSDFrameSpec *)v9 i_hasMask])
    {
      v16 = 0;
      v7->mMasks = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        v17 = [(TSDFrameSpec *)v9 i_providerForIndex:v16 mask:1];
        if (!v17)
        {
          v18 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep initWithTSDFrame:]"];
          [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 93, @"invalid nil value for '%s'", "provider"}];
        }

        [(NSArray *)v7->mMasks addObject:v17];
        [v17 addInterest];
        v16 = (v16 + 1);
      }

      while (v16 != 8);
    }

    if ([(TSDFrameSpec *)v9 i_hasAdornment])
    {
      v20 = [(TSDFrameSpec *)v9 i_providerForIndex:8 mask:0];
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

- (void)frameRect:(CGRect)a3 inContext:(CGContext *)a4 withTotalScale:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(TSDFrame *)self->mFrame i_willRenderForRect:?])
  {
    [(TSDFrame *)self->mFrame coverageRectWithoutAdornment:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGContextSaveGState(a4);
    if (self->mImages)
    {
      v20 = [(TSDFrameRep *)self p_newFrameForMask:0 size:0 forCALayer:v17 viewScale:v19, fmax(a5, 1.0)];
      if (v20)
      {
        v21 = v20;
        v30.origin.x = v13;
        v30.origin.y = v15;
        v30.size.width = v17;
        v30.size.height = v19;
        CGContextDrawImage(a4, v30, v20);
        CGImageRelease(v21);
      }

      else
      {
        [(TSDFrameRep *)self p_drawFrameIntoRect:a4 inContext:self->mImages withImages:0 atViewScale:v13 isMask:v15, v17, v19, 1.0];
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
      CGContextTranslateCTM(a4, 0.0, MaxY);
      CGContextScaleCTM(a4, 1.0, -1.0);
      v32.origin.x = v22;
      v32.origin.y = v23;
      v32.size.width = v24;
      v32.size.height = v25;
      MinY = CGRectGetMinY(v32);
      CGContextTranslateCTM(a4, 0.0, -MinY);
      v28 = [(TSDBitmapImageProvider *)self->mAdornment CGImageForSize:a4 inContext:0 orLayer:v24, v25];
      v33.origin.x = v22;
      v33.origin.y = v23;
      v33.size.width = v24;
      v33.size.height = v25;
      CGContextDrawImage(a4, v33, v28);
    }

    CGContextRestoreGState(a4);
  }
}

- (void)applyMaskForRectWithCoverage:(CGRect)a3 toContext:(CGContext *)a4
{
  if (self->mMasks)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    if ([(TSDFrame *)self->mFrame shouldRenderForSizeIncludingCoverage:a3.size.width, a3.size.height])
    {
      v10 = [(TSDFrameRep *)self p_newFrameForMask:1 size:0 forCALayer:width viewScale:height, TSDCGContextAssociatedScreenScale(a4)];
      if (v10)
      {
        v11 = v10;
        v13.origin.x = x;
        v13.origin.y = y;
        v13.size.width = width;
        v13.size.height = height;
        CGContextClipToMask(a4, v13, v10);

        CGImageRelease(v11);
      }

      else
      {
        [(TSDFrameRep *)self p_drawFrameIntoRect:a4 inContext:self->mMasks withImages:1 atViewScale:x isMask:y, width, height, 1.0];
        self->mShouldEnableBlendMode = 1;
      }
    }
  }
}

- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)a3
{
  if (self->mShouldEnableBlendMode)
  {
    self->mShouldEnableBlendMode = 0;
    CGContextSetBlendMode(a3, kCGBlendModeSourceIn);
  }
}

- (id)applyToCALayer:(id)a3 withRepLayer:(id)a4 maskLayer:(id)a5 viewScale:(double)a6
{
  if (![(TSDFrame *)self->mFrame shouldRender:a3])
  {
    return 0;
  }

  [a3 contentsScale];
  v10 = v9;
  [a3 setSublayers:0];
  if (self->mImages)
  {
    mMasks = self->mMasks;
    if (mMasks)
    {
      if (!a5)
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep applyToCALayer:withRepLayer:maskLayer:viewScale:]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 223, @"invalid nil value for '%s'", "repMaskLayer"}];
      }

      if (self->mMaskLayer)
      {
        v14 = [objc_msgSend(a5 "sublayers")];
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
      [a5 addSublayer:self->mMaskLayer];
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
      [(TSDFrameRep *)self p_addUnreplicatedLayerForIndex:v19 toLayer:a3 maskLayer:self->mMaskLayer];
      [(TSDFrameRep *)self p_addEdgeLayerForIndex:(v19 + 1) toLayer:a3 maskLayer:self->mMaskLayer];
      v20 = v19 >= 5;
      v19 = (v19 + 2);
    }

    while (!v20);
    if (mMasks)
    {
      v21 = [MEMORY[0x277CD9ED0] layer];
      DeviceRGB = TSUCGColorCreateDeviceRGB();
      [v21 setBackgroundColor:DeviceRGB];
      CGColorRelease(DeviceRGB);
      [v21 setEdgeAntialiasingMask:0];
      [(CALayer *)self->mMaskLayer addSublayer:v21];
    }
  }

  if (self->mAdornment)
  {
    v23 = [MEMORY[0x277CD9ED0] layer];
    [v23 setContentsScale:v10];
    [v23 setContents:{-[TSDBitmapImageProvider CGImageForNaturalSize](self->mAdornment, "CGImageForNaturalSize")}];
    [a3 addSublayer:v23];
  }

  return self->mMaskLayer;
}

- (void)updateCALayer:(id)a3 toRect:(CGRect)a4 withRepLayer:(id)a5 maskLayer:(id)a6 viewScale:(double)a7 maskLayerTransform:(CGAffineTransform *)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a8->a == 0.0 && a8->b == 0.0 || a8->c == 0.0 && a8->d == 0.0)
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"];
    v20 = *&a8->c;
    *&transform.a = *&a8->a;
    *&transform.c = v20;
    *&transform.tx = *&a8->tx;
    [v17 handleFailureInFunction:v18 file:v19 lineNumber:270 description:{@"bad maskLayerTransform: %@", NSStringFromCGAffineTransform(&transform)}];
  }

  if ([(TSDFrame *)self->mFrame shouldRender])
  {
    mFrame = self->mFrame;
    [(TSDFrame *)mFrame coverageRectWithoutAdornment:x, y, width, height];
    if ([(TSDFrame *)mFrame shouldRenderForSizeIncludingCoverage:v22, v23])
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v24 = [a3 sublayers];
      mMasks = self->mMasks;
      if (mMasks)
      {
        if (!self->mMaskLayer)
        {
          v26 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
          [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 284, @"invalid nil value for '%s'", "mMaskLayer"}];
        }

        if (([objc_msgSend(a6 "sublayers")] & 1) == 0)
        {
          v28 = [MEMORY[0x277D6C290] currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep updateCALayer:toRect:withRepLayer:maskLayer:viewScale:maskLayerTransform:]"];
          [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 285, @"TSDFrameRep's mask layer is not a sublayer of the mask layer passed in"}];
        }
      }

      v30 = [(TSDFrame *)self->mFrame i_willRenderForRect:x, y, width, height]^ 1;
      if (v30)
      {
        [a3 bounds];
        v42 = v41;
        v31 = v43;
        DeviceRGB = TSUCGColorCreateDeviceRGB();
        v45 = DeviceRGB;
        if ([a3 isHidden])
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

            v68 = *&a8->c;
            *&t1.a = *&a8->a;
            *&t1.c = v68;
            *&t1.tx = *&a8->tx;
            if (!CGAffineTransformEqualToTransform(&t1, &transform))
            {
              v69 = *&a8->c;
              *&transform.a = *&a8->a;
              *&transform.c = v69;
              *&transform.tx = *&a8->tx;
              [(CALayer *)self->mMaskLayer setAffineTransform:&transform];
            }
          }

          CGColorRelease(v45);
          [MEMORY[0x277CD9FF0] commit];
          return;
        }

LABEL_18:
        [a3 setHidden:v30];
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
      v36 = TSDMultiplyRectScalar(v32, v34, v35, v33, a7);
      if (self->mImages)
      {
        if (mMasks)
        {
          v38 = v36;
          v39 = v37;
          v40 = [(CALayer *)self->mMaskLayer sublayers];
          v145 = v39;
          v150 = v38;
        }

        else
        {
          v145 = v31;
          v40 = 0;
        }

        [(TSDFrame *)self->mFrame i_leftWidth];
        v71 = v70;
        [(TSDFrame *)self->mFrame i_rightWidth];
        v73 = v149 - v72;
        [(TSDFrame *)self->mFrame i_topHeight];
        v75 = v74;
        [(TSDFrame *)self->mFrame i_bottomHeight];
        v77 = v71 * a7;
        v78 = v75 * a7;
        v79 = (v148 - v76) * a7;
        if (v77 == v73 * a7)
        {
          v80 = v77 + 1.0;
        }

        else
        {
          v80 = v73 * a7;
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
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:0 sublayers:v24 maskLayers:v40 toRect:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v77, v78];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:1 sublayers:v24 maskLayers:v40 toRect:v77, 0.0];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v83 = v82 * a7;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:2 sublayers:v24 maskLayers:v40 toRect:v80, 0.0, v83, v84 * a7];
          [(TSDFrame *)self->mFrame i_rightWidth];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:3 sublayers:v24 maskLayers:v40 toRect:v80, v78, v85 * a7, v81 - v78];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v87 = v86 * a7;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          v89 = v87;
          v90 = v80 - v77;
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:4 sublayers:v24 maskLayers:v40 toRect:v80, v81, v89, v88 * a7];
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:5 sublayers:v24 maskLayers:v40 toRect:v77, v81, v80 - v77, v91 * a7];
          [(TSDFrame *)self->mFrame i_leftWidth];
          v93 = v92 * a7;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:6 sublayers:v24 maskLayers:v40 toRect:0.0, v81, v93, v94 * a7];
          [(TSDFrame *)self->mFrame i_leftWidth];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:7 sublayers:v24 maskLayers:v40 toRect:0.0, v78, v95 * a7, v81 - v78];
          if (mMasks)
          {
            v96 = [(NSArray *)v40 objectAtIndex:8];
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
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:0 sublayers:v24 maskLayers:v40 toRect:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v77, v78];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{1), "dpiAdjustedFillSize"}];
          if (v103 > 1.0)
          {
            v103 = v102 * v103;
          }

          v104 = v103 * a7;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:1 sublayers:v24 maskLayers:v40 toRect:v77 start:0.0 end:v104, v105 * a7, v77, v80];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v107 = v106 * a7;
          [(TSDFrame *)self->mFrame i_topHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:2 sublayers:v24 maskLayers:v40 toRect:v80, 0.0, v107, v108 * a7];
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
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:3 sublayers:v24 maskLayers:v40 toRect:v80 start:v78 end:v111 * a7, v110 * a7, v78, v81];
          [(TSDFrame *)self->mFrame i_rightWidth];
          v113 = v112 * a7;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:4 sublayers:v24 maskLayers:v40 toRect:v80, v81, v113, v114 * a7];
          [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{5), "dpiAdjustedFillSize"}];
          if (v115 > 1.0)
          {
            v115 = v144 * v115;
          }

          v116 = v115 * a7 + 1.0;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:5 sublayers:v24 maskLayers:v40 toRect:v77 start:v81 end:v116, v117 * a7, v77, v80];
          [(TSDFrame *)self->mFrame i_leftWidth];
          v119 = v118 * a7;
          [(TSDFrame *)self->mFrame i_bottomHeight];
          [(TSDFrameRep *)self p_setUnreplicatedLayerWithIndex:6 sublayers:v24 maskLayers:v40 toRect:0.0, v81, v119, v120 * a7];
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
          [(TSDFrameRep *)self p_setRepeatingLayerWithIndex:7 sublayers:v24 maskLayers:v40 toRect:0.0 start:v78 end:v123 * a7, v122 * a7, v78, v81];
          if (mMasks)
          {
            v124 = [(NSArray *)v40 objectAtIndex:8];
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
        v140 = TSDMultiplyRectScalar(v138, v139, v134, v136, a7);
        [objc_msgSend(v24 objectAtIndex:{8 * (self->mImages != 0)), "setFrame:", v140, v141, v142, v143}];
      }

      DeviceRGB = 0;
      v45 = 0;
      v42 = v150;
      if (([a3 isHidden] & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }
}

- (CGImage)p_newFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v12 = +[TSDFrameImageCache sharedFrameImageCache];
  result = [v12 newCachedImageForFrame:self->mFrame size:v7 viewScale:v10 forCALayer:width mask:{height, a6}];
  if (!result)
  {
    result = [(TSDFrameRep *)self p_newRenderedFrameForMask:v10 size:v7 forCALayer:width viewScale:height, a6];
    if (result)
    {
      v14 = result;
      v15 = [v12 setCachedImage:result forFrame:self->mFrame size:v7 viewScale:v10 forCALayer:width mask:{height, a6}];
      CGImageRelease(v14);
      return v15;
    }
  }

  return result;
}

- (CGImage)p_newRenderedFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6
{
  v7 = a5;
  v8 = a3;
  v44 = *MEMORY[0x277D85DE8];
  if (TSDMultiplySizeScalar(a4.width, a4.height, a6) >= 4096.0 || v10 >= 4096.0)
  {
    return 0;
  }

  TSURound();
  v14 = v13;
  TSURound();
  v16 = v15;
  v17 = 16;
  if (v8)
  {
    v17 = 24;
  }

  v18 = *(&self->super.isa + v17);
  if (v8)
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
    if (v7)
    {
      CGContextTranslateCTM(v29, 0.0, v16);
      CGContextScaleCTM(v30, 1.0, -1.0);
    }

    if (v8)
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

    [(TSDFrameRep *)self p_drawFrameIntoRect:v30 inContext:v18 withImages:v8 atViewScale:0.0 isMask:0.0, v31 / a6, v32 / a6, a6];
    if (v8)
    {
      CGContextRelease(v30);
      v33 = CGDataProviderCreateWithCFData(Mutable);
      v12 = CGImageMaskCreate(v14, v16, 8uLL, 8uLL, AlignedBytesPerRow, v33, 0, 1);
      CGDataProviderRelease(v33);
      if (v7)
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

- (void)p_drawFrameIntoRect:(CGRect)a3 inContext:(CGContext *)a4 withImages:(id)a5 atViewScale:(double)a6 isMask:(BOOL)a7
{
  v7 = a7;
  v57.origin.x = TSDRoundedRect(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
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
  [objc_msgSend(a5 objectAtIndex:{0), "drawImageInContext:rect:", a4, MinX, v19, v54, v55}];
  v29 = TSDRoundedSize();
  [objc_msgSend(a5 objectAtIndex:{6), "drawImageInContext:rect:", a4, MinX, v28, v29, v30}];
  v31 = TSDRoundedSize();
  v33 = v32;
  v34 = [a5 objectAtIndex:2];
  v35 = v19;
  v36 = v52;
  [v34 drawImageInContext:a4 rect:{v51, v35, v31, v33}];
  v37 = TSDRoundedSize();
  [objc_msgSend(a5 objectAtIndex:{4), "drawImageInContext:rect:", a4, v51, v28, v37, v38}];
  [objc_msgSend(a5 objectAtIndex:{7), "dpiAdjustedFillSize"}];
  v39 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [a5 objectAtIndex:7], a4, 1, MinX, v25, v39, v40, v25, v28);
  [objc_msgSend(a5 objectAtIndex:{3), "dpiAdjustedFillSize"}];
  v41 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [a5 objectAtIndex:3], a4, 1, v51, v25, v41, v42, v25, v28);
  [objc_msgSend(a5 objectAtIndex:{1), "dpiAdjustedFillSize"}];
  v43 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [a5 objectAtIndex:1], a4, 0, v36, v53, v43, v44, v36, v51);
  [objc_msgSend(a5 objectAtIndex:{5), "dpiAdjustedFillSize"}];
  v45 = TSDRoundedSize();
  -[TSDFrameRep p_drawTiles:inContext:rect:start:end:vertical:](self, "p_drawTiles:inContext:rect:start:end:vertical:", [a5 objectAtIndex:5], a4, 0, v36, v28, v45, v46, v36, v51);
  if (v7)
  {
    CGContextSetGrayFillColor(a4, 0.0, 1.0);
    v49 = v52;
    v50 = v25;

    v47 = v51 - v52;
    v48 = v28 - v25;
    CGContextFillRect(a4, *&v49);
  }
}

- (void)p_drawTiles:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 start:(double)a6 end:(double)a7 vertical:(BOOL)a8
{
  v8 = a8;
  v32 = CGRectIntegral(a5);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if (!CGRectIsEmpty(v32))
  {
    v18 = a7 - a6;
    if (v8)
    {
      v19 = width;
    }

    else
    {
      v19 = a7 - a6;
    }

    if (v8)
    {
      v20 = a7 - a6;
    }

    else
    {
      v20 = height;
    }

    if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 2)
    {

      [a3 drawImageInContext:a4 rect:{x, y, v19, v20}];
    }

    else
    {
      if (v8)
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
            a6 = v24 + a6;
            TSURound();
            v26 = v25;
            v27 = x;
            v28 = y;
            v29 = width;
            v30 = height;
            if (v8)
            {
              height = v26 - CGRectGetMinY(*&v27);
              [a3 drawImageInContext:a4 rect:{x, y, width, height}];
              v33.origin.x = x;
              v33.origin.y = y;
              v33.size.width = width;
              v33.size.height = height;
              y = CGRectGetMaxY(v33);
            }

            else
            {
              width = v26 - CGRectGetMinX(*&v27);
              [a3 drawImageInContext:a4 rect:{x, y, width, height}];
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
        CGContextSaveGState(a4);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v19;
        v35.size.height = v20;
        CGContextClipToRect(a4, v35);
        if (v23 >= 1)
        {
          do
          {
            [a3 drawImageInContext:a4 rect:{x, y, width, height}];
            if (v8)
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

        CGContextRestoreGState(a4);
      }
    }
  }
}

- (void)p_addUnreplicatedLayerForIndex:(unsigned int)a3 toLayer:(id)a4 maskLayer:(id)a5
{
  v8 = p_addUnreplicatedLayerForIndex_toLayer_maskLayer__edgeAAMasks[a3];
  v9 = a3;
  [a4 contentsScale];
  v11 = v10;
  v12 = [MEMORY[0x277CD9ED0] layer];
  v13 = [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{v9), "CGImageForNaturalSize"}];
  [v12 setContents:v13];
  Width = CGImageGetWidth(v13);
  Height = CGImageGetHeight(v13);
  if (Width > 0x7FF || Height >= 0x800)
  {
    v16 = Height;
    v17 = Width;
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_addUnreplicatedLayerForIndex:toLayer:maskLayer:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 937, @"frame image is too big for %@ (%f, %f)", -[TSDFrame frameName](self->mFrame, "frameName"), *&v17, *&v16}];
  }

  [v12 setEdgeAntialiasingMask:v8];
  [v12 setContentsScale:v11];
  [a4 addSublayer:v12];
  if (a5)
  {
    v20 = [MEMORY[0x277CD9ED0] layer];
    [v20 setContents:{objc_msgSend(-[NSArray objectAtIndex:](self->mMasks, "objectAtIndex:", v9), "CGImageForNaturalSize")}];
    [v20 setContentsScale:v11];
    [v20 setEdgeAntialiasingMask:v8];

    [a5 addSublayer:v20];
  }
}

- (void)p_addEdgeLayerForIndex:(unsigned int)a3 toLayer:(id)a4 maskLayer:(id)a5
{
  v7 = *&a3;
  if ([(TSDFrameSpec *)[(TSDFrame *)self->mFrame frameSpec] i_tilingMode]== 2)
  {

    [(TSDFrameRep *)self p_addUnreplicatedLayerForIndex:v7 toLayer:a4 maskLayer:a5];
  }

  else
  {
    v9 = v7 & 0xFFFFFFFB;
    v10 = [-[NSArray objectAtIndex:](self->mImages objectAtIndex:{v7), "CGImageForNaturalSize"}];
    [a4 contentsScale];
    [a4 addSublayer:{-[TSDFrameRep p_createRepeatingLayerWithImage:vertical:screenScale:](self, "p_createRepeatingLayerWithImage:vertical:screenScale:", v10, (v7 & 0xFFFFFFFB) == 3)}];
    if (a5)
    {
      v11 = [-[NSArray objectAtIndex:](self->mMasks objectAtIndex:{v7), "CGImageForNaturalSize"}];
      [a4 contentsScale];
      v12 = [(TSDFrameRep *)self p_createRepeatingLayerWithImage:v11 vertical:v9 == 3 screenScale:?];

      [a5 addSublayer:v12];
    }
  }
}

- (id)p_createRepeatingLayerWithImage:(CGImage *)a3 vertical:(BOOL)a4 screenScale:(double)a5
{
  v6 = a4;
  v9 = [MEMORY[0x277CD9FF8] layer];
  v10 = [MEMORY[0x277CD9ED0] layer];
  [v10 setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [v10 setContentsScale:a5];
  [v9 addSublayer:v10];
  [v10 setContents:a3];
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  if (Width > 0x7FF || Height >= 0x800)
  {
    v13 = Height;
    v14 = Width;
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_createRepeatingLayerWithImage:vertical:screenScale:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 994, @"frame image is too big for %@ (%f, %f)", -[TSDFrame frameName](self->mFrame, "frameName"), *&v14, *&v13}];
  }

  if (v6)
  {
    v17 = 3;
  }

  else
  {
    v17 = 12;
  }

  [v10 setEdgeAntialiasingMask:v17];
  return v9;
}

- (void)p_setUnreplicatedLayerWithIndex:(unsigned int)a3 sublayers:(id)a4 maskLayers:(id)a5 toRect:(CGRect)a6
{
  y = a6.origin.y;
  x = a6.origin.x;
  v9 = fmax(a6.size.width, 1.0);
  v10 = fmax(a6.size.height, 1.0);
  v11 = a3;
  v12 = [a4 objectAtIndex:a3];
  [v12 frame];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = v9;
  v17.size.height = v10;
  if (!CGRectEqualToRect(v15, v17))
  {
    [v12 setFrame:{x, y, v9, v10}];
  }

  if (a5)
  {
    v13 = [a5 objectAtIndex:v11];
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

- (void)p_setRepeatingLayerWithIndex:(unsigned int)a3 sublayers:(id)a4 maskLayers:(id)a5 toRect:(CGRect)a6 start:(double)a7 end:(double)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3 & 0xFFFFFFFB;
  v17 = a3;
  -[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:](self, "p_adjustRepeatingLayer:withImageRect:start:end:vertical:", [a4 objectAtIndex:a3], (a3 & 0xFFFFFFFB) == 3, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height, a7, a8);
  if (a5)
  {
    v18 = [a5 objectAtIndex:v17];

    [(TSDFrameRep *)self p_adjustRepeatingLayer:v18 withImageRect:v16 == 3 start:x end:y vertical:width, height, a7, a8];
  }
}

- (void)p_adjustRepeatingLayer:(id)a3 withImageRect:(CGRect)a4 start:(double)a5 end:(double)a6 vertical:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v88 = *MEMORY[0x277D85DE8];
  v15 = [objc_msgSend(a3 "sublayers")];
  v16 = [objc_msgSend(a3 "sublayers")];
  [v15 bounds];
  v71 = v18;
  v72 = v17;
  v69 = v20;
  v70 = v19;
  [a3 contentsScale];
  v22 = v21;
  v23 = a6 - a5;
  if (v7)
  {
    v24 = height;
  }

  else
  {
    v24 = width;
  }

  if (v7)
  {
    v25 = a6 - a5;
  }

  else
  {
    v25 = height;
  }

  if (v7)
  {
    v26 = width;
  }

  else
  {
    v26 = a6 - a5;
  }

  v74 = v26;
  v75 = v25;
  v27 = v23 / v24;
  v28 = vcvtps_u32_f32(v27);
  if (!v28)
  {
    v29 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:]"];
    [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 1070, @"Need at least one tile for a frame"}];
  }

  if (v16 <= v28)
  {
    if (v16 < v28)
    {
      if (v7)
      {
        v32 = 3;
      }

      else
      {
        v32 = 12;
      }

      v33 = [v15 contents];
      v34 = *MEMORY[0x277CBF348];
      v35 = *(MEMORY[0x277CBF348] + 8);
      v36 = v28 - v16;
      do
      {
        v37 = [MEMORY[0x277CD9ED0] layer];
        [v37 setAnchorPoint:{v34, v35}];
        [v37 setContentsScale:v22];
        [a3 addSublayer:v37];
        [v37 setContents:v33];
        [v37 setEdgeAntialiasingMask:v32];
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v31 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(a3, "sublayers")}];
    [v31 removeObjectsInRange:{v28, v16 - v28}];
    [a3 setSublayers:v31];
  }

  if ([objc_msgSend(a3 "sublayers")] != v28)
  {
    v38 = [MEMORY[0x277D6C290] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameRep p_adjustRepeatingLayer:withImageRect:start:end:vertical:]"];
    [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameRep.m"), 1093, @"Wrong number of layers: %li when expected %li", objc_msgSend(objc_msgSend(a3, "sublayers"), "count"), v28}];
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
    v47 = [a3 sublayers];
    v48 = [v47 countByEnumeratingWithState:&v82 objects:v87 count:16];
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
            objc_enumerationMutation(v47);
          }

          [*(*(&v82 + 1) + 8 * i) setBounds:{v40, v42, v44, v46}];
        }

        v49 = [v47 countByEnumeratingWithState:&v82 objects:v87 count:16];
      }

      while (v49);
    }
  }

  if (v7)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v24;
  }

  v80 = 0u;
  v81 = 0u;
  if (v7)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0.0;
  }

  v78 = 0uLL;
  v79 = 0uLL;
  v54 = [a3 sublayers];
  v55 = [v54 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = 0;
    v58 = *v79;
    if (v7)
    {
      v59 = width;
    }

    else
    {
      v59 = v24;
    }

    if (v7)
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
          objc_enumerationMutation(v54);
        }

        v62 = *(*(&v78 + 1) + 8 * j);
        [v62 setBounds:{0.0, 0.0, v59, v60}];
        [v62 setPosition:{v52 * v57, v53 * v57}];
        [v62 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
        ++v57;
      }

      v56 = [v54 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v56);
  }

  v63 = [objc_msgSend(a3 "sublayers")];
  v64 = v24 * v73;
  if (v24 * v73 > v23)
  {
    v65 = v63;
    v66 = -(v23 - v73 * v24);
    if (v7)
    {
      v67 = 1.0;
    }

    else
    {
      v67 = 1.0 - v66 / v24;
    }

    if (v7)
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

  [a3 frame];
  v92.origin.x = x;
  v92.origin.y = v77;
  v92.size.width = v74;
  v92.size.height = v75;
  if (!CGRectEqualToRect(v90, v92))
  {
    [a3 setFrame:{x, v77, v74, v75}];
  }
}

@end