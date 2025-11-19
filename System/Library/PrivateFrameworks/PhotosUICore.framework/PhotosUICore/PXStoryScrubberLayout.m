@interface PXStoryScrubberLayout
- (BOOL)_shouldEnableFocusGuide;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXStoryScrubberLayout)init;
- (PXStoryScrubberLayout)initWithViewModel:(id)a3;
- (id)axSpriteIndexes;
- (id)preferredFocusLayouts;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
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
- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setAlphaOverride:(id)a3;
- (void)setCurrentSkipSegmentActionDate:(id)a3;
- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setIsHidden:(BOOL)a3;
- (void)setLastScrubbedDate:(id)a3;
- (void)setMainModel:(id)a3;
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
  v3 = [(PXStoryScrubberLayout *)self contentLayout];
  if (v3)
  {
    v4 = [(PXStoryScrubberLayout *)self contentLayout];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v11 = a3;
  if (ViewModelObservationContext_127890 == a5)
  {
    if ((a4 & 0x800000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateLastScrubbedDate];
    }

    if ((a4 & 0x4000000A008) != 0 && !self->_isUpdatingWantsVisible)
    {
      [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    }

    if ((a4 & 0x1000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateVisibilityFraction];
    }

    if ((a4 & 0x4000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateSkipSegmentActionDate];
    }

    if ((a4 & 0x2000048) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateSublayouts];
    }

    if ((a4 & 0x40) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateMainModel];
    }

    v9 = 16818184;
  }

  else
  {
    if (MainModelObservationContext_127891 != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:426 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((a4 & 0x400000000000000) != 0)
    {
      [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    }

    v9 = 34;
  }

  if ((a4 & v9) != 0)
  {
    [(PXStoryScrubberLayout *)self _invalidateFocusGuide];
  }
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_focusGuideSpriteIndex == a3)
  {
    v8 = objc_alloc_init(PXGFocusGuideViewConfiguration);
    PXGDeepestPreferredFocusEnvironmentsForLayout();
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:389 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_focusGuideSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:379 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = objc_opt_class();

  return v9;
}

- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AD98];
    [a3 scrubberAlpha];
    v6 = [v5 numberWithDouble:?];
    [(PXStoryScrubberLayout *)self setAlphaOverride:v6];
  }

  else
  {

    [(PXStoryScrubberLayout *)self setAlphaOverride:?];
  }
}

- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4
{
  v5 = a3;
  [(PXStoryScrubberLayout *)self alpha];
  [v5 setScrubberAlpha:?];
}

- (BOOL)_shouldEnableFocusGuide
{
  v2 = [(PXStoryScrubberLayout *)self viewModel];
  if ([v2 viewMode] == 1 && objc_msgSend(v2, "wantsChromeVisible"))
  {
    v3 = [v2 wantsRelatedOverlayVisible] ^ 1;
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
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateFocusGuide]"];
        [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:339 description:{@"invalidating %lu after it already has been updated", 128}];

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
    v3 = [(PXStoryScrubberLayout *)self viewModel];
    [v3 scrubberVisibilityFraction];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateVisibilityFraction]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:327 description:{@"invalidating %lu after it already has been updated", 8}];

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
  v4 = [(PXStoryScrubberLayout *)self viewModel];
  v5 = +[PXStorySettings sharedInstance];
  v6 = [v5 scrubberDisplayMode];
  if (v6)
  {
    v7 = v6 == 1;
    v8 = 1;
  }

  else
  {
    v9 = [v4 viewMode];
    v10 = [v4 wantsChromeVisible];
    v11 = [v4 wantsRelatedOverlayVisible];
    v12 = [v4 mainModel];
    [v12 desiredInfoPanelVisibilityFraction];
    v14 = v13;

    if (v14 == 1.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10;
    }

    if (v11)
    {
      v8 = 0;
    }

    v7 = v9 == 1;
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
  [v4 performChanges:v15];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateWantsVisible]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:292 description:{@"invalidating %lu after it already has been updated", 4}];

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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateLastScrubbedDate]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:284 description:{@"invalidating %lu after it already has been updated", 2}];

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
  v4 = [(PXStoryScrubberLayout *)self viewModel];
  v3 = [v4 lastSkipSegmentActionDate];
  [(PXStoryScrubberLayout *)self setCurrentSkipSegmentActionDate:v3];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSkipSegmentActionDate]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:276 description:{@"invalidating %lu after it already has been updated", 1}];

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
  v5 = [(PXStoryScrubberLayout *)self alphaOverride];
  v9 = v5;
  if (v5)
  {
    [v5 floatValue];
    v4 = v6;
  }

  v7 = [(PXGSplitLayout *)self firstSublayout];
  [v7 setAlpha:v4];

  v8 = [(PXGSplitLayout *)self secondSublayout];
  [v8 setAlpha:v4];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSublayoutsAlpha]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:259 description:{@"invalidating %lu after it already has been updated", 32}];

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
  v20 = [(PXStoryScrubberLayout *)self viewModel];
  v3 = [(PXStoryScrubberLayout *)self contentLayout];
  v4 = [v3 viewModel];
  if (v4 == v20)
  {
    v5 = [(PXStoryScrubberLayout *)self contentLayout];
    v6 = [v5 model];
    v7 = [v20 mainModel];

    if (v6 == v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v8 = [[PXStoryScrubberContentLayout alloc] initWithViewModel:v20];
  [(PXStoryScrubberLayout *)self setContentLayout:v8];

  v9 = [(PXStoryScrubberLayout *)self contentLayout];
  [(PXGSplitLayout *)self setFirstSublayout:v9];

LABEL_5:
  v10 = [(PXStoryScrubberLayout *)self scrollLayout];
  v11 = [v10 viewModel];
  if (v11 == v20)
  {
    v12 = [(PXStoryScrubberLayout *)self scrollLayout];
    v13 = [v12 model];
    v14 = [v20 mainModel];

    if (v13 == v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [PXStoryScrubberScrollLayout alloc];
  v16 = [v20 mainModel];
  v17 = [(PXStoryScrubberScrollLayout *)v15 initWithViewModel:v20 model:v16];

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
  v13 = [(PXStoryScrubberLayout *)self viewModel];
  v3 = [(PXStoryScrubberLayout *)self contentLayout];
  v4 = [v3 viewModel];
  if (v4 == v13)
  {
    v5 = [(PXStoryScrubberLayout *)self contentLayout];
    v6 = [v5 model];
    v7 = [v13 mainModel];

    if (v6 == v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v8 = [[PXStoryScrubberContentLayout alloc] initWithViewModel:v13];
  [(PXStoryScrubberLayout *)self setContentLayout:v8];

  v9 = [off_1E77216A8 alloc];
  v10 = [(PXStoryScrubberLayout *)self contentLayout];
  v11 = [v9 initWithContentLayout:v10];

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
  v4 = [(PXStoryScrubberLayout *)self viewModel];
  if (([v4 wantsChromeVisible] & 1) != 0 || (objc_msgSend(v4, "wantsScrubberVisible") & 1) != 0 || (-[PXGSplitLayout firstSublayout](self, "firstSublayout"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:204 description:{@"invalidating %lu after it already has been updated", 16}];

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
  v4 = [(PXStoryScrubberLayout *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryScrubberLayout *)self setMainModel:v3];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout _invalidateMainModel]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrubberLayout.m" lineNumber:196 description:{@"invalidating %lu after it already has been updated", 64}];

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
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryScrubberLayout.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v12 handleFailureInFunction:v13 file:@"PXStoryScrubberLayout.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
        [v14 handleFailureInFunction:v15 file:@"PXStoryScrubberLayout.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXStoryScrubberLayout.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v18 handleFailureInFunction:v19 file:@"PXStoryScrubberLayout.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v20 handleFailureInFunction:v21 file:@"PXStoryScrubberLayout.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v22 handleFailureInFunction:v23 file:@"PXStoryScrubberLayout.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v24 handleFailureInFunction:v25 file:@"PXStoryScrubberLayout.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v26 handleFailureInFunction:v27 file:@"PXStoryScrubberLayout.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout update]"];
      [v28 handleFailureInFunction:v29 file:@"PXStoryScrubberLayout.m" lineNumber:186 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryScrubberLayout.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  mainModel = self->_mainModel;
  if (mainModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext_127891];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_127891];
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
    v5 = v7;
  }
}

- (void)setAlphaOverride:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_alphaOverride != v5)
  {
    v8 = v5;
    v7 = [(NSNumber *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_alphaOverride, a3);
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

- (void)setLastScrubbedDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_lastScrubbedDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastScrubbedDate, a3);
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
  }
}

- (void)setCurrentSkipSegmentActionDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_currentSkipSegmentActionDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_currentSkipSegmentActionDate, a3);
    [(PXStoryScrubberLayout *)self _invalidateWantsVisible];
  }
}

- (void)setIsHidden:(BOOL)a3
{
  if (self->_isHidden != a3)
  {
    self->_isHidden = a3;
    [(PXStoryScrubberLayout *)self _invalidateVisibilityFraction];
  }
}

- (PXStoryScrubberLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryScrubberLayout;
  v6 = [(PXStoryScrubberLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [v5 registerChangeObserver:v7 context:ViewModelObservationContext_127890];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryScrubberLayout.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXStoryScrubberLayout init]"}];

  abort();
}

@end