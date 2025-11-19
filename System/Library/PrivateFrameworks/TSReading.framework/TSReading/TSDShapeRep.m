@interface TSDShapeRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4;
- (BOOL)canBeUsedForImageMask;
- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)a3;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isInvisible;
- (BOOL)p_beginApplyOpacity:(CGContext *)a3 forDrawingInOneStep:(BOOL)a4;
- (BOOL)p_canApplyFillToLayer;
- (BOOL)p_canApplyStrokeToLayer;
- (BOOL)p_drawsSelfInOneStep;
- (BOOL)p_pathIsAxisAlignedRect;
- (BOOL)shouldExpandHitRegionWhenSmall;
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldShowAdditionalKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldShowSmartShapeKnobs;
- (CGAffineTransform)naturalToEditablePathSpaceTransform;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)targetRectForEditMenu;
- (TSDShapeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4;
- (id)additionalLayersOverLayer;
- (id)editablePathSource;
- (id)imageOfStroke:(CGRect *)a3;
- (id)overlayLayers;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)shapeInfo;
- (id)shapeLayout;
- (unint64_t)enabledKnobMask;
- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4;
- (void)addSelectionKnobsToArray:(id)a3;
- (void)didUpdateLayer:(id)a3;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8;
- (void)invalidateEffectLayersForChildren;
- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5;
- (void)p_beginDynamicallyResizingOrMovingLineEnd;
- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)a3;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6;
- (void)p_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 andStroke:(id)a5 inContext:(CGContext *)a6 useFastDrawing:(BOOL)a7;
- (void)p_endApplyOpacity:(CGContext *)a3 apply:(BOOL)a4;
- (void)p_endDynamicallyResizingOrMovingLineEnd;
- (void)processChangedProperty:(int)a3;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3;
- (void)setShadowOnChildrenDisabled:(BOOL)a3;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)willBeRemoved;
- (void)willUpdateLayer:(id)a3;
@end

@implementation TSDShapeRep

- (TSDShapeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSDShapeRep;
  v4 = [(TSDRep *)&v7 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    if (![(TSDShapeRep *)v4 shapeInfo]|| ![(TSDShapeRep *)v5 shapeLayout])
    {

      v5 = 0;
    }

    [objc_msgSend(-[TSDShapeRep shapeInfo](v5 "shapeInfo")];
  }

  return v5;
}

- (id)shapeInfo
{
  objc_opt_class();
  [(TSDRep *)self info];

  return TSUDynamicCast();
}

- (id)shapeLayout
{
  objc_opt_class();
  [(TSDRep *)self layout];

  return TSUDynamicCast();
}

- (CGRect)frameInUnscaledCanvas
{
  v10.receiver = self;
  v10.super_class = TSDShapeRep;
  [(TSDRep *)&v10 frameInUnscaledCanvas];
  v4 = v3;
  v6 = v5;
  if (!self->mFrameInUnscaledCanvasIsValid)
  {
    v7 = [(TSDShapeRep *)self shapeLayout];
    v8 = v7;
    if (v7)
    {
      [v7 transformInRoot];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    [v8 shapeFrameWithTransform:v9];
    self->mFrameInUnscaledCanvasRelativeToSuper = CGRectOffset(v11, -v4, -v6);
    self->mFrameInUnscaledCanvasIsValid = 1;
  }

  return CGRectOffset(self->mFrameInUnscaledCanvasRelativeToSuper, v4, v6);
}

- (CGRect)layerFrameInScaledCanvas
{
  if ([(TSDShapeRep *)self directlyManagesLayerContent])
  {
    mCanvas = self->super.super.mCanvas;
    [(TSDShapeRep *)self frameInUnscaledCanvas];
    [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v13 = TSDAliasRoundedRectForScale(v5, v7, v9, v11, v12);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TSDShapeRep;
    [(TSDRep *)&v17 layerFrameInScaledCanvas];
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)layerFrameInScaledCanvasRelativeToParent
{
  v15.receiver = self;
  v15.super_class = TSDShapeRep;
  [(TSDRep *)&v15 layerFrameInScaledCanvasRelativeToParent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TSDShapeRep *)self isInvisible]&& TSDRectHasNaNComponents())
  {
    v4 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = TSDShapeRep;
  [(TSDRep *)&v7 layoutInRootChangedFrom:a3 to:a4 translatedOnly:?];
  if (!a5)
  {
    self->mFrameInUnscaledCanvasIsValid = 0;
  }
}

- (BOOL)directlyManagesLayerContent
{
  mDirectlyManagesLayerContent = self->mDirectlyManagesLayerContent;
  if ([(TSDShapeRep *)self isInvisible]|| [(TSDShapeRep *)self p_canApplyStrokeToLayer]&& [(TSDShapeRep *)self p_canApplyFillToLayer])
  {
    v4 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSDShapeRep;
    v4 = [(TSDRep *)&v7 directlyManagesLayerContent];
  }

  self->mDirectlyManagesLayerContent = v4;
  if (mDirectlyManagesLayerContent && (v4 & 1) == 0)
  {
    v5 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];
    [v5 setContents:0];
    [v5 setBackgroundColor:0];
    [v5 setBorderColor:0];
    [v5 setBorderWidth:0.0];
    [v5 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
    v4 = self->mDirectlyManagesLayerContent;
  }

  return v4 & 1;
}

- (CGRect)clipRect
{
  v2.receiver = self;
  v2.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v2 clipRect];
  return CGRectInset(v3, -1.0, -1.0);
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = TSDShapeRep;
  [(TSDRep *)&v3 willBeRemoved];
  [objc_msgSend(-[TSDShapeRep shapeInfo](self "shapeInfo")];
}

- (BOOL)p_beginApplyOpacity:(CGContext *)a3 forDrawingInOneStep:(BOOL)a4
{
  v37 = *MEMORY[0x277D85DE8];
  [(TSDStyledRep *)self opacity];
  if (v7 >= 1.0)
  {
    return 0;
  }

  CGContextSetAlpha(a3, v7);
  if (a4)
  {
    return 0;
  }

  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
  x = TSDRectWithSize();
  y = v10;
  width = v12;
  height = v14;
  v16 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (v16)
  {
    v17 = v16;
    if ([v16 isFrame])
    {
      [v17 coverageRect:{x, y, width, height}];
      x = v18;
      y = v19;
      width = v20;
      height = v21;
    }
  }

  v22 = TSUProtocolCast();
  if (v22)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = [v22 childReps];
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        v27 = 0;
        do
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [objc_msgSend(*(*(&v32 + 1) + 8 * v27) "layout")];
          v41.origin.x = v28;
          v41.origin.y = v29;
          v41.size.width = v30;
          v41.size.height = v31;
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          v39 = CGRectUnion(v38, v41);
          x = v39.origin.x;
          y = v39.origin.y;
          width = v39.size.width;
          height = v39.size.height;
          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v25);
    }
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGContextBeginTransparencyLayerWithRect(a3, v40, 0);
  return 1;
}

- (void)p_endApplyOpacity:(CGContext *)a3 apply:(BOOL)a4
{
  if (a4)
  {
    CGContextEndTransparencyLayer(a3);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)a3 inContext:(CGContext *)a4
{
  objc_opt_class();
  [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v7 = TSUDynamicCast();
  if (v7)
  {

    [v7 addBitmapsToRenderingQualityInfo:a3 forShapeRep:self inContext:a4];
  }
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3
{
  v5 = [(TSDShapeRep *)self p_beginApplyOpacity:a3 forDrawingInOneStep:0];
  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  [(TSDRep *)&v6 recursivelyDrawChildrenInContext:a3];
  [(TSDShapeRep *)self p_endApplyOpacity:a3 apply:v5];
}

- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)a3
{
  v3.receiver = self;
  v3.super_class = TSDShapeRep;
  [(TSDRep *)&v3 recursivelyDrawChildrenInContext:a3];
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  if (![(TSDShapeRep *)self isInvisible]|| !v10 && ([(TSDStyledRep *)self opacity], v15 == 0.0))
  {
    [(TSDShapeRep *)self p_drawInContext:a3 withContent:v12 withStroke:v11 withOpacity:v10];
  }

  if (v8 && (!self->mShadowOnChildrenDisabled || !a7))
  {
    if (v10)
    {

      [(TSDShapeRep *)self recursivelyDrawChildrenInContext:a3];
    }

    else
    {

      [(TSDShapeRep *)self p_drawChildrenWithoutOpacityInContext:a3];
    }
  }
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v11 = [(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds];
  if (v11 != TSDCGContextHasBackgroundsSuppressed(a3))
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeRep p_drawInContext:withContent:withStroke:withOpacity:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeRep.m"), 436, @"Canvas and CGContext disagree about whether we are suppressing backgrounds"}];
  }

  v14 = [(TSDShapeRep *)self shapeInfo];
  v15 = [(TSDShapeRep *)self shapeLayout];
  v16 = [objc_msgSend(v15 "path")];
  if ((v8 || v7) && v16)
  {
    CGContextSaveGState(a3);
    v46 = v6 && [(TSDShapeRep *)self p_beginApplyOpacity:a3 forDrawingInOneStep:[(TSDShapeRep *)self p_drawsSelfInOneStep]];
    [v15 pathBounds];
    v18 = v17;
    v20 = v19;
    CGContextTranslateCTM(a3, -v17, -v19);
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v22 = v21 * TSDCGContextAssociatedScreenScale(a3);
    v50 = *MEMORY[0x277CBF348];
    v51 = v50;
    v23 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    if ([v23 shouldRender])
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v48 = 0;
    v49 = 0;
    [v15 aliasPathForScale:&v49 adjustedStroke:&v48 adjustedPath:&v51 startDelta:&v50 endDelta:{v22, v24}];
    if ([v15 pathIsOpen])
    {
      if ([v14 headLineEnd])
      {
        v25 = 1;
      }

      else
      {
        v25 = [v14 tailLineEnd] != 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 0;
    if (v7 && v49)
    {
      if ([v49 shouldRender] && objc_msgSend(v49, "isFrame"))
      {
        v27 = [TSDFrameRep alloc];
        v26 = [(TSDFrameRep *)v27 initWithTSDFrame:v49];
      }

      else
      {
        v26 = 0;
      }
    }

    if (v8)
    {
      if (v26 && [v49 hasMask])
      {
        CGContextSaveGState(a3);
        v28 = v49;
        [v15 pathBoundsWithoutStroke];
        [v28 coverageRect:?];
        [(TSDFrameRep *)v26 applyMaskForRectWithCoverage:a3 toContext:?];
        [(TSDFrameRep *)v26 blendMaskBeforeRenderingImageInContext:a3];
        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      v30 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
      if (v30)
      {
        v31 = v30;
        if ((([v30 isClear] | v11) & 1) == 0)
        {
          [(TSDRep *)self boundsForStandardKnobs];
          v53 = CGRectOffset(v52, v18, v20);
          [v31 paintPath:objc_msgSend(v48 naturalBounds:"CGPath") inContext:a3 isPDF:{-[TSDCanvas isDrawingIntoPDF](-[TSDRep canvas](self, "canvas"), "isDrawingIntoPDF"), v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
        }
      }

      if (v29)
      {
        CGContextRestoreGState(a3);
      }
    }

    if (v7 && v49 && [v49 shouldRender])
    {
      if (v26)
      {
        [v15 pathBoundsWithoutStroke];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        CGContextGetCTM(&v47, a3);
        [(TSDFrameRep *)v26 frameRect:a3 inContext:v33 withTotalScale:v35, v37, v39, TSDTransformScale(&v47.a)];
      }

      else
      {
        if (v25 && ([objc_msgSend(v49 "color")], v40 < 1.0))
        {
          CGContextSaveGState(a3);
          [objc_msgSend(v49 "color")];
          CGContextSetAlpha(a3, v41);
          CGContextBeginTransparencyLayer(a3, 0);
          v42 = v49;
          if (v49 == v45)
          {
            v42 = [v49 mutableCopy];
            v49 = v42;
          }

          v43 = [objc_msgSend(v42 "color")];
          [v49 setColor:v43];
          v44 = 1;
        }

        else
        {
          v44 = 0;
        }

        [v49 paintPath:objc_msgSend(v48 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:a3 parameterized:0 shouldReverseDrawOrder:{0, 0}];
        if (v25)
        {
          CGContextSetStrokeColorWithColor(a3, [objc_msgSend(v49 "color")]);
          CGContextSetFillColorWithColor(a3, [objc_msgSend(v49 "color")]);
          [(TSDShapeRep *)self p_drawLineEndForHead:1 withDelta:v49 andStroke:a3 inContext:0 useFastDrawing:v50];
          [(TSDShapeRep *)self p_drawLineEndForHead:0 withDelta:v49 andStroke:a3 inContext:0 useFastDrawing:v51];
        }

        if (v44)
        {
          CGContextEndTransparencyLayer(a3);
          CGContextRestoreGState(a3);
        }
      }
    }

    if (v6)
    {
      [(TSDShapeRep *)self p_endApplyOpacity:a3 apply:v46];
    }

    CGContextRestoreGState(a3);
  }
}

- (id)imageOfStroke:(CGRect *)a3
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (v9 && [v9 shouldRender])
  {
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v5 = v10;
    v6 = v11;
    v7 = v12;
    v8 = v13;
    v14 = TSDBitmapContextCreate(11, v12);
    [(TSDShapeRep *)self p_drawInContext:v14 withContent:0 withStroke:1 withOpacity:0];
    Image = CGBitmapContextCreateImage(v14);
    v16 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
    CGContextRelease(v14);
    CGImageRelease(Image);
  }

  else
  {
    v16 = 0;
  }

  a3->origin.x = v5;
  a3->origin.y = v6;
  a3->size.width = v7;
  a3->size.height = v8;
  return v16;
}

- (void)willUpdateLayer:(id)a3
{
  v5 = [(TSDShapeRep *)self shapeInfo];
  v6 = [v5 shadow];
  v7 = [-[TSDShapeRep shapeInfo](self "shapeInfo")];
  v8 = [v7 isOpaque];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 |= [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v7 "imageData")];
  }

  if (v7 && (v8 & 1) != 0 && (([v5 opacity], v9 == 1.0) || fabs(v9 + -1.0) < 0.000000999999997) && (objc_msgSend(objc_msgSend(v5, "stroke"), "isFrame") & 1) == 0 && (objc_msgSend(objc_msgSend(v5, "geometry"), "angle"), v10 == 0.0))
  {
    if (v6 && [v6 isEnabled])
    {
      v11 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
      if (v11)
      {
        v12 = v11;
        [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
        v14 = v13;
        memset(&v39, 0, sizeof(v39));
        v15 = [v5 geometry];
        [objc_msgSend(v5 "geometry")];
        v17 = v16;
        [objc_msgSend(v5 "geometry")];
        if (v15)
        {
          [v15 transformBasedOnRect:{0.0, 0.0, v17, v18}];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        v37 = v39;
        memset(&v38, 0, sizeof(v38));
        CGAffineTransformScale(&v38, &v37, v14, v14);
        v22 = [objc_msgSend(v12 "interiorWrapPath")];
        v37 = v38;
        [v22 transformUsingAffineTransform:&v37];
        v23 = [v5 stroke];
        if (![v23 shouldRender])
        {
          v23 = 0;
        }

        v26 = 0.0;
        if (v23)
        {
          if (([v23 isFrame] & 1) == 0)
          {
            [v23 width];
            v24 = v14 * v27;
            v26 = 1.0;
            if (v24 > 1.0)
            {
              TSURound();
              v26 = v24;
            }
          }
        }

        *&v24 = v14;
        *&v25 = v26;
        v28 = [v22 aliasedPathWithViewScale:v24 effectiveStrokeWidth:v25];
        if (v26 > 0.0)
        {
          v29 = v26 * 0.5;
          v28 = [v28 bezierPathByOffsettingPath:objc_msgSend(v23 joinStyle:"join") withThreshold:{v29, 1.0}];
          CGAffineTransformMakeTranslation(&v37, v29, v29);
          [v28 transformUsingAffineTransform:&v37];
        }

        [a3 setShadowPath:{objc_msgSend(v28, "CGPath")}];

        [v6 opacity];
        *&v30 = v30;
        [a3 setShadowOpacity:v30];
        [v6 radius];
        [a3 setShadowRadius:v14 * v31 * 0.5];
        [a3 setShadowColor:{objc_msgSend(v6, "color")}];
        [v6 angle];
        v33 = v32;
        [objc_msgSend(v5 "geometry")];
        v35 = v33 - v34;
        *&v37.a = 0uLL;
        [v6 offset];
        TSDOriginRotate(&v37.a, v14 * v36, v35 * 0.0174532925);
        [a3 setShadowOffset:*&v37.a];
      }
    }

    else
    {
      [a3 setShadowOpacity:0.0];

      [a3 setShadowPath:0];
    }
  }

  else if (v6 && [v6 isEnabled])
  {
    if (!self->super.mShadowLayer)
    {
      v19 = objc_alloc_init(TSDTilingLayer);
      self->super.mShadowLayer = &v19->super;
      [(TSDTilingLayer *)v19 setDelegate:self];
      [(CALayer *)self->super.mShadowLayer setNeedsDisplay];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mShadowLayer = self->super.mShadowLayer;

        [(CALayer *)mShadowLayer setTilingMode:1];
      }
    }
  }

  else
  {
    v21 = self->super.mShadowLayer;
    if (v21)
    {
      [(CALayer *)v21 setDelegate:0];

      self->super.mShadowLayer = 0;
    }
  }
}

- (void)didUpdateLayer:(id)a3
{
  v16.receiver = self;
  v16.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v16 didUpdateLayer:?];
  [(TSDStyledRep *)self opacity];
  v6 = v5;
  [a3 opacity];
  v8 = v7;
  if (v6 != v8)
  {
    *&v8 = v6;
    [a3 setOpacity:v8];
  }

  if ([(TSDShapeRep *)self isInvisible])
  {
    [a3 setContents:0];
  }

  else if (!-[TSDShapeRep directlyManagesLayerContent](self, "directlyManagesLayerContent") && ([a3 tilingSafeHasContents] & 1) == 0)
  {
    [a3 setNeedsDisplay];
  }

  if ([(TSDShapeRep *)self directlyManagesLayerContent])
  {
    [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
    v10 = v9;
    if ([(TSDShapeRep *)self p_canApplyFillToLayer])
    {
      if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
      {
        [objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
      }

      else
      {
        [a3 setContents:0];
        [a3 setBackgroundColor:0];
      }
    }

    if ([(TSDShapeRep *)self p_canApplyStrokeToLayer])
    {
      if ([(TSDLayout *)[(TSDRep *)self layout] stroke])
      {
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        v15 = 0;
        [-[TSDShapeRep shapeLayout](self shapeLayout];
        [v15 applyToRepRenderable:+[TSDRenderable renderableFromLayer:](TSDRenderable withScale:{"renderableFromLayer:", a3), v10}];
      }

      else
      {
        [a3 setBorderColor:0];
        [a3 setBorderWidth:0.0];
      }
    }
  }
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSDShapeRep *)self shapeLayout];
  v7 = [v6 pathIsOpen];
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v9 = 40.0 / v8;
  [(TSDRep *)self naturalBounds];
  if (v7)
  {
    *&v10 = CGRectInset(*&v10, -v9, -v9);
  }

  v27.x = x;
  v27.y = y;
  if (CGRectContainsPoint(*&v10, v27))
  {
    v14 = [(TSDShapeRep *)self shapeInfo];
    v15 = [objc_msgSend(v6 "path")];
    if (v15)
    {
      v16 = TSDBitmapContextCreate(2, 1.0);
      Data = CGBitmapContextGetData(v16);
      [v6 pathBounds];
      CGContextTranslateCTM(v16, -v18, -v19);
      CGContextTranslateCTM(v16, -x, -y);
      if (([v6 pathIsLineSegment] & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")];
        if (*Data)
        {
          LOBYTE(v15) = 1;
LABEL_25:
          CGContextRelease(v16);
          return v15;
        }
      }

      v20 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
      if ([(TSDStroke *)v20 drawsOutsideStrokeBounds])
      {
        v21 = 0;
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v21 = objc_alloc_init(TSDMutableStroke);
        [(TSDMutableStroke *)v20 width];
        [(TSDMutableStroke *)v21 setWidth:?];
        v20 = v21;
        if (!v7)
        {
LABEL_11:
          v22 = 0;
          if (!v20)
          {
            goto LABEL_23;
          }

          goto LABEL_17;
        }
      }

      v20 = [(TSDMutableStroke *)v20 mutableCopy];
      [(TSDMutableStroke *)v20 width];
      if (v23 < v9)
      {
        [(TSDMutableStroke *)v20 setWidth:v9];
      }

      [(TSDMutableStroke *)v20 setPattern:+[TSDStrokePattern solidPattern]];
      -[TSDMutableStroke setColor:](v20, "setColor:", [MEMORY[0x277D6C2A8] blackColor]);
      [(TSDMutableStroke *)v20 setCap:1];
      v22 = v20;
      if (!v20)
      {
        goto LABEL_23;
      }

LABEL_17:
      if ([(TSDStroke *)v20 shouldRender])
      {
        [(TSDStroke *)v20 paintPath:v15 wantsInteriorStroke:0 inContext:v16 useFastDrawing:1 parameterized:0 shouldReverseDrawOrder:0];
        LOBYTE(v15) = *Data != 0;
        if (*Data || ((v7 ^ 1) & 1) != 0)
        {
          goto LABEL_24;
        }

        if ([v14 headLineEnd] || objc_msgSend(v14, "tailLineEnd"))
        {
          CGContextSetStrokeColorWithColor(v16, [(TSUColor *)[(TSDMutableStroke *)v20 color] CGColor]);
          v24 = *MEMORY[0x277CBF348];
          v25 = *(MEMORY[0x277CBF348] + 8);
          [(TSDShapeRep *)self p_drawLineEndForHead:1 withDelta:v20 andStroke:v16 inContext:1 useFastDrawing:*MEMORY[0x277CBF348], v25];
          [(TSDShapeRep *)self p_drawLineEndForHead:0 withDelta:v20 andStroke:v16 inContext:1 useFastDrawing:v24, v25];
          LOBYTE(v15) = *Data != 0;
LABEL_24:

          goto LABEL_25;
        }
      }

LABEL_23:
      LOBYTE(v15) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)shouldExpandHitRegionWhenSmall
{
  v2 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (v2)
  {
    return [v2 shouldRender] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if (v8)
  {
    [v8 width];
    v10 = v9 * 0.5;
  }

  else
  {
    v10 = 1.0;
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  if (6.0 / v11 > v10)
  {
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v10 = 6.0 / v12;
  }

  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
  v18.origin.x = TSDRectWithSize();
  v19 = CGRectInset(v18, -v10, -v10);
  v17.x = x;
  v17.y = y;
  if (!CGRectContainsPoint(v19, v17))
  {
    return 3.40282347e38;
  }

  [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v14 = TSDAddPoints(x, y, v13);
  [objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if (a4)
  {
    if (result < v10)
    {
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v9 = [(TSDRep *)self layout];
  if (v9)
  {
    [(TSDAbstractLayout *)v9 transformInRoot];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v8 transformUsingAffineTransform:v12];
  v10 = [v8 intersectsRect:1 hasFill:{x, y, width, height}];

  return v10;
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v5 processChangedProperty:?];
  if ((a3 - 516) <= 0xA && ((1 << (a3 - 4)) & 0x4D3) != 0)
  {
    [(TSDStyledRep *)self setNeedsDisplay];
    if ((a3 - 517) <= 9 && ((1 << (a3 - 5)) & 0x261) != 0)
    {
      [(TSDRep *)self invalidateKnobPositions];
      self->mFrameInUnscaledCanvasIsValid = 0;
      if (a3 == 526)
      {
        [(TSDRep *)self invalidateKnobs];
      }
    }
  }
}

- (CGRect)targetRectForEditMenu
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v8 = v7;
    v10 = v9;
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v12 = v11;
    v14 = v13;
    if (![(TSDShapeRep *)self i_editMenuOverlapsEndKnobs])
    {
      v15 = TSDMixPoints(v8, v10, v12, v14, 0.5);
      v3 = TSDRectWithCenterAndSize(v15, v16, 1.0);
      v4 = v17;
      v5 = v18;
      v6 = v19;
    }
  }

  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)shouldShowSelectionHighlight
{
  if (![-[TSDShapeRep shapeLayout](self "shapeLayout")] || (v3 = -[TSDInteractiveCanvasController usesAlternateDrawableSelectionHighlight](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "usesAlternateDrawableSelectionHighlight")))
  {
    v5.receiver = self;
    v5.super_class = TSDShapeRep;
    LOBYTE(v3) = [(TSDStyledRep *)&v5 shouldShowSelectionHighlight];
  }

  return v3;
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  v3 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if (v3)
  {
    if ([(TSDShapeRep *)self isInvisible])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5.receiver = self;
      v5.super_class = TSDShapeRep;
      LOBYTE(v3) = [(TSDStyledRep *)&v5 shouldHideSelectionHighlightDueToRectangularPath];
    }
  }

  return v3;
}

- (id)pathSourceForSelectionHighlightBehavior
{
  v2 = [(TSDShapeRep *)self shapeLayout];

  return [v2 pathSource];
}

- (BOOL)canBeUsedForImageMask
{
  [objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v4 = v3;
  v6 = v5;
  v7 = [objc_msgSend(-[TSDRep info](self "info")];
  if (v7)
  {
    v7 = [objc_msgSend(-[TSDRep info](self "info")];
    if (v7)
    {
      if ([(TSDRep *)self isPlaceholder])
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v8 = (v6 > 0.0) & ~[objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
        if (v4 > 0.0)
        {
          LOBYTE(v7) = v8;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }
  }

  return v7;
}

- (unint64_t)enabledKnobMask
{
  if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    return 3072;
  }

  if (![-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDShapeRep;
  return [(TSDRep *)&v4 enabledKnobMask];
}

- (void)addSelectionKnobsToArray:(id)a3
{
  v5 = [(TSDShapeRep *)self shouldShowSmartShapeKnobs];
  v6 = [(TSDShapeRep *)self shapeLayout];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 numberOfControlKnobs];
    if (v8)
    {
      v9 = v8;
      v10 = 12;
      do
      {
        v11 = [TSDKnob alloc];
        [v7 getControlKnobPosition:v10];
        v12 = [TSDKnob initWithType:v11 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:v10 onRep:self];
        [a3 addObject:v12];

        ++v10;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    objc_opt_class();
    [v7 pathSource];
    if (TSUDynamicCast())
    {
      v13 = [TSDKnob alloc];
      [v7 getControlKnobPosition:12];
      v14 = [TSDKnob initWithType:v13 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:12 onRep:self];
      [a3 addObject:v14];
    }
  }

  v15 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v16 = MEMORY[0x277CBF348];
  if (v15)
  {
    v17 = [(TSDShapeRep *)self enabledKnobMask];
    v18 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] defaultKnobTypeForRep:self];
    v19 = *v16;
    v20 = v16[1];
    for (i = 10; i != 12; ++i)
    {
      if ((TSDMaskForKnob(i) & v17) != 0)
      {
        v22 = [[TSDKnob alloc] initWithType:v18 position:i radius:self tag:v19 onRep:v20, 15.0];
        [a3 addObject:v22];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = TSDShapeRep;
  [(TSDRep *)&v30 addSelectionKnobsToArray:a3];
  if ([(TSDShapeRep *)self shouldShowAdvancedGradientKnobs])
  {
    objc_opt_class();
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v23 = TSUDynamicCast();
    v24 = [TSDKnob alloc];
    if ([v23 gradientType] == 1)
    {
      v25 = 25;
    }

    else
    {
      v25 = 24;
    }

    v26 = *v16;
    v27 = v16[1];
    v28 = [(TSDKnob *)v24 initWithType:0 position:v25 radius:self tag:*v16 onRep:v27, 15.0];
    [a3 addObject:v28];

    v29 = [[TSDKnob alloc] initWithType:0 position:26 radius:self tag:v26 onRep:v27, 15.0];
    [a3 addObject:v29];
  }
}

- (BOOL)shouldShowAdditionalKnobs
{
  [(TSDRep *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v9 = TSDMultiplySizeScalar(v4, v6, v7) < 60.0 || v8 < 60.0;
  if (v9 || [(TSDRep *)self isPlaceholder]|| ([(TSDShapeRep *)self enabledKnobMask]& 0x200) == 0 && ([(TSDShapeRep *)self enabledKnobMask]& 0x80) == 0)
  {
    return 0;
  }

  else
  {
    return ![(TSDRep *)self isLocked];
  }
}

- (BOOL)shouldShowSmartShapeKnobs
{
  v3 = [(TSDShapeRep *)self shouldShowAdditionalKnobs];
  if (v3)
  {
    LOBYTE(v3) = [-[TSDShapeRep shapeLayout](self "shapeLayout")] != 0;
  }

  return v3;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  if ([a3 tag] >= 0xC && objc_msgSend(a3, "tag") < 0x11)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  return [(TSDRep *)&v6 canUseSpecializedHitRegionForKnob:a3];
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  if ([a3 tag] == 22)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  return [(TSDRep *)&v6 directlyManagesVisibilityOfKnob:a3];
}

- (void)updatePositionsOfKnobs:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = TSDShapeRep;
  [(TSDRep *)&v72 updatePositionsOfKnobs:?];
  v5 = [(TSDShapeRep *)self shapeLayout];
  if ([v5 pathIsLineSegment])
  {
    [v5 pathBounds];
    v7 = v6;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v69;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v69 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v68 + 1) + 8 * i);
          v13 = [v12 tag];
          v14 = [v12 tag];
          if (v13 == 11 || v14 == 10)
          {
            if (v13 == 11)
            {
              [v5 headPoint];
            }

            else
            {
              [v5 tailPoint];
            }

            [v12 setPosition:{TSDSubtractPoints(v16, v17, v7)}];
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v9);
    }
  }

  if (-[TSDShapeRep shouldShowSmartShapeKnobs](self, "shouldShowSmartShapeKnobs") || (objc_opt_class(), [v5 pathSource], TSUDynamicCast()))
  {
    [(TSDRep *)self trackingBoundsForStandardKnobs];
    v19 = v18;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v20 = [a3 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v65;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v65 != v22)
          {
            objc_enumerationMutation(a3);
          }

          v24 = *(*(&v64 + 1) + 8 * j);
          if ([v24 tag] >= 0xC && objc_msgSend(v24, "tag") <= 0x10)
          {
            [v5 getControlKnobPosition:{objc_msgSend(v24, "tag")}];
            [v24 setPosition:{TSDAddPoints(v25, v26, v19)}];
          }
        }

        v21 = [a3 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v21);
    }
  }

  if ([(TSDShapeRep *)self shouldShowAdvancedGradientKnobs])
  {
    objc_opt_class();
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v27 = TSUDynamicCast();
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [v27 startPointForPath:objc_msgSend(-[TSDShapeRep shapeLayout](self andBounds:{"shapeLayout"), "path"), v28, v30, v32, v34}];
    v37 = v36;
    v39 = v38;
    [v27 endPointForPath:objc_msgSend(-[TSDShapeRep shapeLayout](self andBounds:{"shapeLayout"), "path"), v29, v31, v33, v35}];
    v41 = v40;
    v43 = v42;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = [a3 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = TSDAddPoints(v41, v43, v29);
      v48 = v47;
      v49 = TSDAddPoints(v37, v39, v29);
      v51 = v50;
      v52 = *v61;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v61 != v52)
          {
            objc_enumerationMutation(a3);
          }

          v54 = *(*(&v60 + 1) + 8 * k);
          v55 = [v54 tag];
          v56 = v49;
          v57 = v51;
          if (v55 != 24)
          {
            v58 = [v54 tag];
            v56 = v49;
            v57 = v51;
            if (v58 != 25)
            {
              v59 = [v54 tag];
              v56 = v46;
              v57 = v48;
              if (v59 != 26)
              {
                continue;
              }
            }
          }

          [v54 setPosition:{v56, v57}];
        }

        v45 = [a3 countByEnumeratingWithState:&v60 objects:v73 count:{16, v56, v57}];
      }

      while (v45);
    }
  }
}

- (id)additionalLayersOverLayer
{
  v3.receiver = self;
  v3.super_class = TSDShapeRep;
  return [-[TSDRep additionalLayersOverLayer](&v3 additionalLayersOverLayer)];
}

- (id)overlayLayers
{
  v36.receiver = self;
  v36.super_class = TSDShapeRep;
  v3 = [-[TSDRep overlayLayers](&v36 overlayLayers)];
  if ([(TSDRep *)self isSelectedIgnoringLocking]&& [(TSDShapeRep *)self shouldShowAdvancedGradientKnobs])
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [v4 setFillColor:0];
    [v4 setStrokeColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "colorWithWhite:alpha:", 0.8, 0.66), "CGColor")}];
    [v4 setLineWidth:1.0];
    objc_opt_class();
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v5 = TSUDynamicCast();
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 startPointForPath:objc_msgSend(-[TSDShapeRep shapeLayout](self andBounds:{"shapeLayout"), "path"), v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    [v5 endPointForPath:objc_msgSend(-[TSDShapeRep shapeLayout](self andBounds:{"shapeLayout"), "path"), v7, v9, v11, v13}];
    v19 = v18;
    v21 = v20;
    v22 = TSDAddPoints(v15, v17, v7);
    v24 = v23;
    v25 = TSDAddPoints(v19, v21, v7);
    v27 = v26;
    memset(&m, 0, sizeof(m));
    v28 = [(TSDRep *)self layout];
    if (v28)
    {
      [(TSDAbstractLayout *)v28 transformInRoot];
    }

    else
    {
      memset(&m, 0, sizeof(m));
    }

    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
    CGAffineTransformMakeScale(&t2, v29, v29);
    v32 = m;
    CGAffineTransformConcat(&v34, &v32, &t2);
    m = v34;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, &m, v22, v24);
    CGPathAddLineToPoint(Mutable, &m, v25, v27);
    [v4 setPath:Mutable];
    [v3 insertObject:v4 atIndex:0];

    CGPathRelease(Mutable);
  }

  return v3;
}

- (void)setShadowOnChildrenDisabled:(BOOL)a3
{
  if (self->mShadowOnChildrenDisabled != a3)
  {
    self->mShadowOnChildrenDisabled = a3;
    [(TSDStyledRep *)self invalidateShadowLayer];
  }
}

- (void)invalidateEffectLayersForChildren
{
  if (!self->mShadowOnChildrenDisabled && ([objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")] & 1) == 0)
  {
    [(TSDStyledRep *)self invalidateShadowLayer];
  }

  v3 = [(TSDStyledRep *)self reflectionLayer];

  [(CALayer *)v3 setNeedsDisplay];
}

- (BOOL)isInvisible
{
  v3 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  v4 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    return 1;
  }

  [(TSDStyledRep *)self opacity];
  if (v5 == 0.0)
  {
    return 1;
  }

  if (v3 && ([v3 shouldRender] & 1) != 0)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  return [v4 isClear];
}

- (id)editablePathSource
{
  v2 = [(TSDShapeRep *)self shapeLayout];

  return [v2 editablePathSource];
}

- (CGAffineTransform)naturalToEditablePathSpaceTransform
{
  [(TSDRep *)self boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v9 = [-[TSDShapeRep shapeInfo](self "shapeInfo")];
  if (v9)
  {
    [v9 pathFlipTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  CGAffineTransformMakeTranslation(&t2, v6, v8);
  v10 = *&retstr->c;
  *&v13.a = *&retstr->a;
  *&v13.c = v10;
  *&v13.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v15, &v13, &t2);
  v12 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v12;
  *&retstr->tx = *&v15.tx;
  return result;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4
{
  v6 = [objc_msgSend(a3 "shapeInfo")];
  result = 0.0;
  if (v6 != 1)
  {
    if (v6 == 5)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (TSDMixingTypeWithPossiblyNilObjects([objc_msgSend(a3 shapeInfo], objc_msgSend(objc_msgSend(a4, "shapeInfo"), "pathSource")) != 1)
    {
      v8 = v8 + 3.0;
    }

    v9 = [objc_msgSend(objc_msgSend(a3 "shapeInfo")];
    v10 = v8 + 1.0;
    if (!v9)
    {
      v10 = v8;
    }

    return v10 / 5.0;
  }

  return result;
}

- (void)p_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 andStroke:(id)a5 inContext:(CGContext *)a6 useFastDrawing:(BOOL)a7
{
  v7 = a7;
  x = a4.x;
  v11 = a3;
  v12 = [(TSDShapeRep *)self shapeLayout];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 strokeHeadLineEnd];
    if (!v14)
    {
      return;
    }

    v15 = v14;
    [v13 headLineEndPoint];
    v17 = v16;
    v19 = v18;
    [v13 headLineEndAngle];
  }

  else
  {
    v21 = [v12 strokeTailLineEnd];
    if (!v21)
    {
      return;
    }

    v15 = v21;
    [v13 tailLineEndPoint];
    v17 = v22;
    v19 = v23;
    [v13 tailLineEndAngle];
  }

  v24 = v20;
  v25 = TSDAddPoints(v17, v19, x);
  v27 = v26;
  [v13 lineEndScale];

  [a5 paintLineEnd:v15 atPoint:a6 atAngle:v7 withScale:v25 inContext:v27 useFastDrawing:{v24, v28}];
}

- (void)p_beginDynamicallyResizingOrMovingLineEnd
{
  if ([-[TSDLayout stroke](-[TSDRep layout](self "layout")])
  {

    [(TSDStyledRep *)self setNeedsDisplay];
  }
}

- (void)p_endDynamicallyResizingOrMovingLineEnd
{
  if ([-[TSDLayout stroke](-[TSDRep layout](self "layout")])
  {

    [(TSDStyledRep *)self setNeedsDisplay];
  }
}

- (BOOL)p_pathIsAxisAlignedRect
{
  v3 = [(TSDShapeRep *)self shapeInfo];
  v4 = [(TSDShapeRep *)self shapeLayout];
  if ([v4 pathIsOpen])
  {
    if ([v3 headLineEnd])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v3 tailLineEnd] == 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = [v4 path];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (![(TSDRep *)self isInDynamicOperation])
  {
    if (v4)
    {
      [v4 transformInRoot];
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_13:
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_12:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  [v4 originalTransformInRoot];
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_14:
  v7 = [v6 isRectangular];
  if (v7)
  {
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    LOBYTE(v7) = TSDIsTransformAxisAlignedUnflipped(v9);
  }

  return v7;
}

- (BOOL)p_canApplyStrokeToLayer
{
  v3 = [(TSDShapeRep *)self p_pathIsAxisAlignedRect];
  if (v3)
  {
    v4 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
    {
      [(TSDStyledRep *)self opacity];
      v6 = v5 == 1.0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 1;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    if ([v4 shouldRender])
    {
      LOBYTE(v3) = [v4 canApplyDirectlyToRepRenderable] & v6;
      return v3;
    }

LABEL_8:
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)p_canApplyFillToLayer
{
  v3 = [(TSDShapeRep *)self p_pathIsAxisAlignedRect];
  if (v3)
  {
    v4 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    if (v4 && (v5 = v4, ([v4 isClear] & 1) == 0))
    {

      LOBYTE(v3) = [v5 canApplyToCALayer];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)p_drawsSelfInOneStep
{
  v3 = [(TSDShapeRep *)self shapeInfo];
  v4 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isClear];
  }

  else
  {
    v6 = 1;
  }

  v7 = [v3 stroke];
  if (![v7 shouldRender])
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    if ([v3 headLineEnd])
    {
      return 0;
    }

    v9 = [v3 tailLineEnd] == 0;
  }

  else
  {
    v9 = 1;
  }

  if ((v8 & v9) != 1)
  {
    return 0;
  }

  if (v6)
  {
    if (!v7)
    {
      return 1;
    }

    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  return [v10 drawsInOneStep];
}

- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)a3
{
  v3 = a3;
  v4 = [(TSDShapeRep *)self p_drawsSelfInOneStep];
  if (v4 && v3)
  {
    v5 = TSUProtocolCast();
    if (v5)
    {
      LOBYTE(v4) = [objc_msgSend(v5 "childReps")] == 0;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)shouldShowShadow
{
  v5.receiver = self;
  v5.super_class = TSDShapeRep;
  v3 = [(TSDStyledRep *)&v5 shouldShowShadow];
  if (v3)
  {
    if ([(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(TSDShapeRep *)self shadowOnChildrenDisabled];
    }
  }

  return v3;
}

- (BOOL)i_editMenuOverlapsEndKnobs
{
  v3 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if (v3)
  {
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v5 = v4;
    v7 = v6;
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    v10 = TSDMixPoints(v5, v7, v8, v9, 0.5);
    v12 = v11;
    v13 = [(TSDRep *)self canvas];
    v14 = [(TSDRep *)self canvas];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:v10, v12];
    [(TSDCanvas *)v14 convertUnscaledToBoundsPoint:?];
    [(TSDCanvas *)v13 i_approximateScaledFrameOfEditingMenuAtPoint:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(TSDRep *)self canvas];
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)v23 convertUnscaledToBoundsPoint:?];
    v25 = v24;
    v27 = v26;
    v28 = [(TSDRep *)self canvas];
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)v28 convertUnscaledToBoundsPoint:?];
    v30 = v29;
    v32 = v31;
    v42.origin.x = v16;
    v42.origin.y = v18;
    v42.size.width = v20;
    v42.size.height = v22;
    v41.x = v25;
    v41.y = v27;
    if (CGRectContainsPoint(v42, v41))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v33 = v16;
      v34 = v18;
      v35 = v20;
      v36 = v22;
      v37 = v30;
      v38 = v32;

      LOBYTE(v3) = CGRectContainsPoint(*&v33, *&v37);
    }
  }

  return v3;
}

@end