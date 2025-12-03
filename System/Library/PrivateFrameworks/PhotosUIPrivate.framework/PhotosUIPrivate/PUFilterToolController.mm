@interface PUFilterToolController
- (PUFilterToolController)initWithCoder:(id)coder;
- (PUFilterToolController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_adjustedFilterIntensity;
- (id)_adjustedFilterName;
- (id)_effectAdjustment;
- (id)_effectForIndex:(int64_t)index;
- (id)centerToolbarView;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (int64_t)_adjustedFilterIndex;
- (int64_t)_indexForFilterId:(id)id;
- (void)_prepareThumbnailImagesIfNeeded;
- (void)_setShowSlider:(BOOL)slider animate:(BOOL)animate;
- (void)_setupFilters;
- (void)_setupScrubber;
- (void)_setupSlider;
- (void)_sliderDidEndScrolling;
- (void)_updateBadgeAndSliderWithEffect:(id)effect;
- (void)_updateBadgeConstraints;
- (void)_updateCacheWithCIImage:(id)image;
- (void)_updateCompositionControllerWithEffect:(id)effect;
- (void)_updateFilterIntensityCache;
- (void)_updateScrubberLayout;
- (void)_updateSelectionTextAnimate:(BOOL)animate;
- (void)_updateToolConstraints;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)_updateWithCompositionController:(id)controller;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)decreaseScrubberValue:(BOOL)value;
- (void)decreaseSliderValue:(BOOL)value;
- (void)didResignActiveTool;
- (void)increaseScrubberValue:(BOOL)value;
- (void)increaseSliderValue:(BOOL)value;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderDidScroll:(id)scroll;
- (void)sliderWillBeginScrolling:(id)scrolling;
- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wheelScrubberView:(id)view updateCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index;
- (void)wheelScrubberViewDidEndScrolling:(id)scrolling;
- (void)wheelScrubberViewWillBeginScrolling:(id)scrolling;
- (void)willBecomeActiveTool;
@end

@implementation PUFilterToolController

- (void)sliderDidEndScrolling:(id)scrolling
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  [(PUFilterToolController *)self _sliderDidEndScrolling];
  v5 = PULocalizedString(@"PHOTOEDIT_FILTER_INTENSITY_ACTION_TITLE");
  v4 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];
}

- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0, offset, velocity.x, velocity.y];
  if (x == 0.0)
  {

    [(PUFilterToolController *)self _sliderDidEndScrolling];
  }
}

- (void)sliderDidScroll:(id)scroll
{
  v7 = [(PUFilterToolController *)self _effectForIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]];
  if (v7)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    [(CEKSlider *)self->_slider value];
    [PUPhotoEditEffectsSupport updateCompositionController:compositionController withEffect:v7 intensity:1 updateVersion:?];

    v5 = PULocalizedString(@"PHOTOEDIT_FILTER_INTENSITY_ACTION_TITLE");
    v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];
  }

  [(PUFilterToolController *)self _updateSelectionTextAnimate:1];
}

- (void)sliderWillBeginScrolling:(id)scrolling
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

- (void)_updateSelectionTextAnimate:(BOOL)animate
{
  animateCopy = animate;
  if (self->_isSliderTouchDown)
  {
    v5 = MEMORY[0x1E696AD98];
    [(CEKSlider *)self->_slider value];
    v8 = [v5 numberWithDouble:?];
    v6 = [(NSNumberFormatter *)self->_formatter stringFromNumber:v8];
    [(CEKWheelScrubberView *)self->_scrubberView setSelectionText:v6 animated:animateCopy];
  }

  else
  {
    scrubberView = self->_scrubberView;

    [(CEKWheelScrubberView *)scrubberView setSelectionText:0 animated:animate];
  }
}

- (void)_updateCompositionControllerWithEffect:(id)effect
{
  effectCopy = effect;
  v13 = effectCopy;
  if (effectCopy)
  {
    filterIntensityCache = self->_filterIntensityCache;
    filterIdentifier = [effectCopy filterIdentifier];
    v7 = [(NSMutableDictionary *)filterIntensityCache objectForKey:filterIdentifier];

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
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  [PUPhotoEditEffectsSupport updateCompositionController:compositionController withEffect:v13 intensity:1 updateVersion:v9];

  v11 = PULocalizedString(@"PHOTOEDIT_FILTER_ACTION_TITLE");
  v12 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v11];
}

- (void)wheelScrubberViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  self->_isScrubbing = 0;
  [(CEKSlider *)self->_slider setEnabled:1 dimmed:0 animated:1];
  v5 = PULocalizedString(@"PHOTOEDIT_FILTER_ACTION_TITLE");
  v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

  selectedIndex = [scrollingCopy selectedIndex];
  v8 = [(PUFilterToolController *)self _effectForIndex:selectedIndex];
  [(PUFilterToolController *)self _updateCompositionControllerWithEffect:v8];
}

- (void)wheelScrubberViewWillBeginScrolling:(id)scrolling
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  self->_isScrubbing = 1;
  [(CEKSlider *)self->_slider setEnabled:0 dimmed:1 animated:1];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
}

- (void)wheelScrubberView:(id)view updateCell:(id)cell forItemAtIndex:(unint64_t)index
{
  cellCopy = cell;
  v7 = [(PUFilterToolController *)self _effectForIndex:index];
  filterIdentifier = [v7 filterIdentifier];
  if (!filterIdentifier)
  {
    filterIdentifier = *MEMORY[0x1E69BEC10];
  }

  v9 = [(NSMutableDictionary *)self->_filterThumbnailCache objectForKey:filterIdentifier];
  if (v9)
  {
    itemView = [cellCopy itemView];
    layer = [itemView layer];

    layoutDirection = [(CEKWheelScrubberView *)self->_scrubberView layoutDirection];
    if (index)
    {
      standardSupportedEffects = [MEMORY[0x1E69BE668] standardSupportedEffects];
      v14 = [standardSupportedEffects count] - 1;

      if (v14 != index)
      {
LABEL_12:
        context = self->_context;
        [v9 extent];
        v20 = [(CIContext *)context createCGImage:v9 fromRect:?];
        [layer setContents:v20];
        CGImageRelease(v20);

        goto LABEL_13;
      }

      [layer setCornerRadius:5.0];
      v15 = layoutDirection == 0;
      v16 = 12;
      v17 = 10;
    }

    else
    {
      [layer setCornerRadius:5.0];
      v15 = layoutDirection == 0;
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

    [layer setMaskedCorners:v18];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index
{
  self->_isInteractingWithWheelScrubber = 1;
  v4 = -[PUFilterToolController _effectForIndex:](self, "_effectForIndex:", [index selectedIndex]);
  [(PUFilterToolController *)self _updateCompositionControllerWithEffect:v4];
  [(PUFilterToolController *)self _updateBadgeAndSliderWithEffect:v4];
  self->_isInteractingWithWheelScrubber = 0;
}

- (void)_updateFilterIntensityCache
{
  if (self->_slider)
  {
    v7 = [(PUFilterToolController *)self _effectForIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]];
    filterIdentifier = [v7 filterIdentifier];
    if (filterIdentifier)
    {
      filterIntensityCache = self->_filterIntensityCache;
      v5 = MEMORY[0x1E696AD98];
      [(CEKSlider *)self->_slider value];
      v6 = [v5 numberWithDouble:?];
      [(NSMutableDictionary *)filterIntensityCache setObject:v6 forKey:filterIdentifier];
    }
  }
}

- (void)_setShowSlider:(BOOL)slider animate:(BOOL)animate
{
  animateCopy = animate;
  sliderCopy = slider;
  if ([(CEKSlider *)self->_slider isHidden]== slider)
  {
    v7 = 0.0;
    if (sliderCopy)
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
    if (animateCopy)
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
      v12 = sliderCopy;
      [v10 animateWithDuration:v13 animations:v11 completion:0.25];
    }

    else
    {
      v8[2](v8);
      [(CEKSlider *)self->_slider setHidden:!sliderCopy];
    }
  }
}

- (void)_updateBadgeAndSliderWithEffect:(id)effect
{
  effectCopy = effect;
  v4 = MEMORY[0x1E69BE668];
  filterIdentifier = [effectCopy filterIdentifier];
  v6 = [v4 isEffectNoneForIdentifier:filterIdentifier];

  if (!effectCopy)
  {
    effectCopy = [MEMORY[0x1E69BE668] effectWithIdentifier:*MEMORY[0x1E69BEC10]];
    v6 = 1;
  }

  [(PUFilterToolController *)self _setShowSlider:v6 ^ 1u animate:1];
  displayName = [effectCopy displayName];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [displayName componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v10 = [v9 componentsJoinedByString:@" "];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v12 = [v10 uppercaseStringWithLocale:currentLocale];

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

- (int64_t)_indexForFilterId:(id)id
{
  v3 = MEMORY[0x1E69BE668];
  idCopy = id;
  standardSupportedEffects = [v3 standardSupportedEffects];
  v6 = [MEMORY[0x1E69BE668] effectWithIdentifier:idCopy];

  v7 = [standardSupportedEffects indexOfObject:v6];
  return v7;
}

- (id)_effectForIndex:(int64_t)index
{
  standardSupportedEffects = [MEMORY[0x1E69BE668] standardSupportedEffects];
  v5 = standardSupportedEffects;
  if (index < 1 || [standardSupportedEffects count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (double)_adjustedFilterIntensity
{
  _effectAdjustment = [(PUFilterToolController *)self _effectAdjustment];
  v3 = _effectAdjustment;
  if (_effectAdjustment)
  {
    [_effectAdjustment intensity];
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
  _effectAdjustment = [(PUFilterToolController *)self _effectAdjustment];
  kind = [_effectAdjustment kind];

  return kind;
}

- (id)_effectAdjustment
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  compositionKeys = [compositionController compositionKeys];
  adjustmentConstants = [MEMORY[0x1E69BE360] adjustmentConstants];
  pIEffect3DAdjustmentKey = [adjustmentConstants PIEffect3DAdjustmentKey];
  v6 = [compositionKeys containsObject:pIEffect3DAdjustmentKey];

  if (v6)
  {
    [compositionController effect3DAdjustmentController];
  }

  else
  {
    [compositionController effectAdjustmentController];
  }
  v7 = ;

  return v7;
}

- (int64_t)_adjustedFilterIndex
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [MEMORY[0x1E69BE360] adjustmentConstants];
  pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
  v6 = [compositionController adjustmentControllerForKey:pIPortraitAdjustmentKey];

  if ([v6 enabled])
  {
    v7 = 0;
  }

  else
  {
    _adjustedFilterName = [(PUFilterToolController *)self _adjustedFilterName];
    v7 = [(PUFilterToolController *)self _indexForFilterId:_adjustedFilterName];
  }

  return v7;
}

- (id)viewsActivatingToolControlShadow
{
  v10[1] = *MEMORY[0x1E69E9840];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle == 4)
    {
      slider = self->_slider;
      p_slider = &slider;
      goto LABEL_6;
    }
  }

  else if (layoutOrientation == 2)
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
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle != 4)
    {
      slider = self->_slider;
      p_slider = &slider;
      goto LABEL_7;
    }

LABEL_5:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (layoutOrientation != 1)
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
  localizedUppercaseString = [v3 localizedUppercaseString];

  photoEditingTopToolbarToolLabelButtonColor = [v2 photoEditingTopToolbarToolLabelButtonColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:localizedUppercaseString];
  [v6 setTextColor:photoEditingTopToolbarToolLabelButtonColor];
  topToolbarToolLabelFont = [v2 topToolbarToolLabelFont];
  [v6 setFont:topToolbarToolLabelFont];

  return v6;
}

- (void)_updateToolLabelAppearanceIfNeeded
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];

    v4 = self->_filterBadgeView;
    [(UIView *)v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [mediaView imageFrame];
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
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  v5 = currentLayoutStyle == 4 || [(PUPhotoEditToolController *)self layoutOrientation]!= 1;
  [(CEKWheelScrubberView *)self->_scrubberView setLayoutDirection:v5];
  [(CEKWheelScrubberView *)self->_scrubberView setLayoutOrder:0];
  scrubberView = self->_scrubberView;

  [(CEKWheelScrubberView *)scrubberView setDotPlacement:v5];
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v8 setLayoutOrientation:orientation withTransitionCoordinator:coordinator];
  if (self->_scrubberView)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_filterBadgeViewConstraints];
    filterBadgeViewConstraints = self->_filterBadgeViewConstraints;
    self->_filterBadgeViewConstraints = 0;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolConstraints];
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = 0;

    view = [(PUFilterToolController *)self view];
    [view setNeedsUpdateConstraints];

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

    delegate = [(PUPhotoEditToolController *)self delegate];
    v6 = [delegate toolControllerMainContainerView:self];

    v27 = v6;
    if (v6)
    {
      view = v6;
    }

    else
    {
      view = [(PUFilterToolController *)self view];
    }

    v8 = view;
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    if (currentLayoutStyle == 4)
    {
      v11 = self->_filterBadgeViewConstraints;
      rightAnchor = [(UIView *)self->_filterBadgeView rightAnchor];
      leftAnchor = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
      v26 = rightAnchor;
      topAnchor = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-6.0];
      v28[0] = topAnchor;
      centerYAnchor = [(UIView *)self->_filterBadgeView centerYAnchor];
      centerYAnchor2 = [(CEKWheelScrubberView *)self->_scrubberView centerYAnchor];
      centerXAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v28[1] = centerXAnchor;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v19 = v18 = v8;
      [(NSMutableArray *)v11 addObjectsFromArray:v19];
    }

    else
    {
      layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
      v25 = self->_filterBadgeViewConstraints;
      bottomAnchor = [(UIView *)self->_filterBadgeView bottomAnchor];
      v26 = bottomAnchor;
      if (layoutOrientation == 1)
      {
        leftAnchor = [(PUPhotoEditToolController *)self toolContainerView];
        topAnchor = [leftAnchor topAnchor];
        centerYAnchor = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-6.0];
        v30[0] = centerYAnchor;
        centerYAnchor2 = [(UIView *)self->_filterBadgeView centerXAnchor];
        centerXAnchor = [v8 centerXAnchor];
        [centerYAnchor2 constraintEqualToAnchor:centerXAnchor];
        v19 = v18 = v8;
        v30[1] = v19;
        v22 = MEMORY[0x1E695DEC8];
        v23 = v30;
      }

      else
      {
        leftAnchor = [v8 safeAreaLayoutGuide];
        topAnchor = [leftAnchor bottomAnchor];
        centerYAnchor = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-0.0];
        v29[0] = centerYAnchor;
        centerYAnchor2 = [(UIView *)self->_filterBadgeView centerXAnchor];
        centerXAnchor = [v8 centerXAnchor];
        [centerYAnchor2 constraintEqualToAnchor:centerXAnchor];
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
  delegate = [(PUPhotoEditToolController *)self delegate];
  v4 = [delegate toolControllerMainContainerView:self];

  if (v4 && !self->_toolConstraints)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = v5;

    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
    slider = self->_slider;
    v121 = toolContainerView;
    if (slider)
    {
      if (layoutOrientation != 1 || currentLayoutStyle == 4)
      {
        v114 = currentLayoutStyle;
        v44 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [toolContainerView addLayoutGuide:?];
        v79 = self->_toolConstraints;
        widthAnchor = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v102 = [widthAnchor constraintEqualToConstant:75.0];
        v129[0] = v102;
        heightAnchor = [toolContainerView heightAnchor];
        heightAnchor2 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v89 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v129[1] = v89;
        centerYAnchor = [v4 centerYAnchor];
        centerYAnchor2 = [(CEKWheelScrubberView *)self->_scrubberView centerYAnchor];
        v80 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v129[2] = v80;
        topAnchor = [toolContainerView topAnchor];
        topAnchor2 = [(CEKWheelScrubberView *)self->_scrubberView topAnchor];
        v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v129[3] = v76;
        widthAnchor2 = [v44 widthAnchor];
        v45 = [widthAnchor2 constraintEqualToConstant:66.0];
        v129[4] = v45;
        heightAnchor3 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v120 = v44;
        heightAnchor4 = [v44 heightAnchor];
        v48 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
        v129[5] = v48;
        centerYAnchor3 = [v4 centerYAnchor];
        centerYAnchor4 = [v44 centerYAnchor];
        v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v129[6] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:7];
        [(NSMutableArray *)v79 addObjectsFromArray:v52];

        v98 = self->_toolConstraints;
        leftAnchor = [v121 leftAnchor];
        leftAnchor2 = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
        v53 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        v128[0] = v53;
        rightAnchor = [v121 rightAnchor];
        rightAnchor2 = [v120 rightAnchor];
        v56 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
        v128[1] = v56;
        rightAnchor3 = [(CEKWheelScrubberView *)self->_scrubberView rightAnchor];
        leftAnchor3 = [v120 leftAnchor];
        v59 = [rightAnchor3 constraintEqualToAnchor:leftAnchor3 constant:43.0];
        v128[2] = v59;
        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
        [(NSMutableArray *)v98 addObjectsFromArray:v60];

        v86 = self->_toolConstraints;
        heightAnchor5 = [(CEKSlider *)self->_slider heightAnchor];
        widthAnchor3 = [v120 widthAnchor];
        v99 = [heightAnchor5 constraintEqualToAnchor:widthAnchor3];
        v127[0] = v99;
        widthAnchor4 = [(CEKSlider *)self->_slider widthAnchor];
        heightAnchor6 = [v120 heightAnchor];
        v61 = [widthAnchor4 constraintEqualToAnchor:heightAnchor6];
        v127[1] = v61;
        centerXAnchor = [(CEKSlider *)self->_slider centerXAnchor];
        centerXAnchor2 = [v120 centerXAnchor];
        v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v127[2] = v64;
        centerYAnchor5 = [(CEKSlider *)self->_slider centerYAnchor];
        centerYAnchor6 = [v120 centerYAnchor];
        v67 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
        v127[3] = v67;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:4];
        [(NSMutableArray *)v86 addObjectsFromArray:v68];

        if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
        {
          v69 = -1.57079633;
        }

        else
        {
          layoutOrientation2 = [(PUPhotoEditToolController *)self layoutOrientation];
          v73 = v114 == 4 || layoutOrientation2 == 2;
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
        heightAnchor7 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v111 = [heightAnchor7 constraintEqualToConstant:75.0];
        v131[0] = v111;
        widthAnchor5 = [toolContainerView widthAnchor];
        widthAnchor6 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v15 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
        v131[1] = v15;
        centerXAnchor3 = [toolContainerView centerXAnchor];
        centerXAnchor4 = [(CEKWheelScrubberView *)self->_scrubberView centerXAnchor];
        v18 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v131[2] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
        [(NSMutableArray *)v105 addObjectsFromArray:v19];

        v91 = self->_toolConstraints;
        heightAnchor8 = [(CEKSlider *)self->_slider heightAnchor];
        v112 = [heightAnchor8 constraintEqualToConstant:66.0];
        v130[0] = v112;
        widthAnchor7 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        widthAnchor8 = [(CEKSlider *)self->_slider widthAnchor];
        v95 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
        v130[1] = v95;
        centerXAnchor5 = [v121 centerXAnchor];
        centerXAnchor6 = [(CEKSlider *)self->_slider centerXAnchor];
        v81 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
        v130[2] = v81;
        bottomAnchor = [v121 bottomAnchor];
        bottomAnchor2 = [(CEKSlider *)self->_slider bottomAnchor];
        v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:5.0];
        v130[3] = v22;
        bottomAnchor3 = [(CEKWheelScrubberView *)self->_scrubberView bottomAnchor];
        topAnchor3 = [(CEKSlider *)self->_slider topAnchor];
        v25 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:21.0];
        v130[4] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:5];
        [(NSMutableArray *)v91 addObjectsFromArray:v26];

        v27 = v121;
        v28 = heightAnchor8;
      }
    }

    else
    {
      v113 = currentLayoutStyle;
      v88 = self->_toolConstraints;
      leftAnchor4 = [toolContainerView leftAnchor];
      leftAnchor5 = [(CEKWheelScrubberView *)self->_scrubberView leftAnchor];
      v107 = [leftAnchor4 constraintEqualToAnchor:leftAnchor5];
      v126[0] = v107;
      rightAnchor4 = [toolContainerView rightAnchor];
      rightAnchor5 = [(CEKWheelScrubberView *)self->_scrubberView rightAnchor];
      v84 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
      v126[1] = v84;
      topAnchor4 = [toolContainerView topAnchor];
      topAnchor5 = [(CEKWheelScrubberView *)self->_scrubberView topAnchor];
      [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v31 = v96 = layoutOrientation;
      v126[2] = v31;
      bottomAnchor4 = [toolContainerView bottomAnchor];
      bottomAnchor5 = [(CEKWheelScrubberView *)self->_scrubberView bottomAnchor];
      v34 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v126[3] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:4];
      [(NSMutableArray *)v88 addObjectsFromArray:v35];

      v119 = self->_toolConstraints;
      scrubberView = self->_scrubberView;
      if (v96 != 1 || v113 == 4)
      {
        widthAnchor9 = [(CEKWheelScrubberView *)scrubberView widthAnchor];
        v38 = [widthAnchor9 constraintEqualToConstant:75.0];
        v124[0] = v38;
        v27 = v121;
        heightAnchor9 = [v121 heightAnchor];
        v28 = widthAnchor9;
        heightAnchor10 = [(CEKWheelScrubberView *)self->_scrubberView heightAnchor];
        v41 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10];
        v124[1] = v41;
        v42 = MEMORY[0x1E695DEC8];
        v43 = v124;
      }

      else
      {
        heightAnchor11 = [(CEKWheelScrubberView *)scrubberView heightAnchor];
        v38 = [heightAnchor11 constraintEqualToConstant:75.0];
        v125[0] = v38;
        v27 = v121;
        heightAnchor9 = [v121 widthAnchor];
        v28 = heightAnchor11;
        heightAnchor10 = [(CEKWheelScrubberView *)self->_scrubberView widthAnchor];
        v41 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10];
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

- (void)_updateCacheWithCIImage:(id)image
{
  v22 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    standardSupportedEffects = [MEMORY[0x1E69BE668] standardSupportedEffects];
    v6 = [standardSupportedEffects countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(standardSupportedEffects);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          filterIdentifier = [v10 filterIdentifier];
          if (filterIdentifier)
          {
            v12 = imageCopy;
            newEffectFilter = [v10 newEffectFilter];
            v14 = newEffectFilter;
            if (newEffectFilter)
            {
              [newEffectFilter setValue:v12 forKey:v16];
              outputImage = [v14 outputImage];

              v12 = outputImage;
            }

            [(NSMutableDictionary *)self->_filterThumbnailCache setObject:v12 forKey:filterIdentifier];
          }
        }

        v7 = [standardSupportedEffects countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [(CEKWheelScrubberView *)self->_scrubberView updateItems];
  }
}

- (void)_prepareThumbnailImagesIfNeeded
{
  editSource = [(PUPhotoEditToolController *)self editSource];
  if (editSource)
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    enableEnterEditFilterThumbnailGeneration = [v4 enableEnterEditFilterThumbnailGeneration];

    if (enableEnterEditFilterThumbnailGeneration)
    {
      v6 = [(NSMutableDictionary *)self->_filterThumbnailCache count];
      memset(&v41, 0, sizeof(v41));
      delegate = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate mediaView];
      player = [mediaView player];
      v10 = player;
      if (player)
      {
        [player currentTime];
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
        px_screen = [(PUFilterToolController *)self px_screen];
        [px_screen scale];
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

        willLoadFilterThumbnails = [(PUFilterToolController *)self willLoadFilterThumbnails];
        v19 = willLoadFilterThumbnails;
        if (willLoadFilterThumbnails)
        {
          (*(willLoadFilterThumbnails + 16))(willLoadFilterThumbnails);
        }

        v20 = v13 * 51.0;
        v21 = objc_alloc(MEMORY[0x1E69BE658]);
        editSource2 = [(PUPhotoEditToolController *)self editSource];
        v23 = [v21 initWithEditSource:editSource2];

        compositionController = [(PUPhotoEditToolController *)self compositionController];
        v25 = [compositionController copy];

        v26 = [MEMORY[0x1E69BE668] effectWithIdentifier:*MEMORY[0x1E69BEC10]];
        [PUPhotoEditEffectsSupport updateCompositionController:v25 withEffect:v26 updateVersion:0];
        depthAdjustmentController = [v25 depthAdjustmentController];
        if ([depthAdjustmentController enabled])
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

- (void)_updateWithCompositionController:(id)controller
{
  [(PUFilterToolController *)self _prepareThumbnailImagesIfNeeded];
  _adjustedFilterIndex = [(PUFilterToolController *)self _adjustedFilterIndex];
  if (_adjustedFilterIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = _adjustedFilterIndex;
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

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  if (self->_monitorAdjustmentsForCache)
  {
    [(NSMutableDictionary *)self->_filterThumbnailCache removeAllObjects];
  }

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];

  v6 = MEMORY[0x1E695DFD8];
  nonVisualAdjustmentTypes = [adjustmentConstants nonVisualAdjustmentTypes];
  v8 = [v6 setWithArray:nonVisualAdjustmentTypes];
  v9 = [adjustmentsCopy isSubsetOfSet:v8];

  pIEffectAdjustmentKey = [adjustmentConstants PIEffectAdjustmentKey];
  if ([adjustmentsCopy containsObject:pIEffectAdjustmentKey])
  {
    v11 = 1;
  }

  else
  {
    pIEffect3DAdjustmentKey = [adjustmentConstants PIEffect3DAdjustmentKey];
    v11 = [adjustmentsCopy containsObject:pIEffect3DAdjustmentKey];
  }

  if (!(v9 & 1 | ![(PUPhotoEditToolController *)self isActiveTool]) && (v11 & 1) == 0)
  {
    [(NSMutableDictionary *)self->_filterThumbnailCache removeAllObjects];
LABEL_9:
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    [(PUFilterToolController *)self _updateWithCompositionController:compositionController2];

    goto LABEL_11;
  }

  if (!self->_isScrubbing && !self->_isInteractingWithWheelScrubber && ((v11 ^ 1) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PUFilterToolController;
  coordinatorCopy = coordinator;
  [(PUPhotoEditToolController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PUFilterToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

uint64_t __77__PUFilterToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1224) setSelectedIndex:{objc_msgSend(*(*(a1 + 32) + 1224), "selectedIndex")}];
  [*(*(a1 + 32) + 1232) value];
  v2 = *(*(a1 + 32) + 1232);

  return [v2 setValue:?];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v5 viewDidDisappear:disappear];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_filterBadgeViewConstraints];
  filterBadgeViewConstraints = self->_filterBadgeViewConstraints;
  self->_filterBadgeViewConstraints = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PUFilterToolController;
  [(PUPhotoEditToolController *)&v5 viewDidAppear:appear];
  view = [(PUFilterToolController *)self view];
  [view setNeedsUpdateConstraints];

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
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  [(PUFilterToolController *)self _updateWithCompositionController:compositionController];
}

- (void)decreaseSliderValue:(BOOL)value
{
  [PUPhotoEditSupport changeValueOfSlider:self->_slider reverse:0 coarse:value];
  slider = self->_slider;

  [(PUFilterToolController *)self sliderDidScroll:slider];
}

- (void)increaseSliderValue:(BOOL)value
{
  [PUPhotoEditSupport changeValueOfSlider:self->_slider reverse:1 coarse:value];
  slider = self->_slider;

  [(PUFilterToolController *)self sliderDidScroll:slider];
}

- (void)decreaseScrubberValue:(BOOL)value
{
  if ([(CEKWheelScrubberView *)self->_scrubberView selectedIndex])
  {
    [(CEKWheelScrubberView *)self->_scrubberView setSelectedIndex:[(CEKWheelScrubberView *)self->_scrubberView selectedIndex]- 1];
    scrubberView = self->_scrubberView;

    [(PUFilterToolController *)self wheelScrubberViewDidChangeSelectedIndex:scrubberView];
  }
}

- (void)increaseScrubberValue:(BOOL)value
{
  v4 = [(CEKWheelScrubberView *)self->_scrubberView itemCount]- 1;
  selectedIndex = [(CEKWheelScrubberView *)self->_scrubberView selectedIndex];
  if (v4 >= selectedIndex + 1)
  {
    v4 = selectedIndex + 1;
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
  view = [(PUFilterToolController *)self view];
  [view addSubview:self->_filterBadgeView];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView addSubview:self->_scrubberView];
  [toolContainerView addSubview:self->_slider];
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
    photoEditingBadgeViewFillColor = [v3 photoEditingBadgeViewFillColor];
    [(UIView *)v17 _setFillColor:photoEditingBadgeViewFillColor];

    photoEditingBadgeViewContentColor = [v3 photoEditingBadgeViewContentColor];
    [(UIView *)v17 _setContentColor:photoEditingBadgeViewContentColor];

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
  standardSupportedEffects = [MEMORY[0x1E69BE668] standardSupportedEffects];
  -[CEKWheelScrubberView setItemCount:](self->_scrubberView, "setItemCount:", [standardSupportedEffects count]);

  [(CEKWheelScrubberView *)self->_scrubberView setDefaultIndex:0];
  [(CEKWheelScrubberView *)self->_scrubberView setSelectionDotCenterTopSpacing:9.0];
  [(CEKWheelScrubberView *)self->_scrubberView setCornerStyle:1];
  if (objc_opt_respondsToSelector())
  {
    [(CEKWheelScrubberView *)self->_scrubberView setUseSelectionLoupeShadow:1];
  }

  [(PUFilterToolController *)self _updateScrubberLayout];
}

- (PUFilterToolController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PUFilterToolController;
  v4 = [(PUPhotoEditToolController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    commonInit_76694(v4);
  }

  return v5;
}

- (PUFilterToolController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUFilterToolController;
  v3 = [(PUFilterToolController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_76694(v3);
  }

  return v4;
}

@end