@interface PUFilterToolController
- (PUFilterToolController)initWithCoder:(id)a3;
- (PUFilterToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_adjustedFilterIntensity;
- (id)_adjustedFilterName;
- (id)_effectAdjustment;
- (id)_effectForIndex:(int64_t)a3;
- (id)centerToolbarView;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (int64_t)_adjustedFilterIndex;
- (int64_t)_indexForFilterId:(id)a3;
- (void)_prepareThumbnailImagesIfNeeded;
- (void)_setShowSlider:(BOOL)a3 animate:(BOOL)a4;
- (void)_setupFilters;
- (void)_setupScrubber;
- (void)_setupSlider;
- (void)_sliderDidEndScrolling;
- (void)_updateBadgeAndSliderWithEffect:(id)a3;
- (void)_updateBadgeConstraints;
- (void)_updateCacheWithCIImage:(id)a3;
- (void)_updateCompositionControllerWithEffect:(id)a3;
- (void)_updateFilterIntensityCache;
- (void)_updateScrubberLayout;
- (void)_updateSelectionTextAnimate:(BOOL)a3;
- (void)_updateToolConstraints;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)_updateWithCompositionController:(id)a3;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)decreaseScrubberValue:(BOOL)a3;
- (void)decreaseSliderValue:(BOOL)a3;
- (void)didResignActiveTool;
- (void)increaseScrubberValue:(BOOL)a3;
- (void)increaseSliderValue:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderDidScroll:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wheelScrubberView:(id)a3 updateCell:(id)a4 forItemAtIndex:(unint64_t)a5;
- (void)wheelScrubberViewDidChangeSelectedIndex:(id)a3;
- (void)wheelScrubberViewDidEndScrolling:(id)a3;
- (void)wheelScrubberViewWillBeginScrolling:(id)a3;
- (void)willBecomeActiveTool;
@end

@implementation PUFilterToolController

- (void)sliderDidEndScrolling:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  [(PUFilterToolController *)self _sliderDidEndScrolling];
  v5 = PULocalizedString(@"PHOTOEDIT_FILTER_INTENSITY_ACTION_TITLE");
  v4 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];
}

- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0, a5, a4.x, a4.y];
  if (x == 0.0)
  {

    [(PUFilterToolController *)self _sliderDidEndScrolling];
  }
}

- (void)sliderDidScroll:(id)a3
{
  v7 = [(PUFilterToolController *)self _effectForIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]];
  if (v7)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    v4 = [(PUPhotoEditToolController *)self compositionController];
    [(CEKSlider *)self->_slider value];
    [PUPhotoEditEffectsSupport updateCompositionController:v4 withEffect:v7 intensity:1 updateVersion:?];

    v5 = PULocalizedString(@"PHOTOEDIT_FILTER_INTENSITY_ACTION_TITLE");
    v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];
  }

  [(PUFilterToolController *)self _updateSelectionTextAnimate:1];
}

- (void)sliderWillBeginScrolling:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  self->_isSliderTouchDown = 1;
  [(PUFilterToolController *)self _updateSelectionTextAnimate:1];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
}

- (void)_sliderDidEndScrolling
{
  self->_isSliderTouchDown = 0;
  [(PUFilterToolController *)self _updateFilterIntensityCache];

  [(PUFilterToolController *)self _updateSelectionTextAnimate:1];
}

- (void)_updateSelectionTextAnimate:(BOOL)a3
{
  v3 = a3;
  if (self->_isSliderTouchDown)
  {
    v5 = MEMORY[0x1E696AD98];
    [(CEKSlider *)self->_slider value];
    v8 = [v5 numberWithDouble:?];
    v6 = [(NSNumberFormatter *)self->_formatter stringFromNumber:v8];
    [(CEKWheelScrubberView *)self->_scrubberView setSelectionText:v6 animated:v3];
  }

  else
  {
    scrubberView = self->_scrubberView;

    [(CEKWheelScrubberView *)scrubberView setSelectionText:0 animated:a3];
  }
}

- (void)_updateCompositionControllerWithEffect:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (v4)
  {
    filterIntensityCache = self->_filterIntensityCache;
    v6 = [v4 filterIdentifier];
    v7 = [(NSMutableDictionary *)filterIntensityCache objectForKey:v6];

    if (v7)
    {
      [v7 floatValue];
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    if ([(CEKSlider *)self->_slider isEnabled])
    {
      [(CEKSlider *)self->_slider setValue:v9];
    }
  }

  else
  {
    v9 = 1.0;
  }

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v10 = [(PUPhotoEditToolController *)self compositionController];
  [PUPhotoEditEffectsSupport updateCompositionController:v10 withEffect:v13 intensity:1 updateVersion:v9];

  v11 = PULocalizedString(@"PHOTOEDIT_FILTER_ACTION_TITLE");
  v12 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v11];
}

- (void)wheelScrubberViewDidEndScrolling:(id)a3
{
  v4 = a3;
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  self->_isScrubbing = 0;
  [(CEKSlider *)self->_slider setEnabled:1 dimmed:0 animated:1];
  v5 = PULocalizedString(@"PHOTOEDIT_FILTER_ACTION_TITLE");
  v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

  v7 = [v4 selectedIndex];
  v8 = [(PUFilterToolController *)self _effectForIndex:v7];
  [(PUFilterToolController *)self _updateCompositionControllerWithEffect:v8];
}

- (void)wheelScrubberViewWillBeginScrolling:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  self->_isScrubbing = 1;
  [(CEKSlider *)self->_slider setEnabled:0 dimmed:1 animated:1];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
}

- (void)wheelScrubberView:(id)a3 updateCell:(id)a4 forItemAtIndex:(unint64_t)a5
{
  v21 = a4;
  v7 = [(PUFilterToolController *)self _effectForIndex:a5];
  v8 = [v7 filterIdentifier];
  if (!v8)
  {
    v8 = *MEMORY[0x1E69BEC10];
  }

  v9 = [(NSMutableDictionary *)self->_filterThumbnailCache objectForKey:v8];
  if (v9)
  {
    v10 = [v21 itemView];
    v11 = [v10 layer];

    v12 = [(CEKWheelScrubberView *)self->_scrubberView layoutDirection];
    if (a5)
    {
      v13 = [MEMORY[0x1E69BE668] standardSupportedEffects];
      v14 = [v13 count] - 1;

      if (v14 != a5)
      {
LABEL_12:
        context = self->_context;
        [v9 extent];
        v20 = [(CIContext *)context createCGImage:v9 fromRect:?];
        [v11 setContents:v20];
        CGImageRelease(v20);

        goto LABEL_13;
      }

      [v11 setCornerRadius:5.0];
      v15 = v12 == 0;
      v16 = 12;
      v17 = 10;
    }

    else
    {
      [v11 setCornerRadius:5.0];
      v15 = v12 == 0;
      v16 = 3;
      v17 = 5;
    }

    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [v11 setMaskedCorners:v18];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)wheelScrubberViewDidChangeSelectedIndex:(id)a3
{
  self->_isInteractingWithWheelScrubber = 1;
  v4 = -[PUFilterToolController _effectForIndex:](self, "_effectForIndex:", [a3 selectedIndex]);
  [(PUFilterToolController *)self _updateCompositionControllerWithEffect:v4];
  [(PUFilterToolController *)self _updateBadgeAndSliderWithEffect:v4];
  self->_isInteractingWithWheelScrubber = 0;
}

- (void)_updateFilterIntensityCache
{
  if (self->_slider)
  {
    v7 = [(PUFilterToolController *)self _effectForIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]];
    v3 = [v7 filterIdentifier];
    if (v3)
    {
      filterIntensityCache = self->_filterIntensityCache;
      v5 = MEMORY[0x1E696AD98];
      [(CEKSlider *)self->_slider value];
      v6 = [v5 numberWithDouble:?];
      [(NSMutableDictionary *)filterIntensityCache setObject:v6 forKey:v3];
    }
  }
}

- (void)_setShowSlider:(BOOL)a3 animate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CEKSlider *)self->_slider isHidden]== a3)
  {
    v7 = 0.0;
    if (v5)
    {
      v7 = 1.0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PUFilterToolController__setShowSlider_animate___block_invoke;
    aBlock[3] = &unk_1E7B7FF70;
    aBlock[4] = self;
    *&aBlock[5] = v7;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (v4)
    {
      v10 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__PUFilterToolController__setShowSlider_animate___block_invoke_2;
      v13[3] = &unk_1E7B80C88;
      v14 = v8;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__PUFilterToolController__setShowSlider_animate___block_invoke_3;
      v11[3] = &unk_1E7B7DC88;
      v11[4] = self;
      v12 = v5;
      [v10 animateWithDuration:v13 animations:v11 completion:0.25];
    }

    else
    {
      v8[2](v8);
      [(CEKSlider *)self->_slider setHidden:!v5];
    }
  }
}

- (void)_updateBadgeAndSliderWithEffect:(id)a3
{
  v15 = a3;
  v4 = MEMORY[0x1E69BE668];
  v5 = [v15 filterIdentifier];
  v6 = [v4 isEffectNoneForIdentifier:v5];

  if (!v15)
  {
    v15 = [MEMORY[0x1E69BE668] effectWithIdentifier:*MEMORY[0x1E69BEC10]];
    v6 = 1;
  }

  [(PUFilterToolController *)self _setShowSlider:v6 ^ 1u animate:1];
  v7 = [v15 displayName];
  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];
  v10 = [v9 componentsJoinedByString:@" "];

  v11 = [MEMORY[0x1E695DF58] currentLocale];
  v12 = [v10 uppercaseStringWithLocale:v11];

  v13 = MEMORY[0x1B8C6D660]();
  filterBadgeView = self->_filterBadgeView;
  if (v13)
  {
    [(UIView *)filterBadgeView setText:v12];
  }

  else
  {
    [(UIView *)filterBadgeView _setText:v12];
  }

  [(UIView *)self->_filterBadgeView sizeToFit];
}

- (int64_t)_indexForFilterId:(id)a3
{
  v3 = MEMORY[0x1E69BE668];
  v4 = a3;
  v5 = [v3 standardSupportedEffects];
  v6 = [MEMORY[0x1E69BE668] effectWithIdentifier:v4];

  v7 = [v5 indexOfObject:v6];
  return v7;
}

- (id)_effectForIndex:(int64_t)a3
{
  v4 = [MEMORY[0x1E69BE668] standardSupportedEffects];
  v5 = v4;
  if (a3 < 1 || [v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (double)_adjustedFilterIntensity
{
  v2 = [(PUFilterToolController *)self _effectAdjustment];
  v3 = v2;
  if (v2)
  {
    [v2 intensity];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (id)_adjustedFilterName
{
  v2 = [(PUFilterToolController *)self _effectAdjustment];
  v3 = [v2 kind];

  return v3;
}

- (id)_effectAdjustment
{
  v2 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v2 compositionKeys];
  v4 = [MEMORY[0x1E69BE360] adjustmentConstants];
  v5 = [v4 PIEffect3DAdjustmentKey];
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    [v2 effect3DAdjustmentController];
  }

  else
  {
    [v2 effectAdjustmentController];
  }
  v7 = ;

  return v7;
}

- (int64_t)_adjustedFilterIndex
{
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [MEMORY[0x1E69BE360] adjustmentConstants];
  v5 = [v4 PIPortraitAdjustmentKey];
  v6 = [v3 adjustmentControllerForKey:v5];

  if ([v6 enabled])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PUFilterToolController *)self _adjustedFilterName];
    v7 = [(PUFilterToolController *)self _indexForFilterId:v8];
  }

  return v7;
}

- (id)viewsActivatingToolControlShadow
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 == 4)
    {
      slider = self->_slider;
      p_slider = &slider;
      goto LABEL_6;
    }
  }

  else if (v5 == 2)
  {
    v10[0] = self->_slider;
    p_slider = v10;
LABEL_6:
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_slider count:1];
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v7;
}

- (id)viewsActivatingMainToolbarShadow
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 != 4)
    {
      slider = self->_slider;
      p_slider = &slider;
      goto LABEL_7;
    }

LABEL_5:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v10[0] = self->_slider;
  p_slider = v10;
LABEL_7:
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_slider count:1];
LABEL_8:

  return v7;
}

- (id)centerToolbarView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = PULocalizedString(@"PHOTOEDIT_FILTERS_TOP_LABEL");
  v4 = [v3 localizedUppercaseString];

  v5 = [v2 photoEditingTopToolbarToolLabelButtonColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v4];
  [v6 setTextColor:v5];
  v7 = [v2 topToolbarToolLabelFont];
  [v6 setFont:v7];

  return v6;
}

- (void)_updateToolLabelAppearanceIfNeeded
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    v3 = [(PUPhotoEditToolController *)self delegate];
    v14 = [v3 mediaView];

    v4 = self->_filterBadgeView;
    [(UIView *)v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v14 imageFrame];
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    v13 = CGRectIntersectsRect(v16, v17);
    if (self->_mediaViewIsReady && (!self->_hasSetMediaViewIntersection || self->_mediaViewIntersectsToolLabel != v13))
    {
      self->_mediaViewIntersectsToolLabel = v13;
      self->_hasSetMediaViewIntersection = 1;
      [(UIView *)v4 setStyle:v13];
    }
  }
}

- (void)_updateScrubberLayout
{
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = v4 == 4 || [(PUPhotoEditToolController *)self layoutOrientation]!= 1;
  [(CEKWheelScrubberView *)self->_scrubberView setLayoutDirection:v5];
  [(CEKWheelScrubberView *)self->_scrubberView setLayoutOrder:0];
  scrubberView = self->_scrubberView;

  [(CEKWheelScrubberView *)scrubberView setDotPlacement:v5];
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v8 setLayoutOrientation:a3 withTransitionCoordinator:a4];
  if (self->_scrubberView)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_filterBadgeViewConstraints];
    filterBadgeViewConstraints = self->_filterBadgeViewConstraints;
    self->_filterBadgeViewConstraints = 0;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolConstraints];
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = 0;

    v7 = [(PUFilterToolController *)self view];
    [v7 setNeedsUpdateConstraints];

    [(PUFilterToolController *)self _updateScrubberLayout];
    [(CEKWheelScrubberView *)self->_scrubberView updateItems];
  }
}

- (void)_updateBadgeConstraints
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!self->_filterBadgeViewConstraints)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filterBadgeViewConstraints = self->_filterBadgeViewConstraints;
    self->_filterBadgeViewConstraints = v3;

    v5 = [(PUPhotoEditToolController *)self delegate];
    v6 = [v5 toolControllerMainContainerView:self];

    v27 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [(PUFilterToolController *)self view];
    }

    v8 = v7;
    v9 = [(PUPhotoEditToolController *)self photoEditSpec];
    v10 = [v9 currentLayoutStyle];

    if (v10 == 4)
    {
      v11 = self->_filterBadgeViewConstraints;
      v12 = [(UIView *)self->_filterBadgeView rightAnchor];
      v13 = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
      v26 = v12;
      v14 = [v12 constraintEqualToAnchor:v13 constant:-6.0];
      v28[0] = v14;
      v15 = [(UIView *)self->_filterBadgeView centerYAnchor];
      v16 = [(CEKWheelScrubberView *)self->_scrubberView centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      v28[1] = v17;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v19 = v18 = v8;
      [(NSMutableArray *)v11 addObjectsFromArray:v19];
    }

    else
    {
      v20 = [(PUPhotoEditToolController *)self layoutOrientation];
      v25 = self->_filterBadgeViewConstraints;
      v21 = [(UIView *)self->_filterBadgeView bottomAnchor];
      v26 = v21;
      if (v20 == 1)
      {
        v13 = [(PUPhotoEditToolController *)self toolContainerView];
        v14 = [v13 topAnchor];
        v15 = [v21 constraintEqualToAnchor:v14 constant:-6.0];
        v30[0] = v15;
        v16 = [(UIView *)self->_filterBadgeView centerXAnchor];
        v17 = [v8 centerXAnchor];
        [v16 constraintEqualToAnchor:v17];
        v19 = v18 = v8;
        v30[1] = v19;
        v22 = MEMORY[0x1E695DEC8];
        v23 = v30;
      }

      else
      {
        v13 = [v8 safeAreaLayoutGuide];
        v14 = [v13 bottomAnchor];
        v15 = [v21 constraintEqualToAnchor:v14 constant:-0.0];
        v29[0] = v15;
        v16 = [(UIView *)self->_filterBadgeView centerXAnchor];
        v17 = [v8 centerXAnchor];
        [v16 constraintEqualToAnchor:v17];
        v19 = v18 = v8;
        v29[1] = v19;
        v22 = MEMORY[0x1E695DEC8];
        v23 = v29;
      }

      v24 = [v22 arrayWithObjects:v23 count:2];
      [(NSMutableArray *)v25 addObjectsFromArray:v24];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:self->_filterBadgeViewConstraints];
  }
}

- (void)_updateToolConstraints
{
  v131[3] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerMainContainerView:self];

  if (v4 && !self->_toolConstraints)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = v5;

    v7 = [(PUPhotoEditToolController *)self layoutOrientation];
    v8 = [(PUPhotoEditToolController *)self photoEditSpec];
    v9 = [v8 currentLayoutStyle];

    v10 = [(PUPhotoEditToolController *)self toolContainerView];
    slider = self->_slider;
    v121 = v10;
    if (slider)
    {
      if (v7 != 1 || v9 == 4)
      {
        v114 = v9;
        v44 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [v10 addLayoutGuide:?];
        v79 = self->_toolConstraints;
        v108 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v102 = [v108 constraintEqualToConstant:75.0];
        v129[0] = v102;
        v97 = [v10 heightAnchor];
        v93 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v89 = [v97 constraintEqualToAnchor:v93];
        v129[1] = v89;
        v85 = [v4 centerYAnchor];
        v82 = [(CEKWheelScrubberView *)self->_scrubberView centerYAnchor];
        v80 = [v85 constraintEqualToAnchor:v82];
        v129[2] = v80;
        v78 = [v10 topAnchor];
        v77 = [(CEKWheelScrubberView *)self->_scrubberView topAnchor];
        v76 = [v78 constraintEqualToAnchor:v77];
        v129[3] = v76;
        v75 = [v44 widthAnchor];
        v45 = [v75 constraintEqualToConstant:66.0];
        v129[4] = v45;
        v46 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v120 = v44;
        v47 = [v44 heightAnchor];
        v48 = [v46 constraintEqualToAnchor:v47];
        v129[5] = v48;
        v49 = [v4 centerYAnchor];
        v50 = [v44 centerYAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v129[6] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:7];
        [(NSMutableArray *)v79 addObjectsFromArray:v52];

        v98 = self->_toolConstraints;
        v109 = [v121 leftAnchor];
        v103 = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
        v53 = [v109 constraintEqualToAnchor:v103];
        v128[0] = v53;
        v54 = [v121 rightAnchor];
        v55 = [v120 rightAnchor];
        v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];
        v128[1] = v56;
        v57 = [(CEKWheelScrubberView *)self->_scrubberView rightAnchor];
        v58 = [v120 leftAnchor];
        v59 = [v57 constraintEqualToAnchor:v58 constant:43.0];
        v128[2] = v59;
        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
        [(NSMutableArray *)v98 addObjectsFromArray:v60];

        v86 = self->_toolConstraints;
        v110 = [(CEKSlider *)self->_slider heightAnchor];
        v104 = [v120 widthAnchor];
        v99 = [v110 constraintEqualToAnchor:v104];
        v127[0] = v99;
        v94 = [(CEKSlider *)self->_slider widthAnchor];
        v90 = [v120 heightAnchor];
        v61 = [v94 constraintEqualToAnchor:v90];
        v127[1] = v61;
        v62 = [(CEKSlider *)self->_slider centerXAnchor];
        v63 = [v120 centerXAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];
        v127[2] = v64;
        v65 = [(CEKSlider *)self->_slider centerYAnchor];
        v66 = [v120 centerYAnchor];
        v67 = [v65 constraintEqualToAnchor:v66];
        v127[3] = v67;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:4];
        [(NSMutableArray *)v86 addObjectsFromArray:v68];

        if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
        {
          v69 = -1.57079633;
        }

        else
        {
          v72 = [(PUPhotoEditToolController *)self layoutOrientation];
          v73 = v114 == 4 || v72 == 2;
          v69 = 1.57079633;
          if (v73)
          {
            v69 = -1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v122, v69);
        v74 = self->_slider;
        v123 = v122;
        [(CEKSlider *)v74 setTransform:&v123];
        v27 = v121;
        v28 = v120;
      }

      else
      {
        v12 = *(MEMORY[0x1E695EFD0] + 16);
        *&v123.a = *MEMORY[0x1E695EFD0];
        *&v123.c = v12;
        *&v123.tx = *(MEMORY[0x1E695EFD0] + 32);
        [(CEKSlider *)slider setTransform:&v123];
        v105 = self->_toolConstraints;
        v116 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v111 = [v116 constraintEqualToConstant:75.0];
        v131[0] = v111;
        v13 = [v10 widthAnchor];
        v14 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v131[1] = v15;
        v16 = [v10 centerXAnchor];
        v17 = [(CEKWheelScrubberView *)self->_scrubberView centerXAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];
        v131[2] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
        [(NSMutableArray *)v105 addObjectsFromArray:v19];

        v91 = self->_toolConstraints;
        v117 = [(CEKSlider *)self->_slider heightAnchor];
        v112 = [v117 constraintEqualToConstant:66.0];
        v130[0] = v112;
        v106 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v100 = [(CEKSlider *)self->_slider widthAnchor];
        v95 = [v106 constraintEqualToAnchor:v100];
        v130[1] = v95;
        v87 = [v121 centerXAnchor];
        v83 = [(CEKSlider *)self->_slider centerXAnchor];
        v81 = [v87 constraintEqualToAnchor:v83];
        v130[2] = v81;
        v20 = [v121 bottomAnchor];
        v21 = [(CEKSlider *)self->_slider bottomAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 constant:5.0];
        v130[3] = v22;
        v23 = [(CEKWheelScrubberView *)self->_scrubberView bottomAnchor];
        v24 = [(CEKSlider *)self->_slider topAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 constant:21.0];
        v130[4] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:5];
        [(NSMutableArray *)v91 addObjectsFromArray:v26];

        v27 = v121;
        v28 = v117;
      }
    }

    else
    {
      v113 = v9;
      v88 = self->_toolConstraints;
      v118 = [v10 leftAnchor];
      v115 = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
      v107 = [v118 constraintEqualToAnchor:v115];
      v126[0] = v107;
      v101 = [v10 rightAnchor];
      v92 = [(CEKWheelScrubberView *)self->_scrubberView rightAnchor];
      v84 = [v101 constraintEqualToAnchor:v92];
      v126[1] = v84;
      v29 = [v10 topAnchor];
      v30 = [(CEKWheelScrubberView *)self->_scrubberView topAnchor];
      [v29 constraintEqualToAnchor:v30];
      v31 = v96 = v7;
      v126[2] = v31;
      v32 = [v10 bottomAnchor];
      v33 = [(CEKWheelScrubberView *)self->_scrubberView bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v126[3] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:4];
      [(NSMutableArray *)v88 addObjectsFromArray:v35];

      v119 = self->_toolConstraints;
      scrubberView = self->_scrubberView;
      if (v96 != 1 || v113 == 4)
      {
        v70 = [(CEKWheelScrubberView *)scrubberView widthAnchor];
        v38 = [v70 constraintEqualToConstant:75.0];
        v124[0] = v38;
        v27 = v121;
        v39 = [v121 heightAnchor];
        v28 = v70;
        v40 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v41 = [v39 constraintEqualToAnchor:v40];
        v124[1] = v41;
        v42 = MEMORY[0x1E695DEC8];
        v43 = v124;
      }

      else
      {
        v37 = [(CEKWheelScrubberView *)scrubberView heightAnchor];
        v38 = [v37 constraintEqualToConstant:75.0];
        v125[0] = v38;
        v27 = v121;
        v39 = [v121 widthAnchor];
        v28 = v37;
        v40 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v41 = [v39 constraintEqualToAnchor:v40];
        v125[1] = v41;
        v42 = MEMORY[0x1E695DEC8];
        v43 = v125;
      }

      v71 = [v42 arrayWithObjects:v43 count:2];
      [(NSMutableArray *)v119 addObjectsFromArray:v71];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:self->_toolConstraints];
  }
}

- (void)updateViewConstraints
{
  [(PUFilterToolController *)self _updateToolConstraints];
  [(PUFilterToolController *)self _updateBadgeConstraints];
  v3.receiver = self;
  v3.super_class = PUFilterToolController;
  [(PUFilterToolController *)&v3 updateViewConstraints];
}

- (void)_updateCacheWithCIImage:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [MEMORY[0x1E69BE668] standardSupportedEffects];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v16 = *MEMORY[0x1E695FAB0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 filterIdentifier];
          if (v11)
          {
            v12 = v4;
            v13 = [v10 newEffectFilter];
            v14 = v13;
            if (v13)
            {
              [v13 setValue:v12 forKey:v16];
              v15 = [v14 outputImage];

              v12 = v15;
            }

            [(NSMutableDictionary *)self->_filterThumbnailCache setObject:v12 forKey:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [(CEKWheelScrubberView *)self->_scrubberView updateItems];
  }
}

- (void)_prepareThumbnailImagesIfNeeded
{
  v3 = [(PUPhotoEditToolController *)self editSource];
  if (v3)
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    v5 = [v4 enableEnterEditFilterThumbnailGeneration];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_filterThumbnailCache count];
      memset(&v41, 0, sizeof(v41));
      v7 = [(PUPhotoEditToolController *)self delegate];
      v8 = [v7 mediaView];
      v9 = [v8 player];
      v10 = v9;
      if (v9)
      {
        [v9 currentTime];
      }

      else
      {
        memset(&v41, 0, sizeof(v41));
      }

      time2 = v41;
      [(PUPhotoEditToolController *)self originalAssetTimeForDisplayedTime:&time2];
      v41 = time1;
      if (!v6 || (time1 = self->_thumbnailTime, time2 = v41, CMTimeCompare(&time1, &time2)))
      {
        self->_thumbnailTime = v41;
        v11 = [(PUFilterToolController *)self px_screen];
        [v11 scale];
        v13 = v12;

        v14 = PLPhotoEditGetLog();
        v15 = os_signpost_id_generate(v14);
        v16 = v14;
        v17 = v16;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
        {
          LOWORD(time1.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "FilterThumbnailGeneration", "", &time1, 2u);
        }

        v18 = [(PUFilterToolController *)self willLoadFilterThumbnails];
        v19 = v18;
        if (v18)
        {
          (*(v18 + 16))(v18);
        }

        v20 = v13 * 51.0;
        v21 = objc_alloc(MEMORY[0x1E69BE658]);
        v22 = [(PUPhotoEditToolController *)self editSource];
        v23 = [v21 initWithEditSource:v22];

        v24 = [(PUPhotoEditToolController *)self compositionController];
        v25 = [v24 copy];

        v26 = [MEMORY[0x1E69BE668] effectWithIdentifier:*MEMORY[0x1E69BEC10]];
        [PUPhotoEditEffectsSupport updateCompositionController:v25 withEffect:v26 updateVersion:0];
        v27 = [v25 depthAdjustmentController];
        if ([v27 enabled])
        {
          [v25 adjustmentConstants];
          v28 = v19;
          v30 = v29 = v15;
          [v30 PIDepthAdjustmentKey];
          v35 = v17;
          v31 = v23;
          v33 = v32 = v26;

          v15 = v29;
          v19 = v28;
          [v25 removeAdjustmentWithKey:v33];

          v26 = v32;
          v23 = v31;
          v17 = v35;
        }

        [v23 setCompositionController:{v25, v35}];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __57__PUFilterToolController__prepareThumbnailImagesIfNeeded__block_invoke;
        v36[3] = &unk_1E7B7DC60;
        v36[4] = self;
        v37 = v17;
        v38 = v15;
        time1 = v41;
        v34 = v17;
        [v23 renderImageWithTargetSize:1 contentMode:0 renderMode:&time1 renderTime:@"PUFilterToolController-prepareThumbs" name:v36 completion:{v20, v20}];
      }
    }
  }
}

void __57__PUFilterToolController__prepareThumbnailImagesIfNeeded__block_invoke(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695F658] imageWithCGImage:a2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PUFilterToolController__prepareThumbnailImagesIfNeeded__block_invoke_2;
  v8[3] = &unk_1E7B7FE10;
  v4 = a1[5];
  v8[4] = a1[4];
  v9 = v3;
  v5 = v4;
  v6 = a1[6];
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __57__PUFilterToolController__prepareThumbnailImagesIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateCacheWithCIImage:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FilterThumbnailGeneration", "", v7, 2u);
  }

  v5 = [*(a1 + 32) didFinishLoadingFilterThumbnails];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }
}

- (void)_updateWithCompositionController:(id)a3
{
  [(PUFilterToolController *)self _prepareThumbnailImagesIfNeeded];
  v4 = [(PUFilterToolController *)self _adjustedFilterIndex];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [(CEKWheelScrubberView *)self->_scrubberView setSelectedIndex:v5];
  [(CEKWheelScrubberView *)self->_scrubberView setMarkedIndex:-1];
  [(CEKWheelScrubberView *)self->_scrubberView setMarkedIndex:v5];
  [(PUFilterToolController *)self _adjustedFilterIntensity];
  [(CEKSlider *)self->_slider setValue:?];
  [(PUFilterToolController *)self _updateFilterIntensityCache];
  v6 = [(PUFilterToolController *)self _effectForIndex:v5];
  [(PUFilterToolController *)self _updateBadgeAndSliderWithEffect:v6];
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v14 = a3;
  if (self->_monitorAdjustmentsForCache)
  {
    [(NSMutableDictionary *)self->_filterThumbnailCache removeAllObjects];
  }

  v4 = [(PUPhotoEditToolController *)self compositionController];
  v5 = [v4 adjustmentConstants];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [v5 nonVisualAdjustmentTypes];
  v8 = [v6 setWithArray:v7];
  v9 = [v14 isSubsetOfSet:v8];

  v10 = [v5 PIEffectAdjustmentKey];
  if ([v14 containsObject:v10])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v5 PIEffect3DAdjustmentKey];
    v11 = [v14 containsObject:v12];
  }

  if (!(v9 & 1 | ![(PUPhotoEditToolController *)self isActiveTool]) && (v11 & 1) == 0)
  {
    [(NSMutableDictionary *)self->_filterThumbnailCache removeAllObjects];
LABEL_9:
    v13 = [(PUPhotoEditToolController *)self compositionController];
    [(PUFilterToolController *)self _updateWithCompositionController:v13];

    goto LABEL_11;
  }

  if (!self->_isScrubbing && !self->_isInteractingWithWheelScrubber && ((v11 ^ 1) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PUFilterToolController;
  v7 = a4;
  [(PUPhotoEditToolController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PUFilterToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

uint64_t __77__PUFilterToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1224) setSelectedIndex:{objc_msgSend(*(*(a1 + 32) + 1224), "selectedIndex")}];
  [*(*(a1 + 32) + 1232) value];
  v2 = *(*(a1 + 32) + 1232);

  return [v2 setValue:?];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v5 viewDidDisappear:a3];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_filterBadgeViewConstraints];
  filterBadgeViewConstraints = self->_filterBadgeViewConstraints;
  self->_filterBadgeViewConstraints = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v5 viewDidAppear:a3];
  v4 = [(PUFilterToolController *)self view];
  [v4 setNeedsUpdateConstraints];

  [(CEKSlider *)self->_slider value];
  [(CEKSlider *)self->_slider setValue:?];
}

- (void)didResignActiveTool
{
  v3.receiver = self;
  v3.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v3 didResignActiveTool];
  self->_monitorAdjustmentsForCache = 1;
}

- (void)willBecomeActiveTool
{
  v4.receiver = self;
  v4.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v4 willBecomeActiveTool];
  self->_monitorAdjustmentsForCache = 0;
  v3 = [(PUPhotoEditToolController *)self compositionController];
  [(PUFilterToolController *)self _updateWithCompositionController:v3];
}

- (void)decreaseSliderValue:(BOOL)a3
{
  [PUPhotoEditSupport changeValueOfSlider:self->_slider reverse:0 coarse:a3];
  slider = self->_slider;

  [(PUFilterToolController *)self sliderDidScroll:slider];
}

- (void)increaseSliderValue:(BOOL)a3
{
  [PUPhotoEditSupport changeValueOfSlider:self->_slider reverse:1 coarse:a3];
  slider = self->_slider;

  [(PUFilterToolController *)self sliderDidScroll:slider];
}

- (void)decreaseScrubberValue:(BOOL)a3
{
  if ([(CEKWheelScrubberView *)self->_scrubberView selectedIndex])
  {
    [(CEKWheelScrubberView *)self->_scrubberView setSelectedIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]- 1];
    scrubberView = self->_scrubberView;

    [(PUFilterToolController *)self wheelScrubberViewDidChangeSelectedIndex:scrubberView];
  }
}

- (void)increaseScrubberValue:(BOOL)a3
{
  v4 = [(CEKWheelScrubberView *)self->_scrubberView itemCount]- 1;
  v5 = [(CEKWheelScrubberView *)self->_scrubberView selectedIndex];
  if (v4 >= v5 + 1)
  {
    v4 = v5 + 1;
  }

  if ([(CEKWheelScrubberView *)self->_scrubberView selectedIndex]!= v4)
  {
    [(CEKWheelScrubberView *)self->_scrubberView setSelectedIndex:v4];
    scrubberView = self->_scrubberView;

    [(PUFilterToolController *)self wheelScrubberViewDidChangeSelectedIndex:scrubberView];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v3 viewDidLayoutSubviews];
  [(PUFilterToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PUFilterToolController;
  [(PUFilterToolController *)&v5 viewDidLoad];
  v3 = [(PUFilterToolController *)self view];
  [v3 addSubview:self->_filterBadgeView];
  v4 = [(PUPhotoEditToolController *)self toolContainerView];
  [v4 addSubview:self->_scrubberView];
  [v4 addSubview:self->_slider];
}

- (void)_setupSlider
{
  v3 = +[PUPhotoEditSupport createEditSlider];
  slider = self->_slider;
  self->_slider = v3;

  [(CEKSlider *)self->_slider setDelegate:self];
  [(CEKSlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CEKSlider *)self->_slider setMinimumValue:0.0];
  [(CEKSlider *)self->_slider setMaximumValue:1.0];
  [(CEKSlider *)self->_slider setDefaultValue:1.0];
  self->_isSliderTouchDown = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_slider;

    [(CEKSlider *)v5 setMarkedValue:0.5];
  }
}

- (void)_setupFilters
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = +[PUInterfaceManager currentTheme];
  self->_monitorAdjustmentsForCache = 1;
  v4 = MEMORY[0x1E695F620];
  v24 = *MEMORY[0x1E695F830];
  v25[0] = @"PUFilterToolController";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v6 = [v4 contextWithOptions:v5];
  context = self->_context;
  self->_context = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  filterThumbnailCache = self->_filterThumbnailCache;
  self->_filterThumbnailCache = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  filterIntensityCache = self->_filterIntensityCache;
  self->_filterIntensityCache = v10;

  if (MEMORY[0x1B8C6D660]())
  {
    v12 = [PUEditBadgeLabel alloc];
    v13 = +[PUInterfaceManager currentTheme];
    v14 = [(PUEditBadgeLabel *)v12 initWithText:0 style:1 interfaceTheme:v13];
    filterBadgeView = self->_filterBadgeView;
    self->_filterBadgeView = v14;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E6993830]);
    v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v18 = [v3 photoEditingBadgeViewFillColor];
    [(UIView *)v17 _setFillColor:v18];

    v19 = [v3 photoEditingBadgeViewContentColor];
    [(UIView *)v17 _setContentColor:v19];

    [(UIView *)v17 _setFillCornerRadius:4.0];
    [MEMORY[0x1E6993830] _defaultTextInsets];
    [(UIView *)v17 _setTextInsets:v23 + 1.0, v20 + 3.0, v22 + 1.0, v21 + 3.0];
    v13 = self->_filterBadgeView;
    self->_filterBadgeView = v17;
  }

  [(UIView *)self->_filterBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setupScrubber
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  formatter = self->_formatter;
  self->_formatter = v3;

  [(NSNumberFormatter *)self->_formatter setMultiplier:&unk_1F2B7EBE8];
  [(NSNumberFormatter *)self->_formatter setRoundingMode:4];
  v5 = objc_alloc(MEMORY[0x1E69938A0]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  scrubberView = self->_scrubberView;
  self->_scrubberView = v6;

  [(CEKWheelScrubberView *)self->_scrubberView setTransparentGradients];
  [(CEKWheelScrubberView *)self->_scrubberView setDelegate:self];
  [(CEKWheelScrubberView *)self->_scrubberView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x1E69BE668] standardSupportedEffects];
  -[CEKWheelScrubberView setItemCount:](self->_scrubberView, "setItemCount:", [v8 count]);

  [(CEKWheelScrubberView *)self->_scrubberView setDefaultIndex:0];
  [(CEKWheelScrubberView *)self->_scrubberView setSelectionDotCenterTopSpacing:9.0];
  [(CEKWheelScrubberView *)self->_scrubberView setCornerStyle:1];
  if (objc_opt_respondsToSelector())
  {
    [(CEKWheelScrubberView *)self->_scrubberView setUseSelectionLoupeShadow:1];
  }

  [(PUFilterToolController *)self _updateScrubberLayout];
}

- (PUFilterToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUFilterToolController;
  v4 = [(PUPhotoEditToolController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    commonInit_76694(v4);
  }

  return v5;
}

- (PUFilterToolController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUFilterToolController;
  v3 = [(PUFilterToolController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_76694(v3);
  }

  return v4;
}

@end