@interface TSDStyledRep
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldShowSelectionHighlight;
- (CGImage)newShadowImageWithSize:(CGSize)a3 unflipped:(BOOL)a4 withChildren:(BOOL)a5;
- (CGImage)p_newReflectionImageWithSize:(CGSize)a3 applyOpacity:(BOOL)a4 viewScale:(double)a5 withBlock:(id)a6;
- (CGRect)clipRect;
- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)a3;
- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)rectWithEffectsAppliedToRect:(CGRect)a3;
- (CGRect)reflectionLayerFrame;
- (CGRect)reflectionLayerFrameInRoot;
- (NSString)description;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (double)opacity;
- (id)additionalLayersUnderLayer;
- (id)styledInfo;
- (id)textureForContext:(id)a3;
- (void)createReflectionLayer;
- (void)dealloc;
- (void)didUpdateEffectLayersForLayer:(id)a3;
- (void)disposeReflectionLayer;
- (void)drawGradientWithAlphaOverReflection:(CGContext *)a3 applyingOpacity:(BOOL)a4 reflectionSize:(CGSize)a5;
- (void)drawInContext:(CGContext *)a3;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawReflectionInContext:(CGContext *)a3 drawChildren:(BOOL)a4;
- (void)drawReflectionInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 shouldClipGradient:(BOOL)a6 withBlock:(id)a7;
- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 drawChildren:(BOOL)a6;
- (void)drawShadowInContext:(CGContext *)a3 withChildren:(BOOL)a4 withDrawableOpacity:(BOOL)a5;
- (void)p_drawReflectionInContext:(CGContext *)a3;
- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 shouldClipGradient:(BOOL)a6 withBlock:(id)a7;
- (void)positionShadowLayer:(id)a3 forShadow:(id)a4 withNaturalBounds:(CGRect)a5;
- (void)processChangedProperty:(int)a3;
- (void)setNeedsDisplay;
- (void)viewScaleDidChange;
- (void)willUpdateEffectLayersForLayer:(id)a3;
@end

@implementation TSDStyledRep

- (void)dealloc
{
  [(CALayer *)self->mReflectionLayer setDelegate:0];

  self->mReflectionLayer = 0;
  self->mShadowLayer = 0;
  v3.receiver = self;
  v3.super_class = TSDStyledRep;
  [(TSDRep *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(TSDRep *)self info];
  [(TSDRep *)self layout];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(TSDRep *)self layout];
  [(TSDRep *)self frameInUnscaledCanvas];
  return [v3 stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v5, self, v7, v8, v10, v11, NSStringFromCGRect(v13)];
}

- (id)styledInfo
{
  v2 = [(TSDRep *)self layout];

  return [(TSDLayout *)v2 info];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSDStyledRep;
  [(TSDRep *)&v3 setNeedsDisplay];
  [(TSDStyledRep *)self invalidateShadowLayer];
  [(CALayer *)self->mReflectionLayer setNeedsDisplay];
}

- (void)viewScaleDidChange
{
  mFlags = self->mFlags;
  v4.receiver = self;
  v4.super_class = TSDStyledRep;
  [(TSDRep *)&v4 viewScaleDidChange];
  *&self->mFlags = *&self->mFlags & 0xFE | mFlags & 1;
}

- (CGRect)clipRect
{
  [(TSDStyledRep *)self clipRectWithoutEffects];

  [(TSDStyledRep *)self rectWithEffectsAppliedToRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)a3
{
  [(TSDStyledRep *)self clipRectWithoutEffects];
  v5 = *&a3->c;
  *&v11.a = *&a3->a;
  *&v11.c = v5;
  *&v11.tx = *&a3->tx;
  v13 = CGRectApplyAffineTransform(v12, &v11);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v6;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDStyledRep *)self p_rectWithEffectsAppliedToRect:&v11 additionalTransform:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)p_drawReflectionInContext:(CGContext *)a3
{
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSDSetCGContextInfo(a3, 0, 0, 1, 0, v5);
  [(TSDStyledRep *)self reflectionLayerFrameInRoot];
  v7 = v6;
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v17 = TSDMultiplyRectScalar(v9, v11, v13, v15, v16);
  v19 = TSDSubtractPoints(v17, v18, v7);
  CGContextTranslateCTM(a3, v19, v20);
  [(TSDCanvas *)self->super.mCanvas viewScale];
  CGContextScaleCTM(a3, v21, v21);

  [(TSDStyledRep *)self drawReflectionIntoReflectionFrameInContext:a3 withTransparencyLayer:0 applyingOpacity:0 drawChildren:1];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (self->mReflectionLayer == a3)
  {
    [(TSDRep *)self i_configureFontSmoothingForContext:a4 layer:a3];

    [(TSDStyledRep *)self p_drawReflectionInContext:a4];
  }
}

- (double)opacity
{
  v2 = [(TSDStyledRep *)self styledLayout];

  [v2 opacity];
  return result;
}

- (CGRect)rectWithEffectsAppliedToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TSDRep *)self layout];
  if (v8)
  {
    [(TSDAbstractLayout *)v8 transformInRoot];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformInvert(&v14, &v13);
  [(TSDStyledRep *)self p_rectWithEffectsAppliedToRect:&v14 additionalTransform:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDRep *)self info];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(TSDStyledRep *)self shadow];
    if (v10)
    {
      v11 = v10;
      if ([(TSDShadow *)v10 isEnabled])
      {
        v12 = *&a4->c;
        *&v35.a = *&a4->a;
        *&v35.c = v12;
        *&v35.tx = *&a4->tx;
        [(TSDShadow *)v11 shadowBoundsForRect:&v35 additionalTransform:x, y, width, height];
        x = v13;
        y = v14;
        width = v15;
        height = v16;
      }
    }
  }

  if ([(TSDStyledRep *)self reflection])
  {
    [-[TSDStyledRep styledLayout](self "styledLayout")];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(TSDAbstractLayout *)[(TSDRep *)self layout] parent])
    {
      [-[TSDAbstractLayout geometryInRoot](-[TSDAbstractLayout parent](-[TSDRep layout](self "layout")];
      v18 = TSDAddPoints(v18, v20, v25);
      v20 = v26;
    }

    v27 = *&a4->c;
    *&v35.a = *&a4->a;
    *&v35.c = v27;
    *&v35.tx = *&a4->tx;
    v28 = v18;
    *&v27 = v20;
    v29 = v22;
    v30 = v24;
    v39 = CGRectApplyAffineTransform(*(&v27 - 8), &v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37 = CGRectUnion(v36, v39);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (TSDReflection)reflection
{
  if (self->mIsUpdatingReflectionOpacity)
  {
    return &self->mDynamicReflection->super;
  }

  v5 = [(TSDStyledRep *)self styledInfo];

  return [v5 reflection];
}

- (TSDShadow)shadow
{
  if (self->mIsUpdatingShadow)
  {
    return self->mDynamicShadow;
  }

  v5 = [(TSDStyledRep *)self styledInfo];

  return [v5 shadow];
}

- (void)createReflectionLayer
{
  v3 = objc_alloc_init(TSDTilingLayer);
  self->mReflectionLayer = &v3->super;
  [(TSDTilingLayer *)v3 setDelegate:self];
  [(TSDTilingLayer *)v3 setDrawsInBackground:1];
  [(TSDTilingLayer *)v3 setNeedsDisplay];
  v4 = [(TSDRep *)self tilingMode];

  [(TSDTilingLayer *)v3 setTilingMode:v4];
}

- (void)disposeReflectionLayer
{
  [(CALayer *)self->mReflectionLayer setDelegate:0];

  self->mReflectionLayer = 0;
}

- (void)willUpdateEffectLayersForLayer:(id)a3
{
  v4 = [(TSDStyledRep *)self shadow];
  if (v4 && [(TSDShadow *)v4 isEnabled]&& [(TSDStyledRep *)self shouldShowShadow])
  {
    if (!self->mShadowLayer)
    {
      self->mShadowLayer = objc_alloc_init(MEMORY[0x277CD9ED0]);
      [(TSDStyledRep *)self invalidateShadowLayer];
    }
  }

  else
  {
    mShadowLayer = self->mShadowLayer;
    if (mShadowLayer)
    {

      self->mShadowLayer = 0;
    }
  }

  if ([(TSDStyledRep *)self reflection]&& [(TSDStyledRep *)self shouldShowReflection])
  {
    if (!self->mReflectionLayer)
    {

      [(TSDStyledRep *)self createReflectionLayer];
    }
  }

  else if (self->mReflectionLayer)
  {

    [(TSDStyledRep *)self disposeReflectionLayer];
  }
}

- (CGRect)reflectionLayerFrameInRoot
{
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v12 = TSDMultiplyRectScalar(v4, v6, v8, v10, v11);

  return CGRectIntegral(*&v12);
}

- (CGRect)reflectionLayerFrame
{
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v12 = TSDMultiplyRectScalar(v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
    v20 = v19;
    v12 = TSDAddPoints(v12, v14, v19);
    v14 = v21;
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A0];
  }

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  v32 = CGRectIntegral(v31);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if ([(TSDRep *)self parentRep])
  {
    x = TSDSubtractPoints(x, y, v20);
    y = v26;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)didUpdateEffectLayersForLayer:(id)a3
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v4 = [(TSDStyledRep *)self isInvisible];
  mShadowLayer = self->mShadowLayer;
  if (v4)
  {
    [(CALayer *)mShadowLayer setContents:0];
  }

  else if (mShadowLayer)
  {
    v6 = [(TSDStyledRep *)self shadow];
    if (!v6)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 365, @"invalid nil value for '%s'", "shadow"}];
    }

    if (![(TSDShadow *)v6 isEnabled])
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 366, @"shouldn't have shadow layer if shadow is not enabled"}];
    }

    if (v6 && [(TSDShadow *)v6 isEnabled])
    {
      [(TSDStyledRep *)self opacity];
      v12 = v11;
      [(TSDShadow *)v6 opacity];
      v14 = v12 * v13;
      [(CALayer *)self->mShadowLayer opacity];
      v16 = v15;
      if (v14 != v16)
      {
        *&v16 = v14;
        [(CALayer *)self->mShadowLayer setOpacity:v16];
      }

      if (v14 != 0.0 && ![(CALayer *)self->mShadowLayer contents])
      {
        [(TSDStyledRep *)self invalidateShadowLayer];
      }

      v17 = self->mShadowLayer;
      [-[TSDStyledRep styledLayout](self "styledLayout")];
      [(TSDStyledRep *)self positionShadowLayer:v17 forShadow:v6 withNaturalBounds:?];
    }
  }

  if (self->mShadowLayer)
  {
    v18 = [(TSDStyledRep *)self shadow];
    if (!v18)
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 398, @"invalid nil value for '%s'", "shadow"}];
    }

    if (![(TSDShadow *)v18 isEnabled])
    {
      v21 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 399, @"shouldn't have shadow layer if shadow is not enabled"}];
    }

    if (v18 && [(TSDShadow *)v18 isEnabled])
    {
      [(TSDStyledRep *)self opacity];
      v24 = v23;
      [(TSDShadow *)v18 opacity];
      v26 = v24 * v25;
      [(CALayer *)self->mShadowLayer opacity];
      v28 = v27;
      if (v26 != v28)
      {
        *&v28 = v26;
        [(CALayer *)self->mShadowLayer setOpacity:v28];
      }

      v29 = self->mShadowLayer;
      [-[TSDStyledRep styledLayout](self "styledLayout")];
      [(TSDStyledRep *)self positionShadowLayer:v29 forShadow:v18 withNaturalBounds:?];
    }

    if (*&self->mFlags)
    {
      [(CALayer *)self->mShadowLayer bounds];
      v31 = v30;
      v33 = v32;
      [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
      v35 = [(TSDStyledRep *)self newShadowImageWithSize:0 unflipped:1 withChildren:TSDMultiplySizeScalar(v31, v33, 1.0 / v34)];
      [(CALayer *)self->mShadowLayer setContents:v35];
      *&self->mFlags &= ~1u;
      CGImageRelease(v35);
    }
  }

  if (self->mReflectionLayer)
  {
    [(TSDStyledRep *)self reflectionLayerFrameInRoot];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    memset(&v53[1], 0, sizeof(CGAffineTransform));
    [(TSDRep *)self parentLayerInverseTransformInRootForZeroAnchor];
    v44 = TSDCenterOfRect(v37, v39, v41, v43);
    v52 = v53[1];
    TSDTransformConvertForNewOrigin(&v52, v53, v44, v45);
    v53[1] = v53[0];
    [(CALayer *)self->mReflectionLayer setIfDifferentFrame:v53 orTransform:v37, v39, v41, v43];
    [(TSDStyledRep *)self opacity];
    v47 = v46;
    [(TSDReflection *)[(TSDStyledRep *)self reflection] opacity];
    v49 = v47 * v48;
    [(CALayer *)self->mReflectionLayer opacity];
    v51 = v50;
    if (v49 != v51)
    {
      *&v51 = v49;
      [(CALayer *)self->mReflectionLayer setOpacity:v51];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)positionShadowLayer:(id)a3 forShadow:(id)a4 withNaturalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
  v13 = v12;
  if ([a4 isDropShadow])
  {
    TSDMultiplyRectScalar(x, y, width, height, v13);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    [(TSDRep *)self computeDirectLayerFrame:&v80 andTransform:&v77];
    v14 = TSDCenterOfRect(*&v80, *(&v80 + 1), *&v81, *(&v81 + 1));
    v16 = v15;
    [a4 offsetDelta];
    TSDMultiplyPointScalar(v17, v18, v13);
    v19 = TSDRoundedPoint();
    [a3 setPosition:{TSDAddPoints(v14, v16, v19)}];
    [a3 setBounds:TSDRectWithSize()];
    v74 = v77;
    v75 = v78;
    v76 = v79;
    v20 = &v74;
  }

  else
  {
    if ([a4 isContactShadow])
    {
      [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
      v25 = TSDMultiplyRectScalar(v21, v22, v23, v24, v13);
      v29 = TSDCenterOfRect(v25, v26, v27, v28);
      v31 = v30;
      [a4 offset];
      TSDMultiplyPointScalar(0.0, v32, v13);
      v33 = TSDRoundedPoint();
      v34 = v29;
      v35 = v31;
    }

    else
    {
      if (![a4 isCurvedShadow])
      {
        goto LABEL_13;
      }

      objc_opt_class();
      v36 = TSUDynamicCast();
      [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
      v41 = TSDMultiplyRectScalar(v37, v38, v39, v40, v13);
      v45 = TSDCenterOfRect(v41, v42, v43, v44);
      v47 = v46;
      [v36 offsetFromCurve];
      [v36 curve];
      if (v48 > 0.0)
      {
        TSDAddPoints(v45, v47, 0.0);
        v45 = TSDRoundedPoint();
        v47 = v49;
      }

      [a4 offsetDelta];
      TSDMultiplyPointScalar(v50, v51, v13);
      v33 = TSDRoundedPoint();
      v34 = v45;
      v35 = v47;
    }

    v52 = TSDAddPoints(v34, v35, v33);
    v54 = v53;
    if ([(TSDRep *)self parentRep])
    {
      [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
      v52 = v52 - v55;
      v54 = v54 - v56;
    }

    [a3 setPosition:{v52, v54}];
    [a3 setBounds:TSDRectWithSize()];
    v57 = *(MEMORY[0x277CBF2C0] + 16);
    v77 = *MEMORY[0x277CBF2C0];
    v78 = v57;
    v79 = *(MEMORY[0x277CBF2C0] + 32);
    v20 = &v77;
  }

  [a3 setAffineTransform:{v20, v74, v75, v76, v77, v78, v79}];
LABEL_13:
  [a3 frame];
  v59 = v58;
  v61 = v60;
  v62 = [a3 superlayer];
  if (v62)
  {
    v63 = v62;
    do
    {
      [v63 frame];
      v59 = TSDAddPoints(v59, v61, v64);
      v61 = v65;
      v63 = [v63 superlayer];
    }

    while (v63);
  }

  [a3 position];
  v67 = v66;
  v69 = v68;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v71 = TSDRoundedPointForScale(v59, v61, v70);
  v73 = TSDSubtractPoints(v71, v72, v59);
  [a3 setPosition:{TSDAddPoints(v67, v69, v73)}];
}

- (CGImage)newShadowImageWithSize:(CGSize)a3 unflipped:(BOOL)a4 withChildren:(BOOL)a5
{
  v5 = a4;
  height = a3.height;
  width = a3.width;
  v9 = &selRef_drawInContextWithoutEffectsForAlphaOnly_;
  if (!a5)
  {
    v9 = &selRef_drawInContextWithoutEffectsOrChildrenForAlphaOnly_;
  }

  v10 = *v9;
  v11 = [(TSDStyledRep *)self shadow];

  return [(TSDStyledRep *)self newShadowImageWithSize:v11 shadow:v10 drawSelector:v5 unflipped:width, height];
}

- (CGImage)p_newReflectionImageWithSize:(CGSize)a3 applyOpacity:(BOOL)a4 viewScale:(double)a5 withBlock:(id)a6
{
  v8 = a4;
  v10 = TSDCeilSize(a3.width);
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v11 <= 0.0)
  {
    return 0;
  }

  v12 = TSDBitmapContextCreate(11, v10);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  CGContextScaleCTM(v12, a5, a5);
  TSDSetCGContextInfo(v13, [(TSDCanvas *)[(TSDRep *)self canvas] isPrinting], [(TSDCanvas *)[(TSDRep *)self canvas] isDrawingIntoPDF], 0, [(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds], 1.0);
  [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:v13 withTransparencyLayer:0 applyingOpacity:v8 shouldClipGradient:0 withBlock:a6];
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  return Image;
}

- (void)drawGradientWithAlphaOverReflection:(CGContext *)a3 applyingOpacity:(BOOL)a4 reflectionSize:(CGSize)a5
{
  height = a5.height;
  v6 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v10 = 1.0;
  if (v6)
  {
    [(TSDReflection *)[(TSDStyledRep *)self reflection] opacity];
  }

  *v9 = v10;
  [(TSDReflection *)[(TSDStyledRep *)self reflection] fadeAcceleration];
  *(v9 + 1) = v11;
  *range = xmmword_26CA666B0;
  v17 = unk_26CA666C0;
  *domain = xmmword_26CA65130;
  v15 = *byte_287D34AC8;
  v12 = CGFunctionCreate(v9, 1uLL, domain, 2uLL, range, &v15);
  v13 = TSUDeviceGrayColorSpace();
  v20.x = 0.0;
  v20.y = height;
  Axial = CGShadingCreateAxial(v13, *MEMORY[0x277CBF348], v20, v12, 1, 1);
  CGContextSetBlendMode(a3, kCGBlendModeDestinationIn);
  CGContextDrawShading(a3, Axial);
  CGShadingRelease(Axial);
  CGFunctionRelease(v12);
}

- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 shouldClipGradient:(BOOL)a6 withBlock:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = [(TSDStyledRep *)self styledLayout];
  [v13 reflectionFrame];
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(a3);
  if (v10)
  {
    v40.origin.x = TSDRectWithSize();
    CGContextBeginTransparencyLayerWithRect(a3, v40, 0);
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v19 = v18 * TSDCGContextAssociatedScreenScale(a3);
  v20 = TSDAliasRound(v19);
  CGContextTranslateCTM(a3, 0.0, v20 / v19);
  [(TSDAbstractLayout *)[(TSDRep *)self layout] alignmentFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = v22;
  v42.origin.y = v24;
  v42.size.width = v26;
  v42.size.height = v28;
  v30 = CGRectGetMaxY(v42);
  CGContextTranslateCTM(a3, 0.0, MaxY - v30 + MaxY - v30);
  [v13 alignmentFrameInRoot];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, 0.0, v38);
  CGContextScaleCTM(a3, 1.0, -1.0);
  CGContextTranslateCTM(a3, -v32, -v34);
  if (v13)
  {
    [v13 transformInRoot];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  CGContextConcatCTM(a3, &v39);
  TSDCGContextSetIsReflection(a3, 1);
  (*(a7 + 2))(a7, a3);
  TSDCGContextSetIsReflection(a3, 0);
  CGContextRestoreGState(a3);
  if (v8)
  {
    v43.size.width = v36 + 2.0;
    v43.origin.x = -1.0;
    v43.origin.y = 0.0;
    v43.size.height = v38;
    CGContextClipToRect(a3, v43);
  }

  [(TSDStyledRep *)self drawGradientWithAlphaOverReflection:a3 applyingOpacity:v9 reflectionSize:v15, v17, *&v39.a, *&v39.c, *&v39.tx];
  if (v10)
  {
    CGContextEndTransparencyLayer(a3);
  }

  CGContextRestoreGState(a3);
}

- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 drawChildren:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__TSDStyledRep_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_drawChildren___block_invoke;
  v6[3] = &unk_279D494C8;
  v6[4] = self;
  v7 = a6;
  [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:a3 withTransparencyLayer:a4 applyingOpacity:a5 shouldClipGradient:0 withBlock:v6];
}

- (void)drawShadowInContext:(CGContext *)a3 withChildren:(BOOL)a4 withDrawableOpacity:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(TSDStyledRep *)self shadow];
  if (v9)
  {
    v10 = v9;
    if ([(TSDShadow *)v9 isEnabled])
    {
      if ([(TSDStyledRep *)self shouldShowShadow])
      {
        [(TSDShadow *)v10 boundsInNaturalSpaceForRep:self];
        x = v11;
        y = v13;
        width = v15;
        height = v17;
        v19 = [(TSDStyledRep *)self newShadowImageWithSize:0 unflipped:v6 withChildren:v15, v17];
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(a3);
          [(TSDShadow *)v10 opacity];
          v22 = v21;
          if (v5)
          {
            [(TSDStyledRep *)self opacity];
            v22 = v22 * v23;
          }

          if (v22 < 1.0)
          {
            CGContextSetAlpha(a3, v22);
          }

          if ([(TSDShadow *)v10 isDropShadow])
          {
            [(TSDShadow *)v10 offsetDelta];
            v25 = v24;
            v27 = v26;
            v28 = [(TSDStyledRep *)self styledLayout];
            if (v28)
            {
              [v28 transformInRoot];
            }

            else
            {
              memset(&v56, 0, sizeof(v56));
            }

            CGAffineTransformInvert(&transform, &v56);
            v46 = TSDDeltaApplyAffineTransform(&transform, v25, v27);
            v48 = v47;
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = width;
            v58.size.height = height;
            v59 = CGRectOffset(v58, v46, v48);
            x = v59.origin.x;
            y = v59.origin.y;
            width = v59.size.width;
            height = v59.size.height;
          }

          else
          {
            if ([(TSDShadow *)v10 isContactShadow])
            {
              [-[TSDStyledRep styledLayout](self "styledLayout")];
              v30 = v29;
              [-[TSDStyledRep styledLayout](self "styledLayout")];
              v32 = v31;
              v34 = v33;
              v35 = [(TSDRep *)self layout];
              if (v35)
              {
                [(TSDAbstractLayout *)v35 transformInRoot];
              }

              else
              {
                memset(&v56, 0, sizeof(v56));
              }

              CGAffineTransformInvert(&transform, &v56);
              CGContextConcatCTM(a3, &transform);
              CGContextTranslateCTM(a3, v32, v34);
              [(TSDShadow *)v10 offset];
              CGContextTranslateCTM(a3, 0.0, v30 + v49);
              CGContextTranslateCTM(a3, 0.0, v30);
              CGContextScaleCTM(a3, 1.0, -1.0);
              goto LABEL_24;
            }

            if (![(TSDShadow *)v10 isCurvedShadow])
            {
LABEL_24:
              v60.origin.x = x;
              v60.origin.y = y;
              v60.size.width = width;
              v60.size.height = height;
              CGContextDrawImage(a3, v60, v20);
              CGImageRelease(v20);
              CGContextRestoreGState(a3);
              return;
            }

            objc_opt_class();
            v36 = TSUDynamicCast();
            [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] frame];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;
            if ([(TSDAbstractLayout *)[(TSDRep *)self layout] parent])
            {
              v45 = [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
              if (v45)
              {
                [(TSDAbstractLayout *)v45 transformInRoot];
              }

              else
              {
                memset(&transform, 0, sizeof(transform));
              }

              v61.origin.x = v38;
              v61.origin.y = v40;
              v61.size.width = v42;
              v61.size.height = v44;
              v62 = CGRectApplyAffineTransform(v61, &transform);
              v38 = v62.origin.x;
              v40 = v62.origin.y;
            }

            v50 = [(TSDRep *)self layout];
            if (v50)
            {
              [(TSDAbstractLayout *)v50 transformInRoot];
            }

            else
            {
              memset(&v56, 0, sizeof(v56));
            }

            CGAffineTransformInvert(&transform, &v56);
            CGContextConcatCTM(a3, &transform);
            CGContextTranslateCTM(a3, v38, v40);
            [(TSDShadow *)v10 offsetDelta];
            v52 = v51;
            [(TSDShadow *)v10 offsetDelta];
            CGContextTranslateCTM(a3, v52, v53);
            [v36 curve];
            if (v54 > 0.0)
            {
              [v36 offsetFromCurve];
              *&v55 = v55;
              CGContextTranslateCTM(a3, 0.0, *&v55);
            }

            v59.origin.x = x;
            v59.origin.y = y;
            v59.size.width = width;
            v59.size.height = height;
          }

          TSDAffineTransformForFlips(0, 1, &transform, v59.origin.x, v59.origin.y, v59.size.width, v59.size.height);
          CGContextConcatCTM(a3, &transform);
          goto LABEL_24;
        }
      }
    }
  }
}

- (void)drawReflectionInContext:(CGContext *)a3 withTransparencyLayer:(BOOL)a4 applyingOpacity:(BOOL)a5 shouldClipGradient:(BOOL)a6 withBlock:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  if ([(TSDStyledRep *)self reflection]&& [(TSDStyledRep *)self shouldShowReflection])
  {
    v13 = [(TSDStyledRep *)self styledLayout];
    v14 = v13;
    if (v13)
    {
      [v13 transformInRoot];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    CGAffineTransformInvert(&transform, &v31);
    CGContextConcatCTM(a3, &transform);
    [v14 reflectionFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if ([(TSDCanvas *)[(TSDRep *)self canvas] isDrawingIntoPDF])
    {
      v23 = [(TSDStyledRep *)self p_newReflectionImageWithSize:v9 applyOpacity:a7 viewScale:TSDMultiplySizeScalar(v20 withBlock:v22, 4.16666651)];
      if (v23)
      {
        v24 = v23;
        if ([v14 parent])
        {
          [objc_msgSend(objc_msgSend(v14 "parent")];
          v16 = TSDAddPoints(v16, v18, v25);
          v18 = v26;
        }

        v33.origin.x = v16;
        v33.origin.y = v18;
        v33.size.width = v20;
        v33.size.height = v22;
        MinY = CGRectGetMinY(v33);
        v34.origin.x = v16;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = v22;
        MaxY = CGRectGetMaxY(v34);
        CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
        CGContextScaleCTM(a3, 1.0, -1.0);
        v35.origin.x = v16;
        v35.origin.y = v18;
        v35.size.width = v20;
        v35.size.height = v22;
        CGContextDrawImage(a3, v35, v24);
        CGImageRelease(v24);
      }
    }

    else
    {
      CGContextTranslateCTM(a3, v16, v18);
      [objc_msgSend(v14 "parent")];
      CGContextTranslateCTM(a3, v29, v30);
      [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:a3 withTransparencyLayer:v10 applyingOpacity:v9 shouldClipGradient:v8 withBlock:a7];
    }
  }
}

- (void)drawReflectionInContext:(CGContext *)a3 drawChildren:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TSDStyledRep_drawReflectionInContext_drawChildren___block_invoke;
  v4[3] = &unk_279D494C8;
  v4[4] = self;
  v5 = a4;
  [(TSDStyledRep *)self drawReflectionInContext:a3 withTransparencyLayer:1 applyingOpacity:1 shouldClipGradient:0 withBlock:v4];
}

- (void)drawInContext:(CGContext *)a3
{
  if (([-[TSDStyledRep styledLayout](self "styledLayout")] & 1) == 0)
  {
    [(TSDStyledRep *)self drawShadowInContext:a3 withChildren:1 withDrawableOpacity:1];
    [(TSDStyledRep *)self drawInContextWithoutEffects:a3 withContent:1 withStroke:1 withOpacity:1 forAlphaOnly:0 drawChildren:0];
    [(TSDStyledRep *)self opacity];
    v6 = v5;
    if (v5 == 1.0)
    {

      [(TSDStyledRep *)self drawReflectionInContext:a3 drawChildren:1];
    }

    else
    {
      CGContextSaveGState(a3);
      CGContextSetAlpha(a3, v6);
      [(TSDStyledRep *)self drawReflectionInContext:a3 drawChildren:1];

      CGContextRestoreGState(a3);
    }
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8
{
  v8 = [MEMORY[0x277D6C290] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep drawInContextWithoutEffects:withContent:withStroke:withOpacity:forAlphaOnly:drawChildren:]"];
  [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 911, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDStyledRep drawInContextWithoutEffects:withContent:withStroke:withOpacity:forAlphaOnly:drawChildren:]"), 0}]);
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSDStyledRep;
  [(TSDRep *)&v5 processChangedProperty:?];
  if (a3 == 518 || a3 == 520)
  {
    if (self->mIsUpdatingShadow)
    {
      [(TSDStyledRep *)self invalidateShadowLayer];
    }
  }

  else
  {
    if (a3 != 519)
    {
      return;
    }

    [(CALayer *)self->mReflectionLayer setNeedsDisplay];
  }

  [(TSDCanvas *)self->super.mCanvas layoutInvalidated];
}

- (id)additionalLayersUnderLayer
{
  if (!self->mShadowLayer && !self->mReflectionLayer)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  if (self->mShadowLayer && [(TSDStyledRep *)self shouldShowShadow])
  {
    [v3 addObject:self->mShadowLayer];
  }

  if (self->mReflectionLayer && [(TSDStyledRep *)self shouldShowReflection])
  {
    [v3 addObject:self->mReflectionLayer];
  }

  return v3;
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  v3 = [(TSDLayout *)[(TSDRep *)self layout] i_wrapPath];
  if (!v3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep shouldHideSelectionHighlightDueToRectangularPath]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 987, @"invalid nil value for '%s'", "wrapPath"}];
  }

  if ([-[TSDStyledRep styledLayout](self "styledLayout")] && objc_msgSend(objc_msgSend(-[TSDStyledRep styledLayout](self, "styledLayout"), "stroke"), "isFrame") && (objc_msgSend(objc_msgSend(-[TSDStyledRep styledLayout](self, "styledLayout"), "stroke"), "hasMask") & 1) != 0 || -[TSDInteractiveCanvasController usesAlternateDrawableSelectionHighlight](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "usesAlternateDrawableSelectionHighlight"))
  {
    goto LABEL_7;
  }

  if ([v3 isRectangular])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  [(TSDStyledRep *)self pathSourceForSelectionHighlightBehavior];
  v6 = TSUDynamicCast();
  if (!v6)
  {
    return v6;
  }

  v7 = v6;
  if ([v6 type] || (objc_msgSend(v7, "scalar"), v9 = v8, -[TSDCanvas viewScale](-[TSDRep canvas](self, "canvas"), "viewScale"), v9 * v10 >= 10.0))
  {
LABEL_7:
    LOBYTE(v6) = 0;
  }

  else
  {
LABEL_9:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)shouldShowSelectionHighlight
{
  v5.receiver = self;
  v5.super_class = TSDStyledRep;
  v3 = [(TSDRep *)&v5 shouldShowSelectionHighlight];
  if (v3)
  {
    LOBYTE(v3) = ![(TSDStyledRep *)self shouldHideSelectionHighlightDueToRectangularPath];
  }

  return v3;
}

- (id)textureForContext:(id)a3
{
  if (!-[TSDRep texture](self, "texture") || ![a3 isEqual:self->super.mTextureContext] || -[TSDRep temporaryMixingLayout](self, "temporaryMixingLayout"))
  {
    v5 = [a3 isMagicMove];
    v6 = [a3 shouldAddMagicMoveObjectOnly];
    v7 = [a3 shouldNotAddContainedReps];
    v8 = [-[TSDStyledRep styledInfo](self "styledInfo")];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    v10 = v9;
    v11 = objc_alloc_init(TSDTextureSet);
    [(TSDTextureSet *)v11 setIsMagicMove:v5];
    v208 = v10;
    if (![a3 shouldSeparateShadow] || !v8 || v6 & 1 | ((objc_msgSend(v8, "isEnabled") & 1) == 0))
    {
LABEL_27:
      memset(&v225, 0, sizeof(v225));
      v119 = [(TSDRep *)self layout];
      if (v119)
      {
        [(TSDAbstractLayout *)v119 transformInRoot];
      }

      else
      {
        memset(&v225, 0, sizeof(v225));
      }

      mTextureActionAttributes = self->super.mTextureActionAttributes;
      if (mTextureActionAttributes)
      {
        v121 = [(NSDictionary *)mTextureActionAttributes valueForKey:@"sfx-action-rotation-angle"];
        if (v121)
        {
          v122 = v121;
          [(TSDRep *)self centerForRotation];
          v124 = v123;
          v126 = v125;
          v223 = v225;
          CGAffineTransformTranslate(&v224, &v223, v123, v125);
          v225 = v224;
          [v122 floatValue];
          v223 = v225;
          CGAffineTransformRotate(&v224, &v223, v127 * 0.0174532925);
          v225 = v224;
          v223 = v224;
          CGAffineTransformTranslate(&v224, &v223, -v124, -v126);
          v225 = v224;
        }
      }

      if (v5)
      {
        v223 = v225;
        [(TSDRep *)self unRotatedTransform:&v223];
        v225 = v224;
      }

      v128 = v7 ^ 1;
      [(TSDRep *)self naturalBounds];
      v224 = v225;
      v230 = CGRectApplyAffineTransform(v229, &v224);
      v206 = TSDMultiplyRectScalar(v230.origin.x, v230.origin.y, v230.size.width, v230.size.height, v10);
      v224 = v225;
      [(TSDStyledRep *)self p_clipRectInRootForTransform:&v224];
      x = v129;
      y = v131;
      width = v133;
      height = v135;
      if (v5 && [a3 shouldSeparateReflection] && objc_msgSend(a3, "shouldSeparateShadow"))
      {
        [(TSDStyledRep *)self clipRectWithoutEffects];
        v224 = v225;
        v232 = CGRectApplyAffineTransform(v231, &v224);
        x = v232.origin.x;
        y = v232.origin.y;
        width = v232.size.width;
        height = v232.size.height;
      }

      [(TSDStyledRep *)self clipRectWithoutEffects];
      v224 = v225;
      v234 = CGRectApplyAffineTransform(v233, &v224);
      v137 = v234.origin.x;
      v138 = v234.origin.y;
      v139 = v234.size.width;
      v140 = v234.size.height;
      v234.origin.x = x;
      v234.origin.y = y;
      v234.size.width = width;
      v234.size.height = height;
      v244.origin.x = v137;
      v244.origin.y = v138;
      v244.size.width = v139;
      v244.size.height = v140;
      if (!CGRectEqualToRect(v234, v244))
      {
        v141 = TSDCenterOfRect(v137, v138, v139, v140);
        v143 = v142;
        v144 = TSDCenterOfRect(x, y, width, height);
        v146 = TSDMultiplySizeScalar(vabdd_f64(v144, v141), vabdd_f64(v145, v143), 2.0);
        v147 = TSDAddSizes(width, height, v146);
        x = TSDRectWithCenterAndSize(v141, v143, v147);
        y = v148;
        width = v149;
        height = v150;
      }

      v235.origin.x = TSDMultiplyRectScalar(x, y, width, height, v208);
      v236 = CGRectIntegral(v235);
      v237 = CGRectInset(v236, -1.0, -1.0);
      v151 = v237.size.width;
      v152 = v237.size.height;
      v217[0] = MEMORY[0x277D85DD0];
      v217[1] = 3221225472;
      v217[2] = __34__TSDStyledRep_textureForContext___block_invoke_2;
      v217[3] = &unk_279D49518;
      v221 = v5;
      v218 = v237;
      v219 = v208;
      v220 = v225;
      v217[4] = self;
      v217[5] = a3;
      v222 = v7 ^ 1;
      v153 = TSDSubtractPoints(v237.origin.x, v237.origin.y, v206);
      v155 = [[TSDTexturedRectangle alloc] initWithSize:v217 offset:v151 renderBlock:v152, v153, v154];
      [(TSDTexturedRectangle *)v155 setTextureType:5];
      [(TSDTexturedRectangle *)v155 setTextureOpacity:1.0];
      [(TSDStyledRep *)self opacity];
      [(TSDTextureSet *)v11 setTextureOpacity:?];
      [(TSDTextureSet *)v11 addRenderable:v155];

      objc_opt_class();
      [(TSDLayout *)[(TSDRep *)self layout] stroke];
      v156 = TSUDynamicCast();
      if ([a3 shouldSeparateStroke] && v156 && objc_msgSend(v156, "shouldRender"))
      {
        [(TSDStyledRep *)self clipRect];
        if (v5)
        {
          [(TSDRep *)self naturalBounds];
        }

        v224 = v225;
        v238 = CGRectApplyAffineTransform(*&v157, &v224);
        v239.origin.x = TSDMultiplyRectScalar(v238.origin.x, v238.origin.y, v238.size.width, v238.size.height, v208);
        v240 = CGRectIntegral(v239);
        v241 = CGRectInset(v240, -1.0, -1.0);
        v161 = v241.size.width;
        v162 = v241.size.height;
        v211[0] = MEMORY[0x277D85DD0];
        v211[1] = 3221225472;
        v211[2] = __34__TSDStyledRep_textureForContext___block_invoke_3;
        v211[3] = &unk_279D49540;
        v215 = v5;
        v211[4] = self;
        v212 = v241;
        v213 = v208;
        v214 = v225;
        v216 = v128;
        v163 = TSDSubtractPoints(v241.origin.x, v241.origin.y, v206);
        v165 = [[TSDTexturedRectangle alloc] initWithSize:v211 offset:v161 renderBlock:v162, v163, v164];
        [(TSDTexturedRectangle *)v165 setTextureType:8];
        [(TSDTexturedRectangle *)v165 setTextureOpacity:1.0];
        [(TSDTextureSet *)v11 addRenderable:v165];
      }

      if ([a3 shouldSeparateReflection])
      {
        v166 = [(TSDStyledRep *)self reflection];
        if (!((v166 == 0) | v6 & 1))
        {
          v167 = v166;
          [-[TSDStyledRep styledLayout](self "styledLayout")];
          v242.origin.x = TSDMultiplyRectScalar(v168, v169, v170, v171, v208);
          v243 = CGRectIntegral(v242);
          v172 = v243.origin.x;
          v173 = v243.origin.y;
          v204 = v243.size.height;
          v207 = v243.size.width;
          [(TSDRep *)self naturalBounds];
          [(TSDRep *)self convertNaturalRectToUnscaledCanvas:?];
          v175 = v174;
          v177 = v176;
          v179 = v178;
          v181 = v180;
          [(TSDRep *)self naturalBounds];
          v186 = TSDCenterRectOverRect(v182, v183, v184, v185, v175, v177, v179, v181);
          v190 = TSDMultiplyRectScalar(v186, v187, v188, v189, v208);
          v191 = TSDSubtractPoints(v172, v173, v190);
          v209[0] = MEMORY[0x277D85DD0];
          v209[1] = 3221225472;
          v209[2] = __34__TSDStyledRep_textureForContext___block_invoke_4;
          v209[3] = &unk_279D49568;
          *&v209[5] = v172;
          *&v209[6] = v173;
          *&v209[7] = v207;
          *&v209[8] = v204;
          *&v209[9] = v208;
          v209[4] = self;
          v210 = v128;
          v193 = [[TSDTexturedRectangle alloc] initWithSize:v209 offset:v207 renderBlock:v204, v191, v192];
          [(TSDTexturedRectangle *)v193 setTextureType:9];
          [(TSDReflection *)v167 opacity];
          [(TSDTexturedRectangle *)v193 setTextureOpacity:?];
          [(TSDTextureSet *)v11 addRenderable:v193];
        }
      }

      if (([a3 shouldNotCacheTexture] & 1) == 0)
      {
        [(TSDRep *)self setTexture:v11];
        [(TSDRep *)self setTextureContext:a3];
      }

      return v11;
    }

    *&v225.a = 0uLL;
    v12 = [a3 shouldNotAddContainedReps] ^ 1;
    [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
    v17 = TSDMultiplyRectScalar(v13, v14, v15, v16, v10);
    v194 = v18;
    v195 = v17;
    [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsInNaturalSpaceForRep:self];
    v200 = v20;
    v202 = v19;
    v196 = v22;
    v197 = v21;
    v23 = TSDMultiplyRectScalar(v19, v20, v21, v22, v10);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = TSDRectWithSize();
    v32 = v31;
    v34 = v33;
    v205 = v35;
    if ([v8 isCurvedShadow])
    {
      [(TSDRep *)self naturalBounds];
      v40 = TSDMultiplyRectScalar(v36, v37, v38, v39, v10);
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = TSDRectWithSize();
      v51 = TSDCenterRectOverRect(v40, v42, v44, v46, v47, v48, v49, v50);
      v52.n128_f64[0] = v44 / v27;
      v53.n128_f64[0] = v46 / v29;
      v54.n128_f64[0] = v51 / v27;
      v57 = TSDRectWithOriginAndSize(v56, v54, v55 / v29, v52, v53);
      v61 = TSDRectByExpandingBoundingRectToContentRect(v23, v25, v27, v29, v57, v58, v59, v60, 0.2, 0.3, 0.8, 0.7);
      v65 = v64;
      v30 = 0.2;
      v32 = 0.3;
      *&v34 = 0.8;
      v205 = 0.7;
    }

    else
    {
      v63 = v29;
      v65 = v27;
      v62 = v25;
      v61 = v23;
    }

    v199 = v32;
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __34__TSDStyledRep_textureForContext___block_invoke;
    v226[3] = &unk_279D494F0;
    *&v226[6] = v202;
    *&v226[7] = v200;
    *&v226[8] = v197;
    *&v226[9] = v196;
    v227 = v12;
    v226[4] = self;
    v226[5] = v8;
    *&v226[10] = v61;
    *&v226[11] = v62;
    v201 = v65;
    v203 = v63;
    *&v226[12] = v65;
    *&v226[13] = v63;
    *&v226[14] = v23;
    *&v226[15] = v25;
    *&v226[16] = v27;
    *&v226[17] = v29;
    if ([v8 isDropShadow])
    {
      v67 = *&v34;
      [v8 offset];
      v69 = v68;
      [v8 angle];
      TSDOriginRotate(&v225.a, v69, v70 * 0.0174532925);
      v10 = v208;
      v71 = TSDMultiplyPointScalar(v225.a, v225.b, v208);
      v225.a = v71;
      v225.b = v72;
      [v8 radius];
      v74 = v71 - v73 * v208;
      b = v225.b;
      [v8 radius];
      v77 = b - v76 * v208;
      v32 = v199;
    }

    else
    {
      v198 = v30;
      v10 = v208;
      v67 = *&v34;
      if ([v8 isContactShadow])
      {
        [v8 offset];
        TSDMultiplyPointScalar(0.0, v78, v208);
        v79 = TSDRoundedPoint();
        [(TSDRep *)self naturalBounds];
        v81 = v80;
        v83 = v82;
        v85 = v84;
        v87 = v86;
        [(TSDRep *)self naturalBounds];
        [(TSDRep *)self convertNaturalRectToUnscaledCanvas:?];
        v92 = TSDCenterRectOverRect(v81, v83, v85, v87, v88, v89, v90, v91);
        v96 = TSDMultiplyRectScalar(v92, v93, v94, v95, v208);
        v97 = TSDSubtractPoints(v195, v194, v96);
        v74 = TSDAddPoints(v97, v98, v79);
        v77 = v99;
      }

      else
      {
        if ([v8 isCurvedShadow])
        {
          [(TSDRep *)self naturalBounds];
          TSDMultiplyRectScalar(v100, v101, v102, v103, v208);
          v106 = (v201 - v104) * -0.5;
          v107 = (v203 - v105) * -0.5;
          objc_opt_class();
          v108 = TSUDynamicCast();
          [v108 curve];
          if (v109 > 0.0)
          {
            [v108 offsetFromCurve];
            v111 = TSDMultiplyPointScalar(0.0, v110, v208);
            v106 = TSDAddPoints(v106, v107, v111);
            v107 = v112;
          }

          [v8 offsetDelta];
          v115 = TSDMultiplyPointScalar(v113, v114, v208);
          v74 = TSDAddPoints(v106, v107, v115);
          v77 = v116;
          goto LABEL_23;
        }

        v74 = *MEMORY[0x277CBF348];
        v77 = *(MEMORY[0x277CBF348] + 8);
      }

      v30 = v198;
      v32 = v199;
    }

LABEL_23:
    v117 = [[TSDTexturedRectangle alloc] initWithSize:v226 offset:v201 renderBlock:v203, v74, v77];
    if ([v8 isContactShadow])
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    [(TSDTexturedRectangle *)v117 setTextureType:v118];
    [v8 opacity];
    [(TSDTexturedRectangle *)v117 setTextureOpacity:?];
    [(TSDTexturedRectangle *)v117 setContentRect:v30, v32, v67, v205];
    [(TSDTextureSet *)v11 addRenderable:v117];

    goto LABEL_27;
  }

  return [(TSDRep *)self texture];
}

void __34__TSDStyledRep_textureForContext___block_invoke(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v4 = [*(a1 + 32) newShadowImageWithSize:1 unflipped:*(a1 + 144) withChildren:{*(a1 + 64), *(a1 + 72)}];
  if ([*(a1 + 40) isCurvedShadow])
  {
    memset(&v21, 0, sizeof(v21));
    v5 = [*(a1 + 32) layout];
    if (v5)
    {
      [v5 transformInRoot];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v6 = [*(a1 + 32) layout];
    if (v6)
    {
      [v6 transformInRoot];
      v7 = v17;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = -v7;
    v9 = [*(a1 + 32) layout];
    if (v9)
    {
      [v9 transformInRoot];
      v10 = v16;
    }

    else
    {
      v10 = 0.0;
    }

    CGAffineTransformMakeTranslation(&t2, v8, -v10);
    CGAffineTransformConcat(&v20, &t1, &t2);
    CGAffineTransformInvert(&v21, &v20);
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeTranslation(&v20, *(a1 + 96) * 0.5, *(a1 + 104) * 0.5);
    t1 = v20;
    CGContextConcatCTM(c, &t1);
    t1 = v21;
    CGContextConcatCTM(c, &t1);
    t2 = v20;
    CGAffineTransformInvert(&t1, &t2);
    CGContextConcatCTM(c, &t1);
    v11 = *(a1 + 112);
    v12 = *(a1 + 120);
    v13 = TSDCenterRectOverRect(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v11, v12, *(a1 + 128), *(a1 + 136));
    v14 = TSDSubtractPoints(v11, v12, v13);
    CGAffineTransformMakeTranslation(&t1, v14, v15);
    CGContextConcatCTM(c, &t1);
  }

  else if ([*(a1 + 40) isContactShadow])
  {
    CGContextTranslateCTM(c, 0.0, *(a1 + 136));
    CGContextScaleCTM(c, 1.0, -1.0);
  }

  v22.origin.x = TSDRectWithSize();
  CGContextDrawImage(c, v22, v4);
  CGImageRelease(v4);
  CGContextRestoreGState(c);
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_2(uint64_t a1, CGContextRef c)
{
  CGContextSetAllowsFontSmoothing(c, 0);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  if (*(a1 + 136) == 1)
  {
    v4 = [*(a1 + 32) layout];
    if (v4)
    {
      [v4 transformInRoot];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v5 = TSDTransformAngle(&v8.a);
    TSDCGContextUpdateLayoutAngle(c, v5);
  }

  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  CGContextScaleCTM(c, *(a1 + 80), *(a1 + 80));
  v6 = *(a1 + 104);
  *&v8.a = *(a1 + 88);
  *&v8.c = v6;
  *&v8.tx = *(a1 + 120);
  CGContextConcatCTM(c, &v8);
  if (([*(a1 + 40) shouldSeparateShadow] & 1) == 0)
  {
    [*(a1 + 32) drawShadowInContext:c withChildren:*(a1 + 137) withDrawableOpacity:0];
  }

  [*(a1 + 32) drawInContextWithoutEffects:c withContent:1 withStroke:1 withOpacity:0 forAlphaOnly:0 drawChildren:*(a1 + 137)];
  result = [*(a1 + 40) shouldSeparateReflection];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) drawReflectionInContext:c drawChildren:*(a1 + 137)];
  }

  return result;
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_3(uint64_t a1, CGContextRef c)
{
  if (*(a1 + 128) == 1)
  {
    v4 = [*(a1 + 32) layout];
    if (v4)
    {
      [v4 transformInRoot];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v5 = TSDTransformAngle(&v8.a);
    TSDCGContextUpdateLayoutAngle(c, v5);
  }

  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v6 = *(a1 + 96);
  *&v8.a = *(a1 + 80);
  *&v8.c = v6;
  *&v8.tx = *(a1 + 112);
  CGContextConcatCTM(c, &v8);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  return [*(a1 + 32) drawInContextWithoutEffects:c withContent:0 withStroke:1 withOpacity:0 forAlphaOnly:0 drawChildren:*(a1 + 129)];
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_4(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v4 = [*(a1 + 32) layout];
  if (v4)
  {
    [v4 transformInRoot];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(c, &transform);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__TSDStyledRep_textureForContext___block_invoke_5;
  v7[3] = &unk_279D494C8;
  v7[4] = v5;
  v8 = *(a1 + 80);
  return [v5 drawReflectionInContext:c withTransparencyLayer:0 applyingOpacity:0 shouldClipGradient:0 withBlock:v7];
}

@end