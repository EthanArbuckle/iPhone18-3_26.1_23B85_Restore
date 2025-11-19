@interface SBGlassBannerTransitionAnimator
+ (id)settings;
+ (void)performAnimationsForTransition:(id)a3 completion:(id)a4;
- (BOOL)_viewHasGaussianBlurFilter:(id)a3;
- (void)_addGaussianBlurToViewIfNeeded:(id)a3;
- (void)_removeGaussianBlurFromViewIfNeeded:(id)a3;
- (void)performActionsForTransition:(id)a3;
- (void)prepareForTransition:(id)a3;
@end

@implementation SBGlassBannerTransitionAnimator

+ (id)settings
{
  if (settings_onceToken_2 != -1)
  {
    +[SBGlassBannerTransitionAnimator settings];
  }

  v3 = settings_settings_1;

  return v3;
}

void __43__SBGlassBannerTransitionAnimator_settings__block_invoke()
{
  v0 = +[SBBannerTransitionDomain rootSettings];
  v1 = settings_settings_1;
  settings_settings_1 = v0;
}

- (void)performActionsForTransition:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 finalFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  HIDWORD(v43) = [(BNBannerTransitionAnimator *)self isPresenting];
  v13 = [v4 transitionContext];
  LODWORD(v43) = [v13 isAnimated];

  v46 = self;
  v14 = [objc_opt_class() settings];
  v15 = [v14 customBannerTransitionStyleGlass_transformScaleX];
  v16 = [v14 customBannerTransitionStyleGlass_transformScaleY];
  v17 = [v14 customBannerTransitionStyleGlass_transformTranslationY];
  v18 = [v14 customBannerTransitionStyleGlass_alphaBlurSpring];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = v15;
  v70[0] = v15;
  v70[1] = v16;
  v44 = v16;
  v70[2] = v17;
  v70[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
  v20 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v67;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v66 + 1) + 8 * i);
        [v25 settlingDuration];
        [v22 settlingDuration];
        if (BSFloatGreaterThanFloat())
        {
          v26 = v25;

          v22 = v26;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  if (HIDWORD(v43))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.19;
  }

  if (HIDWORD(v43))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 18.0;
  }

  if (v43)
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  v30 = objc_alloc(MEMORY[0x277D75D18]);
  [v4 initialFrame];
  v31 = [v30 initWithFrame:?];
  [v31 setUserInteractionEnabled:0];
  v32 = [v4 transitionContext];
  v33 = [v32 containerView];
  [v33 addSubview:v31];

  v34 = [v4 transitionView];
  v35 = MEMORY[0x277D65DA0];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke;
  v51[3] = &unk_2783C3A38;
  v52 = v45;
  v59 = v29;
  v53 = v34;
  v54 = v44;
  v60 = v27;
  v61 = v6;
  v62 = v8;
  v63 = v10;
  v55 = v17;
  v56 = v18;
  v64 = v12;
  v65 = v28;
  v57 = v22;
  v58 = v31;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_11;
  v47[3] = &unk_2783AE490;
  v48 = v58;
  v49 = v46;
  v50 = v53;
  v36 = v53;
  v37 = v58;
  v38 = v22;
  v39 = v18;
  v40 = v17;
  v41 = v44;
  v42 = v45;
  [v35 perform:v51 finalCompletion:v47];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = MEMORY[0x277D75D18];
  v5 = *(a1 + 88);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_2;
  v46[3] = &unk_2783A8BC8;
  v6 = *(a1 + 32);
  v47 = *(a1 + 40);
  v48 = *(a1 + 96);
  v8 = a2 + 2;
  v7 = a2[2];
  v9 = a2;
  v10 = v7();
  [v4 sb_animateWithSettings:v6 mode:v5 animations:v46 completion:v10];

  v11 = MEMORY[0x277D75D18];
  v12 = *(a1 + 88);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_4;
  v43[3] = &unk_2783A8BC8;
  v13 = *(a1 + 48);
  v44 = *(a1 + 40);
  v45 = *(a1 + 96);
  v14 = (*v8)(v9, @"scale.y");
  [v11 sb_animateWithSettings:v13 mode:v12 animations:v43 completion:v14];

  v15 = MEMORY[0x277D75D18];
  v16 = *(a1 + 56);
  v17 = *(a1 + 88);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_6;
  v39[3] = &unk_2783AC828;
  v40 = *(a1 + 40);
  v41 = *(a1 + 104);
  v42 = *(a1 + 120);
  v18 = (*v8)(v9, @"center");
  [v15 sb_animateWithSettings:v16 mode:v17 animations:v39 completion:v18];

  v19 = MEMORY[0x277D75D18];
  v20 = *(a1 + 64);
  v21 = *(a1 + 88);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_7;
  v36[3] = &unk_2783A8BC8;
  v37 = *(a1 + 40);
  v38 = *(a1 + 136);
  v22 = (*v8)(v9, @"blur");
  [v19 sb_animateWithSettings:v20 mode:v21 animations:v36 completion:v22];

  v23 = (*v8)(v9, @"dummy");

  v24 = MEMORY[0x277D75D18];
  [*(a1 + 72) settlingDuration];
  v26 = v25;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_8;
  v31[3] = &unk_2783AAFD0;
  v32 = *(a1 + 80);
  v27 = *(a1 + 120);
  v34 = *(a1 + 104);
  v35 = v27;
  v33 = *(a1 + 72);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_10;
  v29[3] = &unk_2783A9C70;
  v30 = v23;
  v28 = v23;
  [v24 animateWithDuration:v31 animations:v29 completion:v26];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_3;
  v3[3] = &unk_2783A8BC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) layer];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setValue:v2 forKeyPath:@"transform.scale.x"];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_5;
  v3[3] = &unk_2783A8BC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) layer];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setValue:v2 forKeyPath:@"transform.scale.y"];
}

uint64_t __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  UIRectGetCenter();

  return [v1 setCenter:?];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_7(uint64_t a1)
{
  v3 = [*(a1 + 32) layer];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setValue:v2 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_8(uint64_t a1)
{
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_9;
  v15[3] = &unk_2783AC828;
  v16 = *(a1 + 32);
  v2 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v2;
  v3 = MEMORY[0x223D6F7F0](v15);
  [*(a1 + 40) frameRateRange];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) preferredFrameRateRange];
  v11 = [v10 highFrameRateReason];

  v19.minimum = v5;
  v19.maximum = v7;
  v19.preferred = v9;
  if (CAFrameRateRangeIsEqualToRange(v19, *MEMORY[0x277CD9DD0]))
  {
    *&v12 = v5;
    *&v13 = v7;
    *&v14 = v9;
    [MEMORY[0x277D75D18] sb_modifyAnimationsWithPreferredFrameRateRange:v11 updateReason:v3 animations:{v12, v13, v14}];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  UIRectGetCenter();

  return [v1 setCenter:?];
}

uint64_t __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_10(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __63__SBGlassBannerTransitionAnimator_performActionsForTransition___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _removeGaussianBlurFromViewIfNeeded:v3];
}

+ (void)performAnimationsForTransition:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D75D18];
  v7 = a4;
  v8 = a3;
  v10 = [a1 settings];
  v9 = [v10 customBannerTransitionStyleSystemAction];
  [v6 sb_animateWithSettings:v9 mode:3 animations:v8 completion:v7];
}

- (void)prepareForTransition:(id)a3
{
  v4 = a3;
  [v4 initialFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(BNBannerTransitionAnimator *)self isPresenting];
  v14 = 0.19;
  v15 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  if (!v13)
  {
    v14 = 1.0;
  }

  v18[2] = __56__SBGlassBannerTransitionAnimator_prepareForTransition___block_invoke;
  v18[3] = &unk_2783AE868;
  v21 = v14;
  v22 = v6;
  if (v13)
  {
    v16 = 18.0;
  }

  else
  {
    v16 = 0.0;
  }

  v23 = v8;
  v24 = v10;
  v19 = v4;
  v20 = self;
  v25 = v12;
  v26 = v16;
  v17 = v4;
  [v15 performWithoutAnimation:v18];
}

void __56__SBGlassBannerTransitionAnimator_prepareForTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionView];
  CGAffineTransformMakeScale(&v5, *(a1 + 48), *(a1 + 48));
  [v2 setTransform:&v5];
  SBRectWithSize();
  [v2 setBounds:?];
  UIRectGetCenter();
  [v2 setCenter:?];
  [v2 setAlpha:1.0];
  [*(a1 + 40) _addGaussianBlurToViewIfNeeded:v2];
  v3 = [v2 layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
  [v3 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  [v2 layoutIfNeeded];
}

- (void)_addGaussianBlurToViewIfNeeded:(id)a3
{
  v15 = a3;
  v4 = [(SBGlassBannerTransitionAnimator *)self _viewHasGaussianBlurFilter:v15];
  v5 = v15;
  if (!v4)
  {
    v6 = [v15 layer];
    v7 = *MEMORY[0x277CDA328];
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v8 setName:v7];
    [v8 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
    [v8 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
    v9 = MEMORY[0x277CBEC28];
    [v8 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4C8]];
    [v8 setValue:v9 forKey:*MEMORY[0x277CDA4A0]];
    v10 = [v6 filters];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v14 = v13;

    [v14 addObject:v8];
    [v6 setFilters:v14];

    v5 = v15;
  }
}

- (void)_removeGaussianBlurFromViewIfNeeded:(id)a3
{
  v7 = a3;
  if ([(SBGlassBannerTransitionAnimator *)self _viewHasGaussianBlurFilter:?])
  {
    v4 = [v7 layer];
    v5 = [v4 filters];
    v6 = [v5 bs_filter:&__block_literal_global_37_6];

    [v4 setFilters:v6];
  }
}

uint64_t __71__SBGlassBannerTransitionAnimator__removeGaussianBlurFromViewIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277CDA328]];

  return v3 ^ 1u;
}

- (BOOL)_viewHasGaussianBlurFilter:(id)a3
{
  v3 = [a3 layer];
  v4 = [v3 filters];
  v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_39_3];

  return v5;
}

uint64_t __62__SBGlassBannerTransitionAnimator__viewHasGaussianBlurFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277CDA328]];

  return v3;
}

@end