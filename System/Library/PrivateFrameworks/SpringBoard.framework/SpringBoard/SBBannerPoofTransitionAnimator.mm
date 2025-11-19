@interface SBBannerPoofTransitionAnimator
+ (id)settings;
+ (void)performAnimationsForTransition:(id)a3 completion:(id)a4;
- (BOOL)_viewHasGaussianBlurFilter:(id)a3;
- (id)settings;
- (void)_addGaussianBlurToViewIfNeeded:(id)a3 inputRadius:(double)a4;
- (void)_removeBlurFilterFromView:(id)a3;
- (void)performActionsForTransition:(id)a3;
- (void)prepareForTransition:(id)a3;
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

+ (void)performAnimationsForTransition:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D75D18];
  v7 = a4;
  v8 = a3;
  v10 = [a1 settings];
  v9 = [v10 customBannerTransitionStylePoof];
  [v6 sb_animateWithSettings:v9 mode:3 animations:v8 completion:v7];
}

- (id)settings
{
  v2 = objc_opt_class();

  return [v2 settings];
}

- (void)prepareForTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionView];
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    v6 = [(SBBannerPoofTransitionAnimator *)self settings];
    [v6 poofInitialBlurRadius];
    [(SBBannerPoofTransitionAnimator *)self _addGaussianBlurToViewIfNeeded:v5 inputRadius:?];
  }

  else
  {
    [(SBBannerPoofTransitionAnimator *)self _addGaussianBlurToViewIfNeeded:v5 inputRadius:0.0];
  }

  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    v7 = [v4 transitionView];
    [v7 frame];
    IsEmpty = CGRectIsEmpty(v29);

    if (IsEmpty)
    {
      v9 = [(SBBannerPoofTransitionAnimator *)self settings];
      [v9 poofInitialScale];
      v11 = v10;

      [v4 finalFrame];
      v13 = v12;
      [v4 finalContentFrame];
      UIRectGetCenter();
      v15 = v14;
      v16 = [v4 transitionView];
      [v4 finalFrame];
      [v16 setFrame:?];

      v17 = [v4 transitionView];
      [v17 setAlpha:0.0];

      v18 = [v4 transitionView];
      CGAffineTransformMakeScale(&v28, v11, v11);
      [v18 setTransform:&v28];

      [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:1.0];
      v19 = [v4 transitionView];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = [v4 transitionView];
      [v26 setFrame:{v21, v13 + v15 * (1.0 - v11), v23, v25}];
    }
  }

  v27 = [v4 transitionView];
  [v27 setClipsToBounds:0];
}

- (void)performActionsForTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionView];
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    [v5 setAlpha:1.0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v31.a = *MEMORY[0x277CBF2C0];
    *&v31.c = v6;
    *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v5 setTransform:&v31];
    [v4 finalFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v5 setFrame:{v8, v10, v12, v14}];
    v15 = [v5 layer];
    [v15 setValue:&unk_28336F240 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [(UIViewFloatAnimatableProperty *)self->_blurProgressProperty setValue:0.0];
  }

  else
  {
    v16 = [(SBBannerPoofTransitionAnimator *)self settings];
    [v16 poofDismissedScale];
    v18 = v17;

    [v4 initialFrame];
    [v4 initialContentFrame];
    UIRectGetCenter();
    [v4 initialFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v5 setFrame:{v20, v22, v24, v26}];
    [v5 setAlpha:0.0];
    CGAffineTransformMakeScale(&v31, v18, v18);
    [v5 setTransform:&v31];
    v27 = [v5 layer];
    v28 = MEMORY[0x277CCABB0];
    v29 = [(SBBannerPoofTransitionAnimator *)self settings];
    [v29 poofDismissedBlurRadius];
    v30 = [v28 numberWithDouble:?];
    [v27 setValue:v30 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [v5 frame];
    [v5 setFrame:?];
  }
}

- (BOOL)_viewHasGaussianBlurFilter:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 layer];
  v4 = [v3 filters];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) name];
        v11 = [v10 isEqualToString:v8];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_addGaussianBlurToViewIfNeeded:(id)a3 inputRadius:(double)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(SBBannerPoofTransitionAnimator *)self _viewHasGaussianBlurFilter:v6])
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"default" forKey:@"inputQuality"];
    [v7 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v9 = MEMORY[0x277CBEC28];
    [v7 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
    [v7 setValue:v9 forKey:@"inputHardEdges"];
    v10 = [v6 layer];
    v11 = [v10 filters];
    v12 = [v11 mutableCopy];

    [v12 addObject:v7];
    v13 = [v6 layer];
    v26[0] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v13 setFilters:v14];
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
    v20 = v6;
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

- (void)_removeBlurFilterFromView:(id)a3
{
  v3 = [a3 layer];
  [v3 setFilters:0];
}

@end