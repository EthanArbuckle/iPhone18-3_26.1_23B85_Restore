@interface PXStoryScrubberContentLayout
- (BOOL)_handleScrollTimeline:(id)a3 inGroup:(id)a4;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (CGRect)_frameForSegmentWithIdentifier:(int64_t)a3;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXGAXResponder)axNextResponder;
- (PXStoryScrubberContentLayout)initWithModel:(id)a3;
- (PXStoryScrubberContentLayout)initWithViewModel:(id)a3;
- (double)_displayedContentWidth;
- (id)_assetFetchResultForTimelineIndex:(int64_t)a3;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)axContentInfoAtSpriteIndex:(unsigned int)a3;
- (id)axSpriteIndexes;
- (id)axVisibleSpriteIndexes;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)mainLayoutSpec;
- (id)preferredFocusLayouts;
- (id)preferredFocusSpriteIndexes;
- (id)viewLayoutSpec;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)_axScrubberFractionNumerator;
- (int64_t)_currentFocusMode;
- (int64_t)_segmentIdentifierForHostingSpriteIndex:(unsigned int)a3;
- (unint64_t)_axScrubberFractionDenominator;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3;
- (unsigned)_hostingSpriteIndexForSegmentIdentifier:(int64_t)a3;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4;
- (void)_fadeClipLayoutIfNeeded:(id)a3 layoutFrame:(CGRect)a4;
- (void)_invalidateAXSpriteIndexes;
- (void)_invalidateBackground;
- (void)_invalidateContentSize;
- (void)_invalidateCursors;
- (void)_invalidateHostingSpritesFocus;
- (void)_invalidateHostingSpritesLayout;
- (void)_invalidateMainModel;
- (void)_invalidatePagedTimelineSpec;
- (void)_invalidateScrollViewProperties;
- (void)_invalidateTimelineTranslationXAnimator;
- (void)_invalidateTimelineTranslationYAnimator;
- (void)_updateAXSpriteIndexes;
- (void)_updateBackground;
- (void)_updateContentSize;
- (void)_updateCursors;
- (void)_updateHostingSpritesFocus;
- (void)_updateMainModel;
- (void)_updatePagedTimelineSpec;
- (void)_updateScrollViewProperties;
- (void)_updateTimelineTranslationXAnimator;
- (void)_updateTimelineTranslationYAnimator;
- (void)alphaDidChange;
- (void)axDidUpdateFocusInContext:(id)a3;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)configureClipLayout:(id)a3;
- (void)didUpdate;
- (void)didUpdateClipLayout:(id)a3 frame:(CGRect)a4;
- (void)didUpdateTimelineContent;
- (void)focusableView:(id)a3 didHintFocusMovement:(id)a4;
- (void)focusableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)focusableViewDidUpdateUserInfo:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setContainsFocus:(BOOL)a3;
- (void)setMainModel:(id)a3;
- (void)update;
- (void)updateClipsCornerRadius;
- (void)updateDisplayedTimeRange;
- (void)updateDisplayedTimeline;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXStoryScrubberContentLayout

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->axNextResponder);

  return WeakRetained;
}

- (BOOL)_handleScrollTimeline:(id)a3 inGroup:(id)a4
{
  [a3 axFrame];
  if (v5 >= 0.0)
  {
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = -1;
  }

  v7 = [(PXStoryScrubberContentLayout *)self viewModel];
  v8 = [v7 mainModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PXStoryScrubberContentLayout__handleScrollTimeline_inGroup___block_invoke;
  v10[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
  v10[4] = v6;
  [v8 performChanges:v10];

  return 1;
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v6 = a3;
  v7 = a5;
  PXGAXGetElementForUserInfo();
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXStoryScrubberContentLayout *)self axNextResponder];
  [v10 axGroup:v9 didChange:a4 userInfo:v8];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryScrubberContentLayout *)self axNextResponder];
  v6 = [v5 axContainingScrollViewForAXGroup:v4];

  return v6;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3
{
  if (self->_wholeScrubberFocusSpriteIndex == a3)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXStoryScrubberContentLayout;
  return [(PXStoryScrubberContentLayout *)&v6 axFocusabilityForSpriteAtIndex:?];
}

- (void)axDidUpdateFocusInContext:(id)a3
{
  v4 = [a3 nextFocusedItem];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 axContainingGroup];
  v7 = [v6 axInfoSource];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  -[PXStoryScrubberContentLayout setContainsFocus:](self, "setContainsFocus:", [v8 isDescendantOfLayout:self]);
}

- (unint64_t)_axScrubberFractionDenominator
{
  v3 = [(PXStoryScrubberContentLayout *)self viewModel];
  v4 = [v3 mainModel];
  v5 = [v4 timeline];
  v6 = [v5 lastSegmentIdentifier];

  v7 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v8 = [v7 indexOfSegmentWithIdentifier:v6];

  return v8 + 1;
}

- (int64_t)_axScrubberFractionNumerator
{
  v3 = [(PXStoryScrubberContentLayout *)self viewModel];
  v4 = [v3 mainModel];
  v5 = [v4 currentSegmentIdentifier];

  v6 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v7 = [v6 indexOfSegmentWithIdentifier:v5];

  return v7 + 1;
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4
{
  if (a4 - 4 < 2)
  {
    v5 = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
    v6 = [v5 indexGreaterThanIndex:a3];
  }

  else
  {
    if (a4 != 6 && a4 != 3)
    {
      return -1;
    }

    v5 = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
    v6 = [v5 indexLessThanIndex:a3];
  }

  v7 = v6;

  return v7;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  hostingSpritesIndexRange = self->_hostingSpritesIndexRange;
  v7 = hostingSpritesIndexRange.location > a3;
  v6 = hostingSpritesIndexRange.length + hostingSpritesIndexRange.location;
  v7 = !v7 && v6 > a3;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = PXStoryScrubberContentLayout;
    [(PXStoryScrubberContentLayout *)&v13 axContentInfoAtSpriteIndex:*&a3];
  }

  else
  {
    if (self->_wholeScrubberFocusSpriteIndex != a3)
    {
      v8 = [off_1E7721690 sharedPool];
      v9 = [v8 checkOutReusableObjectWithReuseIdentifier:*off_1E7721FD0];

      [v9 setSpriteIndex:v3];
      [(PXStoryScrubberContentLayout *)self referenceSize];
      PXRectWithOriginAndSize();
    }

    v12.receiver = self;
    v12.super_class = PXStoryScrubberContentLayout;
    [(PXStoryScrubberContentLayout *)&v12 axContentInfoAtSpriteIndex:*&a3];
  }
  v10 = ;

  return v10;
}

- (id)_assetFetchResultForTimelineIndex:(int64_t)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__87719;
  v26 = __Block_byref_object_dispose__87720;
  v27 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v6 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v7 = v6;
  if (v6)
  {
    [v6 timeRangeForSegmentWithIdentifier:a3];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  [(PXStoryTimelineLayout *)self displayedTimelineRect];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__87719;
  v17 = __Block_byref_object_dispose__87720;
  v18 = 0;
  v8 = v23[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PXStoryScrubberContentLayout__assetFetchResultForTimelineIndex___block_invoke;
  v12[3] = &unk_1E7736A30;
  v12[4] = self;
  v12[5] = &v22;
  v12[6] = &v13;
  v12[7] = a2;
  v11[0] = v19;
  v11[1] = v20;
  v11[2] = v21;
  [v8 enumerateClipsInTimeRange:v11 rect:v12 usingBlock:?];
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __66__PXStoryScrubberContentLayout__assetFetchResultForTimelineIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    v27 = v13;
    v28 = v12;
    v29 = v11;
    v30 = v10;
    v31 = v9;
    v32 = v8;
    v33 = v7;
    v34 = v6;
    v35 = v14;
    v36 = v15;
    v18 = a2;
    do
    {
      v20 = [*(*(*(a1 + 40) + 8) + 40) clipWithIdentifier:{*a5, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];
      v21 = [v20 resource];
      v22 = [v21 px_storyResourceKind];

      if (v22 == 1)
      {
        v23 = [v20 resource];
        v24 = [v23 px_storyResourceDisplayAsset];

        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        *a6 = 1;
      }

      a5 += 96;

      --v18;
    }

    while (v18);
  }
}

- (id)axVisibleSpriteIndexes
{
  v2 = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
  v3 = [v2 mutableCopy];

  [v3 removeIndex:1001];
  [v3 removeIndex:1000];
  [v3 removeIndex:1002];

  return v3;
}

- (id)axSpriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ViewModelObservationContext_87722 != a5)
  {
    if (MainModelObservationContext_87723 != a5)
    {
      if (TimelineTranslationXAnimatorObservationContext == a5)
      {
        if ((a4 & 2) != 0)
        {
          [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
        }
      }

      else if (TimelineTranslationYAnimatorObservationContext == a5)
      {
        if ((a4 & 2) != 0)
        {
          [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
          [(PXStoryScrubberContentLayout *)self _invalidateBackground];
        }
      }

      else
      {
        v9.receiver = self;
        v9.super_class = PXStoryScrubberContentLayout;
        [(PXStoryModelTimelineLayout *)&v9 observable:v8 didChange:a4 context:a5];
      }

      goto LABEL_31;
    }

    if ((a4 & 0x2000) != 0)
    {
      [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
      [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
      if ((a4 & 0x10) == 0)
      {
LABEL_20:
        if ((a4 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    else if ((a4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
    if ((a4 & 0x20) == 0)
    {
LABEL_21:
      if ((a4 & 2) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
    if ((a4 & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_28:
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
    [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesFocus];
    goto LABEL_31;
  }

  if ((a4 & 0x44020) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateTimelineTranslationXAnimator];
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
    [(PXStoryScrubberContentLayout *)self _invalidateBackground];
    [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
  }

  if ((a4 & 0x20) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
    [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
  }

  if ((a4 & 0x1000404) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateCursors];
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
  }

  if ((a4 & 0x1004020) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
  }

  if ((a4 & 0x2000) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
  }

  if ((a4 & 0x40) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateMainModel];
  }

LABEL_31:
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:1069 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:1014 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_currentSegmentCursorSpriteIndex == a3)
  {
    v8 = [MEMORY[0x1E69DC888] greenColor];
  }

  else if (self->_currentTimeCursorSpriteIndex == a3)
  {
    v8 = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    if (self->_scrollPositionCursorSpriteIndex != a3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:997 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [MEMORY[0x1E69DC888] blueColor];
  }

  v9 = v8;
  v10 = [v8 colorWithAlphaComponent:0.25];

  return v10;
}

- (void)focusableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v6 = [a4 nextFocusedItem];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;

    if (v7)
    {
      v8 = [v7 userData];
      v9 = [v8 segmentIdentifier];

      v10 = [(PXStoryScrubberContentLayout *)self viewModel];
      v11 = [v10 mainModel];
      v12 = [v11 currentSegmentIdentifier];

      if (v9)
      {
        if (v9 != v12)
        {
          v13 = [(PXStoryModelTimelineLayout *)self model];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __95__PXStoryScrubberContentLayout_focusableView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
          v14[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
          v14[4] = v9;
          [v13 performChanges:v14];
        }
      }
    }
  }

  else
  {

    v7 = 0;
  }
}

- (void)focusableView:(id)a3 didHintFocusMovement:(id)a4
{
  [a4 movementDirection];

  [(PXStoryScrubberContentLayout *)self setFocusHintTranslationY:v5 * 12.0];
}

- (void)focusableViewDidUpdateUserInfo:(id)a3
{
  if (self->_isWaitingForFocusableViewUserDataUpdate)
  {
    self->_isWaitingForFocusableViewUserDataUpdate = 0;
    [(PXStoryScrubberContentLayout *)self setNeedsFocusUpdate];
  }
}

- (id)mainLayoutSpec
{
  v2 = [(PXStoryScrubberContentLayout *)self mainModel];
  v3 = [v2 layoutSpec];

  return v3;
}

- (id)viewLayoutSpec
{
  v2 = [(PXStoryScrubberContentLayout *)self viewModel];
  v3 = [v2 viewLayoutSpec];

  return v3;
}

- (void)_updateScrollViewProperties
{
  v2 = +[PXStorySettings sharedInstance];
  [v2 scrubberLayoutStretchesSmallNumberOfAssets];
}

- (void)_invalidateScrollViewProperties
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x8000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x8000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateScrollViewProperties]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:847 description:{@"invalidating %lu after it already has been updated", 0x8000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x8000;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateHostingSpritesLayout
{
  ++self->_hostingSpritesMediaVersion;
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x2000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x2000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateHostingSpritesLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:780 description:{@"invalidating %lu after it already has been updated", 0x2000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x2000;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateHostingSpritesFocus
{
  if (self->_wholeScrubberFocusSpriteIndex != -1)
  {
    v6[7] = v2;
    v6[8] = v3;
    v5 = [(PXStoryScrubberContentLayout *)self localNumberOfSprites];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__PXStoryScrubberContentLayout__updateHostingSpritesFocus__block_invoke;
    v6[3] = &unk_1E77369E0;
    v6[4] = self;
    [(PXStoryScrubberContentLayout *)self modifySpritesInRange:v5 << 32 state:v6];
  }
}

uint64_t __58__PXStoryScrubberContentLayout__updateHostingSpritesFocus__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 32);
  v6 = *(v5 + 1376);
  if (v6 < *(v5 + 1380) + v6)
  {
    v7 = (a5 + 40 * v6 + 32);
    do
    {
      *v7 = *(v5 + 1362);
      v7 += 20;
      ++v6;
      v5 = *(result + 32);
    }

    while (v6 < (*(v5 + 1380) + *(v5 + 1376)));
  }

  *(a5 + 40 * *(v5 + 1328) + 32) = *(v5 + 1362);
  return result;
}

- (void)_invalidateHostingSpritesFocus
{
  ++self->_hostingSpritesMediaVersion;
  self->_isWaitingForFocusableViewUserDataUpdate = 1;
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x4000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x4000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateHostingSpritesFocus]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:762 description:{@"invalidating %lu after it already has been updated", 0x4000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x4000;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentSize
{
  v3 = +[PXStorySettings sharedInstance];
  v4 = [v3 scrubberLayoutStretchesSmallNumberOfAssets];

  if (v4)
  {
    [(PXStoryScrubberContentLayout *)self _displayedContentWidth];
    v6 = v5;
    v7 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
    [v7 scrubberHorizontalLayoutMargin];
    v9 = v8 + v8;

    [(PXStoryScrubberContentLayout *)self referenceSize];
    if (v10 >= v6 + v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6 + v9;
    }

    [(PXStoryScrubberContentLayout *)self referenceSize];

    [(PXGAbsoluteCompositeLayout *)self setContentSize:v11];
  }
}

- (void)_invalidateContentSize
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x1000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x1000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateContentSize]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:748 description:{@"invalidating %lu after it already has been updated", 4096}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 4096;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateBackground
{
  v3 = +[PXStorySettings sharedInstance];
  v4 = [v3 scrubberLayoutStretchesSmallNumberOfAssets];

  if (v4)
  {
    v5 = [(PXStoryModelTimelineLayout *)self model];
    v6 = [v5 timeline];
    [v6 numberOfSegments];

    v7 = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
    [v7 presentationValue];

    [(PXStoryScrubberContentLayout *)self referenceSize];
    PXRectWithOriginAndSize();
  }
}

float32x2_t __49__PXStoryScrubberContentLayout__updateBackground__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) scrubberHorizontalLayoutMargin];
  v26 = CGRectInset(*(a1 + 48), v9, 0.0);
  x = v26.origin.x;
  width = v26.size.width;
  height = v26.size.height;
  v13 = *(a1 + 80) + v26.origin.y;
  v14 = (a4 + 160 * *(*(a1 + 40) + 1312));
  *&v26.origin.y = *(off_1E7722048 + 7);
  v14[6] = *(off_1E7722048 + 6);
  v14[7] = *&v26.origin.y;
  *&v26.origin.y = *(off_1E7722048 + 9);
  v14[8] = *(off_1E7722048 + 8);
  v14[9] = *&v26.origin.y;
  *&v26.origin.y = *(off_1E7722048 + 3);
  v14[2] = *(off_1E7722048 + 2);
  v14[3] = *&v26.origin.y;
  *&v26.origin.y = *(off_1E7722048 + 5);
  v14[4] = *(off_1E7722048 + 4);
  v14[5] = *&v26.origin.y;
  *&v26.origin.y = *(off_1E7722048 + 1);
  *v14 = *off_1E7722048;
  v14[1] = *&v26.origin.y;
  [*(a1 + 40) alpha];
  *&v15 = v15;
  *(a4 + 160 * *(*(a1 + 40) + 1312)) = LODWORD(v15);
  v16 = a4 + 160 * *(*(a1 + 40) + 1312);
  [*(a1 + 32) scrubberAssetCornerRadius];
  *&v17 = v17;
  *(v16 + 36) = vdupq_lane_s32(*&v17, 0);
  if (*(a1 + 88))
  {
    v18 = 10;
  }

  else
  {
    v18 = 0;
  }

  *(a5 + 40 * *(*(a1 + 40) + 1312) + 1) = v18;
  *(a5 + 40 * *(*(a1 + 40) + 1312) + 32) = *(*(a1 + 40) + 1360);
  *(a5 + 40 * *(*(a1 + 40) + 1312)) = 1;
  *(a5 + 40 * *(*(a1 + 40) + 1312) + 34) = 2;
  v19 = (a3 + 32 * *(*(a1 + 40) + 1312));
  v27.origin.x = x;
  v27.origin.y = v13;
  v27.size.width = width;
  v27.size.height = height;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = v13;
  v28.size.width = width;
  v28.size.height = height;
  MidY = CGRectGetMidY(v28);
  v29.origin.x = x;
  v29.origin.y = v13;
  v29.size.width = width;
  v29.size.height = height;
  v25 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = v13;
  v30.size.width = width;
  v30.size.height = height;
  v22 = CGRectGetHeight(v30);
  v23.f64[0] = v25;
  v23.f64[1] = v22;
  result = vcvt_f32_f64(v23);
  *v19 = MidX;
  *&v19[1] = MidY;
  v19[2] = 0x3FB99999A0000000;
  v19[3] = result;
  return result;
}

- (void)_invalidateBackground
{
  ++self->_backgroundMediaVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateBackground]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:713 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAXSpriteIndexes
{
  v3 = [(PXStoryScrubberContentLayout *)self viewModel];
  if ([v3 wantsScrubberVisible])
  {
    v4 = [(PXStoryScrubberContentLayout *)self viewModel];
    v5 = [v4 viewMode] == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PXStoryScrubberContentLayout *)self viewModel];
  v7 = [v6 mainModel];

  v8 = [v7 timeline];
  v9 = [v7 currentSegmentIdentifier];
  v10 = [v8 lastSegmentIdentifier];
  v11 = [v8 firstSegmentIdentifier];
  v12 = v9 != v10 && v5;
  v13 = v9 != v11 && v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PXStoryScrubberContentLayout__updateAXSpriteIndexes__block_invoke;
  aBlock[3] = &unk_1E7748278;
  aBlock[4] = self;
  v14 = _Block_copy(aBlock);
  v14[2](v14, v5, 1001);
  v14[2](v14, v12, 1002);
  v14[2](v14, v13, 1000);
}

uint64_t __54__PXStoryScrubberContentLayout__updateAXSpriteIndexes__block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 1352);
  if (a2)
  {
    return [v2 addIndex:?];
  }

  else
  {
    return [v2 removeIndex:?];
  }
}

- (void)_invalidateAXSpriteIndexes
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x400) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateAXSpriteIndexes]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:682 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateMainModel
{
  v4 = [(PXStoryScrubberContentLayout *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryScrubberContentLayout *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateMainModel]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:674 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateCursors
{
  v3 = [(PXStoryScrubberContentLayout *)self localNumberOfSprites];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PXStoryScrubberContentLayout__updateCursors__block_invoke;
  v4[3] = &unk_1E77369E0;
  v4[4] = self;
  [(PXStoryScrubberContentLayout *)self modifySpritesInRange:v3 << 32 state:v4];
}

void __46__PXStoryScrubberContentLayout__updateCursors__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a1 + 32) model];
  [*(a1 + 32) referenceDepth];
  v11 = v10;
  v12 = [*(a1 + 32) viewModel];
  v13 = [v12 isHUDVisible];

  v14 = 0.0;
  if (v13)
  {
    v15 = [*(a1 + 32) viewModel];
    [v15 scrubberVisibilityFraction];
    v14 = v16;
  }

  v17 = [v9 timeline];
  memset(&v80[2] + 8, 0, 24);
  if (v9)
  {
    [v9 nominalPlaybackTime];
  }

  v18 = [v9 currentSegmentIdentifier];
  memset(v80, 0, 32);
  v79 = 0u;
  if (v17)
  {
    [v17 timeRangeForSegmentWithIdentifier:v18];
  }

  memset(&v78, 0, sizeof(v78));
  lhs = *(&v80[2] + 8);
  *&rhs.value = v79;
  rhs.epoch = *&v80[0];
  CMTimeSubtract(&v78, &lhs, &rhs);
  [*(a1 + 32) _frameForSegmentWithIdentifier:v18];
  v20 = v19;
  y = v83.origin.y;
  width = v83.size.width;
  v24 = a3 + 32 * *(*(a1 + 32) + 1316);
  v64 = v11;
  *&v19 = v11;
  v25 = -*&v19;
  v83.origin.x = v20;
  v83.size.height = v26 * 0.25;
  height = v83.size.height;
  MidX = CGRectGetMidX(v83);
  v84.origin.x = v20;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  MidY = CGRectGetMidY(v84);
  v29 = v25;
  v85.origin.x = v20;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v76 = CGRectGetWidth(v85);
  v86.origin.x = v20;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  v30 = CGRectGetHeight(v86);
  v31.f64[0] = v76;
  v31.f64[1] = v30;
  *v24 = MidX;
  *(v24 + 8) = MidY;
  *(v24 + 16) = v29;
  *(v24 + 24) = vcvt_f32_f64(v31);
  v32 = (a4 + 160 * *(*(a1 + 32) + 1316));
  v74 = *(off_1E7722048 + 1);
  v75 = *off_1E7722048;
  *v32 = *off_1E7722048;
  v32[1] = v74;
  v72 = *(off_1E7722048 + 4);
  v73 = *(off_1E7722048 + 5);
  v32[4] = v72;
  v32[5] = v73;
  v70 = *(off_1E7722048 + 2);
  v71 = *(off_1E7722048 + 3);
  v32[2] = v70;
  v32[3] = v71;
  v68 = *(off_1E7722048 + 8);
  v69 = *(off_1E7722048 + 9);
  v32[8] = v68;
  v32[9] = v69;
  v66 = *(off_1E7722048 + 6);
  v67 = *(off_1E7722048 + 7);
  v32[6] = v66;
  v32[7] = v67;
  v77 = v14;
  *(a4 + 160 * *(*(a1 + 32) + 1316)) = v14;
  *(a5 + 40 * *(*(a1 + 32) + 1316) + 1) = 5;
  __asm { FMOV            V15.2S, #1.0 }

  *(a5 + 40 * *(*(a1 + 32) + 1316) + 8) = _D15;
  lhs = *(v80 + 8);
  if (CMTimeGetSeconds(&lhs) != 0.0)
  {
    lhs = v78;
    CMTimeGetSeconds(&lhs);
    PXClamp();
  }

  v38 = y + height;
  v39 = a3 + 32 * *(*(a1 + 32) + 1320);
  v87.origin.x = v20;
  v87.origin.y = v38;
  v87.size.width = width;
  v87.size.height = height;
  v40 = CGRectGetMidX(v87);
  v88.origin.x = v20;
  v88.origin.y = v38;
  v88.size.width = width;
  v88.size.height = height;
  v41 = CGRectGetMidY(v88);
  v89.origin.x = v20;
  v89.origin.y = v38;
  v89.size.width = width;
  v89.size.height = height;
  v63 = CGRectGetWidth(v89);
  v90.origin.x = v20;
  v90.origin.y = v38;
  v90.size.width = width;
  v90.size.height = height;
  v42 = CGRectGetHeight(v90);
  v43.f64[0] = v63;
  v43.f64[1] = v42;
  *v39 = v40;
  *(v39 + 8) = v41;
  *(v39 + 16) = v29;
  *(v39 + 24) = vcvt_f32_f64(v43);
  v44 = (a4 + 160 * *(*(a1 + 32) + 1320));
  v44[6] = v66;
  v44[7] = v67;
  v44[8] = v68;
  v44[9] = v69;
  v44[2] = v70;
  v44[3] = v71;
  v44[4] = v72;
  v44[5] = v73;
  *v44 = v75;
  v44[1] = v74;
  *(a4 + 160 * *(*(a1 + 32) + 1320)) = v77;
  *(a5 + 40 * *(*(a1 + 32) + 1320) + 1) = 5;
  *(a5 + 40 * *(*(a1 + 32) + 1320) + 8) = _D15;
  v45 = *MEMORY[0x1E695F058];
  v46 = *(MEMORY[0x1E695F058] + 8);
  v47 = *(MEMORY[0x1E695F058] + 16);
  v48 = *(MEMORY[0x1E695F058] + 24);
  memset(&lhs, 0, sizeof(lhs));
  if (v9)
  {
    [v9 currentScrollPosition];
    v49 = v64;
    if (lhs.value)
    {
      [*(a1 + 32) _frameForSegmentWithIdentifier:?];
      v45 = v50;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      if (lhs.epoch)
      {
        [*(a1 + 32) _frameForSegmentWithIdentifier:?];
        PXRectByLinearlyInterpolatingRects();
      }
    }
  }

  else
  {
    v49 = v64;
  }

  v54 = v48 * 0.5;
  v55 = v54 + v46;
  v56 = a3 + 32 * *(*(a1 + 32) + 1324);
  v57 = v49 * -0.5;
  v91.origin.x = v45;
  v91.origin.y = v55;
  v91.size.width = v47;
  v91.size.height = v54;
  v58 = CGRectGetMidX(v91);
  v92.origin.x = v45;
  v92.origin.y = v55;
  v92.size.width = v47;
  v92.size.height = v54;
  v59 = CGRectGetMidY(v92);
  v93.origin.x = v45;
  v93.origin.y = v55;
  v93.size.width = v47;
  v93.size.height = v54;
  v65 = CGRectGetWidth(v93);
  v94.origin.x = v45;
  v94.origin.y = v55;
  v94.size.width = v47;
  v94.size.height = v54;
  v60 = CGRectGetHeight(v94);
  v61.f64[0] = v65;
  v61.f64[1] = v60;
  *v56 = v58;
  *(v56 + 8) = v59;
  *(v56 + 16) = v57;
  *(v56 + 24) = vcvt_f32_f64(v61);
  v62 = (a4 + 160 * *(*(a1 + 32) + 1324));
  v62[6] = v66;
  v62[7] = v67;
  v62[8] = v68;
  v62[9] = v69;
  v62[2] = v70;
  v62[3] = v71;
  v62[4] = v72;
  v62[5] = v73;
  *v62 = v75;
  v62[1] = v74;
  *(a4 + 160 * *(*(a1 + 32) + 1324)) = v77;
  *(a5 + 40 * *(*(a1 + 32) + 1324) + 1) = 5;
  *(a5 + 40 * *(*(a1 + 32) + 1324) + 8) = _D15;
}

- (void)_invalidateCursors
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x800) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateCursors]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:618 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePagedTimelineSpec
{
  v21 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
  v3 = objc_alloc_init(PXStoryPagedTimelineSpec);
  [v21 scrubberCurrentAssetPadding];
  [(PXStoryPagedTimelineSpec *)v3 setKeyInterpageSpacing:?];
  v4 = [(PXStoryScrubberContentLayout *)self mainLayoutSpec];
  [v4 scrubberCurrentAssetSize];
  [(PXStoryPagedTimelineSpec *)v3 setKeyPageSize:?];

  [v21 scrubberRegularAssetPadding];
  [(PXStoryPagedTimelineSpec *)v3 setRegularInterpageSpacing:?];
  [v21 scrubberRegularAssetSize];
  [(PXStoryPagedTimelineSpec *)v3 setRegularPageSize:?];
  [(PXStoryPagedTimelineSpec *)v3 setDisplayOneAssetPerPage:1];
  v5 = +[PXStorySettings sharedInstance];
  v6 = [v5 scrubberLayoutStretchesSmallNumberOfAssets];

  if (v6)
  {
    v7 = [(PXStoryModelTimelineLayout *)self model];
    v8 = [v7 timeline];
    v9 = [v8 numberOfSegments];

    if (v9 - 1 >= 0xB)
    {
      if (v9 - 12 >= 9)
      {
        goto LABEL_7;
      }

      [(PXStoryScrubberContentLayout *)self referenceSize];
      v15 = v14;
      v16 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
      [v16 scrubberHorizontalLayoutMargin];
      v18 = v15 + v17 * -2.0;

      [(PXStoryPagedTimelineSpec *)v3 regularInterpageSpacing];
      v13 = (v18 - v19 * (v9 - 1)) / v9;
      [(PXStoryPagedTimelineSpec *)v3 regularPageSize];
    }

    else
    {
      v10 = [(PXStoryPagedTimelineSpec *)v3 regularPageSize];
      v13 = MEMORY[0x1A590D300](v10, 1.77777778, 1.79769313e308, v11);
    }

    v20 = v12;
    [(PXStoryPagedTimelineSpec *)v3 setKeyPageSize:v13];
    [(PXStoryPagedTimelineSpec *)v3 setRegularPageSize:v13, v20];
  }

LABEL_7:
  [(PXStoryScrubberContentLayout *)self setPagedTimelineSpec:v3];
}

- (void)_invalidatePagedTimelineSpec
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidatePagedTimelineSpec]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:580 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTimelineTranslationYAnimator
{
  [(PXStoryScrubberContentLayout *)self focusHintTranslationY];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PXStoryScrubberContentLayout__updateTimelineTranslationYAnimator__block_invoke;
  aBlock[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  v5 = [(PXStoryScrubberContentLayout *)self containsFocus];
  v6 = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
  v7 = v6;
  if (v5)
  {
    [v6 performChangesWithoutAnimation:v4];
  }

  else
  {
    [v6 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v4 changes:0.0];
  }
}

- (void)_invalidateTimelineTranslationYAnimator
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateTimelineTranslationYAnimator]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:564 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTimelineTranslationXAnimator
{
  v29 = 0uLL;
  v30 = 0;
  v3 = [(PXStoryScrubberContentLayout *)self viewModel];
  v4 = v3;
  if (v3)
  {
    [v3 scrubberPosition];
  }

  else
  {
    v29 = 0uLL;
    v30 = 0;
  }

  v5 = &v29;
  if (*(&v29 + 1) > 0.5)
  {
    v5 = &v30;
  }

  if (*v5)
  {
    v6 = [PXStoryPagedTimeline alloc];
    v7 = [(PXStoryModelTimelineLayout *)self model];
    v8 = [v7 timeline];
    v9 = [(PXStoryScrubberContentLayout *)self pagedTimelineSpec];
    v27 = v29;
    v28 = v30;
    v10 = [(PXStoryPagedTimeline *)v6 initWithOriginalTimeline:v8 keyPage:&v27 spec:v9];

    [(PXStoryPagedTimeline *)v10 frameForSegmentWithIdentifier:v29];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(PXStoryPagedTimeline *)v10 frameForSegmentWithIdentifier:v30];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(PXStoryScrubberContentLayout *)self referenceSize];
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    CGRectGetMidX(v31);
    v32.origin.x = v20;
    v32.origin.y = v22;
    v32.size.width = v24;
    v32.size.height = v26;
    CGRectGetMidX(v32);
    PXFloatByLinearlyInterpolatingFloats();
  }
}

- (void)_invalidateTimelineTranslationXAnimator
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateTimelineTranslationXAnimator]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:538 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberContentLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryScrubberContentLayout;
  [(PXStoryModelTimelineLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryScrubberContentLayout.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXStoryScrubberContentLayout.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXStoryScrubberContentLayout.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryScrubberContentLayout *)self _updateTimelineTranslationXAnimator];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
        [v18 handleFailureInFunction:v19 file:@"PXStoryScrubberContentLayout.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryScrubberContentLayout *)self _updateTimelineTranslationYAnimator];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v20 handleFailureInFunction:v21 file:@"PXStoryScrubberContentLayout.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v6 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryScrubberContentLayout *)self _updateMainModel];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v22 handleFailureInFunction:v23 file:@"PXStoryScrubberContentLayout.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryScrubberContentLayout *)self _updatePagedTimelineSpec];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v24 handleFailureInFunction:v25 file:@"PXStoryScrubberContentLayout.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v8 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryScrubberContentLayout *)self _updateBackground];
      v8 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v8)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v26 handleFailureInFunction:v27 file:@"PXStoryScrubberContentLayout.m" lineNumber:507 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v42.receiver = self;
  v42.super_class = PXStoryScrubberContentLayout;
  [(PXStoryModelTimelineLayout *)&v42 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v10 = self->_postUpdateFlags.needsUpdate;
  if (v10)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v28 handleFailureInFunction:v29 file:@"PXStoryScrubberContentLayout.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v10 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1024;
    if ((v10 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryScrubberContentLayout *)self _updateAXSpriteIndexes];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
        [v30 handleFailureInFunction:v31 file:@"PXStoryScrubberContentLayout.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v11 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800uLL;
    if ((v11 & 0x800) != 0)
    {
      p_postUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXStoryScrubberContentLayout *)self _updateCursors];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v32 handleFailureInFunction:v33 file:@"PXStoryScrubberContentLayout.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v12 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x1000uLL;
    if ((v12 & 0x1000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFEFFFLL;
      [(PXStoryScrubberContentLayout *)self _updateContentSize];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v34 handleFailureInFunction:v35 file:@"PXStoryScrubberContentLayout.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v13 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x2000uLL;
    if ((v13 & 0x2000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v13 & 0xFFFFFFFFFFFFDFFFLL;
      [(PXStoryScrubberContentLayout *)self _updateHostingSpritesLayout];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v36 handleFailureInFunction:v37 file:@"PXStoryScrubberContentLayout.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v14 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x4000uLL;
    if ((v14 & 0x4000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFFBFFFLL;
      [(PXStoryScrubberContentLayout *)self _updateHostingSpritesFocus];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v38 handleFailureInFunction:v39 file:@"PXStoryScrubberContentLayout.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v15 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x8000uLL;
    if ((v15 & 0x8000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFF7FFFLL;
      [(PXStoryScrubberContentLayout *)self _updateScrollViewProperties];
      v15 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v15)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [v40 handleFailureInFunction:v41 file:@"PXStoryScrubberContentLayout.m" lineNumber:528 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryScrubberContentLayout;
  [(PXStoryModelTimelineLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryScrubberContentLayout.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXStoryScrubberContentLayout.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (id)preferredFocusSpriteIndexes
{
  if (![(PXStoryScrubberContentLayout *)self _currentFocusMode]&& self->_wholeScrubberFocusSpriteIndex != -1)
  {
    v8 = objc_alloc(MEMORY[0x1E696AC90]);
    wholeScrubberFocusSpriteIndex = self->_wholeScrubberFocusSpriteIndex;
    goto LABEL_8;
  }

  v3 = [(PXStoryScrubberContentLayout *)self viewModel];
  v4 = [v3 mainModel];
  v5 = [v4 currentSegmentIdentifier];

  v6 = [(PXStoryScrubberContentLayout *)self _hostingSpriteIndexForSegmentIdentifier:v5];
  if (v6 != -1)
  {
    v7 = v6;
    v8 = objc_alloc(MEMORY[0x1E696AC90]);
    wholeScrubberFocusSpriteIndex = v7;
LABEL_8:
    v13 = [v8 initWithIndex:wholeScrubberFocusSpriteIndex];
    goto LABEL_9;
  }

  v10 = [(PXStoryModelTimelineLayout *)self model];
  v11 = [v10 timeline];
  v12 = -[PXStoryScrubberContentLayout _hostingSpriteIndexForSegmentIdentifier:](self, "_hostingSpriteIndexForSegmentIdentifier:", [v11 firstSegmentIdentifier]);

  if (v12 != -1)
  {
    v8 = objc_alloc(MEMORY[0x1E696AC90]);
    wholeScrubberFocusSpriteIndex = v12;
    goto LABEL_8;
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AC90]);
LABEL_9:

  return v13;
}

- (int64_t)_segmentIdentifierForHostingSpriteIndex:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  segmentIdentifiersToHostingSpriteIndexes = self->_segmentIdentifiersToHostingSpriteIndexes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PXStoryScrubberContentLayout__segmentIdentifierForHostingSpriteIndex___block_invoke;
  v6[3] = &unk_1E77369B8;
  v7 = a3;
  v6[4] = &v8;
  [(NSMutableDictionary *)segmentIdentifiersToHostingSpriteIndexes enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __72__PXStoryScrubberContentLayout__segmentIdentifierForHostingSpriteIndex___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 unsignedIntValue] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntValue];
    *a4 = 1;
  }
}

- (unsigned)_hostingSpriteIndexForSegmentIdentifier:(int64_t)a3
{
  segmentIdentifiersToHostingSpriteIndexes = self->_segmentIdentifiersToHostingSpriteIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)segmentIdentifiersToHostingSpriteIndexes objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)preferredFocusLayouts
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (int64_t)_currentFocusMode
{
  v4 = [(PXStoryModelTimelineLayout *)self model];
  v5 = [v4 desiredPlayState];

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:431 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (double)_displayedContentWidth
{
  v2 = [(PXStoryTimelineLayout *)self displayedTimeline];
  [v2 frameForSegmentWithIdentifier:{objc_msgSend(v2, "firstSegmentIdentifier")}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 frameForSegmentWithIdentifier:{objc_msgSend(v2, "lastSegmentIdentifier")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v12;
  v30.origin.y = v14;
  v30.size.width = v16;
  v30.size.height = v18;
  v19 = CGRectGetMidX(v30);
  v20 = MidX <= v19;
  if (MidX <= v19)
  {
    v21 = v12;
  }

  else
  {
    v21 = v4;
  }

  if (v20)
  {
    v22 = v14;
  }

  else
  {
    v22 = v6;
  }

  if (v20)
  {
    v23 = v16;
  }

  else
  {
    v23 = v8;
  }

  if (v20)
  {
    v24 = v18;
  }

  else
  {
    v24 = v10;
  }

  if (!v20)
  {
    v4 = v12;
    v6 = v14;
    v8 = v16;
    v10 = v18;
  }

  MaxX = CGRectGetMaxX(*&v21);
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v26 = MaxX - CGRectGetMinX(v31);

  return v26;
}

- (void)setContainsFocus:(BOOL)a3
{
  if (self->_containsFocus != a3)
  {
    self->_containsFocus = a3;
    [(PXStoryScrubberContentLayout *)self _invalidateTimelineTranslationYAnimator];
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mainModel != v5)
  {
    v8 = v5;
    v7 = [(PXStoryModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_87723];
      objc_storeStrong(&self->_mainModel, a3);
      [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_87723];
      [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
      [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
      [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
      v6 = v8;
    }
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v21.receiver = self;
  v21.super_class = PXStoryScrubberContentLayout;
  v6 = [(PXStoryScrubberContentLayout *)&v21 hitTestResultForSpriteIndex:?];
  v7 = [v6 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 layout];
    v10 = v9;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    if (v9)
    {
      [v9 clipTimeRange];
    }

    v11 = [(PXFeedHitTestResult *)[PXStoryHitTestResult alloc] initWithSpriteIndex:v3 layout:self];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke;
    v14[3] = &unk_1E7736990;
    v15 = v18;
    v16 = v19;
    v17 = v20;
    v14[4] = self;
    v14[5] = a2;
    v12 = [(PXFeedHitTestResult *)v11 primaryAction:v14];

    v6 = v12;
  }

  return v6;
}

uint64_t __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v2 = [*(a1 + 32) displayedTimeline];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v3 = *(a1 + 64);
  v13 = *(a1 + 48);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v14 = v3;
  v15 = *(a1 + 80);
  v12[2] = __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke_2;
  v12[3] = &unk_1E7736940;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12[5] = v16;
  v12[6] = v6;
  v12[4] = v7;
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = *(a1 + 80);
  [v2 enumerateSegmentsInTimeRange:v11 usingBlock:v12];

  v8 = [*(a1 + 32) model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke_219;
  v10[3] = &unk_1E7736968;
  v10[4] = *(a1 + 32);
  v10[5] = v16;
  [v8 performChanges:v10];

  _Block_object_dispose(v16, 8);
  return 1;
}

uint64_t __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (a2 != 1)
  {
    PXAssertGetLog();
  }

  *(*(*(result + 40) + 8) + 24) = *a4;
  *a5 = 1;
  return result;
}

void __60__PXStoryScrubberContentLayout_hitTestResultForSpriteIndex___block_invoke_219(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) viewModel];
  v4 = [v3 mainModel];
  v5 = [v4 currentSegmentIdentifier];

  if (v5 != *(*(*(a1 + 40) + 8) + 24))
  {
    [v8 skipToBeginningOfSegmentWithIdentifier:?];
  }

  v6 = +[PXStorySettings sharedInstance];
  v7 = [v6 scrubberSelectionStartsPlayback];

  if (v7)
  {
    [v8 setDesiredPlayState:1];
  }
}

- (void)_fadeClipLayoutIfNeeded:(id)a3 layoutFrame:(CGRect)a4
{
  v10 = a3;
  v5 = +[PXStorySettings sharedInstance];
  v6 = [v5 scrubberEdgeFadeMode];
  v7 = [(PXStoryScrubberContentLayout *)self viewModel];
  v8 = [v7 viewLayoutSpec];
  [v8 scrubberFadeAreaInsets];

  if (v6 != 1)
  {
    [(PXStoryScrubberContentLayout *)self alpha];
    if (v9 != 0.0)
    {
      PXEdgeInsetsIsZero();
    }
  }
}

- (CGRect)_frameForSegmentWithIdentifier:(int64_t)a3
{
  v4 = [(PXStoryTimelineLayout *)self displayedTimeline];
  [v4 frameForSegmentWithIdentifier:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)didUpdateTimelineContent
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberContentLayout;
  [(PXStoryTimelineLayout *)&v3 didUpdateTimelineContent];
  [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
}

- (void)handleModelChange:(unint64_t)a3
{
  if ((a3 & 0x10) != 0)
  {
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
  }
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberContentLayout;
  [(PXStoryTimelineLayout *)&v3 alphaDidChange];
  [(PXStoryScrubberContentLayout *)self _invalidateCursors];
  [(PXStoryScrubberContentLayout *)self _invalidateBackground];
  [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberContentLayout;
  [(PXGCompositeLayout *)&v3 visibleRectDidChange];
  [(PXStoryModelTimelineLayout *)self invalidateDisplayedRect];
}

- (void)updateDisplayedTimeRange
{
  v3 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v4 = v3;
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [(PXStoryTimelineLayout *)self setDisplayedTimeRange:v5];
}

- (void)updateDisplayedTimeline
{
  v3 = [(PXStoryModelTimelineLayout *)self model];
  v4 = [v3 timeline];

  v36 = 0uLL;
  v37 = 0.0;
  v5 = [(PXStoryScrubberContentLayout *)self viewModel];
  v6 = v5;
  if (v5)
  {
    [v5 scrubberPosition];
  }

  else
  {
    v36 = 0uLL;
    v37 = 0.0;
  }

  v7 = [PXStoryPagedTimeline alloc];
  v8 = [(PXStoryScrubberContentLayout *)self pagedTimelineSpec];
  *&v35.a = v36;
  v35.c = v37;
  v9 = [(PXStoryPagedTimeline *)v7 initWithOriginalTimeline:v4 keyPage:&v35 spec:v8];

  v10 = [(PXStoryScrubberContentLayout *)self timelineTranslationXAnimator];
  [v10 presentationValue];
  v12 = v11;

  v13 = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
  [v13 presentationValue];
  v15 = v14;

  [(PXStoryPagedTimeline *)v9 frameForSegmentWithIdentifier:[(PXStoryBaseTimeline *)v9 firstSegmentIdentifier]];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(PXStoryPagedTimeline *)v9 frameForSegmentWithIdentifier:[(PXStoryBaseTimeline *)v9 lastSegmentIdentifier]];
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = v17;
  v39.origin.y = v19;
  v39.size.width = v21;
  v39.size.height = v23;
  MinX = CGRectGetMinX(v39);
  v26 = +[PXStorySettings sharedInstance];
  LODWORD(v8) = [v26 scrubberLayoutStretchesSmallNumberOfAssets];

  if (v8)
  {
    v27 = MaxX - MinX;
    v28 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
    [v28 scrubberHorizontalLayoutMargin];
    v12 = v29;

    [(PXStoryScrubberContentLayout *)self referenceSize];
    v31 = v30 + v12 * -2.0;
    if (v27 <= v31)
    {
      v12 = v12 + (v31 - v27) * 0.5;
    }
  }

  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, v12, v15);
  v32 = [PXStoryTransformedTimeline alloc];
  v34 = v35;
  v33 = [(PXStoryTransformedTimeline *)v32 initWithOriginalTimeline:v9 transform:&v34];
  [(PXStoryTimelineLayout *)self setDisplayedTimeline:v33];

  [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeRange];
  [(PXStoryScrubberContentLayout *)self _invalidateCursors];
  [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
  [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
  [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
  [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
}

- (void)didUpdateClipLayout:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10.receiver = self;
  v10.super_class = PXStoryScrubberContentLayout;
  v9 = a3;
  [(PXStoryTimelineLayout *)&v10 didUpdateClipLayout:v9 frame:x, y, width, height];
  [(PXStoryScrubberContentLayout *)self _fadeClipLayoutIfNeeded:v9 layoutFrame:x, y, width, height, v10.receiver, v10.super_class];
}

- (void)updateClipsCornerRadius
{
  v7 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
  [v7 scrubberAssetCornerRadius];
  *&v3 = v3;
  LODWORD(v4) = LODWORD(v3);
  LODWORD(v5) = LODWORD(v3);
  LODWORD(v6) = LODWORD(v3);
  [(PXStoryTimelineLayout *)self setClipsCornerRadius:v3, v4, v5, v6];
}

- (void)configureClipLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXStoryScrubberContentLayout;
  [(PXStoryModelTimelineLayout *)&v8 configureClipLayout:v4];
  [v4 setCanShowDynamicContent:0];
  [v4 setCanShowTextLegibilityEffect:0];
  [v4 setContentPrefersPresentationTypeView:0];
  v5 = +[PXStorySettings sharedInstance];
  v6 = [v5 enableScrubberColorNormalization];
  v7 = 0;
  if (v6)
  {
    v7 = [v5 colorNormalizationMode] != 0;
  }

  [v4 setCanShowColorNormalizedContent:v7];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberContentLayout;
  [(PXStoryTimelineLayout *)&v3 referenceDepthDidChange];
  [(PXStoryScrubberContentLayout *)self _invalidateCursors];
  [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberContentLayout;
  [(PXStoryTimelineLayout *)&v3 referenceSizeDidChange];
  [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
  [(PXStoryModelTimelineLayout *)self invalidateDisplayedRect];
  [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
}

- (PXStoryScrubberContentLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = [v5 mainModel];
  v22.receiver = self;
  v22.super_class = PXStoryScrubberContentLayout;
  v7 = [(PXStoryModelTimelineLayout *)&v22 initWithModel:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, a3);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_87722];
    v8 = +[PXStorySettings sharedInstance];
    v9 = [v8 scrubberLayoutStretchesSmallNumberOfAssets];

    v10 = -1;
    if (v9)
    {
      v10 = [(PXStoryScrubberContentLayout *)v7 addSpriteWithInitialState:0];
    }

    v7->_backgroundSpriteIndex = v10;
    v7->_currentSegmentCursorSpriteIndex = [(PXStoryScrubberContentLayout *)v7 addSpriteWithInitialState:0];
    v7->_currentTimeCursorSpriteIndex = [(PXStoryScrubberContentLayout *)v7 addSpriteWithInitialState:0];
    v7->_scrollPositionCursorSpriteIndex = [(PXStoryScrubberContentLayout *)v7 addSpriteWithInitialState:0];
    v7->_wholeScrubberFocusSpriteIndex = -1;
    [(PXStoryScrubberContentLayout *)v7 setContentSource:v7];
    v11 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:1];
    supportedResourceKindsForClipLayouts = v7->_supportedResourceKindsForClipLayouts;
    v7->_supportedResourceKindsForClipLayouts = v11;

    v13 = [[off_1E77217D0 alloc] initWithValue:0.0];
    timelineTranslationXAnimator = v7->_timelineTranslationXAnimator;
    v7->_timelineTranslationXAnimator = v13;

    [(PXNumberAnimator *)v7->_timelineTranslationXAnimator registerChangeObserver:v7 context:TimelineTranslationXAnimatorObservationContext];
    [(PXStoryScrubberContentLayout *)v7 _invalidateTimelineTranslationXAnimator];
    v15 = [[off_1E77217D0 alloc] initWithValue:0.0];
    timelineTranslationYAnimator = v7->_timelineTranslationYAnimator;
    v7->_timelineTranslationYAnimator = v15;

    [(PXNumberAnimator *)v7->_timelineTranslationYAnimator registerChangeObserver:v7 context:TimelineTranslationYAnimatorObservationContext];
    [(PXStoryScrubberContentLayout *)v7 _invalidateTimelineTranslationYAnimator];
    [(PXStoryScrubberContentLayout *)v7 _invalidatePagedTimelineSpec];
    [(PXStoryScrubberContentLayout *)v7 _invalidateMainModel];
    [(PXStoryScrubberContentLayout *)v7 _invalidateBackground];
    [(PXStoryScrubberContentLayout *)v7 _invalidateContentSize];
    v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
    axSpriteIndexes = v7->_axSpriteIndexes;
    v7->_axSpriteIndexes = v17;

    [(PXStoryScrubberContentLayout *)v7 _invalidateAXSpriteIndexes];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    segmentIdentifiersToHostingSpriteIndexes = v7->_segmentIdentifiersToHostingSpriteIndexes;
    v7->_segmentIdentifiersToHostingSpriteIndexes = v19;

    v7->_hostingSpritesIndexRange = [(PXStoryScrubberContentLayout *)v7 localNumberOfSprites];
    [(PXStoryScrubberContentLayout *)v7 _invalidateHostingSpritesLayout];
    [(PXStoryScrubberContentLayout *)v7 _invalidateScrollViewProperties];
  }

  return v7;
}

- (PXStoryScrubberContentLayout)initWithModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:130 description:{@"%s is not available as initializer", "-[PXStoryScrubberContentLayout initWithModel:]"}];

  abort();
}

@end