@interface TSDShapeRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject;
- (BOOL)canBeUsedForImageMask;
- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)intersectsUnscaledRect:(CGRect)rect;
- (BOOL)isInvisible;
- (BOOL)p_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step;
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
- (TSDShapeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit;
- (id)additionalLayersOverLayer;
- (id)editablePathSource;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)overlayLayers;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)shapeInfo;
- (id)shapeLayout;
- (unint64_t)enabledKnobMask;
- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context;
- (void)addSelectionKnobsToArray:(id)array;
- (void)didUpdateLayer:(id)layer;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children;
- (void)invalidateEffectLayersForChildren;
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)p_beginDynamicallyResizingOrMovingLineEnd;
- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity;
- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)p_endApplyOpacity:(CGContext *)opacity apply:(BOOL)apply;
- (void)p_endDynamicallyResizingOrMovingLineEnd;
- (void)processChangedProperty:(int)property;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context;
- (void)setShadowOnChildrenDisabled:(BOOL)disabled;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)willBeRemoved;
- (void)willUpdateLayer:(id)layer;
@end

@implementation TSDShapeRep

- (TSDShapeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = TSDShapeRep;
  v4 = [(TSDRep *)&v7 initWithLayout:layout canvas:canvas];
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
    shapeLayout = [(TSDShapeRep *)self shapeLayout];
    v8 = shapeLayout;
    if (shapeLayout)
    {
      [shapeLayout transformInRoot];
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

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  v7.receiver = self;
  v7.super_class = TSDShapeRep;
  [(TSDRep *)&v7 layoutInRootChangedFrom:from to:to translatedOnly:?];
  if (!only)
  {
    self->mFrameInUnscaledCanvasIsValid = 0;
  }
}

- (BOOL)directlyManagesLayerContent
{
  mDirectlyManagesLayerContent = self->mDirectlyManagesLayerContent;
  if ([(TSDShapeRep *)self isInvisible]|| [(TSDShapeRep *)self p_canApplyStrokeToLayer]&& [(TSDShapeRep *)self p_canApplyFillToLayer])
  {
    directlyManagesLayerContent = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSDShapeRep;
    directlyManagesLayerContent = [(TSDRep *)&v7 directlyManagesLayerContent];
  }

  self->mDirectlyManagesLayerContent = directlyManagesLayerContent;
  if (mDirectlyManagesLayerContent && (directlyManagesLayerContent & 1) == 0)
  {
    v5 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];
    [v5 setContents:0];
    [v5 setBackgroundColor:0];
    [v5 setBorderColor:0];
    [v5 setBorderWidth:0.0];
    [v5 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
    directlyManagesLayerContent = self->mDirectlyManagesLayerContent;
  }

  return directlyManagesLayerContent & 1;
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

- (BOOL)p_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step
{
  v37 = *MEMORY[0x277D85DE8];
  [(TSDStyledRep *)self opacity];
  if (v7 >= 1.0)
  {
    return 0;
  }

  CGContextSetAlpha(opacity, v7);
  if (step)
  {
    return 0;
  }

  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
  x = TSDRectWithSize();
  y = v10;
  width = v12;
  height = v14;
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (stroke)
  {
    v17 = stroke;
    if ([stroke isFrame])
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
    childReps = [v22 childReps];
    v24 = [childReps countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(childReps);
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
        v25 = [childReps countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v25);
    }
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGContextBeginTransparencyLayerWithRect(opacity, v40, 0);
  return 1;
}

- (void)p_endApplyOpacity:(CGContext *)opacity apply:(BOOL)apply
{
  if (apply)
  {
    CGContextEndTransparencyLayer(opacity);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context
{
  objc_opt_class();
  [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v7 = TSUDynamicCast();
  if (v7)
  {

    [v7 addBitmapsToRenderingQualityInfo:info forShapeRep:self inContext:context];
  }
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context
{
  v5 = [(TSDShapeRep *)self p_beginApplyOpacity:context forDrawingInOneStep:0];
  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  [(TSDRep *)&v6 recursivelyDrawChildrenInContext:context];
  [(TSDShapeRep *)self p_endApplyOpacity:context apply:v5];
}

- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context
{
  v3.receiver = self;
  v3.super_class = TSDShapeRep;
  [(TSDRep *)&v3 recursivelyDrawChildrenInContext:context];
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children
{
  childrenCopy = children;
  opacityCopy = opacity;
  strokeCopy = stroke;
  contentCopy = content;
  if (![(TSDShapeRep *)self isInvisible]|| !opacityCopy && ([(TSDStyledRep *)self opacity], v15 == 0.0))
  {
    [(TSDShapeRep *)self p_drawInContext:effects withContent:contentCopy withStroke:strokeCopy withOpacity:opacityCopy];
  }

  if (childrenCopy && (!self->mShadowOnChildrenDisabled || !only))
  {
    if (opacityCopy)
    {

      [(TSDShapeRep *)self recursivelyDrawChildrenInContext:effects];
    }

    else
    {

      [(TSDShapeRep *)self p_drawChildrenWithoutOpacityInContext:effects];
    }
  }
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  strokeCopy = stroke;
  contentCopy = content;
  shouldSuppressBackgrounds = [(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds];
  if (shouldSuppressBackgrounds != TSDCGContextHasBackgroundsSuppressed(context))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeRep p_drawInContext:withContent:withStroke:withOpacity:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeRep.m"), 436, @"Canvas and CGContext disagree about whether we are suppressing backgrounds"}];
  }

  shapeInfo = [(TSDShapeRep *)self shapeInfo];
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  v16 = [objc_msgSend(shapeLayout "path")];
  if ((contentCopy || strokeCopy) && v16)
  {
    CGContextSaveGState(context);
    v46 = opacityCopy && [(TSDShapeRep *)self p_beginApplyOpacity:context forDrawingInOneStep:[(TSDShapeRep *)self p_drawsSelfInOneStep]];
    [shapeLayout pathBounds];
    v18 = v17;
    v20 = v19;
    CGContextTranslateCTM(context, -v17, -v19);
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v22 = v21 * TSDCGContextAssociatedScreenScale(context);
    v50 = *MEMORY[0x277CBF348];
    v51 = v50;
    stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    if ([stroke shouldRender])
    {
      v24 = stroke;
    }

    else
    {
      v24 = 0;
    }

    v48 = 0;
    v49 = 0;
    [shapeLayout aliasPathForScale:&v49 adjustedStroke:&v48 adjustedPath:&v51 startDelta:&v50 endDelta:{v22, v24}];
    if ([shapeLayout pathIsOpen])
    {
      if ([shapeInfo headLineEnd])
      {
        v25 = 1;
      }

      else
      {
        v25 = [shapeInfo tailLineEnd] != 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 0;
    if (strokeCopy && v49)
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

    if (contentCopy)
    {
      if (v26 && [v49 hasMask])
      {
        CGContextSaveGState(context);
        v28 = v49;
        [shapeLayout pathBoundsWithoutStroke];
        [v28 coverageRect:?];
        [(TSDFrameRep *)v26 applyMaskForRectWithCoverage:context toContext:?];
        [(TSDFrameRep *)v26 blendMaskBeforeRenderingImageInContext:context];
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
        if ((([v30 isClear] | shouldSuppressBackgrounds) & 1) == 0)
        {
          [(TSDRep *)self boundsForStandardKnobs];
          v53 = CGRectOffset(v52, v18, v20);
          [v31 paintPath:objc_msgSend(v48 naturalBounds:"CGPath") inContext:context isPDF:{-[TSDCanvas isDrawingIntoPDF](-[TSDRep canvas](self, "canvas"), "isDrawingIntoPDF"), v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
        }
      }

      if (v29)
      {
        CGContextRestoreGState(context);
      }
    }

    if (strokeCopy && v49 && [v49 shouldRender])
    {
      if (v26)
      {
        [shapeLayout pathBoundsWithoutStroke];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        CGContextGetCTM(&v47, context);
        [(TSDFrameRep *)v26 frameRect:context inContext:v33 withTotalScale:v35, v37, v39, TSDTransformScale(&v47.a)];
      }

      else
      {
        if (v25 && ([objc_msgSend(v49 "color")], v40 < 1.0))
        {
          CGContextSaveGState(context);
          [objc_msgSend(v49 "color")];
          CGContextSetAlpha(context, v41);
          CGContextBeginTransparencyLayer(context, 0);
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

        [v49 paintPath:objc_msgSend(v48 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:context parameterized:0 shouldReverseDrawOrder:{0, 0}];
        if (v25)
        {
          CGContextSetStrokeColorWithColor(context, [objc_msgSend(v49 "color")]);
          CGContextSetFillColorWithColor(context, [objc_msgSend(v49 "color")]);
          [(TSDShapeRep *)self p_drawLineEndForHead:1 withDelta:v49 andStroke:context inContext:0 useFastDrawing:v50];
          [(TSDShapeRep *)self p_drawLineEndForHead:0 withDelta:v49 andStroke:context inContext:0 useFastDrawing:v51];
        }

        if (v44)
        {
          CGContextEndTransparencyLayer(context);
          CGContextRestoreGState(context);
        }
      }
    }

    if (opacityCopy)
    {
      [(TSDShapeRep *)self p_endApplyOpacity:context apply:v46];
    }

    CGContextRestoreGState(context);
  }
}

- (id)imageOfStroke:(CGRect *)stroke
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (stroke && [stroke shouldRender])
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

  stroke->origin.x = v5;
  stroke->origin.y = v6;
  stroke->size.width = v7;
  stroke->size.height = v8;
  return v16;
}

- (void)willUpdateLayer:(id)layer
{
  shapeInfo = [(TSDShapeRep *)self shapeInfo];
  shadow = [shapeInfo shadow];
  v7 = [-[TSDShapeRep shapeInfo](self "shapeInfo")];
  isOpaque = [v7 isOpaque];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isOpaque |= [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v7 "imageData")];
  }

  if (v7 && (isOpaque & 1) != 0 && (([shapeInfo opacity], v9 == 1.0) || fabs(v9 + -1.0) < 0.000000999999997) && (objc_msgSend(objc_msgSend(shapeInfo, "stroke"), "isFrame") & 1) == 0 && (objc_msgSend(objc_msgSend(shapeInfo, "geometry"), "angle"), v10 == 0.0))
  {
    if (shadow && [shadow isEnabled])
    {
      v11 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
      if (v11)
      {
        v12 = v11;
        [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
        v14 = v13;
        memset(&v39, 0, sizeof(v39));
        geometry = [shapeInfo geometry];
        [objc_msgSend(shapeInfo "geometry")];
        v17 = v16;
        [objc_msgSend(shapeInfo "geometry")];
        if (geometry)
        {
          [geometry transformBasedOnRect:{0.0, 0.0, v17, v18}];
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
        stroke = [shapeInfo stroke];
        if (![stroke shouldRender])
        {
          stroke = 0;
        }

        v26 = 0.0;
        if (stroke)
        {
          if (([stroke isFrame] & 1) == 0)
          {
            [stroke width];
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
          v28 = [v28 bezierPathByOffsettingPath:objc_msgSend(stroke joinStyle:"join") withThreshold:{v29, 1.0}];
          CGAffineTransformMakeTranslation(&v37, v29, v29);
          [v28 transformUsingAffineTransform:&v37];
        }

        [layer setShadowPath:{objc_msgSend(v28, "CGPath")}];

        [shadow opacity];
        *&v30 = v30;
        [layer setShadowOpacity:v30];
        [shadow radius];
        [layer setShadowRadius:v14 * v31 * 0.5];
        [layer setShadowColor:{objc_msgSend(shadow, "color")}];
        [shadow angle];
        v33 = v32;
        [objc_msgSend(shapeInfo "geometry")];
        v35 = v33 - v34;
        *&v37.a = 0uLL;
        [shadow offset];
        TSDOriginRotate(&v37.a, v14 * v36, v35 * 0.0174532925);
        [layer setShadowOffset:*&v37.a];
      }
    }

    else
    {
      [layer setShadowOpacity:0.0];

      [layer setShadowPath:0];
    }
  }

  else if (shadow && [shadow isEnabled])
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

- (void)didUpdateLayer:(id)layer
{
  v16.receiver = self;
  v16.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v16 didUpdateLayer:?];
  [(TSDStyledRep *)self opacity];
  v6 = v5;
  [layer opacity];
  v8 = v7;
  if (v6 != v8)
  {
    *&v8 = v6;
    [layer setOpacity:v8];
  }

  if ([(TSDShapeRep *)self isInvisible])
  {
    [layer setContents:0];
  }

  else if (!-[TSDShapeRep directlyManagesLayerContent](self, "directlyManagesLayerContent") && ([layer tilingSafeHasContents] & 1) == 0)
  {
    [layer setNeedsDisplay];
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
        [layer setContents:0];
        [layer setBackgroundColor:0];
      }
    }

    if ([(TSDShapeRep *)self p_canApplyStrokeToLayer])
    {
      if ([(TSDLayout *)[(TSDRep *)self layout] stroke])
      {
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        v15 = 0;
        [-[TSDShapeRep shapeLayout](self shapeLayout];
        [v15 applyToRepRenderable:+[TSDRenderable renderableFromLayer:](TSDRenderable withScale:{"renderableFromLayer:", layer), v10}];
      }

      else
      {
        [layer setBorderColor:0];
        [layer setBorderWidth:0.0];
      }
    }
  }
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  pathIsOpen = [shapeLayout pathIsOpen];
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v9 = 40.0 / v8;
  [(TSDRep *)self naturalBounds];
  if (pathIsOpen)
  {
    *&v10 = CGRectInset(*&v10, -v9, -v9);
  }

  v27.x = x;
  v27.y = y;
  if (CGRectContainsPoint(*&v10, v27))
  {
    shapeInfo = [(TSDShapeRep *)self shapeInfo];
    v15 = [objc_msgSend(shapeLayout "path")];
    if (v15)
    {
      v16 = TSDBitmapContextCreate(2, 1.0);
      Data = CGBitmapContextGetData(v16);
      [shapeLayout pathBounds];
      CGContextTranslateCTM(v16, -v18, -v19);
      CGContextTranslateCTM(v16, -x, -y);
      if (([shapeLayout pathIsLineSegment] & 1) == 0)
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

      stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
      if ([(TSDStroke *)stroke drawsOutsideStrokeBounds])
      {
        v21 = 0;
        if (!pathIsOpen)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v21 = objc_alloc_init(TSDMutableStroke);
        [(TSDMutableStroke *)stroke width];
        [(TSDMutableStroke *)v21 setWidth:?];
        stroke = v21;
        if (!pathIsOpen)
        {
LABEL_11:
          v22 = 0;
          if (!stroke)
          {
            goto LABEL_23;
          }

          goto LABEL_17;
        }
      }

      stroke = [(TSDMutableStroke *)stroke mutableCopy];
      [(TSDMutableStroke *)stroke width];
      if (v23 < v9)
      {
        [(TSDMutableStroke *)stroke setWidth:v9];
      }

      [(TSDMutableStroke *)stroke setPattern:+[TSDStrokePattern solidPattern]];
      -[TSDMutableStroke setColor:](stroke, "setColor:", [MEMORY[0x277D6C2A8] blackColor]);
      [(TSDMutableStroke *)stroke setCap:1];
      v22 = stroke;
      if (!stroke)
      {
        goto LABEL_23;
      }

LABEL_17:
      if ([(TSDStroke *)stroke shouldRender])
      {
        [(TSDStroke *)stroke paintPath:v15 wantsInteriorStroke:0 inContext:v16 useFastDrawing:1 parameterized:0 shouldReverseDrawOrder:0];
        LOBYTE(v15) = *Data != 0;
        if (*Data || ((pathIsOpen ^ 1) & 1) != 0)
        {
          goto LABEL_24;
        }

        if ([shapeInfo headLineEnd] || objc_msgSend(shapeInfo, "tailLineEnd"))
        {
          CGContextSetStrokeColorWithColor(v16, [(TSUColor *)[(TSDMutableStroke *)stroke color] CGColor]);
          v24 = *MEMORY[0x277CBF348];
          v25 = *(MEMORY[0x277CBF348] + 8);
          [(TSDShapeRep *)self p_drawLineEndForHead:1 withDelta:stroke andStroke:v16 inContext:1 useFastDrawing:*MEMORY[0x277CBF348], v25];
          [(TSDShapeRep *)self p_drawLineEndForHead:0 withDelta:stroke andStroke:v16 inContext:1 useFastDrawing:v24, v25];
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
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (stroke)
  {
    return [stroke shouldRender] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit
{
  y = point.y;
  x = point.x;
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
  if (hit)
  {
    if (result < v10)
    {
      *hit = 1;
    }
  }

  return result;
}

- (BOOL)intersectsUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")];
  layout = [(TSDRep *)self layout];
  if (layout)
  {
    [(TSDAbstractLayout *)layout transformInRoot];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v8 transformUsingAffineTransform:v12];
  v10 = [v8 intersectsRect:1 hasFill:{x, y, width, height}];

  return v10;
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v5 processChangedProperty:?];
  if ((property - 516) <= 0xA && ((1 << (property - 4)) & 0x4D3) != 0)
  {
    [(TSDStyledRep *)self setNeedsDisplay];
    if ((property - 517) <= 9 && ((1 << (property - 5)) & 0x261) != 0)
    {
      [(TSDRep *)self invalidateKnobPositions];
      self->mFrameInUnscaledCanvasIsValid = 0;
      if (property == 526)
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
  shapeLayout = [(TSDShapeRep *)self shapeLayout];

  return [shapeLayout pathSource];
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

- (void)addSelectionKnobsToArray:(id)array
{
  shouldShowSmartShapeKnobs = [(TSDShapeRep *)self shouldShowSmartShapeKnobs];
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  v7 = shapeLayout;
  if (shouldShowSmartShapeKnobs)
  {
    numberOfControlKnobs = [shapeLayout numberOfControlKnobs];
    if (numberOfControlKnobs)
    {
      v9 = numberOfControlKnobs;
      v10 = 12;
      do
      {
        v11 = [TSDKnob alloc];
        [v7 getControlKnobPosition:v10];
        v12 = [TSDKnob initWithType:v11 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:v10 onRep:self];
        [array addObject:v12];

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
      [array addObject:v14];
    }
  }

  v15 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v16 = MEMORY[0x277CBF348];
  if (v15)
  {
    enabledKnobMask = [(TSDShapeRep *)self enabledKnobMask];
    v18 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] defaultKnobTypeForRep:self];
    v19 = *v16;
    v20 = v16[1];
    for (i = 10; i != 12; ++i)
    {
      if ((TSDMaskForKnob(i) & enabledKnobMask) != 0)
      {
        v22 = [[TSDKnob alloc] initWithType:v18 position:i radius:self tag:v19 onRep:v20, 15.0];
        [array addObject:v22];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = TSDShapeRep;
  [(TSDRep *)&v30 addSelectionKnobsToArray:array];
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
    [array addObject:v28];

    v29 = [[TSDKnob alloc] initWithType:0 position:26 radius:self tag:v26 onRep:v27, 15.0];
    [array addObject:v29];
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
  shouldShowAdditionalKnobs = [(TSDShapeRep *)self shouldShowAdditionalKnobs];
  if (shouldShowAdditionalKnobs)
  {
    LOBYTE(shouldShowAdditionalKnobs) = [-[TSDShapeRep shapeLayout](self "shapeLayout")] != 0;
  }

  return shouldShowAdditionalKnobs;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  if ([knob tag] >= 0xC && objc_msgSend(knob, "tag") < 0x11)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  return [(TSDRep *)&v6 canUseSpecializedHitRegionForKnob:knob];
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  if ([knob tag] == 22)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TSDShapeRep;
  return [(TSDRep *)&v6 directlyManagesVisibilityOfKnob:knob];
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  v76 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = TSDShapeRep;
  [(TSDRep *)&v72 updatePositionsOfKnobs:?];
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  if ([shapeLayout pathIsLineSegment])
  {
    [shapeLayout pathBounds];
    v7 = v6;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v8 = [knobs countByEnumeratingWithState:&v68 objects:v75 count:16];
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
            objc_enumerationMutation(knobs);
          }

          v12 = *(*(&v68 + 1) + 8 * i);
          v13 = [v12 tag];
          v14 = [v12 tag];
          if (v13 == 11 || v14 == 10)
          {
            if (v13 == 11)
            {
              [shapeLayout headPoint];
            }

            else
            {
              [shapeLayout tailPoint];
            }

            [v12 setPosition:{TSDSubtractPoints(v16, v17, v7)}];
          }
        }

        v9 = [knobs countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v9);
    }
  }

  if (-[TSDShapeRep shouldShowSmartShapeKnobs](self, "shouldShowSmartShapeKnobs") || (objc_opt_class(), [shapeLayout pathSource], TSUDynamicCast()))
  {
    [(TSDRep *)self trackingBoundsForStandardKnobs];
    v19 = v18;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v20 = [knobs countByEnumeratingWithState:&v64 objects:v74 count:16];
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
            objc_enumerationMutation(knobs);
          }

          v24 = *(*(&v64 + 1) + 8 * j);
          if ([v24 tag] >= 0xC && objc_msgSend(v24, "tag") <= 0x10)
          {
            [shapeLayout getControlKnobPosition:{objc_msgSend(v24, "tag")}];
            [v24 setPosition:{TSDAddPoints(v25, v26, v19)}];
          }
        }

        v21 = [knobs countByEnumeratingWithState:&v64 objects:v74 count:16];
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
    v44 = [knobs countByEnumeratingWithState:&v60 objects:v73 count:16];
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
            objc_enumerationMutation(knobs);
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

        v45 = [knobs countByEnumeratingWithState:&v60 objects:v73 count:{16, v56, v57}];
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
    layout = [(TSDRep *)self layout];
    if (layout)
    {
      [(TSDAbstractLayout *)layout transformInRoot];
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

- (void)setShadowOnChildrenDisabled:(BOOL)disabled
{
  if (self->mShadowOnChildrenDisabled != disabled)
  {
    self->mShadowOnChildrenDisabled = disabled;
    [(TSDStyledRep *)self invalidateShadowLayer];
  }
}

- (void)invalidateEffectLayersForChildren
{
  if (!self->mShadowOnChildrenDisabled && ([objc_msgSend(-[TSDShapeRep shapeLayout](self "shapeLayout")] & 1) == 0)
  {
    [(TSDStyledRep *)self invalidateShadowLayer];
  }

  reflectionLayer = [(TSDStyledRep *)self reflectionLayer];

  [(CALayer *)reflectionLayer setNeedsDisplay];
}

- (BOOL)isInvisible
{
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
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

  if (stroke && ([stroke shouldRender] & 1) != 0)
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
  shapeLayout = [(TSDShapeRep *)self shapeLayout];

  return [shapeLayout editablePathSource];
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

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject
{
  v6 = [objc_msgSend(object "shapeInfo")];
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

    if (TSDMixingTypeWithPossiblyNilObjects([objc_msgSend(object shapeInfo], objc_msgSend(objc_msgSend(incomingObject, "shapeInfo"), "pathSource")) != 1)
    {
      v8 = v8 + 3.0;
    }

    v9 = [objc_msgSend(objc_msgSend(object "shapeInfo")];
    v10 = v8 + 1.0;
    if (!v9)
    {
      v10 = v8;
    }

    return v10 / 5.0;
  }

  return result;
}

- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  x = delta.x;
  headCopy = head;
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  v13 = shapeLayout;
  if (headCopy)
  {
    strokeHeadLineEnd = [shapeLayout strokeHeadLineEnd];
    if (!strokeHeadLineEnd)
    {
      return;
    }

    v15 = strokeHeadLineEnd;
    [v13 headLineEndPoint];
    v17 = v16;
    v19 = v18;
    [v13 headLineEndAngle];
  }

  else
  {
    strokeTailLineEnd = [shapeLayout strokeTailLineEnd];
    if (!strokeTailLineEnd)
    {
      return;
    }

    v15 = strokeTailLineEnd;
    [v13 tailLineEndPoint];
    v17 = v22;
    v19 = v23;
    [v13 tailLineEndAngle];
  }

  v24 = v20;
  v25 = TSDAddPoints(v17, v19, x);
  v27 = v26;
  [v13 lineEndScale];

  [stroke paintLineEnd:v15 atPoint:context atAngle:drawingCopy withScale:v25 inContext:v27 useFastDrawing:{v24, v28}];
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
  shapeInfo = [(TSDShapeRep *)self shapeInfo];
  shapeLayout = [(TSDShapeRep *)self shapeLayout];
  if ([shapeLayout pathIsOpen])
  {
    if ([shapeInfo headLineEnd])
    {
      v5 = 0;
    }

    else
    {
      v5 = [shapeInfo tailLineEnd] == 0;
    }
  }

  else
  {
    v5 = 1;
  }

  path = [shapeLayout path];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (![(TSDRep *)self isInDynamicOperation])
  {
    if (shapeLayout)
    {
      [shapeLayout transformInRoot];
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
    LOBYTE(isRectangular) = 0;
    return isRectangular;
  }

  if (!shapeLayout)
  {
    goto LABEL_13;
  }

  [shapeLayout originalTransformInRoot];
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_14:
  isRectangular = [path isRectangular];
  if (isRectangular)
  {
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    LOBYTE(isRectangular) = TSDIsTransformAxisAlignedUnflipped(v9);
  }

  return isRectangular;
}

- (BOOL)p_canApplyStrokeToLayer
{
  p_pathIsAxisAlignedRect = [(TSDShapeRep *)self p_pathIsAxisAlignedRect];
  if (p_pathIsAxisAlignedRect)
  {
    stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
    {
      [(TSDStyledRep *)self opacity];
      v6 = v5 == 1.0;
      if (!stroke)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 1;
      if (!stroke)
      {
        goto LABEL_8;
      }
    }

    if ([stroke shouldRender])
    {
      LOBYTE(p_pathIsAxisAlignedRect) = [stroke canApplyDirectlyToRepRenderable] & v6;
      return p_pathIsAxisAlignedRect;
    }

LABEL_8:
    LOBYTE(p_pathIsAxisAlignedRect) = 1;
  }

  return p_pathIsAxisAlignedRect;
}

- (BOOL)p_canApplyFillToLayer
{
  p_pathIsAxisAlignedRect = [(TSDShapeRep *)self p_pathIsAxisAlignedRect];
  if (p_pathIsAxisAlignedRect)
  {
    v4 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    if (v4 && (v5 = v4, ([v4 isClear] & 1) == 0))
    {

      LOBYTE(p_pathIsAxisAlignedRect) = [v5 canApplyToCALayer];
    }

    else
    {
      LOBYTE(p_pathIsAxisAlignedRect) = 1;
    }
  }

  return p_pathIsAxisAlignedRect;
}

- (BOOL)p_drawsSelfInOneStep
{
  shapeInfo = [(TSDShapeRep *)self shapeInfo];
  v4 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  v5 = v4;
  if (v4)
  {
    isClear = [v4 isClear];
  }

  else
  {
    isClear = 1;
  }

  stroke = [shapeInfo stroke];
  if (![stroke shouldRender])
  {
    stroke = 0;
  }

  if (stroke)
  {
    v8 = isClear;
  }

  else
  {
    v8 = 1;
  }

  if ([-[TSDShapeRep shapeLayout](self "shapeLayout")])
  {
    if ([shapeInfo headLineEnd])
    {
      return 0;
    }

    v9 = [shapeInfo tailLineEnd] == 0;
  }

  else
  {
    v9 = 1;
  }

  if ((v8 & v9) != 1)
  {
    return 0;
  }

  if (isClear)
  {
    if (!stroke)
    {
      return 1;
    }

    v10 = stroke;
  }

  else
  {
    v10 = v5;
  }

  return [v10 drawsInOneStep];
}

- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children
{
  childrenCopy = children;
  p_drawsSelfInOneStep = [(TSDShapeRep *)self p_drawsSelfInOneStep];
  if (p_drawsSelfInOneStep && childrenCopy)
  {
    v5 = TSUProtocolCast();
    if (v5)
    {
      LOBYTE(p_drawsSelfInOneStep) = [objc_msgSend(v5 "childReps")] == 0;
    }

    else
    {
      LOBYTE(p_drawsSelfInOneStep) = 1;
    }
  }

  return p_drawsSelfInOneStep;
}

- (BOOL)shouldShowShadow
{
  v5.receiver = self;
  v5.super_class = TSDShapeRep;
  shouldShowShadow = [(TSDStyledRep *)&v5 shouldShowShadow];
  if (shouldShowShadow)
  {
    if ([(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds])
    {
      LOBYTE(shouldShowShadow) = 0;
    }

    else
    {
      LOBYTE(shouldShowShadow) = ![(TSDShapeRep *)self shadowOnChildrenDisabled];
    }
  }

  return shouldShowShadow;
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
    canvas = [(TSDRep *)self canvas];
    canvas2 = [(TSDRep *)self canvas];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:v10, v12];
    [(TSDCanvas *)canvas2 convertUnscaledToBoundsPoint:?];
    [(TSDCanvas *)canvas i_approximateScaledFrameOfEditingMenuAtPoint:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    canvas3 = [(TSDRep *)self canvas];
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)canvas3 convertUnscaledToBoundsPoint:?];
    v25 = v24;
    v27 = v26;
    canvas4 = [(TSDRep *)self canvas];
    [-[TSDShapeRep shapeLayout](self "shapeLayout")];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)canvas4 convertUnscaledToBoundsPoint:?];
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