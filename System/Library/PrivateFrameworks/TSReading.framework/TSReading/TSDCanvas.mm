@interface TSDCanvas
+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)rep toArray:(id)array;
- (BOOL)isCanvasInteractive;
- (BOOL)isDrawingIntoPDF;
- (BOOL)isPrinting;
- (BOOL)p_expandHitRegionOfPoint:(CGPoint)point forRep:(id)rep smallRepOutset:(double)outset forShortestDistance:(double *)distance;
- (BOOL)p_shouldRep:(id)rep countAsClosestSmallRepForSizeLimit:(double)limit;
- (BOOL)p_updateRepsFromLayouts;
- (BOOL)shouldShowInstructionalText;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldSuppressBackgrounds;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)supportsAdaptiveLayout;
- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size returningBounds:(CGRect *)bounds integralBounds:(CGRect *)integralBounds;
- (CGImage)i_imageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match;
- (CGImage)i_newImageInContext:(CGContext *)context bounds:(CGRect)bounds integralBounds:(CGRect)integralBounds distortedToMatch:(BOOL)match;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect;
- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)point;
- (CGRect)i_clipRectForCreatingRepsFromLayouts;
- (CGRect)i_unscaledRectOfLayouts;
- (CGRect)p_bounds;
- (CGRect)visibleUnscaledRectForClippingReps;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)size;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)size;
- (CGSize)unscaledSize;
- (NSArray)allRepsOrdered;
- (TSDCanvas)init;
- (TSKAccessController)accessController;
- (TSKChangeNotifier)changeNotifier;
- (TSPObjectContext)objectContext;
- (UIEdgeInsets)contentInset;
- (id)allReps;
- (id)hitRep:(CGPoint)rep inTopLevelReps:(id)reps smallRepOutset:(double)outset withGesture:(id)gesture passingTest:(id)test;
- (id)initForTemporaryLayout;
- (id)layoutGeometryProviderForLayout:(id)layout;
- (id)repForLayout:(id)layout;
- (id)textRendererForLayer:(id)layer context:(CGContext *)context;
- (id)topLevelReps;
- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context;
- (void)dealloc;
- (void)i_drawBackgroundInContext:(CGContext *)context;
- (void)i_drawBackgroundInContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)i_drawRepsInContext:(CGContext *)context;
- (void)i_drawRepsInContext:(CGContext *)context distort:(CGAffineTransform *)distort;
- (void)i_registerRep:(id)rep;
- (void)i_setCanvasController:(id)controller;
- (void)i_setInfosToDisplay:(id)display updatingLayoutController:(BOOL)controller;
- (void)i_unregisterRep:(id)rep;
- (void)i_updateInfosInLayoutController;
- (void)invalidateLayers;
- (void)invalidateReps;
- (void)invalidateVisibleBounds;
- (void)layoutIfNeeded;
- (void)layoutInvalidated;
- (void)p_layoutWithReadLock;
- (void)p_removeAllReps;
- (void)recreateAllLayoutsAndReps;
- (void)setBackgroundColor:(CGColor *)color;
- (void)teardown;
@end

@implementation TSDCanvas

- (TSDCanvas)init
{
  v5.receiver = self;
  v5.super_class = TSDCanvas;
  v2 = [(TSDCanvas *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mViewScale = 1.0;
    v2->mUnscaledSize = vdupq_n_s64(0x4059000000000000uLL);
    *&v2->mContentInset.top = TSDEdgeInsetsZero;
    *&v2->mContentInset.bottom = *&qword_26CA652C0;
    v2->mInfos = objc_alloc_init(MEMORY[0x277CBEA60]);
    v3->mTopLevelReps = objc_alloc_init(MEMORY[0x277CBEA60]);
    v3->mAllReps = objc_alloc_init(MEMORY[0x277CBEB98]);
    v3->mRepsByLayout = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v3->mLayoutController = [[TSDLayoutController alloc] initWithCanvas:v3];
    *&v3->mClipToCanvas = 257;
    v3->mContentsScale = 1.0;
    v3->mWideGamut = 1;
  }

  return v3;
}

- (id)initForTemporaryLayout
{
  result = [(TSDCanvas *)self init];
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

- (void)teardown
{
  [(TSDCanvas *)self setPInTearDown:1];

  self->mInfos = 0;
  [(TSDLayoutController *)[(TSDCanvas *)self layoutController] i_removeAllLayouts];

  self->mLayoutController = 0;
  [(TSDCanvas *)self p_removeAllReps];
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDCanvasDelegate *)mDelegate canvasDidUpdateRepsFromLayouts:self];
  }
}

- (void)dealloc
{
  if (self->mInfos)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvas dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvas.m"), 100, @"Canvas must be torn down before being deallocated"}];
  }

  [(TSDLayoutController *)self->mLayoutController setInfos:0];

  self->mLayoutController = 0;
  mRepsByLayout = self->mRepsByLayout;
  if (mRepsByLayout)
  {
    CFRelease(mRepsByLayout);
    self->mRepsByLayout = 0;
  }

  self->mTopLevelReps = 0;
  self->mAllReps = 0;

  self->mAllRepsOrdered = 0;
  self->mInfos = 0;

  self->mPreviouslyVisibleLayouts = 0;
  CGColorRelease(self->mBackgroundColor);
  v6.receiver = self;
  v6.super_class = TSDCanvas;
  [(TSDCanvas *)&v6 dealloc];
}

- (TSPObjectContext)objectContext
{
  documentRoot = [(TSDCanvas *)self documentRoot];

  return [(TSPObject *)documentRoot context];
}

- (TSKChangeNotifier)changeNotifier
{
  documentRoot = [(TSDCanvas *)self documentRoot];

  return [(TSKDocumentRoot *)documentRoot changeNotifier];
}

- (TSKAccessController)accessController
{
  documentRoot = [(TSDCanvas *)self documentRoot];

  return [(TSKDocumentRoot *)documentRoot accessController];
}

- (void)i_setCanvasController:(id)controller
{
  if (self->mCanvasController)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvas i_setCanvasController:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvas.m"), 154, @"expected nil value for '%s'", "mCanvasController"}];
  }

  if (!controller)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvas i_setCanvasController:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvas.m"), 155, @"invalid nil value for '%s'", "icc"}];
  }

  if (!self->mCanvasController)
  {
    self->mCanvasController = controller;
  }
}

- (void)i_setInfosToDisplay:(id)display updatingLayoutController:(BOOL)controller
{
  controllerCopy = controller;

  if (display)
  {
    v7 = [display copy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  self->mInfos = v7;
  if (controllerCopy)
  {

    [(TSDCanvas *)self i_updateInfosInLayoutController];
  }
}

- (void)i_updateInfosInLayoutController
{
  layoutController = [(TSDCanvas *)self layoutController];
  mInfos = self->mInfos;

  [(TSDLayoutController *)layoutController setInfos:mInfos];
}

- (id)repForLayout:(id)layout
{
  if (layout)
  {
    return CFDictionaryGetValue(self->mRepsByLayout, layout);
  }

  else
  {
    return 0;
  }
}

- (id)topLevelReps
{
  v2 = self->mTopLevelReps;

  return v2;
}

- (id)allReps
{
  v2 = self->mAllReps;

  return v2;
}

- (NSArray)allRepsOrdered
{
  v16 = *MEMORY[0x277D85DE8];
  mAllRepsOrdered = self->mAllRepsOrdered;
  if (!mAllRepsOrdered)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    mTopLevelReps = self->mTopLevelReps;
    v6 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(mTopLevelReps);
          }

          [objc_opt_class() p_recursivelyAddOrderedChildrenOfRep:*(*(&v11 + 1) + 8 * i) toArray:array];
        }

        v7 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    mAllRepsOrdered = [array copy];
    self->mAllRepsOrdered = mAllRepsOrdered;
  }

  return mAllRepsOrdered;
}

- (void)recreateAllLayoutsAndReps
{
  [(TSDLayoutController *)[(TSDCanvas *)self layoutController] i_removeAllLayouts];
  [(TSDCanvas *)self p_updateRepsFromLayouts];
  if (objc_opt_respondsToSelector())
  {
    [(TSDCanvasDelegate *)self->mDelegate canvasDidUpdateRepsFromLayouts:self];
  }

  [(TSDLayoutController *)[(TSDCanvas *)self layoutController] setInfos:self->mInfos];

  [(TSDCanvas *)self layoutInvalidated];
}

- (void)layoutInvalidated
{
  *&self->mInvalidFlags |= 1u;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDCanvasDelegate *)mDelegate canvasLayoutInvalidated:self];
  }
}

- (void)invalidateReps
{
  *&self->mInvalidFlags |= 2u;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDCanvasDelegate *)mDelegate canvasLayoutInvalidated:self];
  }
}

- (void)invalidateVisibleBounds
{
  *&self->mInvalidFlags |= 4u;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDCanvasDelegate *)mDelegate canvasLayoutInvalidated:self];
  }
}

- (void)invalidateLayers
{
  *&self->mInvalidFlags |= 8u;
  if (objc_opt_respondsToSelector())
  {
    mDelegate = self->mDelegate;

    [(TSDCanvasDelegate *)mDelegate canvasLayoutInvalidated:self];
  }
}

- (void)layoutIfNeeded
{
  [(TSDCanvas *)self p_layoutWithReadLock];
  if ((*&self->mInvalidFlags & 0xF) == 1 && !self->mInLayout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvas layoutIfNeeded]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvas.m"];

    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:302 description:@"failed to clear mInvalidFlags after layout"];
  }
}

- (BOOL)supportsAdaptiveLayout
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate supportsAdaptiveLayout];
}

- (id)layoutGeometryProviderForLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate canvas:self layoutGeometryProviderForLayout:layout];
}

- (BOOL)spellCheckingSupported
{
  isCanvasInteractive = [(TSDCanvas *)self isCanvasInteractive];
  if (isCanvasInteractive)
  {
    if (objc_opt_respondsToSelector())
    {
      mDelegate = self->mDelegate;

      LOBYTE(isCanvasInteractive) = [(TSDCanvasDelegate *)mDelegate spellCheckingSupported];
    }

    else
    {
      LOBYTE(isCanvasInteractive) = 1;
    }
  }

  return isCanvasInteractive;
}

- (BOOL)spellCheckingSuppressed
{
  v3 = ![(TSDCanvas *)self spellCheckingSupported];
  if (v3)
  {
    return 1;
  }

  if (objc_opt_respondsToSelector())
  {
    return [(TSDCanvasDelegate *)self->mDelegate spellCheckingSuppressed]| v3;
  }

  return 0;
}

- (BOOL)isCanvasInteractive
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate isCanvasInteractive];
}

- (BOOL)isPrinting
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate isPrintingCanvas];
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate shouldShowTextOverflowGlyphs];
}

- (BOOL)shouldShowInstructionalText
{
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    mDelegate = self->mDelegate;

    return [(TSDCanvasDelegate *)mDelegate shouldShowInstructionalText];
  }

  else if ([(TSDCanvas *)self isCanvasInteractive])
  {
    return 1;
  }

  else
  {

    return [(TSDCanvas *)self isTemporaryForLayout];
  }
}

- (BOOL)shouldSuppressBackgrounds
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate shouldSuppressBackgrounds];
}

- (BOOL)isDrawingIntoPDF
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(TSDCanvasDelegate *)mDelegate isCanvasDrawingIntoPDF:self];
}

- (void)setBackgroundColor:(CGColor *)color
{
  mBackgroundColor = self->mBackgroundColor;
  if (mBackgroundColor != color)
  {
    CGColorRelease(mBackgroundColor);
    if (color)
    {
      Copy = CGColorCreateCopy(color);
    }

    else
    {
      Copy = 0;
    }

    self->mBackgroundColor = Copy;
  }
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect
{
  v3 = TSDMultiplyRectScalar(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, self->mViewScale);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect
{
  v3 = TSDMultiplyRectScalar(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, 1.0 / self->mViewScale);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point
{
  v3 = TSDMultiplyPointScalar(point.x, point.y, self->mViewScale);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point
{
  v3 = TSDMultiplyPointScalar(point.x, point.y, 1.0 / self->mViewScale);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)size
{
  v3 = TSDMultiplySizeScalar(size.width, size.height, self->mViewScale);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)size
{
  v3 = TSDMultiplySizeScalar(size.width, size.height, 1.0 / self->mViewScale);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)visibleUnscaledRectForClippingReps
{
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(TSDCanvasDelegate *)self->mDelegate visibleScaledBoundsForClippingRepsOnCanvas:self];
    [(TSDCanvas *)self convertBoundsToUnscaledRect:?];
  }

  else
  {
    [(TSDCanvas *)self p_bounds];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)hitRep:(CGPoint)rep inTopLevelReps:(id)reps smallRepOutset:(double)outset withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  v54 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  reverseObjectEnumerator = [reps reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        [v18 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v19 = [v18 hitRepChrome:test passingTest:?];
        if (v19)
        {
          return v19;
        }
      }

      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0x7FF0000000000000;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [reps reverseObjectEnumerator];
  v34 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v34)
  {
    return 0;
  }

  v20 = 0;
  v33 = *v43;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v43 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v42 + 1) + 8 * v21);
      [v22 convertNaturalPointFromUnscaledCanvas:{x, y}];
      v23 = [v22 hitRep:gesture withGesture:test passingTest:?];
      if (v23)
      {
        v30 = v23;
        goto LABEL_38;
      }

      objc_opt_class();
      v36 = v21;
      if (objc_opt_isKindOfClass())
      {
        allRepsContainedInGroup = [v22 allRepsContainedInGroup];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v25 = [allRepsContainedInGroup countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v39;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(allRepsContainedInGroup);
              }

              v29 = *(*(&v38 + 1) + 8 * j);
              if ((!test || (*(test + 2))(test, *(*(&v38 + 1) + 8 * j))) && [(TSDCanvas *)self p_expandHitRegionOfPoint:v29 forRep:&v46 smallRepOutset:x forShortestDistance:y, outset])
              {
                v20 = v22;
              }
            }

            v26 = [allRepsContainedInGroup countByEnumeratingWithState:&v38 objects:v51 count:16];
          }

          while (v26);
        }
      }

      else if ([(TSDCanvas *)self p_expandHitRegionOfPoint:v22 forRep:&v46 smallRepOutset:x forShortestDistance:y, outset]&& (!test || (*(test + 2))(test, v22)))
      {
        v20 = v22;
      }

      v21 = v36 + 1;
    }

    while (v36 + 1 != v34);
    v34 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

  v30 = 0;
LABEL_38:
  if (v20)
  {
    if (![(TSDCanvas *)self p_shouldRep:v30 countAsClosestSmallRepForSizeLimit:outset])
    {
      v37 = 0;
      [v30 convertNaturalPointFromUnscaledCanvas:{x, y}];
      [v30 shortestDistanceToPoint:&v37 countAsHit:?];
      if (!v37)
      {
        return v20;
      }
    }
  }

  return v30;
}

- (BOOL)p_shouldRep:(id)rep countAsClosestSmallRepForSizeLimit:(double)limit
{
  shouldExpandHitRegionWhenSmall = [rep shouldExpandHitRegionWhenSmall];
  if (shouldExpandHitRegionWhenSmall)
  {
    [rep naturalBounds];
    v9 = v8;
    [rep naturalBounds];
    v11 = v10;
    v12 = fminf(v9, v11);
    [(TSDCanvas *)self viewScale];
    LOBYTE(shouldExpandHitRegionWhenSmall) = v13 * v12 < limit;
  }

  return shouldExpandHitRegionWhenSmall;
}

- (BOOL)p_expandHitRegionOfPoint:(CGPoint)point forRep:(id)rep smallRepOutset:(double)outset forShortestDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  if (![(TSDCanvas *)self p_shouldRep:outset countAsClosestSmallRepForSizeLimit:?])
  {
    v49 = 0;
    [rep convertNaturalPointFromUnscaledCanvas:{x, y}];
    [rep shortestDistanceToPoint:&v49 countAsHit:?];
    if (v49 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [rep naturalBounds];
  v47 = v13;
  v48 = v12;
  rect = v14;
  v16 = v15;
  [rep naturalBounds];
  v18 = v17;
  [(TSDCanvas *)self viewScale];
  v20 = v19 * v18;
  v21 = 0.0;
  v22 = -outset;
  v23 = 0.0;
  if (v20 < outset)
  {
    [(TSDCanvas *)self viewScale];
    v23 = v22 / v24;
  }

  [rep naturalBounds];
  v26 = v25;
  [(TSDCanvas *)self viewScale];
  if (v27 * v26 < outset)
  {
    [(TSDCanvas *)self viewScale];
    v21 = v22 / v28;
  }

  v51.origin.y = v47;
  v51.origin.x = v48;
  v51.size.width = rect;
  v51.size.height = v16;
  v52 = CGRectInset(v51, v23, v21);
  v29 = v52.origin.x;
  v30 = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  [rep convertNaturalPointFromUnscaledCanvas:{x, y}];
  v50.x = v33;
  v50.y = v34;
  v53.origin.x = v29;
  v53.origin.y = v30;
  v53.size.width = width;
  v53.size.height = height;
  v35 = CGRectContainsPoint(v53, v50);
  if (v35)
  {
    [rep convertNaturalPointFromUnscaledCanvas:{x, y}];
    v37 = v36;
    v39 = v38;
    [rep naturalBounds];
    TSDDistanceToRect(v37, v39, v40, v41, v42, v43);
LABEL_9:
    if (v44 < *distance)
    {
      *distance = v44;
      LOBYTE(v35) = 1;
      return v35;
    }

LABEL_11:
    LOBYTE(v35) = 0;
  }

  return v35;
}

- (void)i_registerRep:(id)rep
{
  if (rep)
  {
    if (self->mRepsByLayout)
    {
      layout = [rep layout];
      if (layout)
      {
        v6 = layout;
        mRepsByLayout = self->mRepsByLayout;

        CFDictionarySetValue(mRepsByLayout, v6, rep);
      }
    }
  }
}

- (void)i_unregisterRep:(id)rep
{
  if (rep)
  {
    if (self->mRepsByLayout)
    {
      layout = [rep layout];
      if (layout)
      {
        v6 = layout;
        if (CFDictionaryGetValue(self->mRepsByLayout, layout) == rep)
        {
          mRepsByLayout = self->mRepsByLayout;

          CFDictionaryRemoveValue(mRepsByLayout, v6);
        }
      }
    }
  }
}

- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)point
{
  v3 = TSDRectWithCenterAndSize(point.x, point.y + -30.0, 200.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_unscaledRectOfLayouts
{
  layoutController = [(TSDCanvas *)self layoutController];

  [(TSDLayoutController *)layoutController rectOfTopLevelLayouts];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_clipRectForCreatingRepsFromLayouts
{
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(TSDCanvasDelegate *)self->mDelegate visibleScaledBoundsForClippingRepsOnCanvas:self];
    [(TSDCanvas *)self convertBoundsToUnscaledRect:?];
  }

  else
  {
    v3 = *MEMORY[0x277CBF390];
    v4 = *(MEMORY[0x277CBF390] + 8);
    v5 = *(MEMORY[0x277CBF390] + 16);
    v6 = *(MEMORY[0x277CBF390] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)i_drawBackgroundInContext:(CGContext *)context
{
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v7 = CGRectIntegral(ClipBoundingBox);

  [(TSDCanvas *)self i_drawBackgroundInContext:context bounds:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
}

- (void)i_drawBackgroundInContext:(CGContext *)context bounds:(CGRect)bounds
{
  if (self->mBackgroundColor)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    CGContextSaveGState(context);
    CGContextSetFillColorWithColor(context, self->mBackgroundColor);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    CGContextFillRect(context, v11);

    CGContextRestoreGState(context);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context
{
  v16 = *MEMORY[0x277D85DE8];
  if (info)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mTopLevelReps = self->mTopLevelReps;
    v7 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(mTopLevelReps);
          }

          [*(*(&v11 + 1) + 8 * i) recursivelyPerformSelector:sel_addBitmapsToRenderingQualityInfo_inContext_ withObject:info withObject:context];
        }

        v8 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)i_drawRepsInContext:(CGContext *)context distort:(CGAffineTransform *)distort
{
  v21 = *MEMORY[0x277D85DE8];
  if (context)
  {
    CGContextSaveGState(context);
    CGContextScaleCTM(context, self->mViewScale, self->mViewScale);
    v7 = distort->b == 0.0 && distort->c == 0.0 && distort->tx == 0.0 && distort->ty == 0.0 && fabs(distort->a + -1.0) < 0.001 && fabs(distort->d + -1.0) < 0.001;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    mTopLevelReps = self->mTopLevelReps;
    v9 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(mTopLevelReps);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          CGContextSaveGState(context);
          if (!v7 || [v13 wantsToDistortWithImagerContext])
          {
            v14 = *&distort->c;
            *&v15.a = *&distort->a;
            *&v15.c = v14;
            *&v15.tx = *&distort->tx;
            CGContextConcatCTM(context, &v15);
          }

          [v13 recursivelyDrawInContext:context];
          CGContextRestoreGState(context);
        }

        v10 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    CGContextRestoreGState(context);
  }
}

- (void)i_drawRepsInContext:(CGContext *)context
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDCanvas *)self i_drawRepsInContext:context distort:v4];
}

- (CGImage)i_imageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match
{
  matchCopy = match;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [(TSDCanvas *)self i_createContextToDrawImageInScaledRect:&v13 withTargetIntegralSize:&v11 returningBounds:rect.origin.x integralBounds:rect.origin.y, rect.size.width, rect.size.height, size.width, size.height];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(TSDCanvas *)self i_newImageInContext:v7 bounds:matchCopy integralBounds:v13 distortedToMatch:v14, v11, v12];
  CGContextRelease(v8);
  return v9;
}

- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size returningBounds:(CGRect *)bounds integralBounds:(CGRect *)integralBounds
{
  height = size.height;
  width = size.width;
  v8 = rect.size.height;
  v9 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->mClipToCanvas)
  {
    [(TSDCanvas *)self p_bounds];
    v34.origin.x = TSDMultiplyRectScalar(v13, v14, v15, v16, self->mViewScale);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = v9;
    v37.size.height = v8;
    v35 = CGRectIntersection(v34, v37);
    x = v35.origin.x;
    y = v35.origin.y;
    v9 = v35.size.width;
    v8 = v35.size.height;
  }

  v17 = TSDRoundedRect(x, y, v9, v8);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (width > 0.0 && height > 0.0)
  {
    v24 = TSDCeilSize(width);
    v26 = v21 - v24;
    v27 = v23 - v25;
    if (v21 - v24 > 0.0 || v27 > 0.0)
    {
      if (v26 > 0.0)
      {
        v21 = v24;
      }

      if (v27 > 0.0)
      {
        v23 = v25;
      }
    }

    else if (v26 < 0.0 && v27 < 0.0)
    {
      if (v26 <= v27)
      {
        v23 = v25;
      }

      else
      {
        v21 = v24;
      }
    }
  }

  if (TSDNearlyEqualRects(x, y, v9, v8, v17, v19, v21, v23))
  {
    x = v17;
    y = v19;
    v9 = v21;
    v8 = v23;
  }

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v9;
  v36.size.height = v8;
  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  if (CGRectEqualToRect(v36, v38) && (mBackgroundColor = self->mBackgroundColor) != 0 && CGColorGetAlpha(mBackgroundColor) == 1.0)
  {
    v29 = 1;
  }

  else
  {
    v29 = 3;
  }

  if ([(TSDCanvas *)self canvasIsWideGamut])
  {
    v30 = v29 | 0x20;
  }

  else
  {
    v30 = v29;
  }

  result = TSDBitmapContextCreate(v30, v21);
  if (bounds)
  {
    bounds->origin.x = x;
    bounds->origin.y = y;
    bounds->size.width = v9;
    bounds->size.height = v8;
  }

  if (integralBounds)
  {
    integralBounds->origin.x = v17;
    integralBounds->origin.y = v19;
    integralBounds->size.width = v21;
    integralBounds->size.height = v23;
  }

  return result;
}

- (CGImage)i_newImageInContext:(CGContext *)context bounds:(CGRect)bounds integralBounds:(CGRect)integralBounds distortedToMatch:(BOOL)match
{
  if (!context)
  {
    return 0;
  }

  matchCopy = match;
  height = integralBounds.size.height;
  width = integralBounds.size.width;
  y = integralBounds.origin.y;
  x = integralBounds.origin.x;
  v11 = bounds.size.height;
  v12 = bounds.size.width;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextTranslateCTM(context, -x, -y);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGContextClipToRect(context, v19);
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *&v18.a = *MEMORY[0x277CBF2C0];
  *&v18.c = v15;
  *&v18.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (matchCopy)
  {
    CGAffineTransformMakeScale(&v18, width / v12, height / v11);
  }

  [(TSDCanvas *)self i_drawBackgroundInContext:context];
  v17 = v18;
  [(TSDCanvas *)self i_drawRepsInContext:context distort:&v17];
  CGContextRestoreGState(context);
  return CGBitmapContextCreateImage(context);
}

- (CGRect)p_bounds
{
  v3 = TSDRectWithSize();
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  v6 = v3 + left;
  v8 = top + v7;
  v10 = v9 - (left + self->mContentInset.right);
  v12 = v11 - (top + self->mContentInset.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)p_layoutWithReadLock
{
  if (self->mInLayout)
  {
    return;
  }

  self->mInLayout = 1;
  mInvalidFlags = self->mInvalidFlags;
  if ((mInvalidFlags & 3) != 0)
  {
    if (*&self->mInvalidFlags)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TSDCanvasDelegate *)self->mDelegate canvasWillLayout:self];
      }

      [(TSDLayoutController *)[(TSDCanvas *)self layoutController] validateLayouts];
      if (objc_opt_respondsToSelector())
      {
        [(TSDCanvasDelegate *)self->mDelegate canvasDidValidateLayouts:self];
      }
    }

    goto LABEL_10;
  }

  if ((*&self->mInvalidFlags & 4) != 0)
  {
LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [(TSDCanvasDelegate *)self->mDelegate canvasWillUpdateRepsFromLayouts:self];
    }

    p_updateRepsFromLayouts = [(TSDCanvas *)self p_updateRepsFromLayouts];
    *&self->mInvalidFlags &= 0xF9u;
    if (objc_opt_respondsToSelector())
    {
      [(TSDCanvasDelegate *)self->mDelegate canvasDidUpdateVisibleBounds:self];
    }

    goto LABEL_14;
  }

  p_updateRepsFromLayouts = 0;
LABEL_14:
  if ((mInvalidFlags & 1) != 0 || p_updateRepsFromLayouts || (*&self->mInvalidFlags & 8) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(TSDCanvasDelegate *)self->mDelegate canvasDidUpdateRepsFromLayouts:self];
    }

    *&self->mInvalidFlags &= ~8u;
    if (mInvalidFlags & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [(TSDCanvasDelegate *)self->mDelegate canvasDidLayout:self];
    }
  }

  *&self->mInvalidFlags &= ~1u;
  self->mInLayout = 0;
}

- (BOOL)p_updateRepsFromLayouts
{
  v100 = *MEMORY[0x277D85DE8];
  [(TSDCanvas *)self i_clipRectForCreatingRepsFromLayouts];
  v7 = [(TSDLayoutController *)[(TSDCanvas *)self layoutController] layoutsInRect:v3, v4, v5, v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(TSDCanvasDelegate *)self->mDelegate additionalVisibleInfosForCanvas:self];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v88 objects:v99 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v89;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v89 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(TSDLayoutController *)self->mLayoutController layoutForInfo:TSDTopmostInfoFromInfo(*(*(&v88 + 1) + 8 * i))];
          if (v13)
          {
            v14 = v13;
            if (([v7 containsObject:v13] & 1) == 0)
            {
              v7 = [v7 arrayByAddingObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v88 objects:v99 count:16];
      }

      while (v10);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(TSDCanvasDelegate *)self->mDelegate infosToHideForCanvas:self];
    if ([v15 count])
    {
      v16 = [v7 mutableCopy];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v17 = [v7 countByEnumeratingWithState:&v84 objects:v98 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v85;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v85 != v19)
            {
              objc_enumerationMutation(v7);
            }

            v21 = *(*(&v84 + 1) + 8 * j);
            if ([v15 containsObject:{objc_msgSend(v21, "info")}])
            {
              [v16 removeObject:v21];
            }
          }

          v18 = [v7 countByEnumeratingWithState:&v84 objects:v98 count:16];
        }

        while (v18);
      }

      v7 = v16;
    }
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v23 = [v7 countByEnumeratingWithState:&v80 objects:v97 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v81;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v81 != v25)
        {
          objc_enumerationMutation(v7);
        }

        [v22 addObjectsFromArray:{objc_msgSend(*(*(&v80 + 1) + 8 * k), "additionalLayoutsForRepCreation")}];
      }

      v24 = [v7 countByEnumeratingWithState:&v80 objects:v97 count:16];
    }

    while (v24);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v27 = [v22 countByEnumeratingWithState:&v76 objects:v96 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v77;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(v22);
        }

        v31 = *(*(&v76 + 1) + 8 * m);
        if (([v7 containsObject:v31] & 1) == 0)
        {
          v7 = [v7 arrayByAddingObject:v31];
        }
      }

      v28 = [v22 countByEnumeratingWithState:&v76 objects:v96 count:16];
    }

    while (v28);
  }

  if (*&self->mInvalidFlags & 3) == 0 && ([v7 isEqualToArray:self->mPreviouslyVisibleLayouts])
  {
    return 0;
  }

  selfCopy = self;
  self->mPreviouslyVisibleLayouts = v7;
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v35 = [v7 countByEnumeratingWithState:&v72 objects:v95 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v73;
    do
    {
      v38 = 0;
      v58 = sel_canvas_willLayoutRep_;
      do
      {
        if (*v73 != v37)
        {
          objc_enumerationMutation(v7);
        }

        v39 = *(*(&v72 + 1) + 8 * v38);
        v40 = [(TSDCanvas *)selfCopy repForLayout:v39, v58];
        if (v40)
        {
          goto LABEL_52;
        }

        v40 = [objc_alloc(objc_msgSend(v39 "repClassOverride"))];
        if (objc_opt_respondsToSelector())
        {
          [(TSDCanvasDelegate *)selfCopy->mDelegate canvas:selfCopy willLayoutRep:v40];
        }

        [v40 wasAddedToParent];
        if (v40)
        {
LABEL_52:
          [v40 setParentRep:0];
          [(NSArray *)v59 addObject:v40];
          [v40 updateChildrenFromLayout];
          [v40 recursivelyPerformSelector:sel_updateFromLayout];
          [v40 recursivelyPerformSelector:sel_addToSet_ withObject:v34];
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = [v7 countByEnumeratingWithState:&v72 objects:v95 count:16];
    }

    while (v36);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  mTopLevelReps = selfCopy->mTopLevelReps;
  v42 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v68 objects:v94 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v69;
    do
    {
      for (n = 0; n != v43; ++n)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(mTopLevelReps);
        }

        v46 = *(*(&v68 + 1) + 8 * n);
        if (([(NSArray *)v59 tsu_containsObjectIdenticalTo:v46]& 1) == 0)
        {
          [v46 willBeRemovedFromParent];
        }
      }

      v43 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v68 objects:v94 count:16];
    }

    while (v43);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  mAllReps = selfCopy->mAllReps;
  v48 = [(NSSet *)mAllReps countByEnumeratingWithState:&v64 objects:v93 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v65;
    do
    {
      for (ii = 0; ii != v49; ++ii)
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(mAllReps);
        }

        v52 = *(*(&v64 + 1) + 8 * ii);
        if (![(NSSet *)v34 containsObject:v52])
        {
          [v52 i_willBeRemoved];
        }
      }

      v49 = [(NSSet *)mAllReps countByEnumeratingWithState:&v64 objects:v93 count:16];
    }

    while (v49);
  }

  if (objc_opt_respondsToSelector())
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v53 = [(NSSet *)v34 countByEnumeratingWithState:&v60 objects:v92 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v61;
      do
      {
        for (jj = 0; jj != v54; ++jj)
        {
          if (*v61 != v55)
          {
            objc_enumerationMutation(v34);
          }

          v57 = *(*(&v60 + 1) + 8 * jj);
          if (![(NSSet *)selfCopy->mAllReps containsObject:v57])
          {
            [(TSDCanvasDelegate *)selfCopy->mDelegate canvas:selfCopy createdRep:v57];
          }
        }

        v54 = [(NSSet *)v34 countByEnumeratingWithState:&v60 objects:v92 count:16];
      }

      while (v54);
    }
  }

  [(NSArray *)v59 sortUsingComparator:&__block_literal_global_43];

  selfCopy->mAllReps = v34;
  selfCopy->mTopLevelReps = v59;

  selfCopy->mAllRepsOrdered = 0;
  return 1;
}

uint64_t __36__TSDCanvas_p_updateRepsFromLayouts__block_invoke()
{
  objc_opt_class();
  v0 = TSUDynamicCast();
  objc_opt_class();
  v1 = TSUDynamicCast();
  if ([v0 forcesPlacementOnTop] && (objc_msgSend(v1, "forcesPlacementOnTop") & 1) != 0)
  {
    return 0;
  }

  if ([v0 forcesPlacementOnTop])
  {
    return 1;
  }

  return [v1 forcesPlacementOnTop] << 63 >> 63;
}

- (void)p_removeAllReps
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mTopLevelReps = self->mTopLevelReps;
  v4 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(mTopLevelReps);
        }

        [*(*(&v17 + 1) + 8 * i) willBeRemovedFromParent];
      }

      v5 = [(NSArray *)mTopLevelReps countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mAllReps = self->mAllReps;
  v9 = [(NSSet *)mAllReps countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(mAllReps);
        }

        [*(*(&v13 + 1) + 8 * j) i_willBeRemoved];
      }

      v10 = [(NSSet *)mAllReps countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  self->mAllReps = objc_alloc_init(MEMORY[0x277CBEB58]);
  self->mTopLevelReps = objc_alloc_init(MEMORY[0x277CBEB18]);

  self->mAllRepsOrdered = 0;
}

+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)rep toArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  [array addObject:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childReps = [TSUProtocolCast() childReps];
  v7 = [childReps countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [self p_recursivelyAddOrderedChildrenOfRep:*(*(&v11 + 1) + 8 * v10++) toArray:array];
      }

      while (v8 != v10);
      v8 = [childReps countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
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

- (CGSize)unscaledSize
{
  width = self->mUnscaledSize.width;
  height = self->mUnscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)textRendererForLayer:(id)layer context:(CGContext *)context
{
  v7 = [[TSWPRenderer alloc] initWithContext:context];
  if (TSDCGContextIsShadowContext(context))
  {
    [(TSWPRenderer *)v7 setFlipShadows:1];
    v8 = 1.0;
  }

  else
  {
    v9 = layer && ([layer contentsAreFlipped] & 1) != 0 || -[TSDCanvas isPrinting](self, "isPrinting");
    [(TSWPRenderer *)v7 setFlipShadows:v9];
    [(TSDCanvas *)self viewScale];
  }

  [(TSWPRenderer *)v7 setViewScale:v8];
  return v7;
}

@end