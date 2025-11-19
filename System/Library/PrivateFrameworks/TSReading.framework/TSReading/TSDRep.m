@interface TSDRep
- (BOOL)canClipThemeContentToCanvas;
- (BOOL)canDrawTilingLayerInBackground:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isDrawingInFlippedContext;
- (BOOL)isLocked;
- (BOOL)isSelected;
- (BOOL)isSelectedIgnoringLocking;
- (BOOL)isVisibleOnCanvas;
- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3;
- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)a3 returningToken:(id *)a4 andQueue:(id *)a5;
- (BOOL)shouldCreateCommentKnob;
- (BOOL)shouldCreateLockedKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldDisplayHyperlinkUI;
- (BOOL)shouldLayoutTilingLayer:(id)a3;
- (BOOL)shouldShowCommentHighlight;
- (BOOL)shouldShowSelectionHighlight;
- (CGAffineTransform)layerTransform;
- (CGAffineTransform)layerTransformInRootForZeroAnchor;
- (CGAffineTransform)parentLayerInverseTransformInRootForZeroAnchor;
- (CGAffineTransform)transformForHighlightLayer;
- (CGAffineTransform)transformToConvertNaturalFromLayerRelative;
- (CGAffineTransform)transformToConvertNaturalToLayerRelative;
- (CGAffineTransform)unRotatedTransform:(SEL)a3;
- (CGColor)selectionHighlightColor;
- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)a3;
- (CGPoint)centerForRotation;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)a3;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)a3;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertUnscaledPointFromLayerRelative:(CGPoint)a3;
- (CGPoint)convertUnscaledPointToLayerRelative:(CGPoint)a3;
- (CGPoint)i_dragOffset;
- (CGPoint)layerOffsetForDragging;
- (CGPoint)p_positionOfActionGhostKnobForBounds:(CGRect)a3;
- (CGPoint)positionOfActionGhostKnob;
- (CGPoint)positionOfHyperlinkKnob;
- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4;
- (CGPoint)unscaledGuidePosition;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)a3;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3;
- (CGRect)convertNaturalRectToLayerRelative:(CGRect)a3;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3;
- (CGRect)frameInScreenSpace;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging;
- (CGRect)i_originalLayerFrameInScaledCanvas;
- (CGRect)i_partition_deepClipRect;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)naturalBounds;
- (CGRect)targetRectForEditMenu;
- (CGRect)trackingBoundsForStandardKnobs;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (NSArray)hyperlinkRegions;
- (NSArray)knobs;
- (NSString)description;
- (TSDInteractiveCanvasController)interactiveCanvasController;
- (TSDLayout)layout;
- (TSDRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)additionalRotationForKnobOrientation;
- (double)angleForRotation;
- (double)angleInRoot;
- (double)scaleToConvertNaturalToLayerRelative;
- (double)selectionHighlightWidth;
- (double)textureAngle;
- (id)additionalLayersOverLayer;
- (id)allLayers;
- (id)connectedReps;
- (id)hitRep:(CGPoint)a3;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)hitRepChrome:(CGPoint)a3;
- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4;
- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4;
- (id)i_queueForTileProvider;
- (id)i_tileQueue;
- (id)info;
- (id)knobForTag:(unint64_t)a3;
- (id)newSelectionKnobForType:(int)a3 tag:(unint64_t)a4;
- (id)overlayLayers;
- (id)p_addLayersForKnobsToArray:(id)a3 withDelegate:(id)a4 isOverlay:(BOOL)a5;
- (id)parentRepToPerformSelecting;
- (id)popoutLayers;
- (id)queueForDrawingTilingLayerInBackground:(id)a3;
- (id)repForDragging;
- (id)repForRotating;
- (id)repForSelecting;
- (id)selectionHighlightLayer;
- (id)subviewsController;
- (id)textureForContext:(id)a3;
- (int)dragTypeAtCanvasPoint:(CGPoint)a3;
- (unint64_t)adjustedKnobForComputingResizeGeometry:(unint64_t)a3;
- (unint64_t)enabledKnobMask;
- (void)addActionGhostKnobToArrayIfNecessary:(id)a3;
- (void)addKnobsToArray:(id)a3;
- (void)addLockedKnobsToArray:(id)a3;
- (void)addSelectionKnobsToArray:(id)a3;
- (void)antiAliasDefeatLayerFrame:(CGRect *)a3 forTransform:(CGAffineTransform *)a4;
- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)a3 forFrame:(CGRect)a4;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnLayoutGeometry:(id)a5;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnTransform:(CGAffineTransform *)a5 andSize:(CGSize)a6;
- (void)dealloc;
- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4;
- (void)didEndDrawingTilingLayerInBackground:(id)a3 withToken:(id)a4;
- (void)dynamicRotateDidBegin;
- (void)fadeKnobsIn;
- (void)fadeKnobsOut;
- (void)i_willBeRemoved;
- (void)invalidateAnnotationColor;
- (void)invalidateKnobPositions;
- (void)invalidateKnobs;
- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5;
- (void)markTextureDirty;
- (void)p_actionGhostKnobHit;
- (void)p_dynamicRotateDidBegin;
- (void)p_setMagicMoveTextureAttributes:(id)a3;
- (void)p_toggleHyperlinkUIVisibility;
- (void)pauseLayerUpdates;
- (void)processChangedProperty:(int)a3;
- (void)processChanges:(id)a3;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3;
- (void)recursivelyDrawInContext:(CGContext *)a3;
- (void)recursivelyPerformSelector:(SEL)a3;
- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)replaceContentsFromRep:(id)a3;
- (void)resumeLayerUpdates;
- (void)resumeLayerUpdatesAndLayoutImmediately;
- (void)screenScaleDidChange;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setParentRep:(id)a3;
- (void)setSelectionHighlightColor:(CGColor *)a3;
- (void)setTexture:(id)a3;
- (void)setTextureActionAttributes:(id)a3;
- (void)setTextureByGlyphStyle:(int)a3;
- (void)setTextureDeliveryStyle:(unint64_t)a3;
- (void)setupForDrawingInLayer:(id)a3 context:(CGContext *)a4;
- (void)turnKnobsOn;
- (void)updateFromLayout;
- (void)updateLayerGeometryFromLayout:(id)a3;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)viewScaleDidChange;
- (void)willReplaceContentsFromRep:(id)a3;
- (void)willUpdateLayer:(id)a3;
@end

@implementation TSDRep

- (TSDRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSDRep;
  v6 = [(TSDRep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v6->mLayout = a3;
      v7->mCanvas = a4;
      [a4 i_registerRep:v7];
      v7->mShowKnobsWhenManipulated = 0;
    }

    else
    {

      v7 = 0;
    }
  }

  __dmb(0xBu);
  return v7;
}

- (void)dealloc
{
  [(TSDTilingBackgroundQueue *)self->mTileQueue shutdown];

  mTileProviderQueue = self->mTileProviderQueue;
  if (mTileProviderQueue)
  {
    dispatch_release(mTileProviderQueue);
  }

  CGColorRelease(self->mDefaultSelectionHighlightColor);
  [(CALayer *)self->mSelectionHighlightLayer setDelegate:0];

  self->mCanvas = 0;
  v4.receiver = self;
  v4.super_class = TSDRep;
  [(TSDRep *)&v4 dealloc];
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

- (TSDInteractiveCanvasController)interactiveCanvasController
{
  if (![(TSDCanvas *)self->mCanvas canvasController])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep interactiveCanvasController]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 181, @"no ICC for this rep; consider asking self.canvas instead"}];
  }

  mCanvas = self->mCanvas;

  return [(TSDCanvas *)mCanvas canvasController];
}

- (TSDLayout)layout
{
  result = self->mTemporaryMixingLayout;
  if (!result)
  {
    return self->mLayout;
  }

  return result;
}

- (id)info
{
  v2 = [(TSDRep *)self layout];

  return [(TSDLayout *)v2 info];
}

- (void)pauseLayerUpdates
{
  v4 = objc_opt_class();
  if ([v4 tsu_overridesSelector:a2 ofBaseClass:objc_opt_class()])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep pauseLayerUpdates]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 206, @"-pushLayerUpdatesPaused won't work correctly if -layerUpdatesPaused is overridden"}];
  }

  ++self->mLayerUpdatesPausedCount;
}

- (void)resumeLayerUpdates
{
  v4 = objc_opt_class();
  if ([v4 tsu_overridesSelector:a2 ofBaseClass:objc_opt_class()])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep resumeLayerUpdates]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 212, @"-resumeLayerUpdates won't work correctly if -layerUpdatesPaused is overridden"}];
  }

  mLayerUpdatesPausedCount = self->mLayerUpdatesPausedCount;
  if (mLayerUpdatesPausedCount || (v8 = [MEMORY[0x277D6C290] currentHandler], v9 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDRep resumeLayerUpdates]"), objc_msgSend(v8, "handleFailureInFunction:file:lineNumber:description:", v9, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 213, @"unbalanced calls to push/resumeLayerUpdates"), (mLayerUpdatesPausedCount = self->mLayerUpdatesPausedCount) != 0))
  {
    self->mLayerUpdatesPausedCount = mLayerUpdatesPausedCount - 1;
    v10 = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)v10 invalidateLayers];
  }
}

- (void)resumeLayerUpdatesAndLayoutImmediately
{
  [(TSDRep *)self resumeLayerUpdates];
  v3 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 layoutIfNeeded];
}

- (id)connectedReps
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(TSDLayout *)[(TSDRep *)self layout] connectedLayouts];
  v4 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] repForLayout:*(*(&v11 + 1) + 8 * v8)];
        if (v9)
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)setParentRep:(id)a3
{
  mParentRep = self->mParentRep;
  if (mParentRep != a3)
  {
    if (mParentRep)
    {
      [(TSDRep *)self willBeRemovedFromParent];
    }

    self->mParentRep = a3;
    if (a3)
    {

      [(TSDRep *)self wasAddedToParent];
    }
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(TSDRep *)self performSelector:a3];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [TSUProtocolCast() childReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) recursivelyPerformSelectorIfImplemented:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(TSDRep *)self performSelector:a3 withObject:a4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [TSUProtocolCast() childReps];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) recursivelyPerformSelectorIfImplemented:a3 withObject:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  if (objc_opt_respondsToSelector())
  {

    [(TSDRep *)self performSelector:a3 withObject:a4 withObject:a5];
  }
}

- (void)recursivelyPerformSelector:(SEL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(TSDRep *)self performSelector:?];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [TSUProtocolCast() childReps];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) recursivelyPerformSelector:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  [TSDRep performSelector:"performSelector:withObject:" withObject:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [TSUProtocolCast() childReps];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) recursivelyPerformSelector:a3 withObject:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)i_willBeRemoved
{
  [(TSDRep *)self willBeRemoved];
  [(TSDRep *)self i_shutdownTileQueue];
  [(CALayer *)self->mSelectionHighlightLayer setDelegate:0];

  self->mSelectionHighlightLayer = 0;
  [(TSDCanvas *)self->mCanvas i_unregisterRep:self];
  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
  [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self];
  self->mHasBeenRemoved = 1;
  self->mCanvas = 0;
}

- (id)parentRepToPerformSelecting
{
  v2 = self;
  while (1)
  {
    v3 = [(TSDRep *)self parentRep];
    p_super = &v3->super;
    if (!v3 || [(TSDContainerRep *)v3 canSelectChildRep:v2])
    {
      break;
    }

    self = p_super;
  }

  return p_super;
}

- (double)angleInRoot
{
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] angleInRoot];
    v4 = v3 + 0.0;
  }

  else
  {
    v4 = 0.0;
  }

  if ([-[TSDRep info](self "info")])
  {
    [objc_msgSend(-[TSDRep info](self "info")];
    return v4 + v5;
  }

  return v4;
}

- (CGRect)naturalBounds
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];

  v2 = TSDRectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isVisibleOnCanvas
{
  v3 = [(TSDRep *)self interactiveCanvasController];
  if (v3)
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] visibleUnscaledRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(TSDRep *)self frameInUnscaledCanvas];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v5;
    v21 = v7;
    v22 = v9;
    v23 = v11;

    LOBYTE(v3) = CGRectIntersectsRect(*&v20, *&v13);
  }

  return v3;
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TSDRep *)self layout];
  if (v7)
  {
    [(TSDAbstractLayout *)v7 transformInRoot];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TSDRep *)self layout];
  if (v7)
  {
    [(TSDAbstractLayout *)v7 transformInRoot];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGAffineTransformInvert(&v9, &v8);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return CGRectApplyAffineTransform(v10, &v9);
}

- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = [(TSDRep *)self layout];
  if (v9)
  {
    [(TSDAbstractLayout *)v9 transformInRoot];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
  }

  [(TSDCanvas *)self->mCanvas viewScale];
  v11 = v10;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinY = CGRectGetMinY(v33);
  v27 = *(&v31 + 1) + MinY * *(&v30 + 1) + *(&v29 + 1) * MinX;
  v28 = *&v31 + MinY * *&v30 + *&v29 * MinX;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v15 = CGRectGetMinY(v35);
  v25 = *(&v31 + 1) + v15 * *(&v30 + 1) + *(&v29 + 1) * MaxX;
  v26 = *&v31 + v15 * *&v30 + *&v29 * MaxX;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v16 = CGRectGetMaxX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MaxY = CGRectGetMaxY(v37);
  v18 = *&v31 + MaxY * *&v30 + *&v29 * v16;
  v19 = *(&v31 + 1) + MaxY * *(&v30 + 1) + *(&v29 + 1) * v16;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20 = CGRectGetMinX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v21 = CGRectGetMaxY(v39);
  v22 = *&v31 + v21 * *&v30 + *&v29 * v20;
  v23 = *(&v31 + 1) + v21 * *(&v30 + 1) + *(&v29 + 1) * v20;
  CGPathMoveToPoint(Mutable, 0, v11 * v28, v11 * v27);
  CGPathAddLineToPoint(Mutable, 0, v11 * v26, v11 * v25);
  CGPathAddLineToPoint(Mutable, 0, v11 * v18, v11 * v19);
  CGPathAddLineToPoint(Mutable, 0, v11 * v22, v11 * v23);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v3 = [(TSDRep *)self layout];
  if (v3)
  {
    [(TSDAbstractLayout *)v3 transformInRoot];
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  else
  {
    v6 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v7 = vaddq_f64(v6, vmlaq_n_f64(vmulq_n_f64(v5, y), v4, x));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v3 = [(TSDRep *)self layout];
  if (v3)
  {
    [(TSDAbstractLayout *)v3 transformInRoot];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGAffineTransformInvert(&v9, &v8);
  v4 = vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGRect)frameInUnscaledCanvas
{
  v2 = [(TSDRep *)self layout];

  [(TSDAbstractLayout *)v2 frameInRoot];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameInScreenSpace
{
  v3 = [(TSDRep *)self interactiveCanvasController];
  [(TSDRep *)self frameInUnscaledCanvas];
  [(TSDInteractiveCanvasController *)v3 convertUnscaledToBoundsRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TSDInteractiveCanvasController *)v3 canvasView];
  [(TSDCanvasView *)v12 convertRect:0 toView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(TSDCanvasView *)v12 window];

  [v21 convertRect:0 toWindow:{v14, v16, v18, v20}];
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)layerFrameInScaledCanvas
{
  if ([(TSDRep *)self isBeingRotated])
  {
    x = self->mOriginalLayerFrameInScaledCanvas.origin.x;
    y = self->mOriginalLayerFrameInScaledCanvas.origin.y;
    width = self->mOriginalLayerFrameInScaledCanvas.size.width;
    height = self->mOriginalLayerFrameInScaledCanvas.size.height;
  }

  else if ([(TSDRep *)self directlyManagesLayerContent])
  {
    mCanvas = self->mCanvas;
    [(TSDRep *)self frameInUnscaledCanvas];
    [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    x = TSDRoundedRectForScale(v9, v11, v13, v15, v16);
  }

  else
  {
    [(TSDRep *)self i_layerFrameInScaledCanvasIgnoringDragging];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging
{
  if ([(TSDRep *)self isBeingRotated])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep i_layerFrameInScaledCanvasIgnoringDragging]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 546, @"i_layerFrameInScaledCanvasIgnoringDragging is invalid in this state"}];
  }

  v5 = [(TSDRep *)self directlyManagesLayerContent];
  mCanvas = self->mCanvas;
  [(TSDRep *)self frameInUnscaledCanvas];
  [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:?];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v5)
  {
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v16 = TSDRoundedRectForScale(v11, v12, v13, v14, v15);
  }

  else
  {
    *&v16 = CGRectIntegral(*&v7);
  }

  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)layerFrameInScaledCanvasRelativeToParent
{
  [(TSDRep *)self layerFrameInScaledCanvas];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
    v4 = TSDSubtractPoints(v4, v6, v11);
    v6 = v12;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)layerOffsetForDragging
{
  [(TSDRep *)self i_layerFrameInScaledCanvasIgnoringDragging];
  v4 = v3;
  v6 = v5;
  [(TSDRep *)self i_originalLayerFrameInScaledCanvas];

  v8 = TSDSubtractPoints(v4, v6, v7);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGAffineTransform)transformToConvertNaturalToLayerRelative
{
  memset(&v14, 0, sizeof(v14));
  v5 = [(TSDRep *)self layout];
  if (v5)
  {
    [(TSDAbstractLayout *)v5 transformInRoot];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  [(TSDCanvas *)self->mCanvas viewScale];
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&t2, v6, v6);
  t1 = v14;
  CGAffineTransformConcat(&v13, &t1, &t2);
  [(TSDRep *)self layerFrameInScaledCanvas];
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeTranslation(&t2, -v7, -v8);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v13;
  v10 = t2;
  return CGAffineTransformConcat(retstr, &t1, &v10);
}

- (CGAffineTransform)transformToConvertNaturalFromLayerRelative
{
  if (self)
  {
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  return CGAffineTransformInvert(retstr, &v5);
}

- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)a3
{
  if (self)
  {
    y = a3.y;
    x = a3.x;
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
    a3.y = y;
    a3.x = x;
    v4 = v10;
    v3 = v11;
    v5 = v12;
  }

  else
  {
    v5 = 0uLL;
    v4 = 0uLL;
    v3 = 0uLL;
  }

  v6 = vaddq_f64(v5, vmlaq_n_f64(vmulq_n_f64(v3, a3.y), v4, a3.x));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)a3
{
  if (self)
  {
    y = a3.y;
    x = a3.x;
    [(TSDRep *)self transformToConvertNaturalFromLayerRelative];
    a3.y = y;
    a3.x = x;
    v4 = v10;
    v3 = v11;
    v5 = v12;
  }

  else
  {
    v5 = 0uLL;
    v4 = 0uLL;
    v3 = 0uLL;
  }

  v6 = vaddq_f64(v5, vmlaq_n_f64(vmulq_n_f64(v3, a3.y), v4, a3.x));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (CGRect)convertNaturalRectToLayerRelative:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self)
  {
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self)
  {
    [(TSDRep *)self transformToConvertNaturalFromLayerRelative];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGPoint)convertUnscaledPointToLayerRelative:(CGPoint)a3
{
  [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:a3.x, a3.y];

  [(TSDRep *)self convertNaturalPointToLayerRelative:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertUnscaledPointFromLayerRelative:(CGPoint)a3
{
  [(TSDRep *)self convertNaturalPointFromLayerRelative:a3.x, a3.y];

  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)scaleToConvertNaturalToLayerRelative
{
  if (self)
  {
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  return TSDTransformScale(v3);
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v9 scrollRectToVisible:v4 animated:x, y, width, height];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDRep *)self naturalBounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  v5 = TSDRectWithCenterAndSize(a3.x, a3.y, a4.width + a4.width);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TSDRep *)self naturalBounds];
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;

  return CGRectIntersectsRect(*&v12, *&v16);
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  v6 = [(TSDRep *)self hitRep:a4, a3.x, a3.y];
  v7 = v6;
  if (a5 && v6 && !(*(a5 + 2))(a5, v6))
  {
    return 0;
  }

  return v7;
}

- (id)hitRep:(CGPoint)a3
{
  if ([(TSDRep *)self containsPoint:a3.x, a3.y])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__TSDRep_hitReps_withSlop___block_invoke;
  v5[3] = &__block_descriptor_48_e26__CGSize_dd_16__0__TSDRep_8l;
  v6 = a4;
  return [(TSDRep *)self hitReps:v5 withSlopBlock:a3.x, a3.y];
}

- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v7 = (*(a4 + 2))(a4, self);
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (![(TSDRep *)self containsPoint:x withSlop:y, v7, v9])
  {
    return 0;
  }

  v10 = MEMORY[0x277CBEA60];

  return [v10 arrayWithObject:self];
}

- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4
{
  v5 = [(TSDRep *)self hitRepChrome:a3.x, a3.y];
  v6 = v5;
  if (a4 && v5 && !(*(a4 + 2))(a4, v5))
  {
    return 0;
  }

  return v6;
}

- (id)hitRepChrome:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    return 0;
  }

  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:x, y];
  v7 = v6;
  v9 = v8;
  v10 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v10 hitRepChromeAtUnscaledPoint:v7, v9];
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
  v8 = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
  v9 = [(TSDRep *)self layout];
  if (v9)
  {
    [(TSDAbstractLayout *)v9 transformInRoot];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  [(TSDBezierPath *)v8 transformUsingAffineTransform:v11];
  return [(TSDBezierPath *)v8 intersectsRect:1 hasFill:x, y, width, height];
}

- (id)repForDragging
{
  if ([(TSDRep *)self isDraggable]&& [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing]&& [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] isRepSelectable:self]&& ![(TSDRep *)self isLocked]&& ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] inVersionBrowsingMode])
  {
    return self;
  }

  v3 = [(TSDRep *)self parentRep];

  return [(TSDRep *)v3 repForDragging];
}

- (id)repForSelecting
{
  if ([(TSDRep *)self isSelectable]&& [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing]&& [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] isRepSelectable:self])
  {
    return self;
  }

  v4 = [(TSDRep *)self parentRep];

  return [(TSDRep *)v4 repForSelecting];
}

- (id)repForRotating
{
  if ([(TSDAbstractLayout *)[(TSDRep *)self layout] supportsRotation]&& [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing]&& [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] isRepSelectable:self]&& ![(TSDRep *)self isLocked])
  {
    return self;
  }

  v3 = [(TSDRep *)self parentRep];

  return [(TSDRep *)v3 repForRotating];
}

- (void)updateFromLayout
{
  v3 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometryInRoot];
  if (([v3 isEqual:self->mLastGeometryInRoot] & 1) == 0)
  {
    -[TSDRep layoutInRootChangedFrom:to:translatedOnly:](self, "layoutInRootChangedFrom:to:translatedOnly:", self->mLastGeometryInRoot, v3, [v3 differsInMoreThanTranslationFrom:self->mLastGeometryInRoot] ^ 1);

    self->mLastGeometryInRoot = [v3 copy];
  }

  [(TSDLayout *)[(TSDRep *)self layout] i_takeDirtyRect];
  [(TSDRep *)self setNeedsDisplayInRect:?];

  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
}

- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5
{
  if (a5)
  {
    mCanvas = self->mCanvas;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      [a3 transform];
      v10 = v30;
      v11 = v31;
      v9 = v32;
    }

    *&v5 = *(MEMORY[0x277CBF348] + 8);
    [(TSDCanvas *)mCanvas convertUnscaledToBoundsPoint:vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v11, *&v5), v10, *MEMORY[0x277CBF348])), vdupq_lane_s64(*MEMORY[0x277CBF348], 0), v5];
    v13 = v12;
    v14 = self->mCanvas;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    if (a4)
    {
      [a4 transform];
      v15 = v30;
      v16 = v31;
      v17 = v32;
    }

    [(TSDCanvas *)v14 convertUnscaledToBoundsPoint:vaddq_f64(v17, vmlaq_f64(vmulq_n_f64(v16, v29), v28, v15))];
    v20 = TSDSubtractPoints(v18, v19, v13);
    v22 = v21;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    TSDMultiplyPointScalar(v20, v22, v23);
    TSUFractionalPart();
    v25 = fabs(v24);
    TSUFractionalPart();
    if (v25 >= 0.00999999978 && fabs(v25 + -1.0) >= 0.00999999978 || (v27 = fabs(v26), v27 >= 0.00999999978) && fabs(v27 + -1.0) >= 0.00999999978)
    {
      [(TSDRep *)self setNeedsDisplay];
    }
  }

  else
  {
    [(TSDRep *)self setNeedsDisplay:a3];

    [(TSDRep *)self invalidateKnobPositions];
  }
}

- (CGAffineTransform)layerTransform
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  result = [(TSDRep *)self isBeingRotated];
  if (result)
  {
    result = [[(TSDRep *)self parentRep] isBeingRotated];
    if ((result & 1) == 0)
    {
      memset(&v23, 0, sizeof(v23));
      v8 = [(TSDRep *)self layout];
      if (v8)
      {
        [(TSDLayout *)v8 originalPureTransformInRoot];
      }

      else
      {
        memset(&v23, 0, sizeof(v23));
      }

      memset(&v22, 0, sizeof(v22));
      v9 = [(TSDRep *)self layout];
      if (v9)
      {
        [(TSDLayout *)v9 pureTransformInRoot];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      memset(&v21, 0, sizeof(v21));
      v19 = v23;
      CGAffineTransformInvert(&t1, &v19);
      v19 = v22;
      CGAffineTransformConcat(&v21, &t1, &v19);
      [(TSDRep *)self layerFrameInScaledCanvas];
      [(TSDCanvas *)self->mCanvas convertBoundsToUnscaledRect:?];
      v14 = TSDCenterOfRect(v10, v11, v12, v13);
      v19 = v21;
      TSDTransformConvertForNewOrigin(&v19, &t1, v14, v15);
      v21 = t1;
      [(TSDCanvas *)self->mCanvas viewScale];
      v21.tx = v16 * v21.tx;
      result = [(TSDCanvas *)self->mCanvas viewScale];
      v21.ty = v17 * v21.ty;
      v18 = *&v21.c;
      *&retstr->a = *&v21.a;
      *&retstr->c = v18;
      *&retstr->tx = *&v21.tx;
    }
  }

  return result;
}

- (CGAffineTransform)parentLayerInverseTransformInRootForZeroAnchor
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  result = [(TSDRep *)self parentRep];
  if (result)
  {
    v8 = [(TSDRep *)self parentRep];
    if (v8)
    {
      [(TSDRep *)v8 layerTransformInRootForZeroAnchor];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    v9 = *&v11.c;
    *&retstr->a = *&v11.a;
    *&retstr->c = v9;
    *&retstr->tx = *&v11.tx;
    v10 = *&retstr->c;
    *&v11.a = *&retstr->a;
    *&v11.c = v10;
    *&v11.tx = *&retstr->tx;
    return CGAffineTransformInvert(retstr, &v11);
  }

  return result;
}

- (CGAffineTransform)layerTransformInRootForZeroAnchor
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  if (self)
  {
    v6 = self;
    do
    {
      [(CGAffineTransform *)v6 layerFrameInScaledCanvasRelativeToParent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      memset(&v21, 0, sizeof(v21));
      [(CGAffineTransform *)v6 layerTransform];
      t2 = v21;
      TSDTransformConvertForNewOrigin(&t2, &t1, v12 * -0.5, v14 * -0.5);
      v21 = t1;
      CGAffineTransformMakeTranslation(&t2, v8, v10);
      v18 = v21;
      CGAffineTransformConcat(&t1, &v18, &t2);
      v15 = *&t1.a;
      v21 = t1;
      v16 = *&t1.tx;
      v17 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v17;
      *&t1.tx = *&retstr->tx;
      *&t2.a = v15;
      *&t2.c = *&v21.c;
      *&t2.tx = v16;
      CGAffineTransformConcat(retstr, &t1, &t2);
      self = [(CGAffineTransform *)v6 parentRep];
      v6 = self;
    }

    while (self);
  }

  return self;
}

- (void)updateLayerGeometryFromLayout:(id)a3
{
  [(TSDRep *)self layerFrameInScaledCanvasRelativeToParent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (self)
  {
    [(TSDRep *)self layerTransform];
  }

  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  [a3 setIfDifferentFrame:v13 orTransform:{v6, v8, v10, v12}];
}

- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)a3 forFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = *&a3->c;
  *&v36.a = *&a3->a;
  *&v36.c = v10;
  *&v36.tx = *&a3->tx;
  if (TSDIsTransformAxisAlignedWithObjectSize(&v36.a, a4.size.width, a4.size.height))
  {
    memset(&v36, 0, sizeof(v36));
    v11 = *&a3->c;
    *&v35.a = *&a3->a;
    *&v35.c = v11;
    *&v35.tx = *&a3->tx;
    TSDTransformConvertForNewOrigin(&v35, &v36, width * -0.5, height * -0.5);
    v35 = v36;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectApplyAffineTransform(v37, &v35);
    v12 = v38.origin.x;
    v13 = v38.origin.y;
    v31 = height;
    v14 = v38.size.width;
    v15 = v38.size.height;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v17 = TSDRoundedRectForScale(v12, v13, v14, v15, v16);
    v29 = v18;
    v30 = v17;
    v20 = v19;
    v22 = v21;
    memset(&v35, 0, sizeof(v35));
    v39.origin.x = v12;
    v39.origin.y = v13;
    v39.size.width = v14;
    v39.size.height = v15;
    v23 = -CGRectGetMinX(v39);
    v40.origin.x = v12;
    v40.origin.y = v13;
    v40.size.width = v14;
    v40.size.height = v15;
    MinY = CGRectGetMinY(v40);
    CGAffineTransformMakeTranslation(&v35, v23, -MinY);
    CGAffineTransformMakeScale(&t2, v20 / v14, v22 / v15);
    t1 = v35;
    CGAffineTransformConcat(&v34, &t1, &t2);
    v35 = v34;
    v41.origin.x = v30;
    v41.origin.y = v29;
    v41.size.width = v20;
    v41.size.height = v22;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v30;
    v42.origin.y = v29;
    v42.size.width = v20;
    v42.size.height = v22;
    v26 = CGRectGetMinY(v42);
    CGAffineTransformMakeTranslation(&t2, MinX, v26);
    t1 = v35;
    CGAffineTransformConcat(&v34, &t1, &t2);
    v35 = v34;
    t2 = v34;
    TSDTransformConvertForNewOrigin(&t2, &v34, width * 0.5, v31 * 0.5);
    v35 = v34;
    v27 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v27;
    *&t2.tx = *&a3->tx;
    t1 = v34;
    CGAffineTransformConcat(&v34, &t2, &t1);
    v28 = *&v34.c;
    *&a3->a = *&v34.a;
    *&a3->c = v28;
    *&a3->tx = *&v34.tx;
  }
}

- (void)antiAliasDefeatLayerFrame:(CGRect *)a3 forTransform:(CGAffineTransform *)a4
{
  v7 = *&a4->c;
  *&v29.a = *&a4->a;
  *&v29.c = v7;
  *&v29.tx = *&a4->tx;
  if (TSDIsTransformAxisAlignedWithObjectSize(&v29.a, a3->size.width, a3->size.height))
  {
    __asm { FMOV            V1.2D, #-0.5 }

    v13 = vmulq_f64(a3->size, _Q1);
    v14 = *&a4->c;
    *&v28.a = *&a4->a;
    *&v28.c = v14;
    *&v28.tx = *&a4->tx;
    memset(&v29, 0, sizeof(v29));
    TSDTransformConvertForNewOrigin(&v28, &v29, v13.f64[0], v13.f64[1]);
    v30 = *a3;
    v28 = v29;
    v31 = CGRectApplyAffineTransform(v30, &v28);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v20 = TSDRoundedRectForScale(x, y, width, height, v19);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v29;
    CGAffineTransformInvert(&v28, &v27);
    v32.origin.x = v20;
    v32.origin.y = v22;
    v32.size.width = v24;
    v32.size.height = v26;
    *a3 = CGRectApplyAffineTransform(v32, &v28);
  }
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnTransform:(CGAffineTransform *)a5 andSize:(CGSize)a6
{
  objc_opt_class();
  [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
  v10 = TSUDynamicCast();
  if (v10)
  {
    v11 = v10;
    memset(&v49, 0, sizeof(v49));
    if ([(TSDRep *)self isBeingRotated])
    {
      [v11 originalTransformInRoot];
    }

    else
    {
      [v11 transformInRoot];
    }

    v12 = *&a5->c;
    *&t1.a = *&a5->a;
    *&t1.c = v12;
    *&t1.tx = *&a5->tx;
    v46 = v49;
    CGAffineTransformConcat(&v48, &t1, &v46);
    v13 = *&v48.c;
    *&a5->a = *&v48.a;
    *&a5->c = v13;
    *&a5->tx = *&v48.tx;
  }

  v14 = TSDRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(TSDCanvas *)self->mCanvas viewScale];
  v22 = v21;
  v23 = *&a5->c;
  *&v49.a = *&a5->a;
  *&v49.c = v23;
  *&v49.tx = *&a5->tx;
  v24 = TSDTransformScale(&v49.a);
  v25 = TSDMultiplyRectScalar(v14, v16, v18, v20, v22 * fabs(v24));
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&a5->c;
  *&v49.a = *&a5->a;
  *&v49.c = v32;
  *&v49.tx = *&a5->tx;
  v33 = TSDTransformScale(&v49.a);
  v34 = *&a5->c;
  *&v49.a = *&a5->a;
  *&v49.c = v34;
  *&v49.tx = *&a5->tx;
  v35 = 1.0 / v33;
  v36 = TSDTransformScale(&v49.a);
  v37 = *&a5->c;
  *&v48.a = *&a5->a;
  *&v48.c = v37;
  *&v48.tx = *&a5->tx;
  CGAffineTransformScale(&v49, &v48, v35, 1.0 / v36);
  v38 = *&v49.c;
  *&a5->a = *&v49.a;
  *&a5->c = v38;
  *&a5->tx = *&v49.tx;
  [(TSDCanvas *)self->mCanvas viewScale];
  v39 = *&a5->c;
  *&a5->tx = vmulq_n_f64(*&a5->tx, v40);
  *&v48.a = *&a5->a;
  *&v48.c = v39;
  *&v48.tx = *&a5->tx;
  TSDTransformConvertForNewOrigin(&v48, &v49, v29 * 0.5, v31 * 0.5);
  v41 = *&v49.c;
  *&a5->a = *&v49.a;
  *&a5->c = v41;
  *&a5->tx = *&v49.tx;
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
    v43.f64[1] = v42;
    *&a5->tx = vsubq_f64(*&a5->tx, v43);
  }

  if (a3)
  {
    a3->origin.x = v25;
    a3->origin.y = v27;
    a3->size.width = v29;
    a3->size.height = v31;
  }

  if (a4)
  {
    v44 = *&a5->a;
    v45 = *&a5->tx;
    *&a4->c = *&a5->c;
    *&a4->tx = v45;
    *&a4->a = v44;
  }
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4
{
  v7 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometry];
  if (v7)
  {
    [(TSDLayoutGeometry *)v7 transform];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout:v8] geometry] size];
  [(TSDRep *)self computeDirectLayerFrame:a3 andTransform:a4 basedOnTransform:&v8 andSize:?];
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnLayoutGeometry:(id)a5
{
  if (a5)
  {
    [a5 transform];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  [a5 size];
  [(TSDRep *)self computeDirectLayerFrame:a3 andTransform:a4 basedOnTransform:&v9 andSize:?];
}

- (void)processChanges:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        [v9 details];
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = [v10 changedProperties];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __25__TSDRep_processChanges___block_invoke;
          v12[3] = &unk_279D47F10;
          v12[4] = self;
          [v11 enumeratePropertiesUsingBlock:v12];
        }

        else if ([v9 kind] == 5 || objc_msgSend(v9, "kind") == 6)
        {
          [(TSDRep *)self invalidateKnobs];
          [(TSDCanvas *)self->mCanvas invalidateReps];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)setNeedsDisplay
{
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& ![(TSDRep *)self directlyManagesLayerContent])
  {
    v3 = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)v3 i_repNeedsDisplay:self];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    if (![(TSDRep *)self directlyManagesLayerContent])
    {
      v10.origin.x = x;
      v10.origin.y = y;
      v10.size.width = width;
      v10.size.height = height;
      if (!CGRectIsNull(v10))
      {
        v11.origin.x = x;
        v11.origin.y = y;
        v11.size.width = width;
        v11.size.height = height;
        if (!CGRectIsEmpty(v11))
        {
          v8 = [(TSDRep *)self interactiveCanvasController];

          [(TSDInteractiveCanvasController *)v8 i_repNeedsDisplay:self inRect:x, y, width, height];
        }
      }
    }
  }
}

- (void)screenScaleDidChange
{
  [(TSDRep *)self setNeedsDisplay];
  [(TSDRep *)self invalidateKnobs];

  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
}

- (void)viewScaleDidChange
{
  [(TSDRep *)self setNeedsDisplay];
  [(TSDRep *)self invalidateKnobs];

  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
}

- (void)setupForDrawingInLayer:(id)a3 context:(CGContext *)a4
{
  [(TSDRep *)self layerFrameInScaledCanvas];
  CGContextTranslateCTM(a4, -v7, -v8);
  [(TSDCanvas *)self->mCanvas viewScale];
  CGContextScaleCTM(a4, v9, v9);
  if (![(TSDRep *)self isBeingRotated])
  {
    v11 = [(TSDRep *)self layout];
    if (v11)
    {
      [(TSDAbstractLayout *)v11 transformInRoot];
      goto LABEL_7;
    }

LABEL_6:
    memset(&v15, 0, sizeof(v15));
    goto LABEL_7;
  }

  v10 = [(TSDRep *)self layout];
  if (!v10)
  {
    goto LABEL_6;
  }

  [(TSDLayout *)v10 originalTransformInRoot];
LABEL_7:
  CGContextConcatCTM(a4, &v15);
  if (a3 && [a3 contentsAreFlipped])
  {
    v12 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v12 setObject:v13 forKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", self)}];
  }

  [(TSDRep *)self i_configureFontSmoothingForContext:a4 layer:a3, *&v15.a, *&v15.c, *&v15.tx];
  if (![(TSDCanvas *)[(TSDRep *)self canvas] allowsFontSubpixelQuantization])
  {
    CGContextSetAllowsFontSubpixelQuantization(a4, 0);
    CGContextSetShouldSubpixelQuantizeFonts(a4, 0);
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSDSetCGContextInfo(a4, 0, 0, a3 != 0, 0, v14);
}

- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4
{
  TSDClearCGContextInfo(a4);
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:self];

  [v5 removeObjectForKey:v6];
}

- (BOOL)isDrawingInFlippedContext
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v4 = [v3 objectForKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", self)}];
  if (v4)
  {

    LOBYTE(v4) = [v4 BOOLValue];
  }

  return v4;
}

- (void)recursivelyDrawInContext:(CGContext *)a3
{
  v5 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometry];
  if (v5)
  {
    [(TSDLayoutGeometry *)v5 transform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CGContextConcatCTM(a3, &v16);
  [(TSDRep *)self clipRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(TSDRep *)self masksToBounds];
  v15 = v14;
  if (v14)
  {
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGContextClipToRect(a3, v17);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  if (CGRectIntersectsRect(v18, ClipBoundingBox))
  {
    CGContextSaveGState(a3);
    if (!v15)
    {
      v19.origin.x = v7;
      v19.origin.y = v9;
      v19.size.width = v11;
      v19.size.height = v13;
      CGContextClipToRect(a3, v19);
    }

    [(TSDRep *)self drawInContext:a3, *&v16.a, *&v16.c, *&v16.tx];
    CGContextRestoreGState(a3);
  }

  [(TSDRep *)self recursivelyDrawChildrenInContext:a3, *&v16.a, *&v16.c, *&v16.tx];
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = TSUProtocolCast();
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 childReps];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          CGContextSaveGState(a3);
          [v10 recursivelyDrawInContext:a3];
          CGContextRestoreGState(a3);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isSelectedIgnoringLocking
{
  if (![(TSDRep *)self isSelectable]|| ![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    return 0;
  }

  v3 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor];
  v4 = [(TSDRep *)self info];

  return [(TSDCanvasEditor *)v3 isSelectedInfo:v4];
}

- (BOOL)isSelected
{
  v3 = [(TSDRep *)self isSelectedIgnoringLocking];
  if (v3)
  {
    LOBYTE(v3) = ![(TSDRep *)self isLocked];
  }

  return v3;
}

- (void)becameSelected
{
  [(TSDRep *)self invalidateKnobs];
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas layoutInvalidated];
}

- (void)becameNotSelected
{
  [(TSDRep *)self invalidateKnobs];
  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
  self->mSelectionHighlightLayerValid = 0;

  self->mSelectionHighlightLayer = 0;
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas layoutInvalidated];
}

- (NSArray)knobs
{
  mKnobs = self->mKnobs;
  if (!mKnobs)
  {
    if ([(TSDRep *)self shouldCreateKnobs])
    {
      v4 = [MEMORY[0x277CBEB18] array];
      [(TSDRep *)self addKnobsToArray:v4];
      if ([v4 count])
      {
        self->mKnobPositionsInvalid = 1;
      }

      mKnobs = v4;
      self->mKnobs = mKnobs;
    }

    else
    {
      mKnobs = self->mKnobs;
    }
  }

  if ([(NSArray *)mKnobs count]&& self->mKnobPositionsInvalid)
  {
    [(TSDRep *)self updatePositionsOfKnobs:self->mKnobs];
  }

  self->mKnobPositionsInvalid = 0;
  v5 = self->mKnobs;
  mKnobTracker = self->mKnobTracker;
  if (mKnobTracker && [(TSDKnobTracker *)mKnobTracker didBegin]&& !self->mShowKnobsWhenManipulated)
  {
    v8 = [(TSDKnobTracker *)self->mKnobTracker enabledKnobMask];
    v7 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __15__TSDRep_knobs__block_invoke;
    v13[3] = &unk_279D48590;
    v13[5] = v8;
  }

  else
  {
    if ([(TSDRep *)self shouldShowKnobs])
    {
      goto LABEL_17;
    }

    v7 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __15__TSDRep_knobs__block_invoke_2;
    v12[3] = &unk_279D485B8;
  }

  v7[4] = self;
  v5 = [(NSArray *)v5 tsu_arrayOfObjectsPassingTest:?];
LABEL_17:
  v9 = self->mKnobs;
  if (v5 != v9)
  {

    v9 = v5;
    self->mKnobs = v9;
  }

  v10 = [(NSArray *)v9 count];
  result = self->mKnobs;
  if (!v10)
  {

    result = 0;
    self->mKnobs = 0;
  }

  return result;
}

uint64_t __15__TSDRep_knobs__block_invoke(uint64_t a1, void *a2)
{
  if ((*(a1 + 40) & TSDMaskForKnob([a2 tag])) != 0)
  {
    return 1;
  }

  v5 = *(a1 + 32);

  return [v5 directlyManagesVisibilityOfKnob:a2];
}

- (void)invalidateKnobs
{
  mKnobs = self->mKnobs;
  if (mKnobs)
  {

    self->mKnobs = 0;
    v4 = [(TSDRep *)self canvas];

    [(TSDCanvas *)v4 invalidateLayers];
  }
}

- (unint64_t)enabledKnobMask
{
  if ([objc_msgSend(-[TSDRep info](self "info")])
  {
    v3 = [objc_msgSend(-[TSDRep info](self "info")];
  }

  else
  {
    v3 = 990;
  }

  [(TSDRep *)self trackingBoundsForStandardKnobs];
  v5 = v4;
  v7 = v6;
  [(TSDCanvas *)self->mCanvas viewScale];
  v9 = TSDMultiplySizeScalar(v5, v7, v8);
  v11 = v3 & 0xFFFFFFFFFFFFFEFBLL;
  if (v9 >= 50.0)
  {
    v11 = v3;
  }

  if (v10 >= 50.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFAFLL;
  }

  if ([-[TSDRep info](self "info")])
  {
    v13 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometryInRoot];
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
    }

    TSDTransformAngle(&v19);
    TSURound();
    v14 = 0;
    for (i = 1; i != 10; ++i)
    {
      if ((TSDMaskForKnob(i) & v12) != 0)
      {
        v16 = TSDKnobTagByRotatingKnobByAngle(i);
        v17 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometry];
        if (v17)
        {
          [(TSDLayoutGeometry *)v17 transform];
        }

        else
        {
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
        }

        if (TSDIsTransformFlipped(&v19))
        {
          LOBYTE(v16) = TSDKnobTagWithFlip(v16);
        }

        v14 |= TSDMaskForKnob(v16);
      }
    }

    if (v14)
    {
      return v14;
    }
  }

  return v12;
}

- (void)addKnobsToArray:(id)a3
{
  if ([(TSDRep *)self shouldCreateSelectionKnobs])
  {
    [(TSDRep *)self addSelectionKnobsToArray:a3];
  }

  else if ([(TSDRep *)self shouldCreateLockedKnobs])
  {
    [(TSDRep *)self addLockedKnobsToArray:a3];
  }

  if ([(TSDRep *)self shouldCreateCommentKnob])
  {
    [(TSDRep *)self addCommentKnobToArray:a3];
  }

  if ([(TSDRep *)self shouldDisplayHyperlinkUI])
  {
    [(TSDRep *)self addHyperlinkKnobToArray:a3];
  }

  [(TSDRep *)self addActionGhostKnobToArrayIfNecessary:a3];
}

- (id)newSelectionKnobForType:(int)a3 tag:(unint64_t)a4
{
  v5 = *&a3;
  v7 = [TSDKnob alloc];
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);

  return [(TSDKnob *)v7 initWithType:v5 position:a4 radius:self tag:v8 onRep:v9, 15.0];
}

- (void)addSelectionKnobsToArray:(id)a3
{
  v5 = [(TSDRep *)self enabledKnobMask];
  if (v5)
  {
    v6 = v5;
    v7 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] defaultKnobTypeForRep:self];
    for (i = 1; i != 10; ++i)
    {
      if ((TSDMaskForKnob(i) & v6) != 0)
      {
        v9 = [(TSDRep *)self newSelectionKnobForType:v7 tag:i];
        [a3 addObject:v9];
      }
    }
  }
}

- (void)addLockedKnobsToArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  [(TSDRep *)self addSelectionKnobsToArray:v5];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setType:4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [a3 addObjectsFromArray:v5];
}

- (void)addActionGhostKnobToArrayIfNecessary:(id)a3
{
  v4 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] actionGhostKnobForRep:self];
  if (v4)
  {

    [a3 addObject:v4];
  }
}

- (CGRect)boundsForStandardKnobs
{
  v2 = [(TSDRep *)self layout];

  [(TSDLayout *)v2 boundsForStandardKnobs];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)trackingBoundsForStandardKnobs
{
  mKnobTracker = self->mKnobTracker;
  if (mKnobTracker)
  {
    [(TSDKnobTracker *)mKnobTracker currentBoundsForStandardKnobs];
  }

  else
  {
    [(TSDRep *)self boundsForStandardKnobs];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)updatePositionsOfKnobs:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  [(TSDRep *)self trackingBoundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        if (([v17 tag] - 1) <= 8)
        {
          [(TSDRep *)self positionOfStandardKnob:v17 forBounds:v6, v8, v10, v12];
LABEL_8:
          [v17 setPosition:?];
          continue;
        }

        if ([v17 tag] == 31)
        {
          [(TSDRep *)self boundsForStandardKnobs];
          v19 = v18;
          v21 = v20;
          if (-[TSDRep parentRep](self, "parentRep") && [v17 shouldDisplayDirectlyOverRep])
          {
            [[(TSDRep *)self parentRep] boundsForStandardKnobs];
            v19 = TSDAddPoints(v19, v21, v22);
          }

          v23 = TSDPositionOfKnobOnRectangle(1, v6, v8, v10, v12);
          v25 = v24;
          [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
          v27 = TSDAddPoints(v23, v25, v26 * -36.0);
          v29 = TSDSubtractPoints(v27, v28, v19);
          if (self)
          {
            v34 = v30;
            v35 = v29;
            [(TSDRep *)self transformToConvertNaturalFromLayerRelative];
            v30 = v34;
            v29 = v35;
            v32 = v36;
            v31 = v37;
            v33 = v38;
          }

          else
          {
            v33 = 0uLL;
            v32 = 0uLL;
            v31 = 0uLL;
          }

          [v17 setPosition:{vaddq_f64(v33, vmlaq_n_f64(vmulq_n_f64(v31, v30), v32, v29))}];
          [v17 updateHitRegionPathForRep:self];
        }

        else
        {
          if ([v17 tag] == 33)
          {
            [(TSDRep *)self positionOfHyperlinkKnob];
            goto LABEL_8;
          }

          if ([v17 tag] == 34)
          {
            [(TSDRep *)self p_positionOfActionGhostKnobForBounds:v6, v8, v10, v12];
            goto LABEL_8;
          }
        }
      }

      v14 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }
}

- (CGPoint)positionOfHyperlinkKnob
{
  [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:@"TSDKnobHyperlink_N" inBundle:{TSDBundle()), "size"}];
  v4 = v3;
  v20 = v5;
  [(TSDRep *)self boundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v15 = v14;
  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  v16 = -1.0 / v15;
  v17 = CGRectGetMaxX(v22) + v16 * (v4 * 0.5 + 6.0);
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v18 = CGRectGetMaxY(v23) + v16 * (v20 * 0.5 + 6.0);
  v19 = v17;
  result.y = v18;
  result.x = v19;
  return result;
}

- (CGPoint)positionOfActionGhostKnob
{
  [(TSDRep *)self boundsForStandardKnobs];

  [(TSDRep *)self p_positionOfActionGhostKnobForBounds:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)p_positionOfActionGhostKnobForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:@"sf-mac_canvas_btn_actionAdd-N" inBundle:{TSDBundle()), "size"}];
  v9 = v8;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v11 = 1.0 / v10;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = CGRectGetMaxY(v17) + v11 * v9 + 1.0;
  v14 = MidX;
  result.y = v13;
  result.x = v14;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![a3 tag] || objc_msgSend(a3, "tag") >= 0xA)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep positionOfStandardKnob:forBounds:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 1626, @"-positionOfStandardKnob:forBounds: works for standard knobs only"}];
  }

  [a3 offset];
  v13 = v12;
  v15 = v14;
  if (![a3 offsetValid])
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
    if (width * v16 <= 16.0)
    {
      if ([a3 tag] == 1 || objc_msgSend(a3, "tag") == 4 || objc_msgSend(a3, "tag") == 7)
      {
        [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
        v13 = v13 - (8.0 / v17 + width * -0.5);
      }

      else if ([a3 tag] == 3 || objc_msgSend(a3, "tag") == 6 || objc_msgSend(a3, "tag") == 9)
      {
        [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
        v13 = v13 + 8.0 / v24 + width * -0.5;
      }
    }

    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
    if (height * v18 <= 16.0)
    {
      if ([a3 tag] == 1 || objc_msgSend(a3, "tag") == 2 || objc_msgSend(a3, "tag") == 3)
      {
        [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
        v15 = v15 - (8.0 / v19 + height * -0.5);
      }

      else if ([a3 tag] == 7 || objc_msgSend(a3, "tag") == 8 || objc_msgSend(a3, "tag") == 9)
      {
        [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
        v15 = v15 + 8.0 / v25 + height * -0.5;
      }
    }

    [a3 setOffset:{v13, v15}];
    [a3 setOffsetValid:1];
  }

  v20 = TSDPositionOfKnobOnRectangle([a3 tag], x, y, width, height);

  v22 = TSDAddPoints(v20, v21, v13);
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)invalidateKnobPositions
{
  self->mKnobPositionsInvalid = 1;
  [(TSDRep *)self i_invalidateSelectionHighlightLayer];
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas invalidateLayers];
}

- (void)p_toggleHyperlinkUIVisibility
{
  v3 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 toggleHyperlinkUIForRep:self];
}

- (void)p_actionGhostKnobHit
{
  v3 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 actionGhostKnobHitForRep:self];
}

- (id)knobForTag:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TSDRep *)self knobs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 tag] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (double)additionalRotationForKnobOrientation
{
  v2 = [(TSDRep *)self layout];
  if (v2)
  {
    [(TSDAbstractLayout *)v2 transformInRoot];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return TSDTransformAngle(v4);
}

- (BOOL)shouldShowSelectionHighlight
{
  v3 = [(TSDRep *)self isSelectedIgnoringLocking];
  if (v3)
  {
    if (![(TSDRep *)self isInDynamicOperation]|| self->mShowKnobsWhenManipulated && self->mKnobsAreShowing)
    {
      LOBYTE(v3) = ![(TSDKnobTracker *)self->mKnobTracker shouldHideSelectionHighlight];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)shouldCreateSelectionKnobs
{
  v3 = [(TSDRep *)self isSelected];
  if (v3)
  {
    LOBYTE(v3) = ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] usesAlternateDrawableSelectionHighlight];
  }

  return v3;
}

- (BOOL)shouldCreateLockedKnobs
{
  v3 = [(TSDRep *)self isSelectedIgnoringLocking];
  if (v3)
  {

    LOBYTE(v3) = [(TSDRep *)self isLocked];
  }

  return v3;
}

- (BOOL)shouldCreateCommentKnob
{
  objc_opt_class();
  [(TSDRep *)self info];
  v3 = TSUDynamicCast();
  if ([(TSDInteractiveCanvasController *)[(TSDCanvas *)[(TSDRep *)self canvas] canvasController] shouldDisplayCommentUIForInfo:v3])
  {
    v4 = [(TSDRep *)self shouldShowCommentHighlight];
  }

  else
  {
    v4 = 0;
  }

  return [v3 comment] != 0 && v4;
}

- (BOOL)shouldDisplayHyperlinkUI
{
  LODWORD(v3) = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldShowOnRepHyperlinkUI];
  if (v3)
  {
    if ([(TSDRep *)self isEditingPath])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      objc_opt_class();
      [(TSDRep *)self info];
      v3 = TSUDynamicCast();
      if (v3)
      {
        LOBYTE(v3) = [objc_msgSend(objc_msgSend(v3 "hyperlinkURL")] != 0;
      }
    }
  }

  return v3;
}

- (void)turnKnobsOn
{
  v17 = *MEMORY[0x277D85DE8];
  self->mKnobsAreShowing = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mKnobs = self->mKnobs;
  v4 = [(NSArray *)mKnobs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(mKnobs);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [objc_msgSend(v8 "layer")];
        if (v9 != 1.0 && ![(TSDRep *)self directlyManagesVisibilityOfKnob:v8])
        {
          v10 = [v8 layer];
          LODWORD(v11) = 1.0;
          [v10 setOpacity:v11];
        }
      }

      v5 = [(NSArray *)mKnobs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)fadeKnobsIn
{
  v20 = *MEMORY[0x277D85DE8];
  self->mKnobsAreShowing = 1;
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.150000006];
  LODWORD(v4) = 1.0;
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v4)}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mKnobs = self->mKnobs;
  v6 = [(NSArray *)mKnobs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(mKnobs);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [objc_msgSend(v10 "layer")];
        if (v11 != 1.0 && ![(TSDRep *)self directlyManagesVisibilityOfKnob:v10])
        {
          v12 = MEMORY[0x277CCABB0];
          [objc_msgSend(v10 "layer")];
          [v3 setFromValue:{objc_msgSend(v12, "numberWithFloat:")}];
          v13 = [v10 layer];
          LODWORD(v14) = 1.0;
          [v13 setOpacity:v14];
          [objc_msgSend(v10 "layer")];
        }
      }

      v7 = [(NSArray *)mKnobs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)fadeKnobsOut
{
  v17 = *MEMORY[0x277D85DE8];
  self->mKnobsAreShowing = 0;
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.150000006];
  LODWORD(v4) = 1.0;
  [v3 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v4)}];
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  mKnobs = self->mKnobs;
  v6 = [(NSArray *)mKnobs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mKnobs);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [objc_msgSend(v10 "layer")];
        if (v11 == 1.0 && ![(TSDRep *)self directlyManagesVisibilityOfKnob:v10])
        {
          [objc_msgSend(v10 "layer")];
          [objc_msgSend(v10 "layer")];
        }
      }

      v7 = [(NSArray *)mKnobs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (double)selectionHighlightWidth
{
  v2 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] usesAlternateDrawableSelectionHighlight];
  result = 1.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (void)setSelectionHighlightColor:(CGColor *)a3
{
  Copy = CGColorCreateCopy(a3);
  CGColorRelease(self->mDefaultSelectionHighlightColor);
  self->mDefaultSelectionHighlightColor = Copy;
}

- (CGColor)selectionHighlightColor
{
  if ([(TSDRep *)self isLocked])
  {
    if (selectionHighlightColor_sOnce != -1)
    {
      [TSDRep selectionHighlightColor];
    }

    return selectionHighlightColor_sLockedSelectionHighlightColor;
  }

  else
  {
    result = self->mDefaultSelectionHighlightColor;
    if (!result)
    {
      result = CGColorCreateCopy([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] selectionHighlightColor]);
      self->mDefaultSelectionHighlightColor = result;
    }
  }

  return result;
}

CGColorRef __33__TSDRep_selectionHighlightColor__block_invoke()
{
  result = CGColorRetain([objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.85 green:0.85 blue:0.85 alpha:{1.0), "CGColor"}]);
  selectionHighlightColor_sLockedSelectionHighlightColor = result;
  return result;
}

- (CGAffineTransform)transformForHighlightLayer
{
  if (self->mKnobTracker)
  {
    mKnobTracker = self->mKnobTracker;

    return [(TSDKnobTracker *)mKnobTracker transformInRootForStandardKnobs];
  }

  else
  {
    result = [(TSDRep *)self layout];
    if (result)
    {

      return [(CGAffineTransform *)result transformInRoot];
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  return result;
}

- (id)selectionHighlightLayer
{
  mSelectionHighlightLayer = self->mSelectionHighlightLayer;
  if (mSelectionHighlightLayer || (mSelectionHighlightLayer = objc_alloc_init(MEMORY[0x277CD9F90]), [(CALayer *)mSelectionHighlightLayer setFillColor:0], [(TSDRep *)self selectionHighlightWidth], [(CALayer *)mSelectionHighlightLayer setLineWidth:?], [(CALayer *)mSelectionHighlightLayer setDelegate:[(TSDRep *)self interactiveCanvasController]], (self->mSelectionHighlightLayer = mSelectionHighlightLayer) != 0))
  {
    if (!self->mSelectionHighlightLayerValid)
    {
      objc_opt_class();
      v4 = TSUDynamicCast();
      if (v4)
      {
        v5 = v4;
        [v4 setStrokeColor:{-[TSDRep selectionHighlightColor](self, "selectionHighlightColor")}];
        [(TSDRep *)self selectionHighlightWidth];
        [v5 setLineWidth:?];
        [(TSDCanvas *)self->mCanvas viewScale];
        v7 = v6;
        [(TSDRep *)self boundsForHighlightLayer];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        memset(&v24, 0, sizeof(v24));
        [(TSDRep *)self transformForHighlightLayer];
        CGAffineTransformMakeScale(&t2, v7, v7);
        v21 = v24;
        CGAffineTransformConcat(&v23, &v21, &t2);
        v24 = v23;
        [v5 lineWidth];
        v17 = v16;
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        v19 = TSDCreateAADefeatedRectPath(&v24, v9, v11, v13, v15, v17, v18);
        [v5 setPath:v19];
        CGPathRelease(v19);
      }

      self->mSelectionHighlightLayerValid = 1;
      return self->mSelectionHighlightLayer;
    }
  }

  return mSelectionHighlightLayer;
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3
{
  if (self->mKnobTracker)
  {
    [(TSDKnobTracker *)self->mKnobTracker convertKnobPositionToUnscaledCanvas:a3.x, a3.y];
  }

  else
  {
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:a3.x, a3.y];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (id)p_addLayersForKnobsToArray:(id)a3 withDelegate:(id)a4 isOverlay:(BOOL)a5
{
  v9 = [(TSDRep *)self interactiveCanvasController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v10 = __60__TSDRep_p_addLayersForKnobsToArray_withDelegate_isOverlay___block_invoke;
  v14 = __60__TSDRep_p_addLayersForKnobsToArray_withDelegate_isOverlay___block_invoke;
  v15 = &unk_279D485E0;
  v16 = self;
  v17 = a5;
  if (!a3)
  {
    a3 = [MEMORY[0x277CBEB18] array];
    v10 = v14;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__TSDRep_p_addLayersForKnobsToArray_withDelegate_isOverlay___block_invoke_2;
  v12[3] = &unk_279D48608;
  v12[4] = a4;
  v12[5] = v9;
  v12[6] = self;
  v12[7] = a3;
  v10(v13, v12);
  return a3;
}

uint64_t __60__TSDRep_p_addLayersForKnobsToArray_withDelegate_isOverlay___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) knobs];
  result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [v9 layer];
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 40);
          if (v12 != [v9 shouldDisplayDirectlyOverRep])
          {
            if ((*(*(a1 + 32) + 34) & 1) != 0 || ([v11 opacity], v13 != 0.0) || (objc_msgSend(objc_msgSend(v11, "presentationLayer"), "opacity"), v14 != 0.0) || objc_msgSend(*(a1 + 32), "directlyManagesVisibilityOfKnob:", v9))
            {
              (*(a2 + 16))(a2, v9, v11);
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __60__TSDRep_p_addLayersForKnobsToArray_withDelegate_isOverlay___block_invoke_2(uint64_t *a1, void *a2, void *a3)
{
  if (![a3 delegate])
  {
    v6 = a1[4];
    if (!v6)
    {
      v6 = a1[5];
    }

    [a3 setDelegate:v6];
  }

  v7 = a1[6];
  [a2 position];
  [v7 convertKnobPositionToUnscaledCanvas:?];
  [a1[5] convertUnscaledToBoundsPoint:?];
  v9 = v8;
  v11 = v10;
  [a3 bounds];
  v16 = TSDCenterOfRect(v12, v13, v14, v15);
  v17 = TSDSubtractPoints(v9, v11, v16);
  v19 = v18;
  [objc_msgSend(a1[5] "canvas")];
  v21 = TSDRoundedPointForScale(v17, v19, v20);
  v24 = TSDAddPoints(v21, v22, v16);
  v25 = v23;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [a3 setPosition:{v24, v25}];
    [MEMORY[0x277CD9FF0] commit];
    v31 = a1[7];

    return [v31 addObject:a3];
  }

  else
  {
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep p_addLayersForKnobsToArray:withDelegate:isOverlay:]_block_invoke_2"];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"];

    return [v27 handleFailureInFunction:v28 file:v29 lineNumber:2044 description:@"Knob layer position must be finite"];
  }
}

- (id)overlayLayers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TSDRep *)self interactiveCanvasController];
  if ([(TSDRep *)self shouldShowSelectionHighlight])
  {
    v5 = [(TSDRep *)self selectionHighlightLayer];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  if ([(TSDInteractiveCanvasController *)v4 shouldPopKnobsOutsideEnclosingScrollView])
  {
    return v3;
  }

  return [(TSDRep *)self p_addLayersForKnobsToArray:v3 withDelegate:v4 isOverlay:1];
}

- (id)popoutLayers
{
  if (![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldPopKnobsOutsideEnclosingScrollView])
  {
    return 0;
  }

  v3 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDRep *)self p_addLayersForKnobsToArray:0 withDelegate:v3 isOverlay:1];
}

- (CGPoint)i_dragOffset
{
  [(TSDLayoutGeometry *)[(TSDLayout *)[(TSDRep *)self layout] dynamicGeometry] frame];
  v4 = v3;
  v6 = v5;
  [(TSDLayoutGeometry *)[(TSDLayout *)[(TSDRep *)self layout] originalGeometry] frame];

  v8 = TSDSubtractPoints(v4, v6, v7);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGRect)i_originalLayerFrameInScaledCanvas
{
  x = self->mOriginalLayerFrameInScaledCanvas.origin.x;
  y = self->mOriginalLayerFrameInScaledCanvas.origin.y;
  width = self->mOriginalLayerFrameInScaledCanvas.size.width;
  height = self->mOriginalLayerFrameInScaledCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dynamicRotateDidBegin
{
  [(TSDRep *)self recursivelyPerformSelector:sel_p_dynamicRotateDidBegin];
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas layoutInvalidated];
}

- (void)p_dynamicRotateDidBegin
{
  if (![(TSDRep *)self isInDynamicOperation])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep p_dynamicRotateDidBegin]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 2354, @"dynamic rotate began outside of dynamic operation"}];
  }

  v5 = [(TSDRep *)self layout];

  [(TSDLayout *)v5 beginRotate];
}

- (double)angleForRotation
{
  v2 = [-[TSDRep info](self "info")];

  [v2 angle];
  return result;
}

- (CGPoint)unscaledGuidePosition
{
  [(TSDRep *)self naturalBounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);

  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:MidX, MinY];
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)canClipThemeContentToCanvas
{
  if ([(TSDRep *)self isPlaceholder])
  {
    return 0;
  }

  v4 = [(TSDRep *)self info];

  return [v4 isThemeContent];
}

- (void)setTexture:(id)a3
{
  mTexture = self->mTexture;
  if (mTexture != a3)
  {
    [(TSDTextureSet *)mTexture teardown];

    self->mTexture = a3;
  }
}

- (double)textureAngle
{
  v3 = [(TSDRep *)self layout];
  if (v3)
  {
    [(TSDAbstractLayout *)v3 transformInRoot];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v4 = -TSDTransformAngle(v9);
  mTextureActionAttributes = self->mTextureActionAttributes;
  if (mTextureActionAttributes)
  {
    v6 = [(NSDictionary *)mTextureActionAttributes valueForKey:@"sfx-action-rotation-angle"];
    if (v6)
    {
      [v6 floatValue];
      return v4 - v7;
    }
  }

  return v4;
}

- (void)markTextureDirty
{
  self->mTexture = 0;

  self->mTextureContext = 0;
}

- (void)setTextureDeliveryStyle:(unint64_t)a3
{
  if (self->mTextureDeliveryStyle != a3)
  {
    [(TSDRep *)self markTextureDirty];
  }

  self->mTextureDeliveryStyle = a3;
}

- (void)setTextureByGlyphStyle:(int)a3
{
  if (self->mTextureByGlyphStyle != a3)
  {
    [(TSDRep *)self markTextureDirty];
  }

  self->mTextureByGlyphStyle = a3;
}

- (void)setTextureActionAttributes:(id)a3
{
  if (a3 || self->mTextureActionAttributes)
  {
    mTexture = self->mTexture;
    if ((!mTexture || !-[TSDTextureSet alternateLayer](mTexture, "alternateLayer")) && ([a3 isEqualToDictionary:self->mTextureActionAttributes] & 1) == 0)
    {

      if (a3)
      {
        v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:a3];
      }

      else
      {
        v6 = 0;
      }

      self->mTextureActionAttributes = v6;

      [(TSDRep *)self markTextureDirty];
    }
  }
}

- (CGAffineTransform)unRotatedTransform:(SEL)a3
{
  v7 = *&a4->c;
  *&v21.a = *&a4->a;
  *&v21.c = v7;
  *&v21.tx = *&a4->tx;
  v8 = TSDTransformAngle(&v21.a);
  [(TSDRep *)self centerForRotation];
  v10 = v9;
  v12 = v11;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v13;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&t1.a = *&v21.a;
  *&t1.c = v13;
  *&t1.tx = *&v21.tx;
  CGAffineTransformTranslate(&v21, &t1, v9, v12);
  v19 = v21;
  CGAffineTransformRotate(&t1, &v19, v8 * -3.14159265 / 180.0);
  v21 = t1;
  v19 = t1;
  CGAffineTransformTranslate(&t1, &v19, -v10, -v12);
  v21 = t1;
  v14 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v14;
  *&t1.tx = *&a4->tx;
  if (TSDIsTransformFlipped(&t1.a))
  {
    v15 = *&a4->c;
    *&t1.a = *&a4->a;
    *&t1.c = v15;
    *&t1.tx = *&a4->tx;
    *&v19.a = *&v21.a;
    *&v19.c = *&v21.c;
    v16 = *&v21.tx;
  }

  else
  {
    t1 = v21;
    v17 = *&a4->c;
    *&v19.a = *&a4->a;
    *&v19.c = v17;
    v16 = *&a4->tx;
  }

  *&v19.tx = v16;
  return CGAffineTransformConcat(retstr, &t1, &v19);
}

- (void)p_setMagicMoveTextureAttributes:(id)a3
{
  [objc_msgSend(-[TSDRep info](self "info")];
  [a3 setTextureAngle:v5 * 0.0174532925];
  [(TSDRep *)self naturalBounds];
  [a3 setTextureContentRect:?];
  v6 = [-[TSDCanvas topLevelReps](-[TSDRep canvas](self "canvas")];

  [a3 setTextureZOrder:v6];
}

- (id)textureForContext:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  if (self->mTexture && [a3 isEqual:self->mTextureContext] && !-[TSDRep temporaryMixingLayout](self, "temporaryMixingLayout"))
  {
    return self->mTexture;
  }

  v5 = [a3 isMagicMove];
  v6 = TSUProtocolCast();
  memset(&v63, 0, sizeof(v63));
  v7 = [(TSDRep *)self layout];
  if (v7)
  {
    [(TSDAbstractLayout *)v7 transformInRoot];
  }

  else
  {
    memset(&v63, 0, sizeof(v63));
  }

  mTextureActionAttributes = self->mTextureActionAttributes;
  if (mTextureActionAttributes)
  {
    v9 = [(NSDictionary *)mTextureActionAttributes valueForKey:@"sfx-action-rotation-angle"];
    if (v9)
    {
      [v9 floatValue];
      v11 = v10 * 0.0174532925;
      [(TSDRep *)self centerForRotation];
      v13 = v12;
      v15 = v14;
      v61 = v63;
      CGAffineTransformTranslate(&v62, &v61, v12, v14);
      v63 = v62;
      v61 = v62;
      CGAffineTransformRotate(&v62, &v61, v11);
      v63 = v62;
      v61 = v62;
      CGAffineTransformTranslate(&v62, &v61, -v13, -v15);
      v63 = v62;
    }
  }

  if (v5)
  {
    v61 = v63;
    [(TSDRep *)self unRotatedTransform:&v61];
    v63 = v62;
  }

  [(TSDCanvas *)self->mCanvas viewScale];
  v17 = v16;
  [(TSDRep *)self clipRect];
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  v62 = v63;
  v67 = CGRectApplyAffineTransform(v66, &v62);
  v21 = TSDMultiplyRectScalar(v67.origin.x, v67.origin.y, v67.size.width, v67.size.height, v17);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(TSDRep *)self naturalBounds];
  v62 = v63;
  v69 = CGRectApplyAffineTransform(v68, &v62);
  v46 = TSDMultiplyRectScalar(v69.origin.x, v69.origin.y, v69.size.width, v69.size.height, v17);
  v70.origin.x = v21;
  v70.origin.y = v23;
  v70.size.width = v25;
  v70.size.height = v27;
  v71 = CGRectIntegral(v70);
  v28 = v71.origin.x;
  v29 = v71.origin.y;
  v30 = v71.size.width;
  v31 = v71.size.height;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __28__TSDRep_textureForContext___block_invoke;
  v53[3] = &unk_279D48630;
  v54 = v71;
  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  v59 = v17;
  v60 = v63;
  v48 = a3;
  v53[4] = a3;
  v53[5] = self;
  v53[6] = v6;
  v32 = objc_alloc_init(TSDTextureSet);
  v33 = [TSDTexturedRectangle alloc];
  v34 = TSDSubtractPoints(v28, v29, v46);
  v36 = [(TSDTexturedRectangle *)v33 initWithSize:v53 offset:v30 renderBlock:v31, v34, v35];
  v37 = v5;
  if (v5)
  {
    if (([v48 shouldNotAddContainedReps] & 1) == 0)
    {
      v38 = [MEMORY[0x277CCAB68] string];
      if (v6)
      {
        v39 = v38;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v40 = [v6 childReps];
        v41 = [v40 countByEnumeratingWithState:&v49 objects:v64 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v50;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v50 != v43)
              {
                objc_enumerationMutation(v40);
              }

              [v39 appendFormat:@"%@ ", objc_opt_class()];
            }

            v42 = [v40 countByEnumeratingWithState:&v49 objects:v64 count:16];
          }

          while (v42);
        }
      }
    }
  }

  [(TSDTextureSet *)v32 setIsMagicMove:v37];
  [(TSDTexturedRectangle *)v36 setTextureType:5];
  [(TSDTexturedRectangle *)v36 setTextureOpacity:1.0];
  [(TSDTextureSet *)v32 addRenderable:v36];

  [(TSDRep *)self opacity];
  [(TSDTextureSet *)v32 setTextureOpacity:?];
  [(TSDRep *)self centerForRotation];
  [(TSDTextureSet *)v32 setCenter:?];
  if (([v48 shouldNotCacheTexture] & 1) == 0)
  {
    [(TSDRep *)self setTextureContext:v48];
    [(TSDRep *)self setTexture:v32];
  }

  return v32;
}

uint64_t __28__TSDRep_textureForContext___block_invoke(uint64_t a1, CGContextRef c)
{
  v20 = *MEMORY[0x277D85DE8];
  CGContextSetAllowsFontSmoothing(c, 0);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextTranslateCTM(c, -*(a1 + 56), -*(a1 + 64));
  if ([*(a1 + 32) shouldDistortToFit])
  {
    v4 = *(a1 + 72) / *(a1 + 104);
    v5 = *(a1 + 80) / *(a1 + 112);
    v6 = c;
  }

  else
  {
    v4 = *(a1 + 120);
    v6 = c;
    v5 = v4;
  }

  CGContextScaleCTM(v6, v4, v5);
  v7 = *(a1 + 144);
  *&transform.a = *(a1 + 128);
  *&transform.c = v7;
  *&transform.tx = *(a1 + 160);
  CGContextConcatCTM(c, &transform);
  CGContextSaveGState(c);
  [*(a1 + 40) drawInContext:c];
  CGContextRestoreGState(c);
  result = [*(a1 + 32) shouldNotAddContainedReps];
  if ((result & 1) == 0)
  {
    result = *(a1 + 48);
    if (result)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [result childReps];
      result = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (result)
      {
        v10 = result;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v14 + 1) + 8 * v12);
            CGContextSaveGState(c);
            [v13 recursivelyDrawInContext:c];
            CGContextRestoreGState(c);
            ++v12;
          }

          while (v10 != v12);
          result = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
          v10 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (BOOL)shouldLayoutTilingLayer:(id)a3
{
  v4 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v4 shouldLayoutTilingLayer:a3];
}

- (BOOL)canDrawTilingLayerInBackground:(id)a3
{
  if ([(TSDRep *)self mustDrawTilingLayerOnMainThread:a3]|| ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] supportsBackgroundTileRendering])
  {
    return 0;
  }

  v4 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v4 currentlyScrolling];
}

- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3
{
  v4 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)v4 mustDrawTilingLayerOnMainThread:a3];
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  v4 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v4 visibleBoundsForTilingLayer:a3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)queueForDrawingTilingLayerInBackground:(id)a3
{
  v4 = [(TSDRep *)self interactiveCanvasController];
  v5 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];

  return [(TSDInteractiveCanvasController *)v4 queueForDrawingTilingLayerInBackground:v5];
}

- (BOOL)shouldBeginDrawingTilingLayerInBackground:(id)a3 returningToken:(id *)a4 andQueue:(id *)a5
{
  v8 = [(TSDRep *)self interactiveCanvasController];
  v9 = [(TSDInteractiveCanvasController *)v8 layerForRep:self];

  return [(TSDInteractiveCanvasController *)v8 shouldBeginDrawingTilingLayerInBackground:v9 returningToken:a4 andQueue:a5];
}

- (void)didEndDrawingTilingLayerInBackground:(id)a3 withToken:(id)a4
{
  v6 = [(TSDRep *)self interactiveCanvasController];
  v7 = [(TSDInteractiveCanvasController *)v6 layerForRep:self];

  [(TSDInteractiveCanvasController *)v6 didEndDrawingTilingLayerInBackground:v7 withToken:a4];
}

- (void)processChangedProperty:(int)a3
{
  if (a3 <= 520)
  {
    if (a3 != 512)
    {
      if (a3 == 513)
      {
        [(TSDRep *)self invalidateKnobPositions];
      }

      return;
    }

LABEL_7:
    [(TSDRep *)self invalidateKnobs];
    return;
  }

  if (a3 == 521 || a3 == 524)
  {
    goto LABEL_7;
  }
}

- (void)willUpdateLayer:(id)a3
{
  v5 = ([a3 shouldRasterize] & 1) != 0 || -[TSDRep forceRasterization](self, "forceRasterization");

  [a3 setShouldRasterize:v5];
}

- (id)additionalLayersOverLayer
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TSDRep *)self interactiveCanvasController];

  return [(TSDRep *)self p_addLayersForKnobsToArray:v3 withDelegate:v4 isOverlay:0];
}

- (BOOL)shouldShowCommentHighlight
{
  objc_opt_class();
  [(TSDRep *)self info];
  v3 = TSUDynamicCast();
  v4 = [(TSDInteractiveCanvasController *)[(TSDCanvas *)[(TSDRep *)self canvas] canvasController] shouldDisplayCommentUIForInfo:v3];
  if (self)
  {
    do
    {
      v5 = [(TSDRep *)self isBeingRotated];
      if (v5)
      {
        break;
      }

      self = [(TSDRep *)self parentRep];
    }

    while (self);
    v6 = !v5;
    if (v3)
    {
      return ([v3 comment] != 0) & v4 & v6;
    }
  }

  else
  {
    v6 = 1;
    if (v3)
    {
      return ([v3 comment] != 0) & v4 & v6;
    }
  }

  return 0;
}

- (void)invalidateAnnotationColor
{
  if ([(TSDRep *)self shouldShowCommentHighlight])
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] invalidateLayers];
  }

  [(TSDRep *)self invalidateKnobs];
}

- (id)allLayers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:{-[TSDInteractiveCanvasController layerForRep:](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", self)}];
  [v3 addObjectsFromArray:{-[TSDRep additionalLayersOverLayer](self, "additionalLayersOverLayer")}];
  [v3 addObjectsFromArray:{-[TSDRep additionalLayersUnderLayer](self, "additionalLayersUnderLayer")}];
  [v3 addObjectsFromArray:{-[TSDRep overlayLayers](self, "overlayLayers")}];
  return v3;
}

- (int)dragTypeAtCanvasPoint:(CGPoint)a3
{
  if ([-[TSDRep repForSelecting](self repForSelecting])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isLocked
{
  objc_opt_class();
  [(TSDRep *)self info];
  v3 = TSUDynamicCast();
  if (v3 && ([v3 isLocked] & 1) != 0)
  {
    return 1;
  }

  v5 = [(TSDRep *)self parentRep];

  return [(TSDRep *)v5 isLocked];
}

- (CGRect)targetRectForEditMenu
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)adjustedKnobForComputingResizeGeometry:(unint64_t)a3
{
  if ([-[TSDRep info](self "info")] && (objc_opt_class(), -[TSDRep info](self, "info"), (objc_msgSend(objc_msgSend(TSUDynamicCast(), "exteriorTextWrap"), "isHTMLWrap") & 1) != 0) || objc_msgSend(-[TSDRep info](self, "info"), "isInlineWithText"))
  {
    v5 = 9;
    if (a3 != 7)
    {
      v5 = a3;
    }

    if (a3 == 4)
    {
      return 6;
    }

    else
    {
      return v5;
    }
  }

  return a3;
}

- (CGPoint)centerForRotation
{
  v2 = [(TSDRep *)self layout];

  [(TSDLayout *)v2 centerForRotation];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)i_queueForTileProvider
{
  mTileProviderQueueLock = self->mTileProviderQueueLock;
  p_mTileProviderQueueLock = &self->mTileProviderQueueLock;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TSDRep_i_queueForTileProvider__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (mTileProviderQueueLock != -1)
  {
    dispatch_once(p_mTileProviderQueueLock, block);
  }

  return self->mTileProviderQueue;
}

dispatch_queue_t __32__TSDRep_i_queueForTileProvider__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canDrawInParallel])
  {
    v2 = MEMORY[0x277D85CD8];
  }

  else
  {
    v2 = 0;
  }

  result = dispatch_queue_create("com.apple.iwork.TSDTileProvider", v2);
  *(*(a1 + 32) + 256) = result;
  return result;
}

- (id)i_tileQueue
{
  mTileQueueOnce = self->mTileQueueOnce;
  p_mTileQueueOnce = &self->mTileQueueOnce;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__TSDRep_i_tileQueue__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (mTileQueueOnce != -1)
  {
    dispatch_once(p_mTileQueueOnce, block);
  }

  return self->mTileQueue;
}

TSDTilingBackgroundQueue *__21__TSDRep_i_tileQueue__block_invoke(uint64_t a1)
{
  result = -[TSDTilingBackgroundQueue initWithAccessController:]([TSDTilingBackgroundQueue alloc], "initWithAccessController:", [objc_msgSend(*(a1 + 32) "canvas")]);
  *(*(a1 + 32) + 232) = result;
  return result;
}

- (NSArray)hyperlinkRegions
{
  objc_opt_class();
  [(TSDRep *)self info];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (![v3 hyperlinkURL])
  {
    return 0;
  }

  if (![objc_msgSend(objc_msgSend(v4 "hyperlinkURL")])
  {
    return 0;
  }

  objc_opt_class();
  [(TSDRep *)self layout];
  v5 = TSUDynamicCast();
  if (!v5)
  {
    return 0;
  }

  v6 = -[TSDHyperlinkRegion initWithURL:bezierPath:]([TSDHyperlinkRegion alloc], "initWithURL:bezierPath:", [v4 hyperlinkURL], objc_msgSend(v5, "i_wrapPath"));
  v7 = MEMORY[0x277CBEA60];

  return [v7 arrayWithObject:v6];
}

- (void)willReplaceContentsFromRep:(id)a3
{
  v5 = [(TSDRep *)self info];
  if (v5 != [a3 info])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep willReplaceContentsFromRep:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 3350, @"Reps do not share a common info:\n%@\n%@", self, a3}];
  }
}

- (void)replaceContentsFromRep:(id)a3
{
  v5 = [(TSDRep *)self info];
  if (v5 != [a3 info])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRep replaceContentsFromRep:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRep.m"), 3357, @"Reps do not share a common info:\n%@\n%@", self, a3}];
  }
}

- (id)subviewsController
{
  if ([(TSDRep *)self parentRep])
  {
    v3 = [(TSDRep *)self parentRep];
  }

  else
  {
    v3 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerHost];
  }

  return [(TSDRep *)v3 subviewsController];
}

- (CGRect)i_partition_deepClipRect
{
  v29 = *MEMORY[0x277D85DE8];
  [(TSDRep *)self clipRect];
  x = v2;
  y = v4;
  width = v6;
  height = v8;
  v10 = TSUProtocolCast();
  if (v10)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 childReps];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          memset(&v23, 0, sizeof(v23));
          v17 = [objc_msgSend(v16 "layout")];
          if (v17)
          {
            [v17 transform];
          }

          else
          {
            memset(&v22, 0, sizeof(v22));
          }

          CGAffineTransformInvert(&v23, &v22);
          [v16 i_partition_deepClipRect];
          v22 = v23;
          v34 = CGRectApplyAffineTransform(v30, &v22);
          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          v32 = CGRectUnion(v31, v34);
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end