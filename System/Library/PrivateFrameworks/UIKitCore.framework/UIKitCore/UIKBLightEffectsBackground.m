@interface UIKBLightEffectsBackground
@end

@implementation UIKBLightEffectsBackground

uint64_t __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addLightSourceViews];
  [*(a1 + 32) updateAlphaForAnimationStart:1];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) shouldShowWaveView])
  {
    [*(a1 + 40) setAlpha:0.0];
    [*(a1 + 48) setConstant:-480.0 / *(a1 + 72)];
  }

  [*(a1 + 32) animatedTransitionToRenderConfig:*(a1 + 56)];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

void __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) shouldShowWaveView])
  {
    if (_AXSEnhanceBackgroundContrastEnabled())
    {
      v2 = 2;
    }

    else
    {
      v2 = 546;
    }
  }

  else
  {
    v2 = 2;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_4;
  v7[3] = &unk_1E70F0F78;
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_5;
  v4[3] = &unk_1E710B1B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 56);
  [UIView _animateUsingSpringWithDuration:v2 delay:v7 options:v4 mass:1.6 stiffness:0.0 damping:1.0 initialVelocity:13.853 animations:7.444 completion:0.0];
}

uint64_t __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_4(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048619 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_5(void *a1)
{
  v2 = a1[4];
  v3 = [v2 _inheritedRenderConfig];
  [v2 completeTransitionToRenderConfig:v3];

  v4 = a1[5];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  result = a1[6];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __49___UIKBLightEffectsBackground_showShadowEffects___block_invoke(uint64_t a1)
{
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = [UIVisualEffectView alloc];
  v3 = [UIBlurEffect effectWithStyle:8];
  v4 = [(UIVisualEffectView *)v2 initWithEffect:v3];

  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemBackgroundColor];
  [(UIView *)v4 setBackgroundColor:v5];

  [(UIVisualEffectView *)v4 _setContinuousCornerRadius:25.0];
  v6 = +[UIColor whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.3];
  v8 = [v7 CGColor];
  v9 = [(UIView *)v4 layer];
  [v9 setBorderColor:v8];

  v10 = [(UIView *)v4 layer];
  [v10 setBorderWidth:4.0];

  v11 = [(UIView *)v4 layer];
  [v11 setCornerRadius:25.0];

  v12 = *MEMORY[0x1E69796E8];
  v13 = [(UIView *)v4 layer];
  [v13 setCornerCurve:v12];

  v14 = [(UIView *)v4 layer];
  [v14 setAllowsGroupOpacity:0];

  v15 = [(UIView *)v4 layer];
  [v15 setAllowsGroupBlending:0];

  v16 = [(UIView *)v4 layer];
  [v16 setAllowsEdgeAntialiasing:0];

  v17 = [_UIIntelligenceEdgeLightEffect alloc];
  v18 = +[_UIIntelligenceLightSourceDescriptor sharedShimmeringLight];
  v67 = [(_UIIntelligenceEdgeLightEffect *)v17 initWithLightSource:v18 radius:1 region:8.0];

  v69[0] = v67;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  [(UIVisualEffectView *)v4 setBackgroundEffects:v19];

  v20 = objc_alloc_init(UIView);
  [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = +[UIColor systemBackgroundColor];
  [(UIView *)v20 setBackgroundColor:v21];

  v22 = [(UIView *)v20 layer];
  [v22 setAllowsGroupOpacity:0];

  v23 = [(UIView *)v20 layer];
  [v23 setAllowsGroupBlending:0];

  v24 = [(UIView *)v20 layer];
  [v24 setAllowsEdgeAntialiasing:0];

  v25 = [(UIView *)v20 layer];
  [v25 setCornerRadius:25.0];

  v26 = [(UIView *)v20 layer];
  [v26 setCornerCurve:v12];

  v27 = [(UIView *)v20 layer];
  [v27 setShadowPathIsBounds:1];

  v28 = +[UIColor blackColor];
  v29 = [v28 colorWithAlphaComponent:0.5];
  v30 = [v29 CGColor];
  v31 = [(UIView *)v20 layer];
  [v31 setShadowColor:v30];

  v32 = [(UIView *)v20 layer];
  [v32 setShadowRadius:11.0];

  v33 = [(UIView *)v20 layer];
  LODWORD(v34) = 1053609165;
  [v33 setShadowOpacity:v34];

  v35 = [(UIView *)v20 layer];
  [v35 setShadowOffset:{0.0, 8.0}];

  v36 = [*(a1 + 32) backdropClippingView];
  [v36 addSubview:v20];

  v37 = [*(a1 + 32) backdropClippingView];
  [v37 addSubview:v4];

  v55 = MEMORY[0x1E69977A0];
  v66 = [*(a1 + 32) fullBackdropLayoutGuide];
  v65 = [v66 topAnchor];
  v64 = [(UIView *)v4 bottomAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:0.0];
  v68[0] = v63;
  v60 = [(UIView *)v4 leadingAnchor];
  v62 = a1;
  v61 = [*(a1 + 32) backdropClippingView];
  v59 = [v61 leadingAnchor];
  v58 = [v60 constraintEqualToSystemSpacingAfterAnchor:v59 multiplier:1.0];
  v68[1] = v58;
  v57 = [*(a1 + 32) backdropClippingView];
  v56 = [v57 trailingAnchor];
  v54 = [(UIView *)v4 trailingAnchor];
  v53 = [v56 constraintEqualToSystemSpacingAfterAnchor:v54 multiplier:1.0];
  v68[2] = v53;
  v52 = [(UIView *)v4 heightAnchor];
  v51 = [v52 constraintEqualToConstant:50.0];
  v68[3] = v51;
  v50 = [(UIView *)v20 leadingAnchor];
  v49 = [(UIView *)v4 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v68[4] = v48;
  v47 = [(UIView *)v4 trailingAnchor];
  v46 = [(UIView *)v20 trailingAnchor];
  v38 = [v47 constraintEqualToAnchor:v46];
  v68[5] = v38;
  v39 = [(UIView *)v4 bottomAnchor];
  v40 = [(UIView *)v20 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v68[6] = v41;
  v42 = [(UIView *)v20 heightAnchor];
  v43 = [(UIView *)v4 heightAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v68[7] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:8];
  [v55 activateConstraints:v45];

  [*(v62 + 32) layoutIfNeeded];
  [*(v62 + 32) setMirroredLightBorderView:v4];
  [*(v62 + 32) setMirroredShadowView:v20];
}

@end