@interface TSDImageRep
+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)size withImageLayout:(id)layout orientation:(int64_t)orientation;
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)p_directlyManagesContentForLayer:(id)layer;
- (BOOL)p_drawsInOneStep;
- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point;
- (BOOL)p_okayToGenerateSizedImage;
- (BOOL)p_shouldBakeMaskIntoSizedImage;
- (BOOL)p_shouldMaskWithFrameLayers;
- (BOOL)p_shouldRenderWithMaskToBounds;
- (BOOL)p_takeSizedImageFromState:(id)state;
- (BOOL)shouldAllowReplacementFromPaste;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowMediaReplaceUI;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldShowSmartMaskKnobs;
- (BOOL)wantsToDistortWithImagerContext;
- (CGAffineTransform)transformForHighlightLayer;
- (CGImage)p_imageForDirectlyManagedLayer:(id)layer;
- (CGImage)p_newImageByApplyingAdjustmentsToImage:(CGImage *)image alreadyEnhanced:(BOOL)enhanced;
- (CGPoint)centerForRotation;
- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds;
- (CGRect)boundsForHighlightLayer;
- (CGRect)boundsForStandardKnobs;
- (CGRect)frameInUnscaledCanvas;
- (CGSize)p_desiredSizedImageSize;
- (TSDImageRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)additionalRotationForKnobOrientation;
- (id)additionalLayersOverLayer;
- (id)contentsLayer;
- (id)hitRepChrome:(CGPoint)chrome;
- (id)imageInfo;
- (id)imageLayout;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)maskInfo;
- (id)maskLayout;
- (id)newCachedSizedImage;
- (id)newCachedSizedImageWithNaturalSize;
- (id)overlayLayers;
- (id)p_imageData;
- (id)p_imageProvider;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)textureForContext:(id)context;
- (int)dragTypeAtCanvasPoint:(CGPoint)point;
- (int64_t)p_orientationForDirectlyManagedLayer;
- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context;
- (void)addKnobsToArray:(id)array;
- (void)becameNotSelected;
- (void)cacheImageAtCurrentSize;
- (void)dealloc;
- (void)didCreateLayer:(id)layer;
- (void)didUpdateLayer:(id)layer;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children;
- (void)generateSizedImageOnBackgroundThread;
- (void)highlightImage;
- (void)i_willEnterForeground;
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)p_createMaskLayerForLayer:(id)layer;
- (void)p_disposeMaskLayer;
- (void)p_disposeStrokeLayer;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(double)opacity withMask:(BOOL)mask withIAMask:(BOOL)aMask forLayer:(BOOL)layer forShadow:(BOOL)self0 forHitTest:(BOOL)self1;
- (void)p_generateSizedImage:(id)image;
- (void)p_generateSizedImageIfNecessary;
- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)frame transform:(CGAffineTransform *)transform;
- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point;
- (void)p_invalidateSizedImage;
- (void)p_invalidateSizedImageFromQueue;
- (void)p_startSizing;
- (void)p_takeSizedImageFromCache;
- (void)p_takeSizedImageFromState;
- (void)p_takeSizedImageFromStateIfReady;
- (void)p_updateDirectlyManagesLayerContentForLayer:(id)layer;
- (void)p_updateMaskLayer:(id)layer forRepLayer:(id)repLayer shouldIncludeMask:(BOOL)mask shouldIncludeInstantAlpha:(BOOL)alpha;
- (void)p_updateMaskSublayersForMaskEditMode;
- (void)p_updateStrokeLayerForStroke:(id)stroke repLayer:(id)layer;
- (void)popDisableImageSizing;
- (void)processChangedProperty:(int)property;
- (void)processChanges:(id)changes;
- (void)unhighlightImage;
- (void)updateFromLayout;
- (void)updateLayerGeometryFromLayout:(id)layout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)useCachedSizedImage:(id)image;
- (void)viewScaleDidChange;
- (void)wideGamutValueDidChange;
- (void)willBeRemoved;
- (void)willUpdateLayer:(id)layer;
@end

@implementation TSDImageRep

- (TSDImageRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = TSDImageRep;
  v4 = [(TSDRep *)&v8 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    if ([(TSDImageRep *)v4 imageInfo])
    {
      v6 = [-[TSDImageRep imageInfo](v5 "imageInfo")];
      if (v6)
      {
        [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
      }

      *&v5->mSizingStateReady = dispatch_queue_create("com.apple.iwork.TSDImageRepSizedImage", 0);
      *&v5->mBaseMaskLayoutTransform.ty = objc_alloc_init(MEMORY[0x277CCAC60]);
      v5->mHitTestCacheOnce = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->mUpdateFromLayoutBlocks = dispatch_semaphore_create(1);
      [(TSDImageRep *)v5 p_updateDirectlyManagesLayerContentForLayer:0];
    }

    else
    {

      v5 = 0;
    }
  }

  __dmb(0xBu);
  return v5;
}

- (void)dealloc
{
  [(TSDImageRep *)self p_disposeStrokeLayer];
  [(TSDImageRep *)self p_disposeMaskLayer];

  v3 = [-[TSDImageRep imageInfo](self "imageInfo")];
  if (v3)
  {
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  CGPathRelease(*&self->mSizedImageHasMaskBakedIn);
  dispatch_release(&self->mUpdateFromLayoutBlocks->super.super);

  CGImageRelease(self->mSizedImageAccessQueue);
  dispatch_release(*&self->mSizingStateReady);
  CGImageRelease(self->mSizedImageMaskPath);
  self->mSizedImageMaskPath = 0;

  v4.receiver = self;
  v4.super_class = TSDImageRep;
  [(TSDMediaRep *)&v4 dealloc];
}

- (id)imageInfo
{
  objc_opt_class();
  [(TSDRep *)self info];

  return TSUDynamicCast();
}

- (id)imageLayout
{
  objc_opt_class();
  [(TSDRep *)self layout];

  return TSUDynamicCast();
}

- (id)maskInfo
{
  imageInfo = [(TSDImageRep *)self imageInfo];

  return [imageInfo maskInfo];
}

- (id)maskLayout
{
  imageLayout = [(TSDImageRep *)self imageLayout];

  return [imageLayout maskLayout];
}

- (void)highlightImage
{
  BYTE1(self->mLastPictureFrameLayerTransform.ty) = 1;
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
}

- (void)unhighlightImage
{
  BYTE1(self->mLastPictureFrameLayerTransform.ty) = 0;
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = TSDImageRep;
  [(TSDRep *)&v3 willBeRemoved];
  [(NSRecursiveLock *)self->mLayerUpdateAndSizingStateLock setStatus:2];

  self->super.mFrameMaskLayer = 0;
  dispatch_semaphore_wait(&self->mUpdateFromLayoutBlocks->super.super, 0xFFFFFFFFFFFFFFFFLL);
  [self->mHitTestCacheOnce removeAllObjects];
  dispatch_semaphore_signal(&self->mUpdateFromLayoutBlocks->super.super);
}

- (void)becameNotSelected
{
  v2.receiver = self;
  v2.super_class = TSDImageRep;
  [(TSDRep *)&v2 becameNotSelected];
}

- (BOOL)containsPoint:(CGPoint)point
{
  v17.receiver = self;
  v17.super_class = TSDImageRep;
  x = point.x;
  y = point.y;
  v4 = [(TSDRep *)&v17 containsPoint:?];
  if (!v4 || ![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]|| ([(TSDRep *)self convertNaturalPointToUnscaledCanvas:x, y], ![(TSDMediaRep *)self replaceButtonContainsPoint:?]))
  {
    v16 = 0;
    if ([(TSDImageRep *)self p_hitCacheGetCachedValue:&v16 forPoint:x, y])
    {
      LOBYTE(v5) = v16;
      return v5;
    }

    imageLayout = [(TSDImageRep *)self imageLayout];
    if ([imageLayout maskLayout] && (v4 & (objc_msgSend(imageLayout, "maskIntersectsImage") ^ 1) & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      if (v4)
      {
        goto LABEL_11;
      }

      if ([-[TSDImageRep imageLayout](self "imageLayout")])
      {
        if (imageLayout)
        {
          [imageLayout layoutToImageTransform];
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        CGAffineTransformInvert(&v15, &v14);
        point = vaddq_f64(*&v15.tx, vmlaq_n_f64(vmulq_n_f64(*&v15.c, y), *&v15.a, x));
        [objc_msgSend(imageLayout "imageGeometry")];
        v19.origin.x = TSDRectWithSize();
        if (CGRectContainsPoint(v19, point))
        {
LABEL_11:
          if (containsPoint__ctx_once != -1)
          {
            [TSDImageRep containsPoint:];
          }

          CGContextSaveGState(containsPoint__ctx);
          v18.origin.x = 0.0;
          v18.origin.y = 0.0;
          v18.size.width = 1.0;
          v18.size.height = 1.0;
          CGContextClearRect(containsPoint__ctx, v18);
          CGContextTranslateCTM(containsPoint__ctx, -x, -y);
          LOWORD(v10) = 256;
          -[TSDImageRep p_drawInContext:withContent:withStroke:withOpacity:withMask:withIAMask:forLayer:forShadow:forHitTest:](self, "p_drawInContext:withContent:withStroke:withOpacity:withMask:withIAMask:forLayer:forShadow:forHitTest:", containsPoint__ctx, 1, 1, [-[TSDImageRep imageLayout](self "imageLayout")] ^ 1, objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "isInInstantAlphaMode") ^ 1, 0, 1.0, v10);
          CGContextRestoreGState(containsPoint__ctx);
          v7 = x;
          v8 = y;
          v5 = *containsPoint__data != 0;
          goto LABEL_21;
        }
      }

      v5 = 0;
    }

    v7 = x;
    v8 = y;
LABEL_21:
    [(TSDImageRep *)self p_hitCacheSetCachedValue:v5 forPoint:v7, v8];
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

void *__29__TSDImageRep_containsPoint___block_invoke()
{
  containsPoint__ctx = TSDBitmapContextCreate(2, 1.0);
  result = CGBitmapContextGetData(containsPoint__ctx);
  containsPoint__data = result;
  return result;
}

- (int)dragTypeAtCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(TSDMediaRep *)self replaceButtonContainsPoint:?])
  {
    return 0;
  }

  if (![-[TSDImageRep imageLayout](self "imageLayout")] || (objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "maskIntersectsImage") & 1) != 0 || (-[TSDRep naturalBounds](self, "naturalBounds"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, -[TSDRep convertNaturalPointFromUnscaledCanvas:](self, "convertNaturalPointFromUnscaledCanvas:", x, y), v31.x = v15, v31.y = v16, v32.origin.x = v8, v32.origin.y = v10, v32.size.width = v12, v32.size.height = v14, !CGRectContainsPoint(v32, v31)))
  {
    v27.receiver = self;
    v20 = &v27;
LABEL_9:
    v20->super_class = TSDImageRep;
    return [(objc_super *)v20 dragTypeAtCanvasPoint:x, y];
  }

  [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:x, y];
  v24 = v18;
  point = v17;
  imageLayout = [(TSDImageRep *)self imageLayout];
  if (imageLayout)
  {
    [imageLayout layoutToImageTransform];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  CGAffineTransformInvert(&v30, &v29);
  pointa = vaddq_f64(*&v30.tx, vmlaq_n_f64(vmulq_n_f64(*&v30.c, v24), *&v30.a, point));
  if ([-[TSDImageRep imageInfo](self "imageInfo")])
  {
    v21 = [objc_msgSend(-[TSDImageRep imageInfo](self "imageInfo")];
    imageLayout2 = [(TSDImageRep *)self imageLayout];
    if (imageLayout2)
    {
      [imageLayout2 imageDataToVisualSizeTransform];
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    [v21 transformUsingAffineTransform:&v30];
    v23 = [v21 containsPoint:pointa];

    if ((v23 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

  [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
  v33.origin.x = TSDRectWithSize();
  result = CGRectContainsPoint(v33, pointa);
  if (result)
  {
LABEL_19:
    selfCopy = self;
    v20 = &selfCopy;
    goto LABEL_9;
  }

  return result;
}

- (BOOL)shouldShowSelectionHighlight
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageRep;
  return [(TSDStyledRep *)&v4 shouldShowSelectionHighlight];
}

- (id)pathSourceForSelectionHighlightBehavior
{
  v2 = [-[TSDImageRep imageLayout](self "imageLayout")];

  return [v2 pathSource];
}

- (void)processChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = TSDImageRep;
  [(TSDRep *)&v3 processChanges:changes];
}

- (void)processChangedProperty:(int)property
{
  v8.receiver = self;
  v8.super_class = TSDImageRep;
  [(TSDMediaRep *)&v8 processChangedProperty:?];
  if (property > 527)
  {
    switch(property)
    {
      case 528:
        [(TSDImageRep *)self p_invalidateSizedImage];
        goto LABEL_17;
      case 529:
        [(TSDImageRep *)self p_disposeStrokeLayer];
        [(TSDRep *)self invalidateKnobs];
        [-[TSDImageRep imageLayout](self "imageLayout")];
        v5 = 1;
        goto LABEL_14;
      case 530:
        [(TSDImageRep *)self p_disposeStrokeLayer];
        [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
        [(TSDLayout *)[(TSDRep *)self layout] invalidateSize];
        goto LABEL_16;
    }
  }

  else
  {
    switch(property)
    {
      case 512:
        goto LABEL_16;
      case 513:
        if ([(TSDImageRep *)self shouldShowSmartMaskKnobs])
        {
          [(TSDRep *)self invalidateKnobs];
        }

        break;
      case 517:
        [(TSDMediaRep *)self i_updateFrameRep];
        [(TSDImageRep *)self p_disposeStrokeLayer];
        [(TSDRep *)self invalidateKnobs];
        v5 = 0;
LABEL_14:
        if (![-[TSDImageRep imageLayout](self "imageLayout")] && objc_msgSend(-[TSDImageRep imageInfo](self, "imageInfo"), "maskInfo"))
        {
          [-[TSDImageRep imageLayout](self "imageLayout")];
          if ((v5 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v5)
        {
LABEL_16:
          v6 = *&self->mSizingStateReady;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__TSDImageRep_processChangedProperty___block_invoke;
          block[3] = &unk_279D46770;
          block[4] = self;
          dispatch_sync(v6, block);
        }

LABEL_17:
        [(TSDStyledRep *)self setNeedsDisplay];
        LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) = 0;
        [(TSDCanvas *)self->super.super.super.mCanvas layoutInvalidated];
        break;
    }
  }

  [(TSDImageRep *)self p_invalidateHitTestCache];
}

void __38__TSDImageRep_processChangedProperty___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 704) || *(v2 + 680))
  {
    if (*(v2 + 736))
    {
      v3 = 1;
    }

    else if (*(v2 + 680))
    {
      v3 = [*(v2 + 680) maskPath] != 0;
      v2 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v2 + 737);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v5 = [objc_msgSend(v2 "imageLayout")];
    v6 = [*(a1 + 32) imageInfo];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__TSDImageRep_processChangedProperty___block_invoke_2;
    v7[3] = &unk_279D488B0;
    v8 = v3;
    v7[4] = *(a1 + 32);
    v7[5] = &v13;
    v7[6] = &v9;
    [v6 performBlockWithTemporaryLayout:v7];
    if ((v10[3] & 1) == 0)
    {
      if (v3)
      {
        if (*(v14 + 24) == 1 && (v4 & v5 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v4 & v5) != 1)
      {
        goto LABEL_10;
      }
    }

    [*(a1 + 32) p_invalidateSizedImageFromQueue];
LABEL_10:
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }
}

void __38__TSDImageRep_processChangedProperty___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if ([v2 maskLayout] && !objc_msgSend(objc_msgSend(objc_msgSend(v2, "maskLayout"), "pathSource"), "isRectangular") || (v3 = objc_msgSend(objc_msgSend(v2, "imageInfo"), "instantAlphaPath")) != 0)
  {
    LOBYTE(v3) = [v2 maskIntersectsImage];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 744) && ![*(v4 + 680) maskPath])
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep processChangedProperty:]_block_invoke_2"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 910, @"Need some mask path if comparing masks"}];
    }

    v7 = *(a1 + 32);
    if (*(v7 + 704))
    {
      v8 = *(v7 + 728);
    }

    else
    {
      v8 = [objc_msgSend(v7 "p_validatedBitmapImageProvider")];
      v7 = *(a1 + 32);
    }

    v9 = [TSDImageRep p_newPathToBakeIntoSizedImageForSize:v2 withImageLayout:v8 orientation:*(v7 + 712), *(v7 + 720)];
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep processChangedProperty:]_block_invoke_2"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 914, @"invalid nil value for '%s'", "newBakingMaskPath"}];
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 744);
    if (!v13)
    {
      v13 = [*(v12 + 680) maskPath];
    }

    *(*(*(a1 + 48) + 8) + 24) = ![[TSDBezierPath bezierPathWithCGPath:?], "isEqual:", [TSDBezierPath bezierPathWithCGPath:v9]];

    CGPathRelease(v9);
  }
}

- (void)updateFromLayout
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = TSDImageRep;
  [(TSDRep *)&v23 updateFromLayout];
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] isInDynamicOperation])
  {
    imageLayout = [(TSDImageRep *)self imageLayout];
    maskLayout = [imageLayout maskLayout];
    memset(&v22, 0, sizeof(v22));
    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
    }

    imageGeometryInRoot = [imageLayout imageGeometryInRoot];
    geometryInRoot = [maskLayout geometryInRoot];
    t1 = v22;
    v7 = *&self->mLastLayoutToImageTransform.b;
    *&t2.a = *&self->mLastMaskGeometryInRoot;
    *&t2.c = v7;
    *&t2.tx = *&self->mLastLayoutToImageTransform.d;
    v8 = CGAffineTransformEqualToTransform(&t1, &t2);
    if (maskLayout && (([imageGeometryInRoot isEqual:*&self->super.mLastPictureFrameLayerRect.size.height] & 1) == 0 ? (LOBYTE(maskLayout) = objc_msgSend(imageGeometryInRoot, "differsInMoreThanTranslationFrom:", *&self->super.mLastPictureFrameLayerRect.size.height)) : (LOBYTE(maskLayout) = 0), (objc_msgSend(geometryInRoot, "isEqual:", self->mLastImageGeometryInRoot) & 1) == 0))
    {
      v9 = [geometryInRoot differsInMoreThanTranslationFrom:self->mLastImageGeometryInRoot];
      if (!v8)
      {
LABEL_15:
        [(TSDStyledRep *)self setNeedsDisplay];
        LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) = 0;
        [(TSDRep *)self invalidateKnobPositions];
LABEL_16:

        *&self->super.mLastPictureFrameLayerRect.size.height = [imageGeometryInRoot copy];
        self->mLastImageGeometryInRoot = [geometryInRoot copy];
        v10 = *&v22.tx;
        *&self->mLastLayoutToImageTransform.b = *&v22.c;
        *&self->mLastLayoutToImageTransform.d = v10;
        *&self->mLastMaskGeometryInRoot = *&v22.a;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    if ((maskLayout & 1) == 0 && !v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  dispatch_semaphore_wait(&self->mUpdateFromLayoutBlocks->super.super, 0xFFFFFFFFFFFFFFFFLL);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mHitTestCacheOnce = self->mHitTestCacheOnce;
  v12 = [mHitTestCacheOnce countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(mHitTestCacheOnce);
        }

        (*(*(*(&v16 + 1) + 8 * i) + 16))();
      }

      v13 = [mHitTestCacheOnce countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  [self->mHitTestCacheOnce removeAllObjects];
  dispatch_semaphore_signal(&self->mUpdateFromLayoutBlocks->super.super);
}

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  v7.receiver = self;
  v7.super_class = TSDImageRep;
  [(TSDRep *)&v7 layoutInRootChangedFrom:from to:to translatedOnly:?];
  if (!only)
  {
    LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) = 0;
  }
}

- (id)overlayLayers
{
  v26.receiver = self;
  v26.super_class = TSDImageRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDMediaRep overlayLayers](&v26, sel_overlayLayers)}];
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  if (BYTE1(self->mLastPictureFrameLayerTransform.ty) == 1)
  {
    v5 = interactiveCanvasController;
    v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
    DeviceRGB = TSUCGColorCreateDeviceRGB();
    [v6 setFillColor:DeviceRGB];
    CGColorRelease(DeviceRGB);
    [v6 setLineWidth:1.0];
    [v6 setStrokeColor:0];
    [(TSDCanvas *)self->super.super.super.mCanvas viewScale];
    v9 = v8;
    [(TSDImageRep *)self boundsForStandardKnobs];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    memset(&v25, 0, sizeof(v25));
    layout = [(TSDRep *)self layout];
    if (layout)
    {
      [(TSDAbstractLayout *)layout transformInRoot];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    CGAffineTransformMakeScale(&t2, v9, v9);
    v22 = v25;
    CGAffineTransformConcat(&v24, &v22, &t2);
    v25 = v24;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v20 = TSDCreateAADefeatedRectPath(&v25, v11, v13, v15, v17, 1.0, v19);
    [v6 setPath:v20];
    CGPathRelease(v20);
    [v6 setDelegate:v5];
    [v3 addObject:v6];
  }

  return v3;
}

- (id)hitRepChrome:(CGPoint)chrome
{
  y = chrome.y;
  x = chrome.x;
  v9.receiver = self;
  v9.super_class = TSDImageRep;
  v6 = [(TSDRep *)&v9 hitRepChrome:?];
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    if ([(TSDRep *)self isSelected]&& [(TSDImageRep *)self shouldShowMediaReplaceUI]&& ([(TSDRep *)self convertNaturalPointToUnscaledCanvas:x, y], [(TSDMediaRep *)self replaceButtonContainsPoint:?]))
    {
      return self;
    }

    else if ([(TSDRep *)self shouldDisplayHyperlinkUI])
    {
      v7 = [(TSDRep *)self knobForTag:33];
      [(TSDRep *)self convertNaturalPointToUnscaledCanvas:x, y];
      if ([v7 isHitByUnscaledPoint:self andRep:?])
      {
        return self;
      }
    }
  }

  return v6;
}

- (BOOL)wantsToDistortWithImagerContext
{
  if (TSUPhoneUI())
  {
    TSUScreenScale();
    if (v3 == 1.0)
    {
      return 1;
    }
  }

  v5.receiver = self;
  v5.super_class = TSDImageRep;
  return [(TSDRep *)&v5 wantsToDistortWithImagerContext];
}

- (CGRect)boundsForStandardKnobs
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")] == 3)
  {
    [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
    v3 = TSDRectWithSize();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSDImageRep;
    [(TSDRep *)&v7 boundsForStandardKnobs];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds
{
  v19.receiver = self;
  v19.super_class = TSDImageRep;
  [(TSDRep *)&v19 positionOfStandardKnob:knob forBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v14 = v6;
  v15 = v5;
  if ([-[TSDImageRep imageLayout](self "imageLayout")] == 3 && (-[TSDLayout layoutState](-[TSDRep layout](self, "layout"), "layoutState") != 4 || objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "isInMaskScaleMode")))
  {
    imageLayout = [(TSDImageRep *)self imageLayout];
    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
      v8 = v16;
      v9 = v17;
      v10 = v18;
    }

    else
    {
      v10 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    v11 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v14), v8, v15));
    v14 = v11.f64[1];
    v15 = v11.f64[0];
  }

  v13 = v14;
  v12 = v15;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)boundsForHighlightLayer
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")] == 3)
  {
    selfCopy = self;
    v3 = &selRef_boundsForStandardKnobs;
    v4 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v3 = &selRef_boundsForHighlightLayer;
    v4 = &selfCopy2;
  }

  v4[1] = TSDImageRep;
  objc_msgSendSuper2(v4, *v3, selfCopy2);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGAffineTransform)transformForHighlightLayer
{
  if (!self->super.super.super.mKnobTracker || [-[TSDImageRep imageLayout](self "imageLayout")] == 3)
  {
    result = [(TSDRep *)self layout];
    if (result)
    {

      return [(CGAffineTransform *)result transformInRoot];
    }

LABEL_11:
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
    return result;
  }

  result = self->super.super.super.mKnobTracker;
  if (!result)
  {
    goto LABEL_11;
  }

  return [(CGAffineTransform *)result transformInRootForStandardKnobs];
}

- (BOOL)shouldAllowReplacementFromPaste
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSDImageRep;
  return [(TSDMediaRep *)&v4 shouldAllowReplacementFromPaste];
}

- (CGPoint)centerForRotation
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    imageLayout = [(TSDImageRep *)self imageLayout];

    [imageLayout centerForRotationInMaskMode];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSDImageRep;
    [(TSDRep *)&v6 centerForRotation];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (id)contentsLayer
{
  result = *&self->mFrameInUnscaledCanvasIsValid;
  if (!result)
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    return [(TSDInteractiveCanvasController *)interactiveCanvasController layerForRep:self];
  }

  return result;
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children
{
  strokeCopy = stroke;
  contentCopy = content;
  v13 = 1.0;
  if (opacity)
  {
    [(TSDStyledRep *)self opacity:effects];
  }

  LOWORD(v14) = only;
  [(TSDImageRep *)self p_drawInContext:effects withContent:contentCopy withStroke:strokeCopy withOpacity:1 withMask:1 withIAMask:0 forLayer:v13 forShadow:v14 forHitTest:?];
}

- (id)imageOfStroke:(CGRect *)stroke
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (stroke && (v10 = stroke, [stroke shouldRender]))
  {
    imageLayout = [(TSDImageRep *)self imageLayout];
    [objc_msgSend(imageLayout "imageGeometry")];
    if ([imageLayout pathToStroke])
    {
      TSDPathBoundsIncludingStroke([imageLayout pathToStroke], v10);
      v5 = v12;
      v6 = v13;
      v7 = v14;
      v8 = v15;
    }

    else
    {
      v29.origin.x = TSDRectWithSize();
      v17 = CGPathCreateWithRect(v29, 0);
      TSDPathBoundsIncludingStroke(v17, v10);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      v8 = v21;
      CGPathRelease(v17);
    }

    v22 = TSDBitmapContextCreate(11, v7);
    v23 = v22;
    v24 = -v5;
    v25 = -0.0;
    if (v5 <= 0.0)
    {
      v24 = -0.0;
    }

    if (v6 > 0.0)
    {
      v25 = -v6;
    }

    CGContextTranslateCTM(v22, v24, v25);
    LOWORD(v28) = 0;
    [(TSDImageRep *)self p_drawInContext:v23 withContent:0 withStroke:1 withOpacity:0 withMask:0 withIAMask:0 forLayer:1.0 forShadow:v28 forHitTest:?];
    Image = CGBitmapContextCreateImage(v23);
    v16 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
    CGContextRelease(v23);
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

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(double)opacity withMask:(BOOL)mask withIAMask:(BOOL)aMask forLayer:(BOOL)layer forShadow:(BOOL)self0 forHitTest:(BOOL)self1
{
  layerCopy = layer;
  aMaskCopy = aMask;
  maskCopy = mask;
  strokeCopy = stroke;
  contentCopy = content;
  if ([-[TSDStyledRep styledLayout](self "styledLayout")])
  {
    return;
  }

  v19 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v93 = layerCopy;
  if (layerCopy && v19)
  {
    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
  }

  [(TSDMediaRep *)self i_updateFrameRep];
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  v21 = stroke;
  if (stroke)
  {
    if ([(TSDStroke *)stroke shouldRender])
    {
      if ([(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds]&& ![(TSDStroke *)v21 isFrame])
      {
        v21 = [(TSDStroke *)v21 mutableCopy];
        -[TSDStroke setColor:](v21, "setColor:", [MEMORY[0x277D6C2A8] blackColor]);
      }

      if (v21 && test && ![(TSDStroke *)v21 isFrame]&& ![(TSDStroke *)v21 prefersToApplyToShapeRenderableDuringManipulation])
      {
        v94 = [TSDStroke alloc];
        color = [(TSDStroke *)v21 color];
        [(TSDStroke *)v21 width];
        v23 = v22;
        v91 = [(TSDStroke *)v21 cap];
        join = [(TSDStroke *)v21 join];
        pattern = [(TSDStroke *)v21 pattern];
        [(TSDStroke *)v21 miterLimit];
        v21 = [(TSDStroke *)v94 initWithColor:color width:v91 cap:join join:pattern pattern:v23 miterLimit:v26];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  v27 = opacity < 1.0 && strokeCopy;
  v28 = v27 && contentCopy;
  if (v27 && contentCopy && (CGContextSaveGState(context), CGContextSetAlpha(context, opacity), v21))
  {
    CGContextBeginTransparencyLayer(context, 0);
    v95 = 1;
  }

  else
  {
    v95 = 0;
  }

  CGContextSaveGState(context);
  imageLayout = [(TSDImageRep *)self imageLayout];
  [objc_msgSend(imageLayout "imageGeometry")];
  v30 = TSDRectWithSize();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if (contentCopy)
  {
    maskLayout = [imageLayout maskLayout];
    if (!maskCopy)
    {
      goto LABEL_38;
    }

    v38 = maskLayout;
    if (!self->super.mFrameMaskLayer || ![(TSDStroke *)v21 hasMask])
    {
LABEL_34:
      if (v38)
      {
        memset(&v103, 0, sizeof(v103));
        if (imageLayout)
        {
          [imageLayout layoutToMaskTransform];
        }

        [v38 pathBounds];
        v101 = v103;
        CGAffineTransformTranslate(&transform, &v101, -v51, -v52);
        v103 = transform;
        v53 = +[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath, "bezierPathWithCGPath:", [v38 path]);
        transform = v103;
        [(TSDBezierPath *)v53 transformUsingAffineTransform:&transform];
        CGContextAddPath(context, [-[TSDBezierPath aliasedPathInContext:effectiveStrokeWidth:](v53 aliasedPathInContext:context effectiveStrokeWidth:{0.0), "CGPath"}]);
        CGContextClip(context);
      }

LABEL_38:
      if ([-[TSDImageRep imageInfo](self "imageInfo")] && aMaskCopy)
      {
        v54 = [objc_msgSend(-[TSDImageRep imageInfo](self "imageInfo")];
        imageLayout2 = [(TSDImageRep *)self imageLayout];
        if (imageLayout2)
        {
          [imageLayout2 imageDataToVisualSizeTransform];
        }

        else
        {
          memset(&v103, 0, sizeof(v103));
        }

        [v54 transformUsingAffineTransform:&v103];
        imageLayout3 = [(TSDImageRep *)self imageLayout];
        if (imageLayout3)
        {
          [imageLayout3 layoutToImageTransform];
        }

        else
        {
          memset(&v103, 0, sizeof(v103));
        }

        [v54 transformUsingAffineTransform:&v103];
        CGContextAddPath(context, [objc_msgSend(v54 aliasedPathInContext:context effectiveStrokeWidth:{0.0), "CGPath"}]);
        CGContextClip(context);
      }

      if (imageLayout)
      {
        [imageLayout layoutToImageTransform];
      }

      else
      {
        memset(&v103, 0, sizeof(v103));
      }

      CGContextConcatCTM(context, &v103);
      CGContextSaveGState(context);
      if (maskCopy && self->super.mFrameMaskLayer && [(TSDStroke *)v21 hasMask])
      {
        [(CALayer *)self->super.mFrameMaskLayer blendMaskBeforeRenderingImageInContext:context];
      }

      transform.a = 0.0;
      *&transform.b = &transform;
      *&transform.c = 0x2020000000;
      transform.d = 0.0;
      v101.a = 0.0;
      *&v101.b = &v101;
      *&v101.c = 0x2020000000;
      v101.d = 0.0;
      v97 = 0;
      v98 = &v97;
      v99 = 0x2020000000;
      v100 = 0;
      v57 = *&self->mSizingStateReady;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __116__TSDImageRep_p_drawInContext_withContent_withStroke_withOpacity_withMask_withIAMask_forLayer_forShadow_forHitTest___block_invoke;
      block[3] = &unk_279D488D8;
      block[4] = self;
      block[5] = &transform;
      block[6] = &v101;
      block[7] = &v97;
      dispatch_sync(v57, block);
      if ((shadow || test) && ([imageLayout hasAlpha] & 1) == 0)
      {
        CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
        v107.origin.x = v30;
        v107.origin.y = v32;
        v107.size.width = v34;
        v107.size.height = v36;
        CGContextFillRect(context, v107);
LABEL_79:
        v73 = *(*&transform.b + 24);
        if (v73)
        {
          CGImageRelease(v73);
        }

        _Block_object_dispose(&v97, 8);
        _Block_object_dispose(&v101, 8);
        _Block_object_dispose(&transform, 8);
        CGContextRestoreGState(context);
        goto LABEL_82;
      }

      if (*(*&transform.b + 24))
      {
        if ([-[TSDImageRep imageLayout](self "imageLayout")])
        {
          CGImageRelease(*(*&transform.b + 24));
          v58 = [(TSDImageRep *)self p_newImageByApplyingAdjustmentsToImage:*(*&transform.b + 24) alreadyEnhanced:*(v98 + 24)];
          *(*&transform.b + 24) = v58;
        }

        v104.origin.x = v30;
        v104.origin.y = v32;
        v104.size.width = v34;
        v104.size.height = v36;
        MinY = CGRectGetMinY(v104);
        v105.origin.x = v30;
        v105.origin.y = v32;
        v105.size.width = v34;
        v105.size.height = v36;
        MaxY = CGRectGetMaxY(v105);
        CGContextTranslateCTM(context, 0.0, MinY + MaxY);
        CGContextScaleCTM(context, 1.0, -1.0);
        TSUImageOrientationTransform();
        CGContextConcatCTM(context, &v103);
        v106.origin.x = v30;
        v106.origin.y = v32;
        v106.size.width = v34;
        v106.size.height = v36;
        CGContextDrawImage(context, v106, *(*&transform.b + 24));
        goto LABEL_79;
      }

      i_inPrintPreviewMode = [(TSDInteractiveCanvasController *)[(TSDCanvas *)[(TSDRep *)self canvas] canvasController] i_inPrintPreviewMode];
      v62 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
      if (!i_inPrintPreviewMode && [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& ([(TSDCanvas *)[(TSDRep *)self canvas] viewScale], v63 < 0.5) || v93 && self->mLayerUpdateAndSizingStateLock || ![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& (v62 & 1) != 0)
      {
        p_validatedThumbnailImageProvider = [(TSDImageRep *)self p_validatedThumbnailImageProvider];
        if (p_validatedThumbnailImageProvider)
        {
          v69 = [p_validatedThumbnailImageProvider CGImageForSize:context inContext:0 orLayer:{v34, v36}];
          if ([-[TSDImageRep imageLayout](self "imageLayout")])
          {
            v69 = [(TSDImageRep *)self p_newImageByApplyingAdjustmentsToImage:v69 alreadyEnhanced:0];
            v70 = v69;
          }

          v108.origin.x = v30;
          v108.origin.y = v32;
          v108.size.width = v34;
          v108.size.height = v36;
          v71 = CGRectGetMinY(v108);
          v109.origin.x = v30;
          v109.origin.y = v32;
          v109.size.width = v34;
          v109.size.height = v36;
          v72 = CGRectGetMaxY(v109);
          CGContextTranslateCTM(context, 0.0, v71 + v72);
          CGContextScaleCTM(context, 1.0, -1.0);
          TSUImageOrientationTransform();
          CGContextConcatCTM(context, &v103);
          v110.origin.x = v30;
          v110.origin.y = v32;
          v110.size.width = v34;
          v110.size.height = v36;
          CGContextDrawImage(context, v110, v69);
          goto LABEL_79;
        }

        p_validatedImageProvider = [(TSDImageRep *)self p_validatedImageProvider];
      }

      else
      {
        p_validatedImageProvider2 = [(TSDImageRep *)self p_validatedImageProvider];
        if (![p_validatedImageProvider2 isError] || !-[TSDImageRep p_validatedThumbnailImageProvider](self, "p_validatedThumbnailImageProvider"))
        {
          goto LABEL_78;
        }

        if (([-[TSDImageRep p_imageData](self "p_imageData")] & 1) == 0)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_drawInContext:withContent:withStroke:withOpacity:withMask:withIAMask:forLayer:forShadow:forHitTest:]"];
          [currentHandler handleFailureInFunction:v66 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 1993, @"Invalid image data %@! Rendering thumbnail data.", objc_msgSend(-[TSDImageRep p_imageData](self, "p_imageData"), "filename")}];
        }

        p_validatedImageProvider = [(TSDImageRep *)self p_validatedThumbnailImageProvider];
      }

      p_validatedImageProvider2 = p_validatedImageProvider;
LABEL_78:
      [p_validatedImageProvider2 drawImageInContext:context rect:{v30, v32, v34, v36}];
      goto LABEL_79;
    }

    if ([imageLayout hasMaskingPath])
    {
      TSDPathBoundsIncludingStroke([imageLayout pathToStroke], v21);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      if (imageLayout)
      {
        [imageLayout layoutToMaskTransform];
LABEL_33:
        v103 = transform;
        CGContextConcatCTM(context, &transform);
        [(CALayer *)self->super.mFrameMaskLayer applyMaskForRectWithCoverage:context toContext:v40, v42, v44, v46];
        v101 = v103;
        CGAffineTransformInvert(&transform, &v101);
        CGContextConcatCTM(context, &transform);
        goto LABEL_34;
      }
    }

    else
    {
      [(TSDStroke *)v21 coverageRect:v30, v32, v34, v36];
      v40 = v47;
      v42 = v48;
      v44 = v49;
      v46 = v50;
      if (imageLayout)
      {
        [imageLayout layoutToImageTransform];
        goto LABEL_33;
      }
    }

    memset(&transform, 0, sizeof(transform));
    goto LABEL_33;
  }

LABEL_82:
  CGContextRestoreGState(context);
  if (!strokeCopy || !v21 || v93 && [(TSDImageRep *)self directlyManagesLayerContent])
  {
    goto LABEL_113;
  }

  CGContextSaveGState(context);
  if ([imageLayout pathToStroke])
  {
    pathToStroke = [imageLayout pathToStroke];
    if (!pathToStroke)
    {
      goto LABEL_112;
    }

    v75 = pathToStroke;
    PathBoundingBox = CGPathGetPathBoundingBox(pathToStroke);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if ([(TSDStroke *)v21 isFrame])
    {
      if ([imageLayout shouldRenderFrameStroke])
      {
        if (imageLayout)
        {
          [imageLayout layoutToMaskTransform];
        }

        else
        {
          memset(&v103, 0, sizeof(v103));
        }

        CGContextConcatCTM(context, &v103);
        mFrameMaskLayer = self->super.mFrameMaskLayer;
        CGContextGetCTM(&v103, context);
        v84 = TSDTransformScale(&v103.a);
        v85 = mFrameMaskLayer;
        v86 = x;
        v87 = y;
        v88 = width;
        v89 = height;
LABEL_111:
        [(CALayer *)v85 frameRect:context inContext:v86 withTotalScale:v87, v88, v89, v84];
        goto LABEL_112;
      }

      goto LABEL_112;
    }

    if (imageLayout)
    {
      [imageLayout layoutToMaskTransform];
    }

    else
    {
      memset(&v103, 0, sizeof(v103));
    }

    CGContextConcatCTM(context, &v103);
    v80 = v21;
    v81 = v75;
LABEL_105:
    [(TSDStroke *)v80 paintPath:v81 inContext:context];
    goto LABEL_112;
  }

  if (![(TSDStroke *)v21 isFrame])
  {
    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
    }

    else
    {
      memset(&v103, 0, sizeof(v103));
    }

    CGContextConcatCTM(context, &v103);
    pathToStroke2 = [imageLayout pathToStroke];
    if (!pathToStroke2)
    {
      [(TSDStroke *)v21 paintRect:context inContext:v30, v32, v34, v36];
      goto LABEL_112;
    }

    v81 = pathToStroke2;
    v80 = v21;
    goto LABEL_105;
  }

  if ([imageLayout shouldRenderFrameStroke])
  {
    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
    }

    else
    {
      memset(&v103, 0, sizeof(v103));
    }

    CGContextConcatCTM(context, &v103);
    v90 = self->super.mFrameMaskLayer;
    CGContextGetCTM(&v103, context);
    v84 = TSDTransformScale(&v103.a);
    v85 = v90;
    v86 = v30;
    v87 = v32;
    v88 = v34;
    v89 = v36;
    goto LABEL_111;
  }

LABEL_112:
  CGContextRestoreGState(context);
LABEL_113:
  if (v95)
  {
    CGContextEndTransparencyLayer(context);
  }

  if (v28)
  {
    CGContextRestoreGState(context);
  }
}

CGImage *__116__TSDImageRep_p_drawInContext_withContent_withStroke_withOpacity_withMask_withIAMask_forLayer_forShadow_forHitTest___block_invoke(void *a1)
{
  result = *(a1[4] + 704);
  if (result)
  {
    result = CGImageRetain(result);
    *(*(a1[5] + 8) + 24) = result;
    *(*(a1[6] + 8) + 24) = *(a1[4] + 728);
    *(*(a1[7] + 8) + 24) = *(a1[4] + 737);
  }

  return result;
}

- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context
{
  v6 = [(TSDImageRep *)self p_validatedBitmapImageProvider:info];
  if (v6)
  {
    v7 = v6;
    [(TSDImageRep *)self p_desiredSizedImageSize];

    [info cacheProvider:v7 ofSize:?];
  }
}

- (void)didCreateLayer:(id)layer
{
  [(TSDImageRep *)self p_generateSizedImageIfNecessary];
  [(TSDImageRep *)self p_takeSizedImageFromStateIfReady];
  LOBYTE(self->mLastPictureFrameLayerTransform.ty) = [(TSDImageRep *)self p_directlyManagesContentForLayer:layer];
}

- (void)p_updateDirectlyManagesLayerContentForLayer:(id)layer
{
  ty_low = LOBYTE(self->mLastPictureFrameLayerTransform.ty);
  v5 = [(TSDImageRep *)self p_directlyManagesContentForLayer:layer];
  LOBYTE(self->mLastPictureFrameLayerTransform.ty) = v5;
  if (ty_low != 1 || v5)
  {
    if ((ty_low & 1) == 0 && v5 && [(TSDCanvas *)self->super.super.super.mCanvas isCanvasInteractive])
    {
      v6 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];

      [v6 setContents:0];
    }
  }

  else
  {

    [(TSDStyledRep *)self setNeedsDisplay];
  }
}

- (CGImage)p_imageForDirectlyManagedLayer:(id)layer
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldSuppressRendering])
  {
    v5 = 0;
  }

  else
  {
    v6 = *&self->mSizingStateReady;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__TSDImageRep_p_imageForDirectlyManagedLayer___block_invoke;
    v9[3] = &unk_279D48900;
    v9[4] = self;
    v9[5] = layer;
    v9[6] = &v14;
    v9[7] = &v10;
    dispatch_sync(v6, v9);
    v7 = [-[TSDImageRep imageLayout](self "imageLayout")];
    v5 = v15[3];
    if (v7)
    {
      v5 = [(TSDImageRep *)self p_newImageByApplyingAdjustmentsToImage:v5 alreadyEnhanced:*(v11 + 24)];
      v15[3] = v5;
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

void *__46__TSDImageRep_p_imageForDirectlyManagedLayer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[88];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = v3;
    v4 = *(*(*(a1 + 48) + 8) + 24);

    return v4;
  }

  else
  {
    [v2 p_desiredSizedImageSize];
    v7 = v6;
    v9 = v8;
    result = *(a1 + 32);
    if (result[85])
    {
      if ([result p_validatedBitmapImageProvider] && (v10 = v7 * v9, v7 * v9 < 4096.0 * 4096.0))
      {
        result = [objc_msgSend(*(a1 + 32) p_validatedBitmapImageProvider];
        *(*(*(a1 + 48) + 8) + 24) = result;
      }

      else
      {
        result = [objc_msgSend(*(a1 + 32) p_validatedThumbnailImageProvider];
        *(*(*(a1 + 48) + 8) + 24) = result;
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      result = [objc_msgSend(*(a1 + 32) "p_validatedBitmapImageProvider")];
      *(*(*(a1 + 48) + 8) + 24) = result;
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        result = [objc_msgSend(*(a1 + 32) "p_validatedThumbnailImageProvider")];
        *(*(*(a1 + 48) + 8) + 24) = result;
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

- (int64_t)p_orientationForDirectlyManagedLayer
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = *&self->mSizingStateReady;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TSDImageRep_p_orientationForDirectlyManagedLayer__block_invoke;
  block[3] = &unk_279D48928;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v7;
  dispatch_sync(v3, block);
  if (*(v8 + 24) == 1)
  {
    v4 = v12[3];
  }

  else
  {
    v4 = [-[TSDImageRep p_validatedBitmapImageProvider](self "p_validatedBitmapImageProvider")];
    v12[3] = v4;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *__51__TSDImageRep_p_orientationForDirectlyManagedLayer__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[88])
  {
    *(*(*(a1 + 40) + 8) + 24) = result[91];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (result[85])
  {
    result = [objc_msgSend(result "imageInfo")];
    if (v3 * v4 >= 4096.0 * 4096.0)
    {
      result = [*(a1 + 32) p_validatedThumbnailImageProvider];
      *(*(*(a1 + 48) + 8) + 24) = result != 0;
    }
  }

  return result;
}

- (BOOL)p_directlyManagesContentForLayer:(id)layer
{
  v4 = [(TSDImageRep *)self p_imageForDirectlyManagedLayer:layer];
  if (v4)
  {
    stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    if (![stroke shouldRender])
    {
      stroke = 0;
    }

    if ([(TSDLayout *)[(TSDRep *)self layout] isStrokeBeingManipulated])
    {
      prefersToApplyToShapeRenderableDuringManipulation = [stroke prefersToApplyToShapeRenderableDuringManipulation];
      if (!stroke)
      {
        goto LABEL_9;
      }
    }

    else
    {
      prefersToApplyToShapeRenderableDuringManipulation = 0;
      if (!stroke)
      {
LABEL_9:
        LOBYTE(v4) = 1;
        return v4;
      }
    }

    if (prefersToApplyToShapeRenderableDuringManipulation & [stroke canApplyToShapeRenderable])
    {
      goto LABEL_9;
    }

    LODWORD(v4) = [stroke prefersToApplyToShapeRenderableDuringManipulation];
    if (v4)
    {
      [(TSDStyledRep *)self opacity];
      if (v7 == 1.0)
      {

        LOBYTE(v4) = [stroke canApplyToShapeRenderable];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (CGImage)p_newImageByApplyingAdjustmentsToImage:(CGImage *)image alreadyEnhanced:(BOOL)enhanced
{
  enhancedCopy = enhanced;
  v7 = [-[TSDImageRep imageLayout](self "imageLayout")];
  imageAdjustmentsWithoutEnhance = v7;
  cGImageForNaturalSize = 0;
  if (enhancedCopy)
  {
    imageAdjustmentsWithoutEnhance = [v7 imageAdjustmentsWithoutEnhance];
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![v7 enhance])
  {
    goto LABEL_7;
  }

  v9 = [-[TSDImageRep imageInfo](self "imageInfo")];
  if (v9)
  {
    objc_opt_class();
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v10 = TSUDynamicCast();
    if (!v10)
    {
      goto LABEL_7;
    }

    cGImageForNaturalSize = [v10 CGImageForNaturalSize];
    v9 = &cGImageForNaturalSize;
  }

LABEL_8:
  v11 = [[TSDImageAdjuster alloc] initWithImageAdjustments:imageAdjustmentsWithoutEnhance];
  v12 = [(TSDImageAdjuster *)v11 newFilteredImageForImage:image enhancedImage:v9];

  return v12;
}

- (CGRect)frameInUnscaledCanvas
{
  v27.receiver = self;
  v27.super_class = TSDImageRep;
  [(TSDRep *)&v27 frameInUnscaledCanvas];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  imageLayout = [(TSDImageRep *)self imageLayout];
  if ([imageLayout maskLayout] && objc_msgSend(imageLayout, "pathToStroke"))
  {
    if (LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) != 1)
    {
      memset(&v26[1], 0, sizeof(CGAffineTransform));
      if (imageLayout)
      {
        [imageLayout layoutToMaskTransform];
      }

      pathToStroke = [imageLayout pathToStroke];
      v26[0] = v26[1];
      v13 = TSDCreateTransformedPath(pathToStroke, v26);
      TSDPathBoundsIncludingStroke(v13, [(TSDLayout *)[(TSDRep *)self layout] stroke]);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      CGPathRelease(v13);
      if (imageLayout)
      {
        [imageLayout transformInRoot];
      }

      else
      {
        memset(v26, 0, 48);
      }

      v28.origin.x = v15;
      v28.origin.y = v17;
      v28.size.width = v19;
      v28.size.height = v21;
      v29 = CGRectApplyAffineTransform(v28, v26);
      *&self->mLastLayoutToImageTransform.ty = CGRectOffset(v29, -x, -y);
      LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) = 1;
    }

    v30 = CGRectOffset(*&self->mLastLayoutToImageTransform.ty, x, y);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)frame transform:(CGAffineTransform *)transform
{
  v7 = [-[TSDImageRep imageLayout](self "imageLayout")];
  if (v7)
  {
    [v7 fullTransform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v8 = [+[TSDLayoutGeometry geometryFromFullTransform:](TSDLayoutGeometry geometryFromFullTransform:{&v15), "mutableCopy"}];
  memset(&v15, 0, sizeof(v15));
  v9 = [-[TSDImageRep imageLayout](self "imageLayout")];
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v10 = [-[TSDImageRep imageLayout](self "imageLayout")];
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  CGAffineTransformInvert(&t2, &v12);
  CGAffineTransformConcat(&v15, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  v11 = [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v12 = v15;
  CGAffineTransformConcat(&t1, &t2, &v12);
  t2 = t1;
  [v8 transformBy:&t2];
  [(TSDRep *)self computeDirectLayerFrame:frame andTransform:transform basedOnLayoutGeometry:v8];
}

- (void)updateLayerGeometryFromLayout:(id)layout
{
  if ([(TSDImageRep *)self directlyManagesLayerContent])
  {
    v5 = [-[TSDImageRep imageLayout](self "imageLayout")];
    v11 = 0u;
    v12 = 0u;
    memset(&v10, 0, sizeof(v10));
    if ([(TSDImageRep *)self p_shouldRenderWithMaskToBounds])
    {
      [(TSDImageRep *)self p_getAliasedValuesForMaskToBoundsDirectLayerFrame:&v11 transform:&v10];
      v9 = v10;
      [(TSDRep *)self antiAliasDefeatLayerFrame:&v11 forTransform:&v9];
    }

    else
    {
      [(TSDRep *)self computeDirectLayerFrame:&v11 andTransform:&v10 basedOnLayoutGeometry:v5];
      [(TSDImageRep *)self p_orientationForDirectlyManagedLayer];
      memset(&v9, 0, sizeof(v9));
      TSUImageOrientationTransform();
      memset(&t1, 0, sizeof(t1));
      v6 = v10;
      CGAffineTransformConcat(&v8, &t1, &v6);
      v10 = v8;
      [(TSDRep *)self antiAliasDefeatLayerTransform:&v10 forFrame:v11, v12];
    }

    v9 = v10;
    [layout setIfDifferentFrame:&v9 orTransform:{v11, v12}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSDImageRep;
    [(TSDRep *)&v13 updateLayerGeometryFromLayout:layout];
  }

  [(TSDImageRep *)self p_invalidateHitTestCache];
}

- (void)willUpdateLayer:(id)layer
{
  [(TSDImageRep *)self p_generateSizedImageIfNecessary];
  [*&self->mBaseMaskLayoutTransform.ty lock];
  v30.receiver = self;
  v30.super_class = TSDImageRep;
  [(TSDStyledRep *)&v30 willUpdateLayer:layer];
  [(TSDImageRep *)self p_takeSizedImageFromStateIfReady];
  [(TSDImageRep *)self p_updateDirectlyManagesLayerContentForLayer:layer];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (![(TSDImageRep *)self directlyManagesLayerContent])
  {
    goto LABEL_26;
  }

  imageLayout = [(TSDImageRep *)self imageLayout];
  v6 = *&self->mSizingStateReady;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TSDImageRep_willUpdateLayer___block_invoke;
  block[3] = &unk_279D481D0;
  block[5] = self;
  block[6] = &v26;
  block[4] = imageLayout;
  dispatch_sync(v6, block);
  if (*(v27 + 24) == 1)
  {
    [(TSDImageRep *)self p_createMaskLayerForLayer:layer];
  }

  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  v8 = stroke;
  if (stroke && [stroke shouldRender] && (!objc_msgSend(v8, "isFrame") || objc_msgSend(imageLayout, "shouldRenderFrameStroke")))
  {
    isFrame = [v8 isFrame];
    if (isFrame && [v8 hasMask])
    {
      shouldRenderFrameStroke = [imageLayout shouldRenderFrameStroke];
      v11 = shouldRenderFrameStroke;
      if ((v27[3] & 1) == 0 && ((shouldRenderFrameStroke ^ 1) & 1) == 0)
      {
        *(v27 + 24) = 1;
        [(TSDImageRep *)self p_createMaskLayerForLayer:layer];
      }
    }

    else
    {
      v11 = 0;
    }

    if (!self->super.mMaskLayer)
    {
      v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
      self->super.mMaskLayer = v13;
      [(CAShapeLayer *)v13 setDelegate:self];
      [(CAShapeLayer *)self->super.mMaskLayer setFillColor:0];
      if (isFrame)
      {
        mStrokeLayer = self->super.mStrokeLayer;
        if (mStrokeLayer)
        {
          [(CAShapeLayer *)mStrokeLayer removeFromSuperlayer];
          self->super.mStrokeLayer = 0;
        }

        [(TSDMediaRep *)self i_updateFrameRep];
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        v16 = v15;
        mFrameMaskLayer = self->super.mFrameMaskLayer;
        mMaskLayer = self->super.mMaskLayer;
        mTapToReplaceLayer = self->super.mTapToReplaceLayer;
        [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
        self->super.mStrokeLayer = [(CALayer *)mFrameMaskLayer applyToCALayer:mMaskLayer withRepLayer:layer maskLayer:mTapToReplaceLayer viewScale:v16 * v20];
        v21 = *(MEMORY[0x277CBF3A0] + 16);
        *&self->super.mFrameRep = *MEMORY[0x277CBF3A0];
        *&self->super.mLastPictureFrameLayerRect.origin.y = v21;
        v22 = MEMORY[0x277CBF2C0];
        v23 = *(MEMORY[0x277CBF2C0] + 16);
        *&self->mMaskSublayer = *MEMORY[0x277CBF2C0];
        *&self->mLastPictureFrameLayerTransform.b = v23;
        *&self->mLastPictureFrameLayerTransform.d = *(v22 + 32);
      }
    }

    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (*(v27 + 24) == 1 && (v11 & 1) == 0)
  {
    v24 = self->super.mStrokeLayer;
    if (v24)
    {
      [(CAShapeLayer *)v24 removeFromSuperlayer];
      self->super.mStrokeLayer = 0;
    }
  }

  if ((v12 & 1) == 0)
  {
LABEL_26:
    [(TSDImageRep *)self p_disposeStrokeLayer];
  }

  if ((v27[3] & 1) == 0)
  {
    [(TSDImageRep *)self p_disposeMaskLayer];
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __31__TSDImageRep_willUpdateLayer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) maskLayout] || (result = objc_msgSend(objc_msgSend(*(a1 + 40), "imageInfo"), "instantAlphaPath")) != 0) && ((result = objc_msgSend(objc_msgSend(*(a1 + 40), "imageLayout"), "isInMaskEditMode"), (result) || (result = objc_msgSend(*(a1 + 40), "p_shouldRenderWithMaskToBounds"), (result & 1) == 0)))
  {
    v3 = *(*(a1 + 40) + 736) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3 & 1;
  return result;
}

- (void)didUpdateLayer:(id)layer
{
  v105.receiver = self;
  v105.super_class = TSDImageRep;
  [(TSDStyledRep *)&v105 didUpdateLayer:?];
  imageLayout = [(TSDImageRep *)self imageLayout];
  maskLayout = [(TSDImageRep *)self maskLayout];
  if (![(TSDImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    v7 = *&self->mFrameInUnscaledCanvasIsValid;
    if (v7)
    {
      [v7 removeFromSuperlayer];

      *&self->mFrameInUnscaledCanvasIsValid = 0;
      [layer setMasksToBounds:0];
    }
  }

  if ([(TSDImageRep *)self directlyManagesLayerContent])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v99 = 0;
    v100 = &v99;
    v101 = 0x3052000000;
    v102 = __Block_byref_object_copy__12;
    v103 = __Block_byref_object_dispose__12;
    v104 = [(TSDImageRep *)self p_imageForDirectlyManagedLayer:layer];
    v8 = *&self->mSizingStateReady;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__TSDImageRep_didUpdateLayer___block_invoke;
    block[3] = &unk_279D47838;
    block[4] = self;
    block[5] = &v99;
    dispatch_sync(v8, block);
    contents = [layer contents];
    if (contents != v100[5])
    {
      [layer setContents:?];
    }

    v10 = [-[TSDImageRep imageLayout](self "imageLayout")];
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&v97, 0, sizeof(v97));
    }

    if (TSDIsTransformAxisAligned(&v97.a))
    {
      if ([layer edgeAntialiasingMask])
      {
        [layer setEdgeAntialiasingMask:0];
      }
    }

    else if ([layer edgeAntialiasingMask] != 15)
    {
      [layer setEdgeAntialiasingMask:15];
    }

    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      v11 = @"nearest";
    }

    else
    {
      v11 = @"linear";
    }

    [layer setMagnificationFilter:v11];
    stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    v13 = stroke;
    if (stroke && [stroke shouldRender] && (!objc_msgSend(v13, "isFrame") || objc_msgSend(imageLayout, "shouldRenderFrameStroke")))
    {
      [(TSDImageRep *)self p_updateStrokeLayerForStroke:v13 repLayer:layer];
    }

    if (!maskLayout && ![-[TSDImageRep imageInfo](self "imageInfo")])
    {
      goto LABEL_67;
    }

    if ([(TSDImageRep *)self p_shouldRenderWithMaskToBounds])
    {
      if (!*&self->mFrameInUnscaledCanvasIsValid)
      {
        *&self->mFrameInUnscaledCanvasIsValid = objc_alloc_init(MEMORY[0x277CD9ED0]);
      }

      if (([objc_msgSend(layer "sublayers")] & 1) == 0)
      {
        [layer addSublayer:*&self->mFrameInUnscaledCanvasIsValid];
      }

      [layer setMasksToBounds:1];
      [*&self->mFrameInUnscaledCanvasIsValid setContents:v100[5]];
      [layer setContents:0];
      [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
      v85 = v14;
      [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
      v16 = v15;
      v18 = v17;
      [(TSDImageRep *)self p_orientationForDirectlyManagedLayer];
      TSDMultiplySizeScalar(v16, v18, v85);
      v19 = TSDRectWithSize();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      memset(&v97, 0, sizeof(v97));
      TSUImageOrientationTransform();
      v96 = v97;
      v106.origin.x = v19;
      v106.origin.y = v21;
      v106.size.width = v23;
      v106.size.height = v25;
      CGRectApplyAffineTransform(v106, &v96);
      v26 = TSDRectWithSize();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      memset(&v96, 0, sizeof(v96));
      v33 = [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
      if (v33)
      {
        [v33 transform];
      }

      else
      {
        memset(&v95, 0, sizeof(v95));
      }

      CGAffineTransformInvert(&v96, &v95);
      memset(&v95, 0, sizeof(v95));
      CGAffineTransformMakeTranslation(&v95, v16 * -0.5, v18 * -0.5);
      memset(&v94, 0, sizeof(v94));
      t1 = v95;
      t2 = v97;
      CGAffineTransformConcat(&v93, &t1, &t2);
      t2 = v95;
      CGAffineTransformInvert(&t1, &t2);
      CGAffineTransformConcat(&v94, &v93, &t1);
      t1 = v94;
      t2 = v96;
      CGAffineTransformConcat(&v93, &t1, &t2);
      *&v96.a = *&v93.a;
      *&v96.c = *&v93.c;
      *&v96.tx = vmulq_n_f64(*&v93.tx, v85);
      *&t1.a = *&v93.a;
      *&t1.c = *&v93.c;
      *&t1.tx = *&v96.tx;
      TSDTransformConvertForNewOrigin(&t1, &v93, v30 * 0.5, v32 * 0.5);
      v96 = v93;
      [*&self->mFrameInUnscaledCanvasIsValid setBounds:{v26, v28, v30, v32}];
      memset(v90, 0, sizeof(v90));
      memset(&v93, 0, sizeof(v93));
      [(TSDImageRep *)self p_getAliasedValuesForMaskToBoundsDirectLayerFrame:v90 transform:&v93];
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeTranslation(&t2, *v90, *(v90 + 1));
      v89 = v93;
      CGAffineTransformConcat(&t1, &v89, &t2);
      memset(&t2, 0, sizeof(t2));
      v89 = v96;
      v88 = t1;
      CGAffineTransformConcat(&t2, &v89, &v88);
      [(TSDRep *)self antiAliasDefeatLayerTransform:&t2 forFrame:v26, v28, v30, v32];
      v89 = v93;
      [(TSDRep *)self antiAliasDefeatLayerFrame:v90 forTransform:&v89];
      memset(&v89, 0, sizeof(v89));
      CGAffineTransformMakeTranslation(&v88, *v90, *(v90 + 1));
      v87 = v93;
      CGAffineTransformConcat(&v89, &v87, &v88);
      v88 = v89;
      CGAffineTransformInvert(&v87, &v88);
      v86 = t2;
      CGAffineTransformConcat(&v88, &v86, &v87);
      v96 = v88;
      [*&self->mFrameInUnscaledCanvasIsValid setIfDifferentFrame:&v88 orTransform:{v26, v28, v30, v32}];
      if ([(CAShapeLayer *)self->super.mStrokeLayer mask])
      {
        [(CAShapeLayer *)self->super.mStrokeLayer setMask:0];
      }

      goto LABEL_67;
    }

    if ([(TSDImageRep *)self p_shouldMaskWithFrameLayers])
    {
      [(CALayer *)self->super.mTapToReplaceLayer setPath:0];
      if ([(CAShapeLayer *)self->super.mStrokeLayer mask]&& ([(CAShapeLayer *)self->super.mStrokeLayer mask], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        mask = [(CAShapeLayer *)self->super.mStrokeLayer mask];
      }

      else
      {
        mask = [MEMORY[0x277CD9F90] layer];
        [mask setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "blackColor"), "CGColor")}];
        [(CAShapeLayer *)self->super.mStrokeLayer setMask:mask];
      }

      if ([-[TSDImageRep imageLayout](self "imageLayout")])
      {
        PathBoundingBox = CGPathGetPathBoundingBox([-[TSDImageRep imageLayout](self "imageLayout")]);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
      }

      else
      {
        x = *MEMORY[0x277CBF3A0];
        y = *(MEMORY[0x277CBF3A0] + 8);
      }

      v41 = TSDRectWithSize();
      v43 = v42;
      [-[TSDLayout stroke](-[TSDRep layout](self "layout")];
      v47 = TSDSubtractPoints(v41, v43, v46);
      memset(&v97, 0, sizeof(v97));
      CGAffineTransformMakeTranslation(&v97, v47, v48);
      memset(&v96, 0, sizeof(v96));
      if ([-[TSDImageRep imageLayout](self "imageLayout")])
      {
        v49 = [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
        if (v49)
        {
          [v49 transform];
        }

        else
        {
          memset(&v95, 0, sizeof(v95));
        }

        v96 = v95;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v96, x, y);
      }

      memset(&v95, 0, sizeof(v95));
      v93 = v96;
      CGAffineTransformInvert(&v94, &v93);
      v93 = v97;
      CGAffineTransformConcat(&v95, &v94, &v93);
      *&v93.a = *&v95.a;
      *&v93.c = *&v95.c;
      tx = v95.tx;
      ty = v95.ty;
      [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
      v53 = v52;
      [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
      v55 = v54;
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      *&v94.a = *&v93.a;
      *&v94.c = *&v93.c;
      v94.tx = tx * v53;
      v94.ty = ty * v55;
      [mask setAffineTransform:&v94];
      [MEMORY[0x277CD9FF0] commit];
      v56 = [-[TSDImageRep imageLayout](self "imageLayout")];
      if (!v56)
      {
        goto LABEL_66;
      }

      [(TSDImageRep *)self p_updateMaskSublayersForMaskEditMode];
      [(TSDImageRep *)self p_updateMaskLayer:self->mIAMaskLayer forRepLayer:layer shouldIncludeMask:1 shouldIncludeInstantAlpha:0];
      [(TSDImageRep *)self p_updateMaskLayer:self->mMaskPathLayer forRepLayer:layer shouldIncludeMask:0 shouldIncludeInstantAlpha:1];
      if (([imageLayout isInInstantAlphaMode] & 1) == 0)
      {
        [(TSDImageRep *)self p_updateMaskLayer:self->mContentsLayer forRepLayer:layer shouldIncludeMask:1 shouldIncludeInstantAlpha:0];
      }

      if (![-[TSDImageRep imageInfo](self "imageInfo")])
      {
        [mask setPath:0];
      }

      else
      {
LABEL_66:
        [(TSDImageRep *)self p_updateMaskLayer:mask forRepLayer:layer shouldIncludeMask:v56 ^ 1u shouldIncludeInstantAlpha:1];
      }

      goto LABEL_67;
    }

    v35 = [-[TSDImageRep imageLayout](self "imageLayout")];
    if (!v35)
    {
      if ((self->mSizedImageOrientation & 1) == 0)
      {
        v40 = &OBJC_IVAR___TSDMediaRep_mMaskLayer;
LABEL_59:
        [(TSDImageRep *)self p_updateMaskLayer:*(&self->super.super.super.super.isa + *v40) forRepLayer:layer shouldIncludeMask:1 shouldIncludeInstantAlpha:v35 ^ 1u];
      }

LABEL_67:
      if (self->super.mTapToReplaceLayer)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        [layer bounds];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        [(CALayer *)self->super.mTapToReplaceLayer frame];
        v112.origin.x = v65;
        v112.origin.y = v66;
        v112.size.width = v67;
        v112.size.height = v68;
        v108.origin.x = v58;
        v108.origin.y = v60;
        v108.size.width = v62;
        v108.size.height = v64;
        if (!CGRectEqualToRect(v108, v112))
        {
          [(CALayer *)self->super.mTapToReplaceLayer setFrame:v58, v60, v62, v64];
        }

        mIAMaskLayer = self->mIAMaskLayer;
        if (mIAMaskLayer)
        {
          [(CAShapeLayer *)mIAMaskLayer frame];
          v113.origin.x = v70;
          v113.origin.y = v71;
          v113.size.width = v72;
          v113.size.height = v73;
          v109.origin.x = v58;
          v109.origin.y = v60;
          v109.size.width = v62;
          v109.size.height = v64;
          if (!CGRectEqualToRect(v109, v113))
          {
            [(CAShapeLayer *)self->mIAMaskLayer setFrame:v58, v60, v62, v64];
          }
        }

        mMaskPathLayer = self->mMaskPathLayer;
        if (mMaskPathLayer)
        {
          [(CAShapeLayer *)mMaskPathLayer frame];
          v114.origin.x = v75;
          v114.origin.y = v76;
          v114.size.width = v77;
          v114.size.height = v78;
          v110.origin.x = v58;
          v110.origin.y = v60;
          v110.size.width = v62;
          v110.size.height = v64;
          if (!CGRectEqualToRect(v110, v114))
          {
            [(CAShapeLayer *)self->mMaskPathLayer setFrame:v58, v60, v62, v64];
          }
        }

        [MEMORY[0x277CD9FF0] commit];
      }

      [MEMORY[0x277CD9FF0] commit];
      _Block_object_dispose(&v99, 8);
      goto LABEL_78;
    }

    [(TSDImageRep *)self p_updateMaskSublayersForMaskEditMode];
    if ([-[TSDImageRep imageLayout](self "imageLayout")])
    {
      v36 = [-[TSDImageRep imageInfo](self "imageInfo")];
      v37 = self->mIAMaskLayer;
      if (!v36)
      {
        [(CAShapeLayer *)self->mIAMaskLayer setPath:0];
        goto LABEL_57;
      }
    }

    else
    {
      [(TSDImageRep *)self p_updateMaskLayer:self->mIAMaskLayer forRepLayer:layer shouldIncludeMask:1 shouldIncludeInstantAlpha:0];
      v37 = self->mMaskPathLayer;
    }

    [(TSDImageRep *)self p_updateMaskLayer:v37 forRepLayer:layer shouldIncludeMask:0 shouldIncludeInstantAlpha:1];
LABEL_57:
    if (([imageLayout isInInstantAlphaMode] & 1) == 0)
    {
      v40 = &OBJC_IVAR___TSDImageRep_mMaskPathLayer;
      goto LABEL_59;
    }

    goto LABEL_67;
  }

  if ([layer edgeAntialiasingMask] != 15)
  {
    [layer setEdgeAntialiasingMask:15];
  }

LABEL_78:
  v79 = *MEMORY[0x277CBF348];
  v80 = *(MEMORY[0x277CBF348] + 8);
  [layer contentsRect];
  v115.size.width = 1.0;
  v115.size.height = 1.0;
  v115.origin.x = v79;
  v115.origin.y = v80;
  if (!CGRectEqualToRect(v111, v115))
  {
    [layer setContentsRect:{v79, v80, 1.0, 1.0}];
  }

  [(TSDStyledRep *)self opacity];
  v82 = v81;
  [layer opacity];
  v84 = v83;
  if (v82 != v84)
  {
    *&v84 = v82;
    [layer setOpacity:v84];
  }

  [*&self->mBaseMaskLayoutTransform.ty unlock];
}

uint64_t __30__TSDImageRep_didUpdateLayer___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(*(*(v3 + 8) + 8) + 40) != *(result + 704))
  {
    if (*(result + 680))
    {
      result = [result p_shouldBakeMaskIntoSizedImage];
      if (result)
      {
        result = [MEMORY[0x277CCACC8] isMainThread];
        if ((result & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 40) = 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)p_shouldMaskWithFrameLayers
{
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (!stroke)
  {
    return 0;
  }

  v4 = stroke;
  if (![stroke shouldRender] || !objc_msgSend(v4, "isFrame") || !objc_msgSend(v4, "hasMask"))
  {
    return 0;
  }

  imageLayout = [(TSDImageRep *)self imageLayout];

  return [imageLayout shouldRenderFrameStroke];
}

- (void)p_updateMaskLayer:(id)layer forRepLayer:(id)repLayer shouldIncludeMask:(BOOL)mask shouldIncludeInstantAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  maskCopy = mask;
  v11 = [-[TSDImageRep imageLayout](self "imageLayout")];
  if (![(TSDImageRep *)self directlyManagesLayerContent])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_updateMaskLayer:forRepLayer:shouldIncludeMask:shouldIncludeInstantAlpha:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 2730, @"Updating mask layer for a non-directly managed layer!"}];
  }

  if (layer && ![(TSDImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
    v15 = v14;
    MutableCopy = 0;
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    *&v48.a = *MEMORY[0x277CBF2C0];
    *&v48.c = v17;
    *&v48.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (v11 && maskCopy)
    {
      [v11 pathBounds];
      CGAffineTransformMakeTranslation(&v48, -v18, -v19);
      [v11 transform];
      t1 = v48;
      CGAffineTransformConcat(&v47, &t1, &t2);
      v48 = v47;
      CGAffineTransformMakeScale(&t2, v15, v15);
      t1 = v48;
      CGAffineTransformConcat(&v47, &t1, &t2);
      v48 = v47;
      MutableCopy = CGPathCreateMutableCopy([v11 path]);
    }

    if ([-[TSDImageRep imageInfo](self "imageInfo")] && alphaCopy)
    {
      v20 = [objc_msgSend(-[TSDImageRep imageInfo](self "imageInfo")];
      imageLayout = [(TSDImageRep *)self imageLayout];
      if (imageLayout)
      {
        [imageLayout imageDataToVisualSizeTransform];
      }

      else
      {
        memset(&v47, 0, sizeof(v47));
      }

      [v20 transformUsingAffineTransform:&v47];
      if (MutableCopy)
      {
        if (v11)
        {
          [v11 affineTransformForTightPathBounds];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        CGAffineTransformInvert(&v47, &t2);
        [v20 transformUsingAffineTransform:&v47];
        [-[TSDImageRep imageLayout](self "imageLayout")];
        CGAffineTransformMakeTranslation(&v47, v24, v25);
        [v20 transformUsingAffineTransform:&v47];
        v26 = [[TSDBezierPath bezierPathWithCGPath:?], "intersectBezierPath:", v20];
        if (!v26)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_updateMaskLayer:forRepLayer:shouldIncludeMask:shouldIncludeInstantAlpha:]"];
          [currentHandler2 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 2764, @"invalid nil value for '%s'", "maskBezierPath"}];
        }

        CGPathRelease(MutableCopy);
        MutableCopy = [v26 CGPath];
      }

      else
      {
        CGAffineTransformMakeScale(&v47, v15, v15);
        [v20 transformUsingAffineTransform:&v47];
        MutableCopy = [v20 CGPath];
        if (!MutableCopy)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_updateMaskLayer:forRepLayer:shouldIncludeMask:shouldIncludeInstantAlpha:]"];
          [currentHandler3 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 2772, @"invalid nil value for '%s'", "maskPath"}];
          MutableCopy = 0;
        }
      }

      CGPathRetain(MutableCopy);
    }

    if ([(TSDImageRep *)self p_orientationForDirectlyManagedLayer])
    {
      [repLayer bounds];
      v29 = TSDRectWithSize();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      memset(&v47, 0, sizeof(v47));
      TSUImageOrientationTransform();
      v36 = TSDCenterOfRect(v29, v31, v33, v35);
      v38 = v37;
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformMakeTranslation(&t1, -v36, -v37);
      CGAffineTransformMakeTranslation(&v43, v36, v38);
      v42 = v47;
      CGAffineTransformConcat(&v44, &v42, &v43);
      CGAffineTransformConcat(&t2, &t1, &v44);
      t1 = t2;
      CGAffineTransformInvert(&v44, &t1);
      v43 = v48;
      CGAffineTransformConcat(&t1, &v43, &v44);
      v48 = t1;
    }

    if (!MutableCopy)
    {
      if ([-[TSDImageRep imageLayout](self "imageLayout")])
      {
        currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_updateMaskLayer:forRepLayer:shouldIncludeMask:shouldIncludeInstantAlpha:]"];
        [currentHandler4 handleFailureInFunction:v40 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 2794, @"maskPath is nil when it should not be"}];
      }
    }

    v47 = v48;
    v41 = TSDCreateTransformedPath(MutableCopy, &v47);
    [layer setPath:v41];
    CGPathRelease(v41);
    CGPathRelease(MutableCopy);
  }
}

- (void)p_updateStrokeLayerForStroke:(id)stroke repLayer:(id)layer
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  imageLayout = [(TSDImageRep *)self imageLayout];
  maskLayout = [(TSDImageRep *)self maskLayout];
  [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
  v10 = v9;
  memset(&v111, 0, sizeof(v111));
  v109 = 0u;
  v110 = 0u;
  -[TSDRep computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:](self, "computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:", &v109, &v111, [-[TSDImageRep imageLayout](self "imageLayout")]);
  v11 = v110;
  v12 = TSDRectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = TSDCenterOfRect(*&v109, *(&v109 + 1), *&v11, *(&v11 + 1));
  v21 = v20;
  [(CAShapeLayer *)self->super.mMaskLayer position];
  if (v23 != v19 || v22 != v21)
  {
    [(CAShapeLayer *)self->super.mMaskLayer setPosition:v19, v21];
  }

  [(TSDStyledRep *)self opacity];
  v26 = v25;
  [(CAShapeLayer *)self->super.mMaskLayer opacity];
  v28 = v27;
  if (v26 != v28)
  {
    *&v28 = v26;
    [(CAShapeLayer *)self->super.mMaskLayer setOpacity:v28];
  }

  if (![stroke isFrame])
  {
    [(CAShapeLayer *)self->super.mMaskLayer setBounds:v12, v14, v16, v18];
    [stroke applyToRepRenderable:+[TSDRenderable renderableFromLayer:](TSDRenderable withScale:{"renderableFromLayer:", self->super.mMaskLayer), v10}];
    pathToStroke = [imageLayout pathToStroke];
    Mutable = pathToStroke;
    if (maskLayout)
    {
      if (!pathToStroke)
      {
        mMaskLayer = self->super.mMaskLayer;
        v79 = 1;
        goto LABEL_26;
      }

      memset(&v108, 0, sizeof(v108));
      [maskLayout transform];
      CGAffineTransformMakeScale(&t2, v10, v10);
      CGAffineTransformConcat(&v108, &t1, &t2);
      t1 = v108;
      pathToStroke2 = Mutable;
    }

    else
    {
      if (!pathToStroke)
      {
        Mutable = CGPathCreateMutable();
        v115.origin.x = v12;
        v115.origin.y = v14;
        v115.size.width = v16;
        v115.size.height = v18;
        CGPathAddRect(Mutable, 0, v115);
        goto LABEL_24;
      }

      memset(&v108, 0, sizeof(v108));
      CGAffineTransformMakeScale(&v108, v10, v10);
      pathToStroke2 = [imageLayout pathToStroke];
      t1 = v108;
    }

    Mutable = TSDCreateTransformedPath(pathToStroke2, &t1);
LABEL_24:
    mMaskLayer = self->super.mMaskLayer;
    v79 = 0;
LABEL_26:
    [(CAShapeLayer *)mMaskLayer setHidden:v79];
    [(CAShapeLayer *)self->super.mMaskLayer setPath:Mutable];
    CGPathRelease(Mutable);
    goto LABEL_27;
  }

  v103 = v10;
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    pathToStroke3 = [imageLayout pathToStroke];
    if (!pathToStroke3)
    {
      goto LABEL_27;
    }

    PathBoundingBox = CGPathGetPathBoundingBox(pathToStroke3);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    v34 = TSDRectWithSize();
    v99 = v35;
    v101 = v34;
    v95 = v37;
    v97 = v36;
    [stroke coverageRectWithoutAdornment:?];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [TSDMutableLayoutGeometry alloc];
    v47 = v46;
    if (maskLayout)
    {
      v48 = [(TSDLayoutGeometry *)v46 initWithFrame:*&v39, v41, v43, v45];
      if (imageLayout)
      {
        [imageLayout layoutToMaskTransform];
      }

      else
      {
        memset(&v108, 0, sizeof(v108));
      }
    }

    else
    {
      [stroke coverageRectWithoutAdornment:{x, y, width, height}];
      v48 = [(TSDLayoutGeometry *)v47 initWithFrame:?];
      [stroke coverageRect:{x, y, width, height}];
      if (v81 <= 0.0)
      {
        v83 = -v81;
      }

      else
      {
        v83 = -0.0;
      }

      if (v82 <= 0.0)
      {
        v84 = -v82;
      }

      else
      {
        v84 = -0.0;
      }

      CGAffineTransformMakeTranslation(&v108, v83, v84);
    }

    [(TSDMutableLayoutGeometry *)v48 transformBy:&v108];
    if (imageLayout)
    {
      [imageLayout transform];
    }

    else
    {
      memset(&v108, 0, sizeof(v108));
    }

    [(TSDMutableLayoutGeometry *)v48 transformBy:&v108];
    memset(&t2, 0, 32);
    [(TSDRep *)self computeDirectLayerFrame:&t2 andTransform:&v111 basedOnLayoutGeometry:v48];

    [(CAShapeLayer *)self->super.mMaskLayer setPosition:TSDCenterOfRect(t2.a, t2.b, t2.c, t2.d)];
    [(CAShapeLayer *)self->super.mMaskLayer setBounds:TSDRectWithSize()];
    if (([-[TSDImageRep imageLayout](self "imageLayout")] & 1) != 0 || !-[TSDImageRep p_shouldRenderWithMaskToBounds](self, "p_shouldRenderWithMaskToBounds") || objc_msgSend(-[TSDImageRep imageInfo](self, "imageInfo"), "instantAlphaPath"))
    {
      if (maskLayout)
      {
        [maskLayout transform];
        v106 = *&v108.a;
        v107 = *&v108.c;
        tx = v103 * v108.tx;
        ty = v103 * v108.ty;
LABEL_54:
        *&v116.origin.x = v39;
        v116.origin.y = v41;
        v116.size.width = v43;
        v116.size.height = v45;
        if (!CGRectEqualToRect(v116, *&self->super.mFrameRep) || (*&v108.a = v106, *&v108.c = v107, v108.tx = tx, v108.ty = ty, v90 = *&self->mLastPictureFrameLayerTransform.b, *&t1.a = *&self->mMaskSublayer, *&t1.c = v90, *&t1.tx = *&self->mLastPictureFrameLayerTransform.d, !CGAffineTransformEqualToTransform(&v108, &t1)))
        {
          [(TSDMediaRep *)self i_updateFrameRep];
          mFrameMaskLayer = self->super.mFrameMaskLayer;
          v92 = self->super.mMaskLayer;
          mTapToReplaceLayer = self->super.mTapToReplaceLayer;
          *&v108.a = v106;
          *&v108.c = v107;
          v108.tx = tx;
          v108.ty = ty;
          [(CALayer *)mFrameMaskLayer updateCALayer:v92 toRect:layer withRepLayer:mTapToReplaceLayer maskLayer:&v108 viewScale:v101 maskLayerTransform:v99, v97, v95, v103];
          self->super.mFrameRep = v39;
          self->super.mLastPictureFrameLayerRect.origin.x = v41;
          self->super.mLastPictureFrameLayerRect.origin.y = v43;
          self->super.mLastPictureFrameLayerRect.size.width = v45;
          v94 = v107;
          *&self->mMaskSublayer = v106;
          *&self->mLastPictureFrameLayerTransform.b = v94;
          self->mLastPictureFrameLayerTransform.d = tx;
          self->mLastPictureFrameLayerTransform.tx = ty;
        }

        goto LABEL_27;
      }

      if ([-[TSDImageRep imageInfo](self "imageInfo")])
      {
        CGAffineTransformMakeTranslation(&v108, v103 * x, v103 * y);
        v106 = *&v108.a;
        v107 = *&v108.c;
        tx = v108.tx;
        ty = v108.ty;
        goto LABEL_54;
      }

      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_updateStrokeLayerForStroke:repLayer:]"];
      [currentHandler handleFailureInFunction:v88 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 2887, @"This path should never be hit! Something is wrong with rendering the frame."}];
    }

    v89 = *(MEMORY[0x277CBF2C0] + 16);
    v106 = *MEMORY[0x277CBF2C0];
    v107 = v89;
    tx = *(MEMORY[0x277CBF2C0] + 32);
    ty = *(MEMORY[0x277CBF2C0] + 40);
    goto LABEL_54;
  }

  v52 = TSDMultiplyRectScalar(v12, v14, v16, v18, 1.0 / v10);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [stroke coverageRectWithoutAdornment:?];
  v59 = v113.origin.x;
  v60 = v113.origin.y;
  v61 = v113.size.width;
  v62 = v113.size.height;
  if (!CGRectEqualToRect(v113, *&self->super.mFrameRep))
  {
    v100 = v54;
    v102 = v52;
    v96 = v58;
    v98 = v56;
    v63 = TSDCenterOfRect(v52, v54, v56, v58);
    v65 = TSDSubtractPoints(v63, v64, v59);
    [(CAShapeLayer *)self->super.mMaskLayer setAnchorPoint:v65 / v61, v66 / v62];
    TSDMultiplySizeScalar(v61, v62, v103);
    v67 = TSDRectWithSize();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    [(CAShapeLayer *)self->super.mMaskLayer bounds];
    v117.origin.x = v67;
    v117.origin.y = v69;
    v117.size.width = v71;
    v117.size.height = v73;
    if (!CGRectEqualToRect(v114, v117))
    {
      [(CAShapeLayer *)self->super.mMaskLayer setBounds:v67, v69, v71, v73];
    }

    [(TSDMediaRep *)self i_updateFrameRep];
    v74 = self->super.mFrameMaskLayer;
    v75 = self->super.mMaskLayer;
    v76 = self->super.mTapToReplaceLayer;
    v77 = *(MEMORY[0x277CBF2C0] + 16);
    *&v108.a = *MEMORY[0x277CBF2C0];
    *&v108.c = v77;
    *&v108.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(CALayer *)v74 updateCALayer:v75 toRect:layer withRepLayer:v76 maskLayer:&v108 viewScale:v102 maskLayerTransform:v100, v98, v96, v103];
    *&self->super.mFrameRep = v59;
    self->super.mLastPictureFrameLayerRect.origin.x = v60;
    self->super.mLastPictureFrameLayerRect.origin.y = v61;
    self->super.mLastPictureFrameLayerRect.size.width = v62;
  }

LABEL_27:
  v80 = self->super.mMaskLayer;
  if (v80)
  {
    [(CAShapeLayer *)v80 affineTransform];
  }

  else
  {
    memset(&v108, 0, sizeof(v108));
  }

  t1 = v111;
  if (!CGAffineTransformEqualToTransform(&v108, &t1))
  {
    v108 = v111;
    [(CAShapeLayer *)self->super.mMaskLayer setAffineTransform:&v108];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (id)additionalLayersOverLayer
{
  v18.receiver = self;
  v18.super_class = TSDImageRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDMediaRep additionalLayersOverLayer](&v18, sel_additionalLayersOverLayer)}];
  if (self->super.mMaskLayer)
  {
    visibleMediaReplaceButtonLayer = [(TSDMediaRep *)self visibleMediaReplaceButtonLayer];
    v5 = [v3 indexOfObject:visibleMediaReplaceButtonLayer];
    mMaskLayer = self->super.mMaskLayer;
    if (!visibleMediaReplaceButtonLayer || (v6 = v5, v5 == 0x7FFFFFFFFFFFFFFFLL))
    {
      [v3 addObject:{mMaskLayer, v6}];
    }

    else
    {
      [v3 insertObject:mMaskLayer atIndex:v5];
    }
  }

  if (self->mContentsLayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v8 = [-[TSDImageRep imageLayout](self "imageLayout")];
    if (v8)
    {
      [v8 transform];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v17.f64[0] = v9 * v17.f64[0];
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v17.f64[1] = v10 * v17.f64[1];
    if ([(TSDRep *)self parentRep])
    {
      [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
      v12.f64[1] = v11;
      v17 = vsubq_f64(v17, v12);
    }

    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    [(CALayer *)self->mContentsLayer setAffineTransform:v14];
    [MEMORY[0x277CD9FF0] commit];
    [v3 addObject:self->mContentsLayer];
  }

  return v3;
}

- (void)viewScaleDidChange
{
  v5.receiver = self;
  v5.super_class = TSDImageRep;
  [(TSDStyledRep *)&v5 viewScaleDidChange];
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (stroke)
  {
    v4 = stroke;
    if ([stroke shouldRender])
    {
      if ([v4 isFrame])
      {
        [(TSDImageRep *)self p_disposeStrokeLayer];
        if ([v4 hasMask])
        {
          [(TSDImageRep *)self p_disposeMaskLayer];
        }
      }
    }
  }
}

- (id)textureForContext:(id)context
{
  if ([-[TSDImageRep p_imageProvider](self "p_imageProvider")])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = TSDImageRep;
  return [(TSDStyledRep *)&v6 textureForContext:context];
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = [objc_msgSend(objc_msgSend(v4 "imageInfo")];
  result = 0.0;
  if (v6)
  {
    if ([objc_msgSend(objc_msgSend(v4 imageInfo])
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = v8 + TSDMixingTypeWithPossiblyNilObjects([objc_msgSend(v4 "imageInfo")], objc_msgSend(objc_msgSend(v5, "imageInfo"), "maskInfo")) / 5.0 * 0.1;
    v10 = [objc_msgSend(objc_msgSend(v4 "imageInfo")];
    v11 = v9 + 1.0;
    if (v10 != 5)
    {
      v11 = v9;
    }

    return v11 / 2.1;
  }

  return result;
}

- (id)p_imageData
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    if ([objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")])
    {
      result = [-[TSDImageRep imageInfo](self "imageInfo")];
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    result = [-[TSDImageRep imageInfo](self "imageInfo")];
    if (result)
    {
      return result;
    }
  }

  imageInfo = [(TSDImageRep *)self imageInfo];

  return [imageInfo imageData];
}

- (id)p_imageProvider
{
  v3 = +[TSDImageProviderPool sharedPool];
  p_imageData = [(TSDImageRep *)self p_imageData];

  return [v3 providerForData:p_imageData shouldValidate:0];
}

- (id)p_validatedImageProvider
{
  v3 = +[TSDImageProviderPool sharedPool];
  p_imageData = [(TSDImageRep *)self p_imageData];

  return [v3 providerForData:p_imageData shouldValidate:1];
}

- (id)p_validatedBitmapImageProvider
{
  objc_opt_class();
  [(TSDImageRep *)self p_validatedImageProvider];

  return TSUDynamicCast();
}

- (void)p_disposeStrokeLayer
{
  if (self->super.mMaskLayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [(CAShapeLayer *)self->super.mMaskLayer setDelegate:0];

    self->super.mMaskLayer = 0;
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    *&self->super.mFrameRep = *MEMORY[0x277CBF3A0];
    *&self->super.mLastPictureFrameLayerRect.origin.y = v3;
    v4 = MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&self->mMaskSublayer = *MEMORY[0x277CBF2C0];
    *&self->mLastPictureFrameLayerTransform.b = v5;
    *&self->mLastPictureFrameLayerTransform.d = *(v4 + 32);
    [(CAShapeLayer *)self->super.mStrokeLayer removeFromSuperlayer];
    self->super.mStrokeLayer = 0;
    v6 = MEMORY[0x277CD9FF0];

    [v6 commit];
  }
}

- (void)p_disposeMaskLayer
{
  if (self->super.mTapToReplaceLayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [(CAShapeLayer *)self->mIAMaskLayer removeFromSuperlayer];

    self->mIAMaskLayer = 0;
    [(CAShapeLayer *)self->mMaskPathLayer removeFromSuperlayer];

    self->mMaskPathLayer = 0;
    [(CALayer *)self->super.mTapToReplaceLayer removeFromSuperlayer];
    [(CALayer *)self->super.mTapToReplaceLayer setDelegate:0];

    self->super.mTapToReplaceLayer = 0;
    [(CAShapeLayer *)self->super.mStrokeLayer removeFromSuperlayer];
    self->super.mStrokeLayer = 0;
    v3 = MEMORY[0x277CD9FF0];

    [v3 commit];
  }
}

- (void)p_createMaskLayerForLayer:(id)layer
{
  if (!self->super.mTapToReplaceLayer)
  {
    v5 = objc_alloc_init(MEMORY[0x277CD9F90]);
    self->super.mTapToReplaceLayer = v5;
    [(CALayer *)v5 setDelegate:self];
    [(CALayer *)self->super.mTapToReplaceLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    mTapToReplaceLayer = self->super.mTapToReplaceLayer;

    [layer setMask:mTapToReplaceLayer];
  }
}

- (void)p_updateMaskSublayersForMaskEditMode
{
  v3 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];
  if (!self->super.mTapToReplaceLayer)
  {
    [(TSDImageRep *)self p_createMaskLayerForLayer:v3];
  }

  if (!self->mIAMaskLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    self->mIAMaskLayer = v4;
    [(CALayer *)self->super.mTapToReplaceLayer addSublayer:v4];
  }

  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    [(CAShapeLayer *)self->mIAMaskLayer setMask:0];

    self->mMaskPathLayer = 0;
    [(CALayer *)self->mContentsLayer removeFromSuperlayer];

    self->mContentsLayer = 0;
    if ([-[TSDImageRep imageInfo](self "imageInfo")])
    {
      v5 = 0.25;
    }

    else
    {
      v5 = 1.0;
    }

    -[CAShapeLayer setBackgroundColor:](self->mIAMaskLayer, "setBackgroundColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.0 blue:0.0 alpha:{v5), "CGColor"}]);
    goto LABEL_17;
  }

  -[CAShapeLayer setBackgroundColor:](self->mIAMaskLayer, "setBackgroundColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.0 blue:0.0 alpha:{0.5), "CGColor"}]);
  if (self->mMaskPathLayer)
  {
    goto LABEL_9;
  }

  if ([-[TSDImageRep imageInfo](self "imageInfo")])
  {
    v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
    self->mMaskPathLayer = v6;
    [(CAShapeLayer *)self->mIAMaskLayer setMask:v6];
  }

  else if (self->mMaskPathLayer)
  {
LABEL_9:
    if (![-[TSDImageRep imageInfo](self "imageInfo")])
    {
      [(CAShapeLayer *)self->mIAMaskLayer setMask:0];

      self->mMaskPathLayer = 0;
    }
  }

  if (!self->mContentsLayer)
  {
    self->mContentsLayer = objc_alloc_init(MEMORY[0x277CD9F90]);
    -[CALayer setStrokeColor:](self->mContentsLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.392156869 green:0.392156869 blue:0.392156869 alpha:{1.0), "CGColor"}]);
    [(CALayer *)self->mContentsLayer setFillColor:0];
    [(CALayer *)self->mContentsLayer setLineWidth:1.0];
    [(CALayer *)self->mContentsLayer setLineDashPattern:&unk_287DDCB10];
  }

LABEL_17:
  mTapToReplaceLayer = self->super.mTapToReplaceLayer;

  [(CALayer *)mTapToReplaceLayer setPath:0];
}

- (BOOL)p_drawsInOneStep
{
  imageInfo = [(TSDImageRep *)self imageInfo];
  v4 = [objc_msgSend(imageInfo "stroke")];
  if ([imageInfo maskInfo])
  {
    v5 = 1;
  }

  else
  {
    v5 = [imageInfo instantAlphaPath] != 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *&self->mSizingStateReady;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__TSDImageRep_p_drawsInOneStep__block_invoke;
  v9[3] = &unk_279D47838;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);
  v7 = 0;
  if (((v4 | v5) & 1) == 0)
  {
    v7 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

void *__31__TSDImageRep_p_drawsInOneStep__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "imageLayout")];
  if (!result || (result = *(a1 + 32), result[88]) || [objc_msgSend(result "canvas")] && (objc_msgSend(objc_msgSend(*(a1 + 32), "canvas"), "viewScale"), v4 < 0.5) && (result = objc_msgSend(*(a1 + 32), "p_validatedThumbnailImageProvider")) != 0)
  {
    v3 = 1;
  }

  else
  {
    result = [*(a1 + 32) p_validatedBitmapImageProvider];
    v3 = result != 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)shouldShowShadow
{
  v5.receiver = self;
  v5.super_class = TSDImageRep;
  shouldShowShadow = [(TSDStyledRep *)&v5 shouldShowShadow];
  if (shouldShowShadow)
  {
    LOBYTE(shouldShowShadow) = ![(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds];
  }

  return shouldShowShadow;
}

- (CGSize)p_desiredSizedImageSize
{
  [-[TSDImageRep p_validatedImageProvider](self "p_validatedImageProvider")];
  v4 = v3;
  v6 = v5;
  [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v12 = v11;
  [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
  v14 = TSDMultiplySizeScalar(v8, v10, v12 * v13);
  v16 = v15;
  if (([-[TSDImageRep p_imageProvider](self "p_imageProvider")] & 1) != 0 || (v14 <= v4 ? (v17 = v16 <= v6) : (v17 = 0), v17))
  {
    v4 = v14;
  }

  else
  {
    [(TSDImageRep *)self p_imageProvider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = TSDShrinkSizeToFitInSize(v14, v16, 2048.0, 2048.0);
    }
  }

  v18 = TSDCeilSize(v4);
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)p_okayToGenerateSizedImage
{
  shouldResampleImages = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldResampleImages];
  if (shouldResampleImages)
  {
    LOBYTE(shouldResampleImages) = ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldSuppressRendering]&& self->mUpdateFromLayoutBlocksLock == 0;
  }

  return shouldResampleImages;
}

- (void)popDisableImageSizing
{
  mUpdateFromLayoutBlocksLock = self->mUpdateFromLayoutBlocksLock;
  if (mUpdateFromLayoutBlocksLock)
  {
    v5 = (mUpdateFromLayoutBlocksLock - 1);
    self->mUpdateFromLayoutBlocksLock = v5;
    if (!v5)
    {
      interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

      [(TSDInteractiveCanvasController *)interactiveCanvasController invalidateLayers];
    }
  }
}

- (void)p_generateSizedImageIfNecessary
{
  if ([(TSDImageRep *)self p_okayToGenerateSizedImage])
  {
    p_imageProvider = [(TSDImageRep *)self p_imageProvider];
    if ([p_imageProvider isValid])
    {
      if (([p_imageProvider isError] & 1) == 0)
      {
        [(TSDImageRep *)self p_desiredSizedImageSize];
        v4 = *&self->mSizingStateReady;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __46__TSDImageRep_p_generateSizedImageIfNecessary__block_invoke;
        v7[3] = &unk_279D48950;
        v7[6] = v5;
        v7[7] = v6;
        v7[4] = self;
        v7[5] = p_imageProvider;
        dispatch_sync(v4, v7);
      }
    }
  }
}

uint64_t __46__TSDImageRep_p_generateSizedImageIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 704))
  {
    if (*(a1 + 48) != *(v2 + 712) || *(a1 + 56) != *(v2 + 720))
    {
      goto LABEL_9;
    }

    v4 = *(v2 + 736);
    result = [v2 p_shouldBakeMaskIntoSizedImage];
    if (v4 == result)
    {
      return result;
    }

    v2 = *(a1 + 32);
    if (*(v2 + 704))
    {
LABEL_9:
      v6 = *(v2 + 736);
      v7 = [v2 p_shouldBakeMaskIntoSizedImage];
      v2 = *(a1 + 32);
      if (v6 != v7)
      {

        *(*(a1 + 32) + 680) = 0;
        CGImageRelease(*(*(a1 + 32) + 704));
        *(*(a1 + 32) + 704) = 0;
        *(*(a1 + 32) + 736) = 0;
        *(*(a1 + 32) + 737) = 0;
        v2 = *(a1 + 32);
        if (*(v2 + 744))
        {
          CGPathRelease(*(v2 + 744));
          *(*(a1 + 32) + 744) = 0;
          v2 = *(a1 + 32);
        }
      }
    }
  }

  if (!*(v2 + 680))
  {
    goto LABEL_14;
  }

  v8 = [*(v2 + 680) status];
  v2 = *(a1 + 32);
  if (v8)
  {
    goto LABEL_14;
  }

  [*(v2 + 680) desiredSize];
  if (v11 == *(a1 + 48) && v10 == *(a1 + 56))
  {
    v13 = *(a1 + 40);
    if (v13 == [*(*(a1 + 32) + 680) provider])
    {
      v2 = *(a1 + 32);
LABEL_14:
      if (*(v2 + 752) && (*(a1 + 48) == *(v2 + 760) ? (v9 = *(a1 + 56) == *(v2 + 768)) : (v9 = 0), v9))
      {
        [v2 p_takeSizedImageFromCache];
      }

      else if (!*(v2 + 680))
      {
        [v2 p_startSizing];
      }

      goto LABEL_29;
    }
  }

  [*(*(a1 + 32) + 680) setStatus:1];
LABEL_29:
  v14 = *(a1 + 40);

  return [v14 flushIfInterestLessThan:2];
}

+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)size withImageLayout:(id)layout orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  maskLayout = [layout maskLayout];
  v25 = *(MEMORY[0x277CBF2C0] + 16);
  v26 = *MEMORY[0x277CBF2C0];
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v25;
  v24 = *(MEMORY[0x277CBF2C0] + 32);
  *&v30.tx = v24;
  [objc_msgSend(layout "imageGeometry")];
  v10 = width / v9;
  [objc_msgSend(layout "imageGeometry")];
  v12 = height / v11;
  if (maskLayout)
  {
    [maskLayout pathBounds];
    CGAffineTransformMakeTranslation(&t2, -v13, -v14);
    *&t1.a = v26;
    *&t1.c = v25;
    *&t1.tx = v24;
    CGAffineTransformConcat(&v30, &t1, &t2);
    if (layout)
    {
      [layout layoutToMaskTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v27 = v30;
    CGAffineTransformConcat(&t2, &v27, &t1);
    v30 = t2;
    if (layout)
    {
      [layout layoutToImageTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformInvert(&t1, &t2);
    v27 = v30;
    CGAffineTransformConcat(&t2, &v27, &t1);
    v30 = t2;
    CGAffineTransformMakeScale(&t1, v10, v12);
    v27 = v30;
    CGAffineTransformConcat(&t2, &v27, &t1);
    v30 = t2;
    path = [maskLayout path];
    t2 = v30;
    cGPath = TSDCreateTransformedPath(path, &t2);
  }

  else
  {
    cGPath = 0;
  }

  if ([objc_msgSend(layout "imageInfo")])
  {
    v17 = [objc_msgSend(objc_msgSend(layout "imageInfo")];
    if (layout)
    {
      [layout imageDataToVisualSizeTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    [v17 transformUsingAffineTransform:&t2];
    CGAffineTransformMakeScale(&t2, v10, v12);
    [v17 transformUsingAffineTransform:&t2];
    if (cGPath)
    {
      v18 = [[TSDBezierPath bezierPathWithCGPath:?], "intersectBezierPath:", v17];
      if (!v18)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageRep p_newPathToBakeIntoSizedImageForSize:withImageLayout:orientation:]"];
        [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 3608, @"invalid nil value for '%s'", "maskBezierPath"}];
      }

      CGPathRelease(cGPath);
      cGPath = [v18 CGPath];
    }

    else
    {
      cGPath = [v17 CGPath];
      if (!cGPath)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageRep p_newPathToBakeIntoSizedImageForSize:withImageLayout:orientation:]"];
        [currentHandler2 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 3614, @"invalid nil value for '%s'", "maskPath"}];
        cGPath = 0;
      }
    }

    CGPathRetain(cGPath);
  }

  return cGPath;
}

- (void)wideGamutValueDidChange
{
  [(TSDImageRep *)self p_invalidateSizedImage];
  [(TSDImageRep *)self p_generateSizedImageIfNecessary];
  [(TSDImageRep *)self p_takeSizedImageFromStateIfReady];
  v3.receiver = self;
  v3.super_class = TSDImageRep;
  [(TSDRep *)&v3 wideGamutValueDidChange];
}

- (void)p_startSizing
{
  if (self->mLayerUpdateAndSizingStateLock)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_startSizing]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 3637, @"expected nil value for '%s'", "mSizingState"}];
  }

  [(TSDImageRep *)self p_desiredSizedImageSize];
  v6 = v5;
  v8 = v7;
  if ([(TSDImageRep *)self p_shouldBakeMaskIntoSizedImage])
  {
    if (self->mSizedImageAccessQueue)
    {
      height = self->mSizedImageSize.height;
    }

    else
    {
      height = COERCE_DOUBLE([-[TSDImageRep p_validatedBitmapImageProvider](self "p_validatedBitmapImageProvider")]);
    }

    v10 = [TSDImageRep p_newPathToBakeIntoSizedImageForSize:[(TSDImageRep *)self imageLayout] withImageLayout:*&height orientation:v6, v8];
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(self->mSizingState) = 0;
  self->mLayerUpdateAndSizingStateLock = [[TSDImageRepSizingState alloc] initWithDesiredSize:[(TSDImageRep *)self p_imageProvider] provider:v10 maskPath:[(TSDCanvas *)[(TSDRep *)self canvas] canvasIsWideGamut] wideGamutCanvas:v6, v8];
  -[NSRecursiveLock setSizedImageIncludesAdjustments:](self->mLayerUpdateAndSizingStateLock, "setSizedImageIncludesAdjustments:", [-[TSDImageRep imageLayout](self "imageLayout")] ^ 1);
  if (v10)
  {
    v11 = *&self->mSizedImageHasMaskBakedIn;
    if (v11)
    {
      CGPathRelease(v11);
    }

    *&self->mSizedImageHasMaskBakedIn = v10;
  }

  [(TSDImageRep *)self p_generateSizedImage:self->mLayerUpdateAndSizingStateLock];
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
}

- (void)p_generateSizedImage:(id)image
{
  [image generateSizedImage];
  [*&self->mBaseMaskLayoutTransform.ty lock];
  if (self->mLayerUpdateAndSizingStateLock == image)
  {
    LOBYTE(self->mSizingState) = 1;
  }

  ty = self->mBaseMaskLayoutTransform.ty;

  [*&ty unlock];
}

- (void)i_willEnterForeground
{
  v3.receiver = self;
  v3.super_class = TSDImageRep;
  [(TSDRep *)&v3 i_willEnterForeground];
  if ([(NSRecursiveLock *)self->mLayerUpdateAndSizingStateLock status]== 1)
  {

    self->mLayerUpdateAndSizingStateLock = 0;
    [(TSDImageRep *)self p_generateSizedImageIfNecessary];
  }
}

- (void)p_takeSizedImageFromStateIfReady
{
  if (self->mLayerUpdateAndSizingStateLock)
  {
    [*&self->mBaseMaskLayoutTransform.ty lock];
    if (LOBYTE(self->mSizingState) == 1)
    {
      LOBYTE(self->mSizingState) = 0;
      [(TSDImageRep *)self p_takeSizedImageFromState];
    }

    ty = self->mBaseMaskLayoutTransform.ty;

    [*&ty unlock];
  }
}

- (BOOL)p_takeSizedImageFromState:(id)state
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  status = [state status];
  if (status)
  {
    if (status == 1)
    {
LABEL_3:
      *(v24 + 24) = 1;
    }
  }

  else
  {
    if (![state sizedImage])
    {
      goto LABEL_4;
    }

    [(TSDImageRep *)self p_desiredSizedImageSize];
    v9 = v8;
    v11 = v10;
    [state desiredSize];
    if (v9 != v13)
    {
      goto LABEL_3;
    }

    if (v11 != v12)
    {
      goto LABEL_3;
    }

    p_imageProvider = [(TSDImageRep *)self p_imageProvider];
    if (p_imageProvider != [state provider])
    {
      goto LABEL_3;
    }

    v15 = *&self->mSizingStateReady;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__TSDImageRep_p_takeSizedImageFromState___block_invoke;
    block[3] = &unk_279D47708;
    block[4] = self;
    block[5] = state;
    dispatch_sync(v15, block);
    v16 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerForRep:self];
    [(TSDImageRep *)self p_updateDirectlyManagesLayerContentForLayer:v16];
    v17 = *&self->mSizingStateReady;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__TSDImageRep_p_takeSizedImageFromState___block_invoke_2;
    v21[3] = &unk_279D48978;
    v21[5] = v16;
    v21[6] = &v23;
    v21[4] = self;
    dispatch_sync(v17, v21);
    if ([(TSDImageRep *)self directlyManagesLayerContent])
    {
      if ([(TSDStyledRep *)self shadowLayer]|| [(TSDStyledRep *)self reflectionLayer])
      {
        isMainThread = [MEMORY[0x277CCACC8] isMainThread];
        if (isMainThread == [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender])
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_takeSizedImageFromState:]"];
          [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 3753, @"Can't take sized image from state from the main thread while we are doing threaded layout and rendering if image has a shadow or reflection!"}];
        }

        [(TSDStyledRep *)self invalidateShadowLayer];
        [(CALayer *)[(TSDStyledRep *)self reflectionLayer] setNeedsDisplay];
      }
    }

    else
    {
      [(TSDStyledRep *)self setNeedsDisplay];
    }
  }

LABEL_4:
  v6 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  return v6;
}

uint64_t __41__TSDImageRep_p_takeSizedImageFromState___block_invoke(uint64_t a1)
{
  CGImageRelease(*(*(a1 + 32) + 704));
  *(*(a1 + 32) + 704) = CGImageRetain([*(a1 + 40) sizedImage]);
  v2 = (*(a1 + 32) + 712);
  [*(a1 + 40) desiredSize];
  *v2 = v3;
  v2[1] = v4;
  *(*(a1 + 32) + 728) = [*(a1 + 40) sizedImageOrientation];
  *(*(a1 + 32) + 736) = [*(a1 + 40) sizedImageHasMask];
  result = [*(a1 + 40) sizedImageIncludesAdjustments];
  *(*(a1 + 32) + 737) = result;
  v6 = *(a1 + 32);
  if (*(v6 + 736) == 1 && !*(v6 + 744))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRep p_takeSizedImageFromState:]_block_invoke"];
    return [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRep.m"), 3723, @"invalid nil value for '%s'", "mSizedImageMaskPath"}];
  }

  return result;
}

_BYTE *__41__TSDImageRep_p_takeSizedImageFromState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[88])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = *(a1 + 32);
  }

  result = [v2 directlyManagesLayerContent];
  if (result)
  {
    [*(a1 + 40) setContents:*(*(a1 + 32) + 704)];
    result = *(a1 + 32);
    if (result[736] == 1)
    {

      return [result p_disposeMaskLayer];
    }
  }

  return result;
}

- (void)p_takeSizedImageFromState
{
  v3 = [(TSDImageRep *)self p_takeSizedImageFromState:self->mLayerUpdateAndSizingStateLock];

  self->mLayerUpdateAndSizingStateLock = 0;
  LOBYTE(self->mSizingState) = 0;
  if (v3)
  {
    if ([-[TSDImageRep p_imageProvider](self "p_imageProvider")])
    {
      v4 = *&self->mSizingStateReady;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__TSDImageRep_p_takeSizedImageFromState__block_invoke;
      block[3] = &unk_279D46770;
      block[4] = self;
      dispatch_sync(v4, block);
    }
  }
}

- (void)p_invalidateSizedImage
{
  v2 = *&self->mSizingStateReady;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TSDImageRep_p_invalidateSizedImage__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  dispatch_sync(v2, block);
}

- (void)p_invalidateSizedImageFromQueue
{
  self->mLayerUpdateAndSizingStateLock = 0;
  CGImageRelease(self->mSizedImageAccessQueue);
  self->mSizedImageAccessQueue = 0;
  LOBYTE(self->mSizedImageOrientation) = 0;
  BYTE1(self->mSizedImageOrientation) = 0;
  v3 = *&self->mSizedImageHasMaskBakedIn;
  if (v3)
  {
    CGPathRelease(v3);
    *&self->mSizedImageHasMaskBakedIn = 0;
  }
}

- (BOOL)p_shouldBakeMaskIntoSizedImage
{
  [-[TSDImageRep imageInfo](self "imageInfo")];
  v4 = v3;
  v6 = v5;
  [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v12 = v11;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  if (v4 < TSDMultiplySizeScalar(v8, v10, v12 * v13) || v6 < v14)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  [(TSDLayout *)[(TSDRep *)self layout] stroke];
  v16 = TSUDynamicCast();
  if (-[TSDImageRep maskLayout](self, "maskLayout") || (v17 = [-[TSDImageRep imageInfo](self "imageInfo")]) != 0)
  {
    if (([-[TSDImageRep imageLayout](self "imageLayout")] & 1) != 0 || (objc_msgSend(objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "maskLayout"), "hasSmartPath") & 1) != 0 || -[TSDImageRep p_shouldRenderWithMaskToBounds](self, "p_shouldRenderWithMaskToBounds"))
    {
LABEL_10:
      LOBYTE(v17) = 0;
      return v17;
    }

    if (v16 && [v16 hasMask])
    {
      LOBYTE(v17) = [-[TSDImageRep imageLayout](self "imageLayout")] ^ 1;
    }

    else
    {
      LOBYTE(v17) = 1;
    }
  }

  return v17;
}

- (BOOL)p_shouldRenderWithMaskToBounds
{
  if (!-[TSDImageRep directlyManagesLayerContent](self, "directlyManagesLayerContent") || ([-[TSDImageRep imageLayout](self "imageLayout")] & 1) != 0 || objc_msgSend(-[TSDImageRep imageInfo](self, "imageInfo"), "instantAlphaPath"))
  {
    return 0;
  }

  v4 = [objc_msgSend(-[TSDImageRep imageLayout](self "imageLayout")];

  return [v4 isRectangular];
}

- (void)p_takeSizedImageFromCache
{
  CGImageRelease(self->mSizedImageAccessQueue);
  self->mSizedImageAccessQueue = CGImageRetain(self->mSizedImageMaskPath);
  *&self->mSizedImage = *&self->mCachedSizedImage;
  self->mSizedImageSize.height = self->mCachedSizedImageSize.height;
}

- (void)cacheImageAtCurrentSize
{
  CGImageRelease(self->mSizedImageMaskPath);
  self->mSizedImageMaskPath = CGImageRetain(self->mSizedImageAccessQueue);
  *&self->mCachedSizedImage = *&self->mSizedImage;
  self->mCachedSizedImageSize.height = self->mSizedImageSize.height;
}

- (id)newCachedSizedImage
{
  v3 = objc_alloc_init(TSDImageRepCachedSizedImage);
  v4 = *&self->mSizingStateReady;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__TSDImageRep_newCachedSizedImage__block_invoke;
  v6[3] = &unk_279D47708;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(v4, v6);
  return v3;
}

uint64_t __34__TSDImageRep_newCachedSizedImage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setImageRef:*(*(a1 + 40) + 704)];
  [*(a1 + 32) setImageMaskPath:*(*(a1 + 40) + 744)];
  [*(a1 + 32) setImageSize:{*(*(a1 + 40) + 712), *(*(a1 + 40) + 720)}];
  [*(a1 + 32) setImageOrientation:*(*(a1 + 40) + 728)];
  [*(a1 + 32) setImageHasMaskBakedIn:*(*(a1 + 40) + 736)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 737);

  return [v2 setImageHasAdjustmentsBakedImage:v3];
}

- (id)newCachedSizedImageWithNaturalSize
{
  p_validatedBitmapImageProvider = [(TSDImageRep *)self p_validatedBitmapImageProvider];
  if (!p_validatedBitmapImageProvider)
  {
    return 0;
  }

  v3 = p_validatedBitmapImageProvider;
  v4 = objc_alloc_init(TSDImageRepCachedSizedImage);
  -[TSDImageRepCachedSizedImage setImageRef:](v4, "setImageRef:", [v3 CGImageForNaturalSize]);
  [v3 naturalSize];
  [(TSDImageRepCachedSizedImage *)v4 setImageSize:?];
  -[TSDImageRepCachedSizedImage setImageOrientation:](v4, "setImageOrientation:", [v3 orientation]);
  return v4;
}

- (void)useCachedSizedImage:(id)image
{
  v3 = *&self->mSizingStateReady;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSDImageRep_useCachedSizedImage___block_invoke;
  v4[3] = &unk_279D47708;
  v4[4] = self;
  v4[5] = image;
  dispatch_sync(v3, v4);
}

uint64_t __35__TSDImageRep_useCachedSizedImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 704);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 704) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 744);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 744) = 0;
  }

  *(*(a1 + 32) + 704) = CGImageRetain([*(a1 + 40) imageRef]);
  *(*(a1 + 32) + 744) = CGPathRetain([*(a1 + 40) imageMaskPath]);
  v5 = (*(a1 + 32) + 712);
  [*(a1 + 40) imageSize];
  *v5 = v6;
  v5[1] = v7;
  *(*(a1 + 32) + 728) = [*(a1 + 40) imageOrientation];
  *(*(a1 + 32) + 736) = [*(a1 + 40) imageHasMaskBakedIn];
  result = [*(a1 + 40) imageHasAdjustmentsBakedImage];
  *(*(a1 + 32) + 737) = result;
  return result;
}

- (void)generateSizedImageOnBackgroundThread
{
  [(TSDImageRep *)self p_desiredSizedImageSize];
  v4 = v3;
  v6 = v5;
  if ([(TSDImageRep *)self p_shouldBakeMaskIntoSizedImage])
  {
    if (self->mSizedImageAccessQueue)
    {
      height = self->mSizedImageSize.height;
    }

    else
    {
      height = COERCE_DOUBLE([-[TSDImageRep p_validatedBitmapImageProvider](self "p_validatedBitmapImageProvider")]);
    }

    v8 = [TSDImageRep p_newPathToBakeIntoSizedImageForSize:[(TSDImageRep *)self imageLayout] withImageLayout:*&height orientation:v4, v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[TSDImageRepSizingState alloc] initWithDesiredSize:[(TSDImageRep *)self p_imageProvider] provider:v8 maskPath:[(TSDCanvas *)[(TSDRep *)self canvas] canvasIsWideGamut] wideGamutCanvas:v4, v6];
  CGPathRelease(v8);
  global_queue = dispatch_get_global_queue(-2, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke;
  v11[3] = &unk_279D47708;
  v11[4] = v9;
  v11[5] = self;
  dispatch_async(global_queue, v11);
}

void __51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateSizedImage];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke_2;
  v2[3] = &unk_279D47708;
  v3 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenRemoved])
  {
    return;
  }

  v2 = [*(a1 + 32) p_takeSizedImageFromState:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (!*(v3 + 88))
    {
      goto LABEL_10;
    }

    v4 = v3 + 89;
    [v3 p_desiredSizedImageSize];
    if (*v4 != v6 || v4[1] != v5)
    {
      v3 = *(a1 + 32);
LABEL_10:
      if ([objc_msgSend(v3 "p_imageProvider")])
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + 696);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke_3;
        block[3] = &unk_279D46770;
        block[4] = v8;
        dispatch_sync(v9, block);
      }
    }
  }

  else
  {
    v10 = [v3 interactiveCanvasController];

    [v10 invalidateLayers];
  }
}

void *__51__TSDImageRep_generateSizedImageOnBackgroundThread__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[85])
  {
    return [result p_startSizing];
  }

  return result;
}

- (BOOL)shouldShowSmartMaskKnobs
{
  v3 = [-[TSDImageRep maskLayout](self "maskLayout")];
  if (v3 == [-[TSDImageRep imageInfo](self "imageInfo")])
  {
    v4 = [-[TSDImageRep maskLayout](self "maskLayout")];
  }

  else
  {
    [objc_msgSend(-[TSDImageRep imageInfo](self "imageInfo")];
    objc_opt_class();
    v8 = &unk_287E322B8;
    v4 = TSUClassAndProtocolCast() != 0;
  }

  imageInfo = [-[TSDImageRep imageInfo](self imageInfo];
  LOBYTE(isSelected) = 0;
  if (imageInfo)
  {
    if (v4)
    {
      isSelected = [(TSDRep *)self isSelected];
      if (isSelected)
      {
        if ([-[TSDImageRep imageLayout](self "imageLayout")] && objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "maskEditMode") != 2)
        {
          LOBYTE(isSelected) = 0;
        }

        else
        {
          LOBYTE(isSelected) = [-[TSDImageRep imageLayout](self "imageLayout")] ^ 1;
        }
      }
    }
  }

  return isSelected;
}

- (BOOL)shouldCreateSelectionKnobs
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageRep;
  return [(TSDRep *)&v4 shouldCreateSelectionKnobs];
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TSDImageRep;
  [(TSDMediaRep *)&v25 updatePositionsOfKnobs:?];
  if ([(TSDImageRep *)self shouldShowSmartMaskKnobs])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [knobs countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(knobs);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          if ([v9 tag] >= 0xC && objc_msgSend(v9, "tag") <= 0x10)
          {
            [-[TSDImageRep maskLayout](self "maskLayout")];
            v16 = v11;
            v17 = v10;
            imageLayout = [(TSDImageRep *)self imageLayout];
            if (imageLayout)
            {
              [imageLayout layoutToMaskTransform];
              v13 = v18;
              v14 = v19;
              v15 = v20;
            }

            else
            {
              v15 = 0uLL;
              v13 = 0uLL;
              v14 = 0uLL;
            }

            [v9 setPosition:{vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, v16), v13, v17))}];
          }
        }

        v6 = [knobs countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

- (void)addKnobsToArray:(id)array
{
  v20.receiver = self;
  v20.super_class = TSDImageRep;
  [(TSDMediaRep *)&v20 addKnobsToArray:?];
  if ([(TSDImageRep *)self shouldShowSmartMaskKnobs])
  {
    v5 = [-[TSDImageRep maskLayout](self "maskLayout")];
    if (v5)
    {
      v6 = v5;
      v7 = 12;
      do
      {
        [-[TSDImageRep maskLayout](self "maskLayout")];
        v15 = v9;
        v16 = v8;
        imageLayout = [(TSDImageRep *)self imageLayout];
        if (imageLayout)
        {
          [imageLayout layoutToMaskTransform];
          v11 = v17;
          v12 = v18;
          v13 = v19;
        }

        else
        {
          v13 = 0uLL;
          v11 = 0uLL;
          v12 = 0uLL;
        }

        v14 = [[TSDKnob alloc] initWithType:0 position:v7 radius:self tag:vaddq_f64(v13 onRep:vmlaq_n_f64(vmulq_n_f64(v12, v15), v11, v16)), 15.0];
        [array addObject:v14];

        ++v7;
        --v6;
      }

      while (v6);
    }
  }
}

- (double)additionalRotationForKnobOrientation
{
  v8.receiver = self;
  v8.super_class = TSDImageRep;
  [(TSDRep *)&v8 additionalRotationForKnobOrientation];
  v4 = v3;
  if ([-[TSDImageRep imageLayout](self "imageLayout")] && objc_msgSend(-[TSDImageRep imageLayout](self, "imageLayout"), "maskEditMode") == 3)
  {
    v5 = [-[TSDImageRep imageLayout](self "imageLayout")];
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    return v4 - TSDTransformAngle(v7);
  }

  return v4;
}

- (BOOL)shouldShowMediaReplaceUI
{
  if ([-[TSDImageRep imageLayout](self "imageLayout")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDImageRep;
  return [(TSDMediaRep *)&v4 shouldShowMediaReplaceUI];
}

- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point
{
  v5 = [self->mCachedSizedImageOrientation objectForKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", point.x, point.y)}];
  v6 = v5;
  if (v5)
  {
    *value = [v5 BOOLValue];
  }

  return v6 != 0;
}

- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  valueCopy = value;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TSDImageRep_p_hitCacheSetCachedValue_forPoint___block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (self->mHitTestCache != -1)
  {
    dispatch_once(&self->mHitTestCache, block);
  }

  mCachedSizedImageOrientation = self->mCachedSizedImageOrientation;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
  [mCachedSizedImageOrientation setObject:v9 forKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", x, y)}];
}

id __49__TSDImageRep_p_hitCacheSetCachedValue_forPoint___block_invoke(uint64_t a1)
{
  result = objc_alloc_init(MEMORY[0x277CBEA78]);
  *(*(a1 + 32) + 784) = result;
  return result;
}

@end