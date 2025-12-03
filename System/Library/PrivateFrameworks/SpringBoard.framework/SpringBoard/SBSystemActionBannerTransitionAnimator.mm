@interface SBSystemActionBannerTransitionAnimator
+ (id)settings;
+ (void)performAnimationsForTransition:(id)transition completion:(id)completion;
- (BOOL)_viewHasGaussianBlurFilter:(id)filter;
- (id)settings;
- (void)_addGaussianBlurToViewIfNeeded:(id)needed inputRadius:(double)radius;
- (void)_removeBlurFilterFromView:(id)view;
- (void)performActionsForTransition:(id)transition;
- (void)prepareForTransition:(id)transition;
@end

@implementation SBSystemActionBannerTransitionAnimator

+ (id)settings
{
  if (settings_onceToken != -1)
  {
    +[SBSystemActionBannerTransitionAnimator settings];
  }

  v3 = settings_settings;

  return v3;
}

void __50__SBSystemActionBannerTransitionAnimator_settings__block_invoke()
{
  v0 = +[SBBannerTransitionDomain rootSettings];
  v1 = settings_settings;
  settings_settings = v0;
}

+ (void)performAnimationsForTransition:(id)transition completion:(id)completion
{
  v6 = MEMORY[0x277D75D18];
  completionCopy = completion;
  transitionCopy = transition;
  settings = [self settings];
  customBannerTransitionStyleSystemAction = [settings customBannerTransitionStyleSystemAction];
  [v6 sb_animateWithSettings:customBannerTransitionStyleSystemAction mode:3 animations:transitionCopy completion:completionCopy];
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
  isPresenting = [(BNBannerTransitionAnimator *)self isPresenting];
  v7 = 0.0;
  if (isPresenting)
  {
    v7 = 20.0;
  }

  [(SBSystemActionBannerTransitionAnimator *)self _addGaussianBlurToViewIfNeeded:transitionView inputRadius:v7];

  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    transitionView2 = [transitionCopy transitionView];
    [transitionView2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);

    if (v10 == v13 && v12 == v14)
    {
      [transitionCopy finalContentFrame];
      v17 = v16;
      [transitionCopy finalFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24 - v17;
      transitionView3 = [transitionCopy transitionView];
      [transitionView3 setFrame:{v19, v25, v21, v23}];

      transitionView4 = [transitionCopy transitionView];
      [transitionView4 setAlpha:0.0];

      transitionView5 = [transitionCopy transitionView];
      CGAffineTransformMakeScale(&v30, 0.6, 0.6);
      [transitionView5 setTransform:&v30];

      [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:1.0];
    }
  }

  transitionView6 = [transitionCopy transitionView];
  [transitionView6 setClipsToBounds:0];
}

- (void)performActionsForTransition:(id)transition
{
  transitionCopy = transition;
  transitionView = [transitionCopy transitionView];
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    [transitionView setAlpha:1.0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v27.a = *MEMORY[0x277CBF2C0];
    *&v27.c = v6;
    *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
    [transitionView setTransform:&v27];
    [transitionCopy finalFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [transitionView setFrame:{v8, v10, v12, v14}];
    layer = [transitionView layer];
    [layer setValue:&unk_28336F180 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:0.0];
  }

  else
  {
    [transitionCopy initialContentFrame];
    v17 = v16;
    [transitionCopy initialFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [transitionView setFrame:{v19, v21 - v17, v23, v25}];
    [transitionView setAlpha:0.0];
    CGAffineTransformMakeScale(&v27, 0.6, 0.6);
    [transitionView setTransform:&v27];
    layer2 = [transitionView layer];
    [layer2 setValue:&unk_28336F190 forKeyPath:@"filters.gaussianBlur.inputRadius"];
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
  if (![(SBSystemActionBannerTransitionAnimator *)self _viewHasGaussianBlurFilter:neededCopy])
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
    v19[2] = __85__SBSystemActionBannerTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke;
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

void __85__SBSystemActionBannerTransitionAnimator__addGaussianBlurToViewIfNeeded_inputRadius___block_invoke(uint64_t a1)
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