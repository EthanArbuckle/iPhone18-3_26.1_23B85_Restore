@interface PXStoryScrubberContentLayout
- (BOOL)_handleScrollTimeline:(id)timeline inGroup:(id)group;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (CGRect)_frameForSegmentWithIdentifier:(int64_t)identifier;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXGAXResponder)axNextResponder;
- (PXStoryScrubberContentLayout)initWithModel:(id)model;
- (PXStoryScrubberContentLayout)initWithViewModel:(id)model;
- (double)_displayedContentWidth;
- (id)_assetFetchResultForTimelineIndex:(int64_t)index;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)axSpriteIndexes;
- (id)axVisibleSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)mainLayoutSpec;
- (id)preferredFocusLayouts;
- (id)preferredFocusSpriteIndexes;
- (id)viewLayoutSpec;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)_axScrubberFractionNumerator;
- (int64_t)_currentFocusMode;
- (int64_t)_segmentIdentifierForHostingSpriteIndex:(unsigned int)index;
- (unint64_t)_axScrubberFractionDenominator;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index;
- (unsigned)_hostingSpriteIndexForSegmentIdentifier:(int64_t)identifier;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction;
- (void)_fadeClipLayoutIfNeeded:(id)needed layoutFrame:(CGRect)frame;
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
- (void)axDidUpdateFocusInContext:(id)context;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)configureClipLayout:(id)layout;
- (void)didUpdate;
- (void)didUpdateClipLayout:(id)layout frame:(CGRect)frame;
- (void)didUpdateTimelineContent;
- (void)focusableView:(id)view didHintFocusMovement:(id)movement;
- (void)focusableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)focusableViewDidUpdateUserInfo:(id)info;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setContainsFocus:(BOOL)focus;
- (void)setMainModel:(id)model;
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

- (BOOL)_handleScrollTimeline:(id)timeline inGroup:(id)group
{
  [timeline axFrame];
  if (v5 >= 0.0)
  {
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = -1;
  }

  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PXStoryScrubberContentLayout__handleScrollTimeline_inGroup___block_invoke;
  v10[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
  v10[4] = v6;
  [mainModel performChanges:v10];

  return 1;
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  PXGAXGetElementForUserInfo();
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXStoryScrubberContentLayout *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  groupCopy = group;
  axNextResponder = [(PXStoryScrubberContentLayout *)self axNextResponder];
  v6 = [axNextResponder axContainingScrollViewForAXGroup:groupCopy];

  return v6;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index
{
  if (self->_wholeScrubberFocusSpriteIndex == index)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXStoryScrubberContentLayout;
  return [(PXStoryScrubberContentLayout *)&v6 axFocusabilityForSpriteAtIndex:?];
}

- (void)axDidUpdateFocusInContext:(id)context
{
  nextFocusedItem = [context nextFocusedItem];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = nextFocusedItem;
  }

  else
  {
    v5 = 0;
  }

  axContainingGroup = [v5 axContainingGroup];
  axInfoSource = [axContainingGroup axInfoSource];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = axInfoSource;
  }

  else
  {
    v8 = 0;
  }

  -[PXStoryScrubberContentLayout setContainsFocus:](self, "setContainsFocus:", [v8 isDescendantOfLayout:self]);
}

- (unint64_t)_axScrubberFractionDenominator
{
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  timeline = [mainModel timeline];
  lastSegmentIdentifier = [timeline lastSegmentIdentifier];

  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  v8 = [displayedTimeline indexOfSegmentWithIdentifier:lastSegmentIdentifier];

  return v8 + 1;
}

- (int64_t)_axScrubberFractionNumerator
{
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  currentSegmentIdentifier = [mainModel currentSegmentIdentifier];

  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  v7 = [displayedTimeline indexOfSegmentWithIdentifier:currentSegmentIdentifier];

  return v7 + 1;
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction
{
  if (direction - 4 < 2)
  {
    axSpriteIndexes = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
    v6 = [axSpriteIndexes indexGreaterThanIndex:index];
  }

  else
  {
    if (direction != 6 && direction != 3)
    {
      return -1;
    }

    axSpriteIndexes = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
    v6 = [axSpriteIndexes indexLessThanIndex:index];
  }

  v7 = v6;

  return v7;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  hostingSpritesIndexRange = self->_hostingSpritesIndexRange;
  v7 = hostingSpritesIndexRange.location > index;
  v6 = hostingSpritesIndexRange.length + hostingSpritesIndexRange.location;
  v7 = !v7 && v6 > index;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = PXStoryScrubberContentLayout;
    [(PXStoryScrubberContentLayout *)&v13 axContentInfoAtSpriteIndex:*&index];
  }

  else
  {
    if (self->_wholeScrubberFocusSpriteIndex != index)
    {
      sharedPool = [off_1E7721690 sharedPool];
      v9 = [sharedPool checkOutReusableObjectWithReuseIdentifier:*off_1E7721FD0];

      [v9 setSpriteIndex:v3];
      [(PXStoryScrubberContentLayout *)self referenceSize];
      PXRectWithOriginAndSize();
    }

    v12.receiver = self;
    v12.super_class = PXStoryScrubberContentLayout;
    [(PXStoryScrubberContentLayout *)&v12 axContentInfoAtSpriteIndex:*&index];
  }
  v10 = ;

  return v10;
}

- (id)_assetFetchResultForTimelineIndex:(int64_t)index
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__87719;
  v26 = __Block_byref_object_dispose__87720;
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  displayedTimeline2 = [(PXStoryTimelineLayout *)self displayedTimeline];
  v7 = displayedTimeline2;
  if (displayedTimeline2)
  {
    [displayedTimeline2 timeRangeForSegmentWithIdentifier:index];
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
  axSpriteIndexes = [(PXStoryScrubberContentLayout *)self axSpriteIndexes];
  v3 = [axSpriteIndexes mutableCopy];

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_87722 != context)
  {
    if (MainModelObservationContext_87723 != context)
    {
      if (TimelineTranslationXAnimatorObservationContext == context)
      {
        if ((change & 2) != 0)
        {
          [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
        }
      }

      else if (TimelineTranslationYAnimatorObservationContext == context)
      {
        if ((change & 2) != 0)
        {
          [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
          [(PXStoryScrubberContentLayout *)self _invalidateBackground];
        }
      }

      else
      {
        v9.receiver = self;
        v9.super_class = PXStoryScrubberContentLayout;
        [(PXStoryModelTimelineLayout *)&v9 observable:observableCopy didChange:change context:context];
      }

      goto LABEL_31;
    }

    if ((change & 0x2000) != 0)
    {
      [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
      [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
      if ((change & 0x10) == 0)
      {
LABEL_20:
        if ((change & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    else if ((change & 0x10) == 0)
    {
      goto LABEL_20;
    }

    [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
    if ((change & 0x20) == 0)
    {
LABEL_21:
      if ((change & 2) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
    if ((change & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_28:
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
    [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesFocus];
    goto LABEL_31;
  }

  if ((change & 0x44020) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateTimelineTranslationXAnimator];
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
    [(PXStoryScrubberContentLayout *)self _invalidateBackground];
    [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
  }

  if ((change & 0x20) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
    [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
  }

  if ((change & 0x1000404) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateCursors];
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
  }

  if ((change & 0x1004020) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
    [(PXStoryScrubberContentLayout *)self _invalidateScrollViewProperties];
  }

  if ((change & 0x2000) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateAXSpriteIndexes];
  }

  if ((change & 0x40) != 0)
  {
    [(PXStoryScrubberContentLayout *)self _invalidateMainModel];
  }

LABEL_31:
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:1069 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:1014 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_currentSegmentCursorSpriteIndex == index)
  {
    greenColor = [MEMORY[0x1E69DC888] greenColor];
  }

  else if (self->_currentTimeCursorSpriteIndex == index)
  {
    greenColor = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    if (self->_scrollPositionCursorSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:997 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    greenColor = [MEMORY[0x1E69DC888] blueColor];
  }

  v9 = greenColor;
  v10 = [greenColor colorWithAlphaComponent:0.25];

  return v10;
}

- (void)focusableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = nextFocusedItem;

    if (v7)
    {
      userData = [v7 userData];
      segmentIdentifier = [userData segmentIdentifier];

      viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
      mainModel = [viewModel mainModel];
      currentSegmentIdentifier = [mainModel currentSegmentIdentifier];

      if (segmentIdentifier)
      {
        if (segmentIdentifier != currentSegmentIdentifier)
        {
          model = [(PXStoryModelTimelineLayout *)self model];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __95__PXStoryScrubberContentLayout_focusableView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
          v14[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
          v14[4] = segmentIdentifier;
          [model performChanges:v14];
        }
      }
    }
  }

  else
  {

    v7 = 0;
  }
}

- (void)focusableView:(id)view didHintFocusMovement:(id)movement
{
  [movement movementDirection];

  [(PXStoryScrubberContentLayout *)self setFocusHintTranslationY:v5 * 12.0];
}

- (void)focusableViewDidUpdateUserInfo:(id)info
{
  if (self->_isWaitingForFocusableViewUserDataUpdate)
  {
    self->_isWaitingForFocusableViewUserDataUpdate = 0;
    [(PXStoryScrubberContentLayout *)self setNeedsFocusUpdate];
  }
}

- (id)mainLayoutSpec
{
  mainModel = [(PXStoryScrubberContentLayout *)self mainModel];
  layoutSpec = [mainModel layoutSpec];

  return layoutSpec;
}

- (id)viewLayoutSpec
{
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  return viewLayoutSpec;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateScrollViewProperties]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:847 description:{@"invalidating %lu after it already has been updated", 0x8000}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateHostingSpritesLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:780 description:{@"invalidating %lu after it already has been updated", 0x2000}];

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
    localNumberOfSprites = [(PXStoryScrubberContentLayout *)self localNumberOfSprites];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__PXStoryScrubberContentLayout__updateHostingSpritesFocus__block_invoke;
    v6[3] = &unk_1E77369E0;
    v6[4] = self;
    [(PXStoryScrubberContentLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v6];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateHostingSpritesFocus]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:762 description:{@"invalidating %lu after it already has been updated", 0x4000}];

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
  scrubberLayoutStretchesSmallNumberOfAssets = [v3 scrubberLayoutStretchesSmallNumberOfAssets];

  if (scrubberLayoutStretchesSmallNumberOfAssets)
  {
    [(PXStoryScrubberContentLayout *)self _displayedContentWidth];
    v6 = v5;
    viewLayoutSpec = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
    [viewLayoutSpec scrubberHorizontalLayoutMargin];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateContentSize]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:748 description:{@"invalidating %lu after it already has been updated", 4096}];

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
  scrubberLayoutStretchesSmallNumberOfAssets = [v3 scrubberLayoutStretchesSmallNumberOfAssets];

  if (scrubberLayoutStretchesSmallNumberOfAssets)
  {
    model = [(PXStoryModelTimelineLayout *)self model];
    timeline = [model timeline];
    [timeline numberOfSegments];

    timelineTranslationYAnimator = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
    [timelineTranslationYAnimator presentationValue];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateBackground]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:713 description:{@"invalidating %lu after it already has been updated", 32}];

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
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  if ([viewModel wantsScrubberVisible])
  {
    viewModel2 = [(PXStoryScrubberContentLayout *)self viewModel];
    v5 = [viewModel2 viewMode] == 1;
  }

  else
  {
    v5 = 0;
  }

  viewModel3 = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel3 mainModel];

  timeline = [mainModel timeline];
  currentSegmentIdentifier = [mainModel currentSegmentIdentifier];
  lastSegmentIdentifier = [timeline lastSegmentIdentifier];
  firstSegmentIdentifier = [timeline firstSegmentIdentifier];
  v12 = currentSegmentIdentifier != lastSegmentIdentifier && v5;
  v13 = currentSegmentIdentifier != firstSegmentIdentifier && v5;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateAXSpriteIndexes]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:682 description:{@"invalidating %lu after it already has been updated", 1024}];

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
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryScrubberContentLayout *)self setMainModel:mainModel];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateMainModel]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:674 description:{@"invalidating %lu after it already has been updated", 16}];

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
  localNumberOfSprites = [(PXStoryScrubberContentLayout *)self localNumberOfSprites];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PXStoryScrubberContentLayout__updateCursors__block_invoke;
  v4[3] = &unk_1E77369E0;
  v4[4] = self;
  [(PXStoryScrubberContentLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v4];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateCursors]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:618 description:{@"invalidating %lu after it already has been updated", 2048}];

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
  viewLayoutSpec = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
  v3 = objc_alloc_init(PXStoryPagedTimelineSpec);
  [viewLayoutSpec scrubberCurrentAssetPadding];
  [(PXStoryPagedTimelineSpec *)v3 setKeyInterpageSpacing:?];
  mainLayoutSpec = [(PXStoryScrubberContentLayout *)self mainLayoutSpec];
  [mainLayoutSpec scrubberCurrentAssetSize];
  [(PXStoryPagedTimelineSpec *)v3 setKeyPageSize:?];

  [viewLayoutSpec scrubberRegularAssetPadding];
  [(PXStoryPagedTimelineSpec *)v3 setRegularInterpageSpacing:?];
  [viewLayoutSpec scrubberRegularAssetSize];
  [(PXStoryPagedTimelineSpec *)v3 setRegularPageSize:?];
  [(PXStoryPagedTimelineSpec *)v3 setDisplayOneAssetPerPage:1];
  v5 = +[PXStorySettings sharedInstance];
  scrubberLayoutStretchesSmallNumberOfAssets = [v5 scrubberLayoutStretchesSmallNumberOfAssets];

  if (scrubberLayoutStretchesSmallNumberOfAssets)
  {
    model = [(PXStoryModelTimelineLayout *)self model];
    timeline = [model timeline];
    numberOfSegments = [timeline numberOfSegments];

    if (numberOfSegments - 1 >= 0xB)
    {
      if (numberOfSegments - 12 >= 9)
      {
        goto LABEL_7;
      }

      [(PXStoryScrubberContentLayout *)self referenceSize];
      v15 = v14;
      viewLayoutSpec2 = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
      [viewLayoutSpec2 scrubberHorizontalLayoutMargin];
      v18 = v15 + v17 * -2.0;

      [(PXStoryPagedTimelineSpec *)v3 regularInterpageSpacing];
      v13 = (v18 - v19 * (numberOfSegments - 1)) / numberOfSegments;
      [(PXStoryPagedTimelineSpec *)v3 regularPageSize];
    }

    else
    {
      regularPageSize = [(PXStoryPagedTimelineSpec *)v3 regularPageSize];
      v13 = MEMORY[0x1A590D300](regularPageSize, 1.77777778, 1.79769313e308, v11);
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidatePagedTimelineSpec]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:580 description:{@"invalidating %lu after it already has been updated", 8}];

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
  containsFocus = [(PXStoryScrubberContentLayout *)self containsFocus];
  timelineTranslationYAnimator = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
  v7 = timelineTranslationYAnimator;
  if (containsFocus)
  {
    [timelineTranslationYAnimator performChangesWithoutAnimation:v4];
  }

  else
  {
    [timelineTranslationYAnimator performChangesUsingDefaultSpringAnimationWithInitialVelocity:v4 changes:0.0];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateTimelineTranslationYAnimator]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:564 description:{@"invalidating %lu after it already has been updated", 2}];

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
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  v4 = viewModel;
  if (viewModel)
  {
    [viewModel scrubberPosition];
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
    model = [(PXStoryModelTimelineLayout *)self model];
    timeline = [model timeline];
    pagedTimelineSpec = [(PXStoryScrubberContentLayout *)self pagedTimelineSpec];
    v27 = v29;
    v28 = v30;
    v10 = [(PXStoryPagedTimeline *)v6 initWithOriginalTimeline:timeline keyPage:&v27 spec:pagedTimelineSpec];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout _invalidateTimelineTranslationXAnimator]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberContentLayout.m" lineNumber:538 description:{@"invalidating %lu after it already has been updated", 1}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberContentLayout.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryScrubberContentLayout.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler handleFailureInFunction:v17 file:@"PXStoryScrubberContentLayout.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
        [currentHandler2 handleFailureInFunction:v19 file:@"PXStoryScrubberContentLayout.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler3 handleFailureInFunction:v21 file:@"PXStoryScrubberContentLayout.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler4 handleFailureInFunction:v23 file:@"PXStoryScrubberContentLayout.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler5 handleFailureInFunction:v25 file:@"PXStoryScrubberContentLayout.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler6 handleFailureInFunction:v27 file:@"PXStoryScrubberContentLayout.m" lineNumber:507 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler7 handleFailureInFunction:v29 file:@"PXStoryScrubberContentLayout.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

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
        currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
        [currentHandler8 handleFailureInFunction:v31 file:@"PXStoryScrubberContentLayout.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler9 handleFailureInFunction:v33 file:@"PXStoryScrubberContentLayout.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler10 handleFailureInFunction:v35 file:@"PXStoryScrubberContentLayout.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler11 handleFailureInFunction:v37 file:@"PXStoryScrubberContentLayout.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler12 handleFailureInFunction:v39 file:@"PXStoryScrubberContentLayout.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout update]"];
      [currentHandler13 handleFailureInFunction:v41 file:@"PXStoryScrubberContentLayout.m" lineNumber:528 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberContentLayout.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberContentLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryScrubberContentLayout.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
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

  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  currentSegmentIdentifier = [mainModel currentSegmentIdentifier];

  v6 = [(PXStoryScrubberContentLayout *)self _hostingSpriteIndexForSegmentIdentifier:currentSegmentIdentifier];
  if (v6 != -1)
  {
    v7 = v6;
    v8 = objc_alloc(MEMORY[0x1E696AC90]);
    wholeScrubberFocusSpriteIndex = v7;
LABEL_8:
    v13 = [v8 initWithIndex:wholeScrubberFocusSpriteIndex];
    goto LABEL_9;
  }

  model = [(PXStoryModelTimelineLayout *)self model];
  timeline = [model timeline];
  v12 = -[PXStoryScrubberContentLayout _hostingSpriteIndexForSegmentIdentifier:](self, "_hostingSpriteIndexForSegmentIdentifier:", [timeline firstSegmentIdentifier]);

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

- (int64_t)_segmentIdentifierForHostingSpriteIndex:(unsigned int)index
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
  indexCopy = index;
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

- (unsigned)_hostingSpriteIndexForSegmentIdentifier:(int64_t)identifier
{
  segmentIdentifiersToHostingSpriteIndexes = self->_segmentIdentifiersToHostingSpriteIndexes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v5 = [(NSMutableDictionary *)segmentIdentifiersToHostingSpriteIndexes objectForKeyedSubscript:v4];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
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
  model = [(PXStoryModelTimelineLayout *)self model];
  desiredPlayState = [model desiredPlayState];

  if (!desiredPlayState)
  {
    return 1;
  }

  if (desiredPlayState != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:431 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (double)_displayedContentWidth
{
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  [displayedTimeline frameForSegmentWithIdentifier:{objc_msgSend(displayedTimeline, "firstSegmentIdentifier")}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [displayedTimeline frameForSegmentWithIdentifier:{objc_msgSend(displayedTimeline, "lastSegmentIdentifier")}];
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

- (void)setContainsFocus:(BOOL)focus
{
  if (self->_containsFocus != focus)
  {
    self->_containsFocus = focus;
    [(PXStoryScrubberContentLayout *)self _invalidateTimelineTranslationYAnimator];
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_mainModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(PXStoryModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_87723];
      objc_storeStrong(&self->_mainModel, model);
      [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_87723];
      [(PXStoryScrubberContentLayout *)self _invalidatePagedTimelineSpec];
      [(PXStoryScrubberContentLayout *)self _invalidateContentSize];
      [(PXStoryScrubberContentLayout *)self _invalidateHostingSpritesLayout];
      v6 = v8;
    }
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v21.receiver = self;
  v21.super_class = PXStoryScrubberContentLayout;
  v6 = [(PXStoryScrubberContentLayout *)&v21 hitTestResultForSpriteIndex:?];
  layout = [v6 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    layout2 = [v6 layout];
    v10 = layout2;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    if (layout2)
    {
      [layout2 clipTimeRange];
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

- (void)_fadeClipLayoutIfNeeded:(id)needed layoutFrame:(CGRect)frame
{
  neededCopy = needed;
  v5 = +[PXStorySettings sharedInstance];
  scrubberEdgeFadeMode = [v5 scrubberEdgeFadeMode];
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  [viewLayoutSpec scrubberFadeAreaInsets];

  if (scrubberEdgeFadeMode != 1)
  {
    [(PXStoryScrubberContentLayout *)self alpha];
    if (v9 != 0.0)
    {
      PXEdgeInsetsIsZero();
    }
  }
}

- (CGRect)_frameForSegmentWithIdentifier:(int64_t)identifier
{
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  [displayedTimeline frameForSegmentWithIdentifier:identifier];
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

- (void)handleModelChange:(unint64_t)change
{
  if ((change & 0x10) != 0)
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
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  v4 = displayedTimeline;
  if (displayedTimeline)
  {
    [displayedTimeline timeRange];
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
  model = [(PXStoryModelTimelineLayout *)self model];
  timeline = [model timeline];

  v36 = 0uLL;
  v37 = 0.0;
  viewModel = [(PXStoryScrubberContentLayout *)self viewModel];
  v6 = viewModel;
  if (viewModel)
  {
    [viewModel scrubberPosition];
  }

  else
  {
    v36 = 0uLL;
    v37 = 0.0;
  }

  v7 = [PXStoryPagedTimeline alloc];
  pagedTimelineSpec = [(PXStoryScrubberContentLayout *)self pagedTimelineSpec];
  *&v35.a = v36;
  v35.c = v37;
  v9 = [(PXStoryPagedTimeline *)v7 initWithOriginalTimeline:timeline keyPage:&v35 spec:pagedTimelineSpec];

  timelineTranslationXAnimator = [(PXStoryScrubberContentLayout *)self timelineTranslationXAnimator];
  [timelineTranslationXAnimator presentationValue];
  v12 = v11;

  timelineTranslationYAnimator = [(PXStoryScrubberContentLayout *)self timelineTranslationYAnimator];
  [timelineTranslationYAnimator presentationValue];
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
  LODWORD(pagedTimelineSpec) = [v26 scrubberLayoutStretchesSmallNumberOfAssets];

  if (pagedTimelineSpec)
  {
    v27 = MaxX - MinX;
    viewLayoutSpec = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
    [viewLayoutSpec scrubberHorizontalLayoutMargin];
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

- (void)didUpdateClipLayout:(id)layout frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = PXStoryScrubberContentLayout;
  layoutCopy = layout;
  [(PXStoryTimelineLayout *)&v10 didUpdateClipLayout:layoutCopy frame:x, y, width, height];
  [(PXStoryScrubberContentLayout *)self _fadeClipLayoutIfNeeded:layoutCopy layoutFrame:x, y, width, height, v10.receiver, v10.super_class];
}

- (void)updateClipsCornerRadius
{
  viewLayoutSpec = [(PXStoryScrubberContentLayout *)self viewLayoutSpec];
  [viewLayoutSpec scrubberAssetCornerRadius];
  *&v3 = v3;
  LODWORD(v4) = LODWORD(v3);
  LODWORD(v5) = LODWORD(v3);
  LODWORD(v6) = LODWORD(v3);
  [(PXStoryTimelineLayout *)self setClipsCornerRadius:v3, v4, v5, v6];
}

- (void)configureClipLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = PXStoryScrubberContentLayout;
  [(PXStoryModelTimelineLayout *)&v8 configureClipLayout:layoutCopy];
  [layoutCopy setCanShowDynamicContent:0];
  [layoutCopy setCanShowTextLegibilityEffect:0];
  [layoutCopy setContentPrefersPresentationTypeView:0];
  v5 = +[PXStorySettings sharedInstance];
  enableScrubberColorNormalization = [v5 enableScrubberColorNormalization];
  v7 = 0;
  if (enableScrubberColorNormalization)
  {
    v7 = [v5 colorNormalizationMode] != 0;
  }

  [layoutCopy setCanShowColorNormalizedContent:v7];
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

- (PXStoryScrubberContentLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  mainModel = [modelCopy mainModel];
  v22.receiver = self;
  v22.super_class = PXStoryScrubberContentLayout;
  v7 = [(PXStoryModelTimelineLayout *)&v22 initWithModel:mainModel];

  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, model);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_87722];
    v8 = +[PXStorySettings sharedInstance];
    scrubberLayoutStretchesSmallNumberOfAssets = [v8 scrubberLayoutStretchesSmallNumberOfAssets];

    v10 = -1;
    if (scrubberLayoutStretchesSmallNumberOfAssets)
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

- (PXStoryScrubberContentLayout)initWithModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:130 description:{@"%s is not available as initializer", "-[PXStoryScrubberContentLayout initWithModel:]"}];

  abort();
}

@end