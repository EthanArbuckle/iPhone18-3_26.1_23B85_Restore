@interface PXStoryViewModePlayerToBrowserTransition
- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6;
- (BOOL)hasActiveAnimation;
- (BOOL)shouldFinish;
- (CGRect)frameForClipWithInfo:(id *)a3 proposedFrame:(CGRect)a4 inViewMode:(int64_t)a5 layout:(id)a6;
- (PXStoryViewModePlayerToBrowserTransition)initWithSourceTimelineLayoutSnapshot:(id)a3 assetReference:(id)a4 trackingClipIdentifier:(int64_t)a5;
- (double)alphaForClipWithInfo:(id *)a3 proposedAlpha:(double)a4 inViewMode:(int64_t)a5 layout:(id)a6;
- (double)fadeoutDuration;
- (id)presentedBoundingBoxForViewMode:(int64_t)a3;
- (void)swipeDownInteractionStateDidChange;
@end

@implementation PXStoryViewModePlayerToBrowserTransition

- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6
{
  v12 = a7;
  *&retstr->var0 = 0u;
  *&retstr->var1.origin.y = 0u;
  retstr->var1.size.height = 0.0;
  if (self->_swipeDownTracker && (-[PXStoryViewModeFocusedClipsViewTransition focusedClipIdentifiers](self, "focusedClipIdentifiers"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsIndex:a4->var0], v13, v14))
  {
    if (self->_completionProgressAnimator && [(PXSwipeDownTracker *)self->_swipeDownTracker shouldFinishDismissal])
    {
      [(PXNumberAnimator *)self->_completionProgressAnimator presentationValue];
      PXFloatByLinearlyInterpolatingFloats();
    }

    v16 = *&a5->var1.origin.y;
    *&retstr->var0 = *&a5->var0;
    *&retstr->var1.origin.y = v16;
    retstr->var1.size.height = a5->var1.size.height;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PXStoryViewModePlayerToBrowserTransition;
    memcpy(__dst, a4, sizeof(__dst));
    v15 = *&a5->var1.origin.y;
    v18[0] = *&a5->var0;
    v18[1] = v15;
    height = a5->var1.size.height;
    [($B0175D27BC26B8A5DA33FAD13D27C2F3 *)&v21 contentsTransformOverrideForClipWithInfo:__dst proposedOverride:v18 inViewMode:a6 layout:v12];
  }

  return result;
}

- (double)alphaForClipWithInfo:(id *)a3 proposedAlpha:(double)a4 inViewMode:(int64_t)a5 layout:(id)a6
{
  v10 = a6;
  v11 = [(PXStoryViewModeTransition *)self regionOfInterest];
  if (v11 && (v12 = v11, -[PXStoryViewModeFocusedClipsViewTransition focusedClipIdentifiers](self, "focusedClipIdentifiers"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsIndex:a3->var0], v13, v12, v14))
  {
    var1 = a3->var1;
    if (var1 <= 5)
    {
      if (((1 << var1) & 0xD) != 0)
      {
        v16 = +[PXStorySettings sharedInstance];
        [v16 viewModeTransitionAccessoryFadepoint];

        [(PXStoryViewModeTransition *)self fractionCompleted];
        PXFloatProgressBetween();
      }

      [(PXStoryViewModeTransition *)self valueWithFadeout:a4];
      v20 = v19 < a4;
      a4 = v19;
      if (v20)
      {
        v21 = v19;
        var0 = a3->var0;
        if (var0 == [(PXStoryViewModeFocusedClipsViewTransition *)self trackingClipIdentifier])
        {
          a4 = v21;
        }

        else
        {
          a4 = 0.0;
        }
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PXStoryViewModePlayerToBrowserTransition;
    memcpy(v23, a3, sizeof(v23));
    [(PXStoryViewModeTransition *)&v24 alphaForClipWithInfo:v23 proposedAlpha:a5 inViewMode:v10 layout:a4];
    a4 = v17;
  }

  if (self->_shouldFadeOutEverything)
  {
    [(PXStoryViewModeTransition *)self fractionCompleted];
    PXFloatNormalize();
  }

  return a4;
}

- (CGRect)frameForClipWithInfo:(id *)a3 proposedFrame:(CGRect)a4 inViewMode:(int64_t)a5 layout:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v64 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = [(PXStoryViewModeTransition *)self regionOfInterest];
  [(PXStoryViewModeTransition *)self swipeDownInteractionState];
  v15 = PXStorySwipeDownInteractionStateEqualsState(__dst, &PXStorySwipeDownInteractionStateNull);
  if (v14 && ((v16 = v15, !v15) || self->_swipeDownTracker || self->_centerOffsetAnimator || self->_completionProgressAnimator))
  {
    v52 = width;
    v53 = height;
    [v13 visibleRect];
    v17 = [v13 rootLayout];
    v18 = [v17 coordinateSpace];
    [v14 rectInCoordinateSpace:v18];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [v13 rootLayout];
    [v13 convertRect:v27 fromLayout:{v20, v22, v24, v26}];

    v28 = [(PXStoryViewModePlayerToBrowserTransition *)self shouldFinish];
    swipeDownTracker = self->_swipeDownTracker;
    if (v16)
    {
      v31 = v52;
      v30 = v53;
      if (swipeDownTracker && !self->_completionProgressAnimator)
      {
        [(PXStoryViewModeTransition *)self springStiffness];
        v33 = v32;
        [(PXStoryViewModeTransition *)self dampingRatio];
        v35 = v34;
        v36 = [(PXStoryViewModeTransition *)self progressAnimator];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __97__PXStoryViewModePlayerToBrowserTransition_frameForClipWithInfo_proposedFrame_inViewMode_layout___block_invoke_2;
        v55[3] = &__block_descriptor_33_e35_v16__0___PXMutableNumberAnimator__8l;
        v56 = v28;
        [v36 performChangesUsingSpringAnimationWithStiffness:v55 dampingRatio:v33 initialVelocity:v35 changes:0.0];

        [(PXSwipeDownTracker *)self->_swipeDownTracker trackedVelocity];
        [(PXSwipeDownTracker *)self->_swipeDownTracker trackedCenter];
        PXRectGetCenter();
      }
    }

    else
    {
      v31 = v52;
      v30 = v53;
      if (!swipeDownTracker)
      {
        v37 = [[PXSwipeDownTracker alloc] initWithOptions:0];
        v38 = self->_swipeDownTracker;
        self->_swipeDownTracker = v37;

        memset(__dst, 0, 72);
        [(PXStoryViewModeTransition *)self swipeDownInteractionState];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __97__PXStoryViewModePlayerToBrowserTransition_frameForClipWithInfo_proposedFrame_inViewMode_layout___block_invoke;
        aBlock[3] = &unk_1E772EB80;
        v39 = v13;
        v59 = __dst[1];
        v60 = __dst[2];
        v61 = __dst[3];
        aBlock[4] = v39;
        v62 = *&__dst[4];
        v58 = __dst[0];
        v40 = _Block_copy(aBlock);
        v40[2](*__dst, *(__dst + 1));
        PXRectGetCenter();
      }
    }

    var1 = a3->var1;
    if (var1 <= 5 && ((1 << var1) & 0x32) != 0)
    {
      v42 = [(PXStoryViewModeFocusedClipsViewTransition *)self focusedClipIdentifiers];
      v43 = [v42 containsIndex:a3->var0];

      if (v43)
      {
        PXRectNormalize();
      }
    }
  }

  else
  {
    v54.receiver = self;
    v54.super_class = PXStoryViewModePlayerToBrowserTransition;
    memcpy(__dst, a3, sizeof(__dst));
    [(PXStoryViewModeFocusedClipsViewTransition *)&v54 frameForClipWithInfo:__dst proposedFrame:a5 inViewMode:v13 layout:x, y, width, height];
    x = v44;
    y = v45;
    v31 = v46;
    v30 = v47;
  }

  v48 = x;
  v49 = y;
  v50 = v31;
  v51 = v30;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

void __97__PXStoryViewModePlayerToBrowserTransition_frameForClipWithInfo_proposedFrame_inViewMode_layout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rootLayout];
  [objc_claimAutoreleasedReturnValue() coordinateSpace];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

uint64_t __97__PXStoryViewModePlayerToBrowserTransition_frameForClipWithInfo_proposedFrame_inViewMode_layout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = 0.0;
  if (*(a1 + 32))
  {
    v2 = 1.0;
  }

  return [a2 setValue:v2];
}

- (BOOL)shouldFinish
{
  v3 = [(PXStoryViewModePlayerToBrowserTransition *)self swipeDownTracker];
  v4 = v3;
  if (v3 && ![v3 shouldFinishDismissal])
  {
    v8 = 0;
  }

  else
  {
    lastSwipeDownDuration = self->_lastSwipeDownDuration;
    v6 = +[PXStorySettings sharedInstance];
    [v6 swipeDownSignificantDuration];
    v8 = lastSwipeDownDuration >= v7;
  }

  return v8;
}

- (id)presentedBoundingBoxForViewMode:(int64_t)a3
{
  if (a3 == 1)
  {
    if ([(PXStoryViewModeFocusedClipsViewTransition *)self trackingClipIdentifier])
    {
      referenceLayout = self->_referenceLayout;
      if (referenceLayout)
      {
        [(PXGLayout *)referenceLayout visibleRect];
        PXRectWithOriginAndSize();
      }
    }
  }

  v8.receiver = self;
  v8.super_class = PXStoryViewModePlayerToBrowserTransition;
  v6 = [(PXStoryViewModeTransition *)&v8 presentedBoundingBoxForViewMode:a3];

  return v6;
}

- (void)swipeDownInteractionStateDidChange
{
  v26 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PXStoryViewModePlayerToBrowserTransition;
  [(PXStoryViewModeTransition *)&v20 swipeDownInteractionStateDidChange];
  v19 = 0.0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  [(PXStoryViewModeTransition *)self swipeDownInteractionState];
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  *buf = 0u;
  v22 = 0u;
  if ((PXStorySwipeDownInteractionStateEqualsState(buf, &PXStorySwipeDownInteractionStateNull) & 1) == 0)
  {
    if (self->_swipeDownTracker)
    {
      PXPointSubtract();
    }

    v3 = [(PXStoryViewModeTransition *)self progressAnimator];
    [v3 presentationValue];
    v5 = v4;

    v6 = [(PXStoryViewModeTransition *)self progressAnimator];
    [v6 performChangesWithoutAnimation:{&v14, v9, v10, v11, v12, v13, MEMORY[0x1E69E9820], 3221225472, __78__PXStoryViewModePlayerToBrowserTransition_swipeDownInteractionStateDidChange__block_invoke, &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l, v5}];

    self->_lastSwipeDownDuration = v19 - *(&v18 + 1);
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->_lastSwipeDownDuration * 1000.0;
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "Last swipe down duration: %0.3f ms", buf, 0xCu);
    }
  }
}

void __78__PXStoryViewModePlayerToBrowserTransition_swipeDownInteractionStateDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 304);
  v3 = a2;
  [v2 dismissalProgress];
  [v3 setValue:?];
}

- (double)fadeoutDuration
{
  swipeDownTracker = self->_swipeDownTracker;
  if (!swipeDownTracker)
  {
    return 0.1;
  }

  v3 = [(PXSwipeDownTracker *)swipeDownTracker shouldFinishDismissal];
  result = 0.1;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)hasActiveAnimation
{
  v4.receiver = self;
  v4.super_class = PXStoryViewModePlayerToBrowserTransition;
  if ([(PXStoryViewModeTransition *)&v4 hasActiveAnimation]|| ([(PXPointAnimator *)self->_centerOffsetAnimator isAnimating]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(PXNumberAnimator *)self->_completionProgressAnimator isAnimating];
  }
}

- (PXStoryViewModePlayerToBrowserTransition)initWithSourceTimelineLayoutSnapshot:(id)a3 assetReference:(id)a4 trackingClipIdentifier:(int64_t)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E696AD50];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v8 timeline];
  if (v8)
  {
    [v8 timeRange];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  [v8 timelineRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __119__PXStoryViewModePlayerToBrowserTransition_initWithSourceTimelineLayoutSnapshot_assetReference_trackingClipIdentifier___block_invoke;
  v25[3] = &unk_1E773B178;
  v26 = v11;
  v21 = v11;
  [v12 enumerateClipsInTimeRange:v27 rect:v25 usingBlock:{v14, v16, v18, v20}];

  v24.receiver = self;
  v24.super_class = PXStoryViewModePlayerToBrowserTransition;
  v22 = [(PXStoryViewModeFocusedClipsViewTransition *)&v24 initWithSourceViewMode:1 sourceSnapshot:v8 destinationViewMode:2 destinationSnapshot:0 assetReference:v10 focusedClipIdentifiers:v21 trackingClipIdentifier:a5];

  return v22;
}

uint64_t __119__PXStoryViewModePlayerToBrowserTransition_initWithSourceTimelineLayoutSnapshot_assetReference_trackingClipIdentifier___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >= 1)
  {
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v18 = v9;
    v19 = v10;
    v12 = a2;
    v13 = result;
    do
    {
      result = [*(v13 + 32) addIndex:{*a5, v14, v15, v16, v17, v18, v19}];
      a5 += 96;
      --v12;
    }

    while (v12);
  }

  return result;
}

@end