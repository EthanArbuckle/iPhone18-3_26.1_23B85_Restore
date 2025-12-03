@interface PXStoryScrubberLayout
- (BOOL)_shouldEnableFocusGuide;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXStoryScrubberLayout)init;
- (PXStoryScrubberLayout)initWithViewModel:(id)model;
- (id)axSpriteIndexes;
- (id)preferredFocusLayouts;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_invalidateFocusGuide;
- (void)_invalidateLastScrubbedDate;
- (void)_invalidateMainModel;
- (void)_invalidateSkipSegmentActionDate;
- (void)_invalidateSublayouts;
- (void)_invalidateSublayoutsAlpha;
- (void)_invalidateVisibilityFraction;
- (void)_invalidateWantsVisible;
- (void)_loadSublayoutsIfNeeded;
- (void)_loadTVSublayoutsIfNeeded;
- (void)_updateFocusGuide;
- (void)_updateLastScrubbedDate;
- (void)_updateMainModel;
- (void)_updateSkipSegmentActionDate;
- (void)_updateSublayouts;
- (void)_updateSublayoutsAlpha;
- (void)_updateVisibilityFraction;
- (void)_updateWantsVisible;
- (void)alphaDidChange;
- (void)didUpdate;
- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setAlphaOverride:(id)override;
- (void)setCurrentSkipSegmentActionDate:(id)date;
- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setIsHidden:(BOOL)hidden;
- (void)setLastScrubbedDate:(id)date;
- (void)setMainModel:(id)model;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryScrubberLayout

- (id)axSpriteIndexes
{
  if (self->_focusGuideSpriteIndex == -1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  else
  {
    v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
  }

  return v2;
}

- (id)preferredFocusLayouts
{
  v7[1] = *MEMORY[0x1E69E9840];
  contentLayout = [(PXStoryScrubberLayout *)self contentLayout];
  if (contentLayout)
  {
    contentLayout2 = [(PXStoryScrubberLayout *)self contentLayout];
    v7[0] = contentLayout2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_127890 == context)
  {
    if ((change & 0x800000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateLastScrubbedDate];
    }

    if ((change & 0x4000000A008) != 0 && !self->_isUpdatingWantsVisible)
    {
      [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    }

    if ((change & 0x1000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateVisibilityFraction];
    }

    if ((change & 0x4000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateSkipSegmentActionDate];
    }

    if ((change & 0x2000048) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateSublayouts];
    }

    if ((change & 0x40) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateMainModel];
    }

    v9 = 16818184;
  }

  else
  {
    if (MainModelObservationContext_127891 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:426 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((change & 0x400000000000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    }

    v9 = 34;
  }

  if ((change & v9) != 0)
  {
    [(PXStoryScrubberLayout *)self _invalidateFocusGuide];
  }
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_focusGuideSpriteIndex == index)
  {
    v8 = objc_alloc_init(PXGFocusGuideViewConfiguration);
    PXGDeepestPreferredFocusEnvironmentsForLayout();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:389 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_focusGuideSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:379 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  v9 = objc_opt_class();

  return v9;
}

- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference
{
  if (override)
  {
    v5 = MEMORY[0x1E696AD98];
    [override scrubberAlpha];
    v6 = [v5 numberWithDouble:?];
    [(PXStoryScrubberLayout *)self setAlphaOverride:v6];
  }

  else
  {

    [(PXStoryScrubberLayout *)self setAlphaOverride:?];
  }
}

- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference
{
  placementCopy = placement;
  [(PXStoryScrubberLayout *)self alpha];
  [placementCopy setScrubberAlpha:?];
}

- (BOOL)_shouldEnableFocusGuide
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  if ([viewModel viewMode] == 1 && objc_msgSend(viewModel, "wantsChromeVisible"))
  {
    v3 = [viewModel wantsRelatedOverlayVisible] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateFocusGuide
{
  if (self->_focusGuideSpriteIndex != -1)
  {
    v10 = v9;
    v11 = v8;
    v12 = v7;
    v13 = v6;
    v14 = v3;
    v15 = v2;
    v16 = v4;
    v17 = v5;
    [(PXStoryScrubberLayout *)self referenceSize];
    PXRectWithOriginAndSize();
  }
}

float32x2_t __42__PXStoryScrubberLayout__updateFocusGuide__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a4 + 160 * *(*(a1 + 32) + 1044));
  v10 = *(off_1E7722048 + 7);
  v9[6] = *(off_1E7722048 + 6);
  v9[7] = v10;
  v11 = *(off_1E7722048 + 9);
  v9[8] = *(off_1E7722048 + 8);
  v9[9] = v11;
  v12 = *(off_1E7722048 + 3);
  v9[2] = *(off_1E7722048 + 2);
  v9[3] = v12;
  v13 = *(off_1E7722048 + 5);
  v9[4] = *(off_1E7722048 + 4);
  v9[5] = v13;
  v14 = *(off_1E7722048 + 1);
  *v9 = *off_1E7722048;
  v9[1] = v14;
  [*(a1 + 32) alpha];
  *&v15 = v15;
  *(a4 + 160 * *(*(a1 + 32) + 1044)) = LODWORD(v15);
  *(a5 + 40 * *(*(a1 + 32) + 1044) + 32) = [*(a1 + 32) focusGuideContentVersion];
  if ([*(a1 + 32) _shouldEnableFocusGuide])
  {
    v16 = 10;
  }

  else
  {
    v16 = 0;
  }

  *(a5 + 40 * *(*(a1 + 32) + 1044) + 1) = v16;
  *(a5 + 40 * *(*(a1 + 32) + 1044)) = 1;
  *(a5 + 40 * *(*(a1 + 32) + 1044) + 34) = 2;
  v17 = (a3 + 32 * *(*(a1 + 32) + 1044));
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v28.origin.x = v18;
  v28.origin.y = v19;
  v28.size.width = v20;
  v28.size.height = v21;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v18;
  v29.origin.y = v19;
  v29.size.width = v20;
  v29.size.height = v21;
  MidY = CGRectGetMidY(v29);
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v20;
  v30.size.height = v21;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v20;
  v31.size.height = v21;
  Height = CGRectGetHeight(v31);
  v25.f64[0] = Width;
  v25.f64[1] = Height;
  result = vcvt_f32_f64(v25);
  *v17 = MidX;
  *&v17[1] = MidY;
  v17[2] = 0;
  v17[3] = result;
  return result;
}

- (void)_invalidateFocusGuide
{
  if (self->_focusGuideSpriteIndex != -1)
  {
    [(PXStoryScrubberLayout *)self setFocusGuideContentVersion:([(PXStoryScrubberLayout *)self focusGuideContentVersion]+ 1)];
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0x80;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0x80) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateFocusGuide]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:339 description:{@"invalidating %lu after it already has been updated", 128}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 128;
    if (!willPerformUpdate)
    {

      [(PXStoryScrubberLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_updateVisibilityFraction
{
  if ([(PXStoryScrubberLayout *)self isHidden])
  {

    [(PXStoryScrubberLayout *)self setAlpha:0.0];
  }

  else
  {
    viewModel = [(PXStoryScrubberLayout *)self viewModel];
    [viewModel scrubberVisibilityFraction];
    [(PXStoryScrubberLayout *)self setAlpha:?];
  }
}

- (void)_invalidateVisibilityFraction
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateVisibilityFraction]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:327 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_updateWantsVisible
{
  isUpdatingWantsVisible = self->_isUpdatingWantsVisible;
  self->_isUpdatingWantsVisible = 1;
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  v5 = +[PXStorySettings sharedInstance];
  scrubberDisplayMode = [v5 scrubberDisplayMode];
  if (scrubberDisplayMode)
  {
    v7 = scrubberDisplayMode == 1;
    v8 = 1;
  }

  else
  {
    viewMode = [viewModel viewMode];
    wantsChromeVisible = [viewModel wantsChromeVisible];
    wantsRelatedOverlayVisible = [viewModel wantsRelatedOverlayVisible];
    mainModel = [viewModel mainModel];
    [mainModel desiredInfoPanelVisibilityFraction];
    v14 = v13;

    if (v14 == 1.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = wantsChromeVisible;
    }

    if (wantsRelatedOverlayVisible)
    {
      v8 = 0;
    }

    v7 = viewMode == 1;
  }

  if (!v7)
  {
    v8 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__PXStoryScrubberLayout__updateWantsVisible__block_invoke;
  v15[3] = &__block_descriptor_33_e35_v16__0___PXStoryMutableViewModel__8l;
  v16 = v8;
  [viewModel performChanges:v15];
  self->_isUpdatingWantsVisible = isUpdatingWantsVisible;
}

- (void)_invalidateWantsVisible
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateWantsVisible]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:292 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_updateLastScrubbedDate
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [(PXStoryScrubberLayout *)self setLastScrubbedDate:v3];
}

- (void)_invalidateLastScrubbedDate
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateLastScrubbedDate]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:284 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSkipSegmentActionDate
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  lastSkipSegmentActionDate = [viewModel lastSkipSegmentActionDate];
  [(PXStoryScrubberLayout *)self setCurrentSkipSegmentActionDate:lastSkipSegmentActionDate];
}

- (void)_invalidateSkipSegmentActionDate
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSkipSegmentActionDate]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:276 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayoutsAlpha
{
  [(PXStoryScrubberLayout *)self alpha];
  v4 = v3;
  alphaOverride = [(PXStoryScrubberLayout *)self alphaOverride];
  v9 = alphaOverride;
  if (alphaOverride)
  {
    [alphaOverride floatValue];
    v4 = v6;
  }

  firstSublayout = [(PXGSplitLayout *)self firstSublayout];
  [firstSublayout setAlpha:v4];

  secondSublayout = [(PXGSplitLayout *)self secondSublayout];
  [secondSublayout setAlpha:v4];
}

- (void)_invalidateSublayoutsAlpha
{
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSublayoutsAlpha]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:259 description:{@"invalidating %lu after it already has been updated", 32}];

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

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_loadSublayoutsIfNeeded
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  contentLayout = [(PXStoryScrubberLayout *)self contentLayout];
  viewModel2 = [contentLayout viewModel];
  if (viewModel2 == viewModel)
  {
    contentLayout2 = [(PXStoryScrubberLayout *)self contentLayout];
    model = [contentLayout2 model];
    mainModel = [viewModel mainModel];

    if (model == mainModel)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v8 = [[PXStoryScrubberContentLayout alloc] initWithViewModel:viewModel];
  [(PXStoryScrubberLayout *)self setContentLayout:v8];

  contentLayout3 = [(PXStoryScrubberLayout *)self contentLayout];
  [(PXGSplitLayout *)self setFirstSublayout:contentLayout3];

LABEL_5:
  scrollLayout = [(PXStoryScrubberLayout *)self scrollLayout];
  viewModel3 = [scrollLayout viewModel];
  if (viewModel3 == viewModel)
  {
    scrollLayout2 = [(PXStoryScrubberLayout *)self scrollLayout];
    model2 = [scrollLayout2 model];
    mainModel2 = [viewModel mainModel];

    if (model2 == mainModel2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [PXStoryScrubberScrollLayout alloc];
  mainModel3 = [viewModel mainModel];
  v17 = [(PXStoryScrubberScrollLayout *)v15 initWithViewModel:viewModel model:mainModel3];

  v18 = [[off_1E77216A8 alloc] initWithContentLayout:v17];
  [v18 setDelegate:v17];
  [v18 setShowsHorizontalScrollIndicator:0];
  [v18 setShowsVerticalScrollIndicator:0];
  [v18 setDraggingPerformsScroll:1];
  [(PXStoryScrubberLayout *)self referenceDepth];
  *&v19 = v19;
  [v18 setScrollViewSpriteZPosition:v19];
  [(PXGSplitLayout *)self setSecondSublayout:v18];
  [(PXStoryScrubberLayout *)self setScrollLayout:v17];

LABEL_9:
}

- (void)_loadTVSublayoutsIfNeeded
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  contentLayout = [(PXStoryScrubberLayout *)self contentLayout];
  viewModel2 = [contentLayout viewModel];
  if (viewModel2 == viewModel)
  {
    contentLayout2 = [(PXStoryScrubberLayout *)self contentLayout];
    model = [contentLayout2 model];
    mainModel = [viewModel mainModel];

    if (model == mainModel)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v8 = [[PXStoryScrubberContentLayout alloc] initWithViewModel:viewModel];
  [(PXStoryScrubberLayout *)self setContentLayout:v8];

  v9 = [off_1E77216A8 alloc];
  contentLayout3 = [(PXStoryScrubberLayout *)self contentLayout];
  v11 = [v9 initWithContentLayout:contentLayout3];

  [v11 setClipsToBounds:0];
  [v11 setShowsHorizontalScrollIndicator:0];
  [v11 setShowsVerticalScrollIndicator:0];
  [v11 setDraggingPerformsScroll:1];
  [(PXStoryScrubberLayout *)self referenceDepth];
  *&v12 = v12;
  [v11 setScrollViewSpriteZPosition:v12];
  [(PXGSplitLayout *)self setFirstSublayout:v11];

LABEL_5:
}

- (void)_updateSublayouts
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  if (([viewModel wantsChromeVisible] & 1) != 0 || (objc_msgSend(viewModel, "wantsScrubberVisible") & 1) != 0 || (-[PXGSplitLayout firstSublayout](self, "firstSublayout"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(PXStoryScrubberLayout *)self _loadSublayoutsIfNeeded];
  }

  [(PXStoryScrubberLayout *)self _invalidateSublayoutsAlpha];
}

- (void)_invalidateSublayouts
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSublayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:204 description:{@"invalidating %lu after it already has been updated", 16}];

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

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)_updateMainModel
{
  viewModel = [(PXStoryScrubberLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryScrubberLayout *)self setMainModel:mainModel];
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
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateMainModel]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:196 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryScrubberLayout;
  [(PXGSplitLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberLayout.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler handleFailureInFunction:v13 file:@"PXStoryScrubberLayout.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 64;
    if ((needsUpdate & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryScrubberLayout *)self _updateMainModel];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
        [currentHandler2 handleFailureInFunction:v15 file:@"PXStoryScrubberLayout.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v5)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryScrubberLayout *)self _updateSkipSegmentActionDate];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler3 handleFailureInFunction:v17 file:@"PXStoryScrubberLayout.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v6 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryScrubberLayout *)self _updateLastScrubbedDate];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler4 handleFailureInFunction:v19 file:@"PXStoryScrubberLayout.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v7 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryScrubberLayout *)self _updateWantsVisible];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler5 handleFailureInFunction:v21 file:@"PXStoryScrubberLayout.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v8 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryScrubberLayout *)self _updateVisibilityFraction];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler6 handleFailureInFunction:v23 file:@"PXStoryScrubberLayout.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v9 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryScrubberLayout *)self _updateSublayouts];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler7 handleFailureInFunction:v25 file:@"PXStoryScrubberLayout.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v10 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryScrubberLayout *)self _updateSublayoutsAlpha];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler8 handleFailureInFunction:v27 file:@"PXStoryScrubberLayout.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v11 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80uLL;
    if ((v11 & 0x80) != 0)
    {
      p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXStoryScrubberLayout *)self _updateFocusGuide];
      v11 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v11)
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [currentHandler9 handleFailureInFunction:v29 file:@"PXStoryScrubberLayout.m" lineNumber:186 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v30.receiver = self;
  v30.super_class = PXStoryScrubberLayout;
  [(PXGSplitLayout *)&v30 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryScrubberLayout;
  [(PXGSplitLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberLayout.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext_127891];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_127891];
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    modelCopy = v7;
  }
}

- (void)setAlphaOverride:(id)override
{
  overrideCopy = override;
  v6 = overrideCopy;
  if (self->_alphaOverride != overrideCopy)
  {
    v8 = overrideCopy;
    v7 = [(NSNumber *)overrideCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_alphaOverride, override);
      [(PXStoryScrubberLayout *)self _invalidateSublayoutsAlpha];
      v6 = v8;
    }
  }
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberLayout;
  [(PXStoryScrubberLayout *)&v3 alphaDidChange];
  [(PXStoryScrubberLayout *)self _invalidateSublayoutsAlpha];
  [(PXStoryScrubberLayout *)self _invalidateFocusGuide];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberLayout;
  [(PXGSplitLayout *)&v3 referenceDepthDidChange];
  [(PXStoryScrubberLayout *)self _invalidateFocusGuide];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberLayout;
  [(PXGSplitLayout *)&v3 referenceSizeDidChange];
  [(PXStoryScrubberLayout *)self _invalidateFocusGuide];
}

- (void)setLastScrubbedDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_lastScrubbedDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastScrubbedDate, date);
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
  }
}

- (void)setCurrentSkipSegmentActionDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_currentSkipSegmentActionDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_currentSkipSegmentActionDate, date);
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
  }
}

- (void)setIsHidden:(BOOL)hidden
{
  if (self->_isHidden != hidden)
  {
    self->_isHidden = hidden;
    [(PXStoryScrubberLayout *)self _invalidateVisibilityFraction];
  }
}

- (PXStoryScrubberLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXStoryScrubberLayout;
  v6 = [(PXStoryScrubberLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [modelCopy registerChangeObserver:v7 context:ViewModelObservationContext_127890];
    [(PXGSplitLayout *)v7 setMode:5];
    [(PXStoryScrubberLayout *)v7 setContentSource:v7];
    v7->_focusGuideSpriteIndex = -1;
    [(PXStoryScrubberLayout *)v7 _invalidateMainModel];
    [(PXStoryScrubberLayout *)v7 _invalidateSublayouts];
    [(PXStoryScrubberLayout *)v7 _invalidateVisibilityFraction];
    [(PXStoryScrubberLayout *)v7 _invalidateWantsVisible];
    [(PXStoryScrubberLayout *)v7 _invalidateFocusGuide];
  }

  return v7;
}

- (PXStoryScrubberLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXStoryScrubberLayout init]"}];

  abort();
}

@end