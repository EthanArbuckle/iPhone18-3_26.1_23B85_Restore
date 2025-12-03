@interface SBBannerPoofTransitionAnimator
+ (id)settings;
+ (void)performAnimationsForTransition:(id)transition completion:(id)completion;
- (BOOL)_viewHasGaussianBlurFilter:(id)filter;
- (id)settings;
- (void)_addGaussianBlurToViewIfNeeded:(id)needed inputRadius:(double)radius;
- (void)_removeBlurFilterFromView:(id)view;
- (void)performActionsForTransition:(id)transition;
- (void)prepareForTransition:(id)transition;
@end

@implementation SBBannerPoofTransitionAnimator

+ (id)settings
{
  if (settings_onceToken_1 != -1)
  {
    +[SBBannerPoofTransitionAnimator settings];
  }

  v3 = settings_settings_0;

  return v3;
}

void __42__SBBannerPoofTransitionAnimator_settings__block_invoke()
{
  v0 = +[SBBannerTransitionDomain rootSettings];
  v1 = settings_settings_0;
  settings_settings_0 = v0;
}

+ (void)performAnimationsForTransition:(id)transition completion:(id)completion
{
  v6 = MEMORY[0x277D75D18];
  completionCopy = completion;
  transitionCopy = transition;
  settings = [self settings];
  customBannerTransitionStylePoof = [settings customBannerTransitionStylePoof];
  [v6 sb_animateWithSettings:customBannerTransitionStylePoof mode:3 animations:transitionCopy completion:completionCopy];
}

- (id)settings
{
  v2 = objc_opt_class();

  return [v2 settings];
}

- (void)prepareForTransition:(id)transition
{
  transitionCopy = transition;
  transitionView = [transitionCopy transitionView];
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    settings = [(SBBannerPoofTransitionAnimator *)self settings];
    [settings poofInitialBlurRadius];
    [(SBBannerPoofTransitionAnimator *)self _addGaussianBlurToViewIfNeeded:transitionView inputRadius:?];
  }

  else
  {
    [(SBBannerPoofTransitionAnimator *)self _addGaussianBlurToViewIfNeeded:transitionView inputRadius:0.0];
  }

  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    transitionView2 = [transitionCopy transitionView];
    [transitionView2 frame];
    IsEmpty = CGRectIsEmpty(v29);

    if (IsEmpty)
    {
      settings2 = [(SBBannerPoofTransitionAnimator *)self settings];
      [settings2 poofInitialScale];
      v11 = v10;

      [transitionCopy finalFrame];
      v13 = v12;
      [transitionCopy finalContentFrame];
      UIRectGetCenter();
      v15 = v14;
      transitionView3 = [transitionCopy transitionView];
      [transitionCopy finalFrame];
      [transitionView3 setFrame:?];

      transitionView4 = [transitionCopy transitionView];
      [transitionView4 setAlpha:0.0];

      transitionView5 = [transitionCopy transitionView];
      CGAffineTransformMakeScale(&v28, v11, v11);
      [transitionView5 setTransform:&v28];

      [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:1.0];
      transitionView6 = [transitionCopy transitionView];
      [transitionView6 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;

      transitionView7 = [transitionCopy transitionView];
      [transitionView7 setFrame:{v21, v13 + v15 * (1.0 - v11), v23, v25}];
    }
  }

  transitionView8 = [transitionCopy transitionView];
  [transitionView8 setClipsToBounds:0];
}

- (void)performActionsForTransition:(id)transition
{
  transitionCopy = transition;
  transitionView = [transitionCopy transitionView];
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    [transitionView setAlpha:1.0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v31.a = *MEMORY[0x277CBF2C0];
    *&v31.c = v6;
    *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
    [transitionView setTransform:&v31];
    [transitionCopy finalFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [transitionView setFrame:{v8, v10, v12, v14}];
    layer = [transitionView layer];
    [layer setValue:&unk_28336F240 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:0.0];
  }

  else
  {
    settings = [(SBBannerPoofTransitionAnimator *)self settings];
    [settings poofDismissedScale];
    v18 = v17;

    [transitionCopy initialFrame];
    [transitionCopy initialContentFrame];
    UIRectGetCenter();
    [transitionCopy initialFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [transitionView setFrame:{v20, v22, v24, v26}];
    [transitionView setAlpha:0.0];
    CGAffineTransformMakeScale(&v31, v18, v18);
    [transitionView setTransform:&v31];
    layer2 = [transitionView layer];
    v28 = MEMORY[0x277CCABB0];
    settings2 = [(SBBannerPoofTransitionAnimator *)self settings];
    [settings2 poofDismissedBlurRadius];
    v30 = [v28 numberWithDouble:?];
    [layer2 setValue:v30 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [transitionView frame];
    [transitionView setFrame:?];
  }
}

- (BOOL)_viewHasGaussianBlurFilter:(id)filter
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layer = [filter layer];
  filters = [layer filters];

  v5 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x277CDA328];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(filters);
        }

        name = [*(*(&v14 + 1) + 8 * i) name];
        v11 = [name isEqualToString:v8];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_addGaussianBlurToViewIfNeeded:(id)needed inputRadius:(double)radius
{
  v26[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (![(SBBannerPoofTransitionAnimator *)self _viewHasGaussianBlurFilter:neededCopy])
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"default" forKey:@"inputQuality"];
    [v7 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v9 = MEMORY[0x277CBEC28];
    [v7 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
    [v7 setValue:v9 forKey:@"inputHardEdges"];
    layer = [neededCopy layer];
    filters = [layer filters];
    v12 = [filters mutableCopy];

    [v12 addObject:v7];
    layer2 = [neededCopy layer];
    v26[0] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [layer2 setFilters:v14];
  }

  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    if (!self->_blurProgressProperty)
    {
      v15 = objc_alloc_init(MEMORY[0x277D75D38]);
      blurProgressProperty = self->_blurProgressProperty;
      self->_blurProgressProperty = v15;
    }

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_blurProgressProperty);
    v17 = MEMORY[0x277D75D18];
    v25 = self->_blurProgressProperty;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__SBBannerPoofTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke;
    v19[3] = &unk_2783A8D08;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    v20 = neededCopy;
    [v17 _createTransformerWithInputAnimatableProperties:v18 presentationValueChangedCallback:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __77__SBBannerPoofTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained isInvalidated];
    [v7 presentationValue];
    v5 = BSFloatLessThanOrEqualToFloat();
    v3 = v7;
    if (v5)
    {
      if ((v4 & 1) == 0)
      {
        v6 = objc_loadWeakRetained((a1 + 48));
        [v6 _removeBlurFilterFromView:*(a1 + 32)];

        [v7 invalidate];
        v3 = v7;
      }
    }
  }
}

- (void)_removeBlurFilterFromView:(id)view
{
  layer = [view layer];
  [layer setFilters:0];
}

@end