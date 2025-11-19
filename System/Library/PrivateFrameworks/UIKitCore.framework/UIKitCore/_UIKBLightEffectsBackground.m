@interface _UIKBLightEffectsBackground
- (BOOL)shouldShowBackdrop;
- (BOOL)shouldShowWaveView;
- (CGSize)candidateBarSize;
- (_UIKBLightEffectsBackground)initWithFrame:(CGRect)a3;
- (id)bringupWaveEffectViewForDisplayScale:(double)a3;
- (id)extraBackdropViewForConfig:(id)a3;
- (id)layerForPositionMatchMove;
- (void)_addContentEffectsForConfig:(id)a3;
- (void)_adjustMaskForCandidateViewSize:(CGSize)a3 collapsedState:(BOOL)a4;
- (void)_setRenderConfig:(id)a3;
- (void)addLayoutGuidesIfNeeded;
- (void)addLightSourceViews;
- (void)animatedTransitionToRenderConfig:(id)a3;
- (void)changeClippingStyle:(int64_t)a3;
- (void)completeTransitionToRenderConfig:(id)a3;
- (void)extendForCandidateViewHeight:(double)a3 width:(double)a4;
- (void)layoutInputBackdropToFullWithRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)maskEffectsBackdrop;
- (void)performTransitionToRenderConfig:(id)a3 fromRenderConfig:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)removeAnimatedBackdropEffects;
- (void)setClientBackdropInUse:(BOOL)a3;
- (void)showShadowEffects:(BOOL)a3;
- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4;
- (void)updateAlphaForAnimationStart:(BOOL)a3;
- (void)updateConstraints;
- (void)updateCornersWithRadius:(double)a3 forVisualState:(int64_t)a4;
- (void)updateEffectsForLightKeyboard:(BOOL)a3 forceUpdate:(BOOL)a4;
- (void)useMaskedKeyplaneBackdrop:(id)a3 assistantBackdrop:(id)a4;
@end

@implementation _UIKBLightEffectsBackground

- (_UIKBLightEffectsBackground)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = _UIKBLightEffectsBackground;
  v7 = [(UIKBInputBackdropView *)&v11 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_clientBackdropInUse = 0;
    [(_UIKBLightEffectsBackground *)v7 layoutInputBackdropToFullWithRect:x, y, width, height];
    v9 = [(UIView *)v8 _inheritedRenderConfig];
    v8->_useLightConfigEffects = [v9 lightKeyboard];
  }

  return v8;
}

- (BOOL)shouldShowBackdrop
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || [(_UIKBLightEffectsBackground *)self clippingStyle])
  {
    return 1;
  }

  else
  {
    return ![(_UIKBLightEffectsBackground *)self isClientBackdropInUse];
  }
}

- (void)setClientBackdropInUse:(BOOL)a3
{
  if (self->_clientBackdropInUse != a3)
  {
    self->_clientBackdropInUse = a3;
  }
}

- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4
{
  v4 = a4;
  if (a3 == 3904)
  {
    v6 = [(UIView *)self layer];
    [v6 setAllowsGroupBlending:0];

    [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
    v7 = [(UIView *)self _inheritedRenderConfig];
    [(_UIKBLightEffectsBackground *)self _addContentEffectsForConfig:v7];

    [(_UIKBLightEffectsBackground *)self addLightSourceViews];
    if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
    {
      a3 = 3904;
    }

    else
    {
      a3 = 3903;
    }
  }

  v8.receiver = self;
  v8.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v8 transitionToStyle:a3 isSplit:v4];
}

- (void)_addContentEffectsForConfig:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    v5 = [v4 lightKeyboard];
    if (!v4 || v5)
    {
      v14 = xmmword_18A6800D0;
      v15 = xmmword_18A6800E0;
      v6 = xmmword_18A6800F0;
      v7 = xmmword_18A680100;
    }

    else
    {
      v14 = xmmword_18A680090;
      v15 = xmmword_18A6800A0;
      v6 = xmmword_18A6800B0;
      v7 = xmmword_18A6800C0;
    }

    v16 = v6;
    v17 = v7;
    v18 = xmmword_18A6685B0;
    v10 = [UIVibrancyEffect _vibrantEffectWithCAColorMatrix:&v14 alpha:1.0];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v14, v15}];
    v12 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v12 setContentEffects:v11];

    v13 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v13 setBackgroundColor:0];
  }

  else
  {
    v8 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v8 setContentEffects:MEMORY[0x1E695E0F0]];

    v9 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v9 setBackgroundColor:0];
  }
}

- (void)updateEffectsForLightKeyboard:(BOOL)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(_UIKBLightEffectsBackground *)self isAnimating]|| v4)
  {
    v7 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v7 setAlpha:1.0];

    v8 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [v8 setAlpha:1.0];

    if (v5)
    {
      v9 = 0.62;
    }

    else
    {
      v9 = 0.25;
    }

    v10 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [v10 setAlpha:v9];
  }

  v11 = [(UIView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 80.0;
  if (v5)
  {
    v14 = 140.0;
  }

  v15 = v14 / v13;
  v17 = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];
  v16 = [v17 layer];
  [v16 setShadowRadius:v15];
}

- (void)_setRenderConfig:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v5 _setRenderConfig:v4];
  if (-[_UIKBLightEffectsBackground isUsingAnimatedBackdrop](self, "isUsingAnimatedBackdrop") && ([v4 animatedBackground] & 1) == 0)
  {
    [(_UIKBLightEffectsBackground *)self removeAnimatedBackdropEffects];
  }

  -[_UIKBLightEffectsBackground setUseLightConfigEffects:](self, "setUseLightConfigEffects:", [v4 lightKeyboard]);
  if ([v4 animatedBackground])
  {
    [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
    [(UIView *)self bounds];
    [(_UIKBLightEffectsBackground *)self layoutInputBackdropToFullWithRect:?];
    -[_UIKBLightEffectsBackground updateEffectsForLightKeyboard:forceUpdate:](self, "updateEffectsForLightKeyboard:forceUpdate:", [v4 lightKeyboard], 0);
  }

  -[_UIKBLightEffectsBackground transitionToStyle:isSplit:](self, "transitionToStyle:isSplit:", [v4 backdropStyle], 0);
}

- (void)removeAnimatedBackdropEffects
{
  [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:0];
  v3 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];

  if (v3)
  {
    v4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v4 setContentEffects:MEMORY[0x1E695E0F0]];

    v5 = +[UIColor systemBackgroundColor];
    v6 = [v5 colorWithAlphaComponent:0.1];
    v7 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v7 setBackgroundColor:v6];

    v8 = MEMORY[0x1E69977A0];
    v9 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
    [v8 deactivateConstraints:v9];

    [(_UIKBLightEffectsBackground *)self setLightSourceConstraints:0];
    v10 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [v10 removeFromSuperview];

    v11 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [v11 removeFromSuperview];

    v12 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    [v12 removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
    [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];
    [(_UIKBLightEffectsBackground *)self setAssistantBarMaskView:0];
    [(_UIKBLightEffectsBackground *)self setFullBackdropMaskView:0];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
  }
}

- (void)performTransitionToRenderConfig:(id)a3 fromRenderConfig:(id)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 animatedBackground])
  {
    goto LABEL_9;
  }

  [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
  [(UIView *)self bounds];
  [(_UIKBLightEffectsBackground *)self layoutInputBackdropToFullWithRect:?];
  if ([(_UIKBLightEffectsBackground *)self shouldShowWaveView]&& !_AXSEnhanceBackgroundContrastEnabled())
  {
    if (v11)
    {
      v27 = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];

      if (!v27)
      {
        v28 = [(_UIKBLightEffectsBackground *)self extraBackdropViewForConfig:v11];
        [(_UIKBLightEffectsBackground *)self setTransitionStartBackdropView:v28];
      }

      v29 = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];
      [v29 transitionToStyle:{objc_msgSend(v11, "backdropStyle")}];

      v30 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [v30 transitionToStyle:3903];

      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        goto LABEL_5;
      }

      v31 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      [v31 setAlpha:0.0];
    }

    else
    {
      v31 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [v31 transitionToStyle:3903];
    }
  }

  else
  {
    [(_UIKBLightEffectsBackground *)self transitionToStyle:3904 isSplit:0];
  }

LABEL_5:
  [(_UIKBLightEffectsBackground *)self setIsAnimating:1];
  v14 = [(UIView *)self traitCollection];
  [v14 displayScale];
  v16 = v15;

  if ([(_UIKBLightEffectsBackground *)self shouldShowWaveView])
  {
    v17 = [(_UIKBLightEffectsBackground *)self bringupWaveEffectViewForDisplayScale:v16];
    [(UIView *)self addSubview:v17];
    v18 = [v17 topAnchor];
    v19 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintEqualToAnchor:v20 constant:720.0 / v16];

    [v21 setActive:1];
  }

  else
  {
    v21 = 0;
    v17 = 0;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke;
  v42[3] = &unk_1E70F3590;
  v42[4] = self;
  [UIView performWithoutAnimation:v42];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_2;
  aBlock[3] = &unk_1E71168D0;
  aBlock[4] = self;
  v22 = v17;
  v37 = v22;
  v38 = v21;
  v41 = v16;
  v39 = v10;
  v40 = v12;
  v23 = v21;
  v24 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_3;
  v32[3] = &unk_1E71168F8;
  v33 = v22;
  v34 = v24;
  v32[4] = self;
  v35 = v13;
  v25 = v22;
  v26 = v24;
  [UIView _performWithAnimation:v32];

LABEL_9:
}

- (BOOL)shouldShowWaveView
{
  if ([(UIKBInputBackdropView *)self keyboardVisualState]== 3 || ![(UIKBInputBackdropView *)self keyboardVisualState]&& +[UIKeyboardImpl isFloating]|| _AXSReduceMotionEnabled())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v5 = [(UIView *)self _inheritedRenderConfig];
    v3 = [v5 colorAdaptiveBackground] ^ 1;
  }

  return v3;
}

- (void)updateAlphaForAnimationStart:(BOOL)a3
{
  if (a3 && [(_UIKBLightEffectsBackground *)self shouldShowWaveView]&& !_AXSEnhanceBackgroundContrastEnabled())
  {
    if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 3)
    {
      v5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [v5 transitionToStyle:3903];
    }

    v6 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [v6 setAlpha:0.2];

    v7 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [v7 setAlpha:0.2];
  }

  else
  {
    v4 = [(_UIKBLightEffectsBackground *)self useLightConfigEffects];

    [(_UIKBLightEffectsBackground *)self updateEffectsForLightKeyboard:v4 forceUpdate:1];
  }
}

- (void)animatedTransitionToRenderConfig:(id)a3
{
  v4 = a3;
  -[_UIKBLightEffectsBackground setIsUsingAnimatedBackdrop:](self, "setIsUsingAnimatedBackdrop:", [v4 animatedBackground]);
  if ([v4 animatedBackground])
  {
    [(_UIKBLightEffectsBackground *)self transitionToStyle:3904 isSplit:0];
    -[_UIKBLightEffectsBackground setUseLightConfigEffects:](self, "setUseLightConfigEffects:", [v4 lightKeyboard]);
    [(_UIKBLightEffectsBackground *)self updateAlphaForAnimationStart:0];
  }
}

- (void)completeTransitionToRenderConfig:(id)a3
{
  v4 = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];
  [v4 removeFromSuperview];

  [(_UIKBLightEffectsBackground *)self setTransitionStartBackdropView:0];
  [(_UIKBLightEffectsBackground *)self setIsAnimating:0];
  v5 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
  [(UIView *)self bringSubviewToFront:v5];
}

- (id)bringupWaveEffectViewForDisplayScale:(double)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(_UIGradientView);
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *MEMORY[0x1E6979DB0];
  v7 = [(_UIGradientView *)v5 gradientLayer];
  [v7 setType:v6];

  v8 = *MEMORY[0x1E6979CF8];
  v9 = [(_UIGradientView *)v5 gradientLayer];
  [v9 setCompositingFilter:v8];

  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v36[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v12 = [(_UIGradientView *)v5 gradientLayer];
  [v12 setInterpolations:v11];

  v13 = [(_UIGradientView *)v5 gradientLayer];
  [v13 setStartPoint:{0.5, 0.5}];

  v14 = [(_UIGradientView *)v5 gradientLayer];
  [v14 setEndPoint:{0.0, 0.0}];

  v15 = [(_UIGradientView *)v5 gradientLayer];
  [v15 setLocations:&unk_1EFE2CC88];

  v16 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v35[0] = [v16 CGColor];
  v17 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.38];
  v35[1] = [v17 CGColor];
  v18 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.36];
  v35[2] = [v18 CGColor];
  v19 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v35[3] = [v19 CGColor];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  v21 = [(_UIGradientView *)v5 gradientLayer];
  [v21 setColors:v20];

  [(UIView *)self addSubview:v5];
  v32 = MEMORY[0x1E69977A0];
  v33 = [(UIView *)v5 heightAnchor];
  v22 = [v33 constraintEqualToConstant:3360.0 / a3];
  v34[0] = v22;
  v23 = [(UIView *)v5 centerXAnchor];
  v24 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  v25 = [v24 centerXAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v34[1] = v26;
  v27 = [(UIView *)v5 widthAnchor];
  v28 = [(UIView *)v5 heightAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v34[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  [v32 activateConstraints:v30];

  return v5;
}

- (id)extraBackdropViewForConfig:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [UIKBBackdropView alloc];
  v6 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v4 backdropStyle];

  v16 = [(UIKBBackdropView *)v5 initWithFrame:v15 style:v8, v10, v12, v14];
  [(UIView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [(UIView *)self insertSubview:v16 aboveSubview:v17];

  v29 = MEMORY[0x1E69977A0];
  v35 = [(UIView *)v16 topAnchor];
  v36 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v37[0] = v33;
  v31 = [(UIView *)v16 leadingAnchor];
  v32 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v30 = [v32 leadingAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v37[1] = v28;
  v18 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v19 = [v18 bottomAnchor];
  v20 = [(UIView *)v16 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v37[2] = v21;
  v22 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v23 = [v22 trailingAnchor];
  v24 = [(UIView *)v16 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v37[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v29 activateConstraints:v26];

  return v16;
}

- (id)layerForPositionMatchMove
{
  if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    v3 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    v4 = [v3 layer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addLayoutGuidesIfNeeded
{
  v73[2] = *MEMORY[0x1E69E9840];
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(_UIKBLightEffectsBackground *)self backdropClippingView];

  if (!v3)
  {
    v67 = objc_alloc_init(UIView);
    [(UIView *)v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [(UIKBInputBackdropView *)self captureView];
    [(UIView *)self insertSubview:v67 atIndex:v4 != 0];

    [(_UIKBLightEffectsBackground *)self setBackdropClippingView:v67];
    v5 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v5 setClipsToBounds:1];

    v6 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v7 = [v6 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v9 = [v8 layer];
    [v9 setAllowsGroupOpacity:0];

    v10 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v11 = [v10 layer];
    [v11 setAllowsEdgeAntialiasing:0];

    [(_UIKBLightEffectsBackground *)self changeClippingStyle:0];
    v12 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v13 = [v12 leadingAnchor];
    v14 = [(UIView *)self leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v73[0] = v15;
    v16 = [(UIView *)self trailingAnchor];
    v17 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v73[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    [v70 addObjectsFromArray:v20];
  }

  if (!self->_fullBackdropLayoutGuide)
  {
    v21 = objc_alloc_init(UILayoutGuide);
    fullBackdropLayoutGuide = self->_fullBackdropLayoutGuide;
    self->_fullBackdropLayoutGuide = v21;

    [(UIView *)self addLayoutGuide:self->_fullBackdropLayoutGuide];
  }

  if (!self->_assistantLayoutGuide)
  {
    v23 = objc_alloc_init(UILayoutGuide);
    assistantLayoutGuide = self->_assistantLayoutGuide;
    self->_assistantLayoutGuide = v23;

    [(UIView *)self addLayoutGuide:self->_assistantLayoutGuide];
    v68 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    v65 = [v68 leadingAnchor];
    v25 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v26 = [v25 leadingAnchor];
    v27 = [v65 constraintEqualToAnchor:v26 constant:50.0];
    v72[0] = v27;
    v28 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v29 = [v28 trailingAnchor];
    v30 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31 constant:50.0];
    v72[1] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    [v70 addObjectsFromArray:v33];
  }

  if (!self->_aboveKeyboardLayoutGuide)
  {
    v34 = objc_alloc_init(UILayoutGuide);
    aboveKeyboardLayoutGuide = self->_aboveKeyboardLayoutGuide;
    self->_aboveKeyboardLayoutGuide = v34;

    [(UIView *)self addLayoutGuide:self->_aboveKeyboardLayoutGuide];
    v36 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v37 = [v36 heightAnchor];
    v38 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    v39 = [v38 heightAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];

    LODWORD(v41) = 1148829696;
    v66 = v40;
    [v40 setPriority:v41];
    v42 = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v42];
    v44 = v43;

    v45 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v46 = [v45 heightAnchor];
    v47 = [v46 constraintGreaterThanOrEqualToConstant:v44];
    [(_UIKBLightEffectsBackground *)self setMinimumAboveKeyboardHeightConstraint:v47];

    v69 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    v63 = [v69 topAnchor];
    v64 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v62 = [v64 bottomAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v71[0] = v61;
    v71[1] = v40;
    v60 = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    v71[2] = v60;
    v59 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v58 = [v59 leadingAnchor];
    v48 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    v49 = [v48 leadingAnchor];
    v50 = [v58 constraintEqualToAnchor:v49];
    v71[3] = v50;
    v51 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v52 = [v51 trailingAnchor];
    v53 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    v54 = [v53 trailingAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
    v71[4] = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];
    [v70 addObjectsFromArray:v56];
  }

  [(UIKBInputBackdropView *)self preferredCornerRadiusForState:[(UIKBInputBackdropView *)self keyboardVisualState]];
  [(_UIKBLightEffectsBackground *)self updateCornersWithRadius:[(UIKBInputBackdropView *)self keyboardVisualState] forVisualState:v57];
  if ([v70 count])
  {
    [MEMORY[0x1E69977A0] activateConstraints:v70];
  }
}

- (void)changeClippingStyle:(int64_t)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded];
  v5 = MEMORY[0x1E69977A0];
  v6 = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
  [v5 deactivateConstraints:v6];

  v41 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_clippingStyle = a3;
  v7 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v8 = v7;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v37 = [v7 topAnchor];
        v40 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
        v18 = [v40 topAnchor];
        v19 = [v37 constraintEqualToAnchor:v18];
        v45[0] = v19;
        v20 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
        v21 = [v20 bottomAnchor];
        v22 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        [v22 bottomAnchor];
        v27 = v39 = v8;
        v28 = [v21 constraintEqualToAnchor:v27];
        v45[1] = v28;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];

        v29 = v37;
        break;
      case 3:
        [v7 setClipsToBounds:0];

        v39 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        v29 = [v39 topAnchor];
        v40 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        v18 = [v40 topAnchor];
        v19 = [v29 constraintEqualToAnchor:v18];
        v44[0] = v19;
        v20 = [(UIView *)self bottomAnchor];
        v21 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        v22 = [v21 bottomAnchor];
        v27 = [v20 constraintEqualToAnchor:v22 constant:0.0];
        v44[1] = v27;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

        break;
      case 4:
        v9 = [v7 topAnchor];
        v10 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        v11 = [v10 topAnchor];
        [v9 constraintEqualToAnchor:v11];
        v12 = v38 = v8;
        v43[0] = v12;
        v13 = [(UIView *)self bottomAnchor];
        v14 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        v15 = [v14 bottomAnchor];
        v16 = [v13 constraintEqualToAnchor:v15];
        v43[1] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];

LABEL_18:
        if (![(_UIKBLightEffectsBackground *)self isAnimating])
        {
          [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
          [(UIView *)self bounds];
          [(_UIKBLightEffectsBackground *)self layoutInputBackdropToFullWithRect:?];
          [(_UIKBLightEffectsBackground *)self transitionToStyle:3904 isSplit:0];
        }

        goto LABEL_20;
      default:
LABEL_13:
        v36 = [v7 topAnchor];
        v40 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        v18 = [v40 topAnchor];
        v19 = [v36 constraintEqualToAnchor:v18];
        v42[0] = v19;
        v20 = [(UIView *)self bottomAnchor];
        v21 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        v22 = [v21 bottomAnchor];
        [v20 constraintEqualToAnchor:v22];
        v24 = v23 = v8;
        v42[1] = v24;
        v25 = MEMORY[0x1E695DEC8];
        v26 = v42;
        goto LABEL_14;
    }

    v30 = v27;
    v8 = v39;
    goto LABEL_15;
  }

  if (a3 == -1)
  {
    v29 = [v7 topAnchor];
    v40 = [(UIView *)self topAnchor];
    v18 = [v29 constraintEqualToAnchor:?];
    v47[0] = v18;
    v19 = [(UIView *)self bottomAnchor];
    v20 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v47[1] = v22;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v30 = v41;
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    goto LABEL_13;
  }

  v36 = [v7 topAnchor];
  v40 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
  v18 = [v40 bottomAnchor];
  v19 = [v36 constraintEqualToAnchor:v18];
  v46[0] = v19;
  v20 = [(UIView *)self bottomAnchor];
  v21 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v22 = [v21 bottomAnchor];
  [v20 constraintEqualToAnchor:v22];
  v24 = v23 = v8;
  v46[1] = v24;
  v25 = MEMORY[0x1E695DEC8];
  v26 = v46;
LABEL_14:
  v17 = [v25 arrayWithObjects:v26 count:2];

  v30 = v24;
  v8 = v23;
  v29 = v36;
LABEL_15:

  v31 = [(_UIKBLightEffectsBackground *)self backdropMask];

  if (v31)
  {
    v32 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v32 setMaskView:0];

    v33 = [(_UIKBLightEffectsBackground *)self backdropMask];
    [v33 removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropMask:0];
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  if (a3)
  {
    goto LABEL_18;
  }

LABEL_20:
  [(_UIKBLightEffectsBackground *)self setBackdropClippingConstraints:v17];
  v34 = MEMORY[0x1E69977A0];
  v35 = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
  [v34 activateConstraints:v35];
}

- (void)extendForCandidateViewHeight:(double)a3 width:(double)a4
{
  if (a3 <= 0.0)
  {
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:a4, 0.0];
    v10 = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
    v11 = [v10 objectAtIndexedSubscript:0];
    [v11 setConstant:a3];

    v12 = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v12];
    v14 = v13;

    v8 = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [v8 setConstant:v14];
  }

  else
  {
    [(_UIKBLightEffectsBackground *)self changeClippingStyle:4];
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:a4, a3];
    [(_UIKBLightEffectsBackground *)self candidateBarSize];
    [(_UIKBLightEffectsBackground *)self _adjustMaskForCandidateViewSize:1 collapsedState:?];
    v7 = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [v7 setConstant:a3];

    v8 = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
    v9 = [v8 objectAtIndexedSubscript:0];
    [v9 setConstant:-a3];
  }

  [(UIView *)self layoutIfNeeded];
}

- (void)showShadowEffects:(BOOL)a3
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = [(_UIKBLightEffectsBackground *)self mirroredShadowView];
    if (!v5 || (v6 = v5, [(_UIKBLightEffectsBackground *)self mirroredLightBorderView], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      if (a3)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __49___UIKBLightEffectsBackground_showShadowEffects___block_invoke;
        v10[3] = &unk_1E70F3590;
        v10[4] = self;
        [UIView performWithoutAnimation:v10];
      }

      else
      {
        v8 = [(_UIKBLightEffectsBackground *)self mirroredShadowView];
        [v8 removeFromSuperview];

        v9 = [(_UIKBLightEffectsBackground *)self mirroredLightBorderView];
        [v9 removeFromSuperview];
      }
    }
  }
}

- (void)updateCornersWithRadius:(double)a3 forVisualState:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v7 updateCornersWithRadius:a4 forVisualState:?];
  if ([(UIKBInputBackdropView *)self backdropStyle]== 3904 && ([(UIKBInputBackdropView *)self keyboardVisualState]== 3 || ![(UIKBInputBackdropView *)self keyboardVisualState]&& +[UIKeyboardImpl isFloating]))
  {
    v6 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v6 _setContinuousCornerRadius:a3];
  }
}

- (void)addLightSourceViews
{
  v3 = [(_UIKBLightEffectsBackground *)self shouldShowBackdrop];
  v4 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
      v7 = [v6 superview];

      if (!v7)
      {
        v8 = MEMORY[0x1E69977A0];
        v9 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
        [v8 deactivateConstraints:v9];

        v10 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
        [v10 removeAllObjects];

        [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
        [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];
      }
    }

    v11 = [(_UIKBLightEffectsBackground *)self behindAssistantView];

    if (!v11)
    {
      v36 = objc_alloc_init(UIView);
      v12 = objc_alloc_init(UIView);
      if (TIGetShowDebugBackdropValue_onceToken != -1)
      {
        dispatch_once(&TIGetShowDebugBackdropValue_onceToken, &__block_literal_global_379);
      }

      v13 = [MEMORY[0x1E69D9680] sharedPreferencesController];
      v14 = [v13 valueForPreferenceKey:@"ShowDebugBackdrop"];

      if (v14 && [v14 BOOLValue])
      {
        v15 = +[UIColor systemPurpleColor];
        [(UIView *)v36 setBackgroundColor:v15];

        v16 = +[UIColor systemRedColor];
        [(UIView *)v12 setBackgroundColor:v16];
      }

      else
      {
        v22 = [_UIIntelligenceSystemLightView alloc];
        v23 = [(UIView *)self superview];
        [v23 bounds];
        v24 = [(_UIIntelligenceSystemLightView *)v22 initWithFrame:0 preferringAudioReactivity:?];

        v25 = [_UIIntelligenceSystemLightView alloc];
        v16 = [(UIView *)self superview];
        [v16 bounds];
        v26 = [(_UIIntelligenceSystemLightView *)v25 initWithFrame:0 preferringAudioReactivity:?];

        v12 = v26;
        v36 = v24;
      }

      [(UIView *)v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([(_UIKBLightEffectsBackground *)self isAnimating])
      {
        v27 = [(UIView *)self _inheritedRenderConfig];
        v28 = [v27 lightKeyboard];
        v29 = 0.2;
        if (v28)
        {
          v29 = 0.0;
        }

        [(UIView *)v36 setAlpha:v29];
      }

      else
      {
        [(UIView *)v36 setAlpha:1.0];
      }

      v30 = [(UIView *)v36 layer];
      [v30 setAllowsEdgeAntialiasing:0];

      v31 = [(UIView *)v36 layer];
      [v31 setAllowsGroupBlending:0];

      v32 = [(UIView *)v36 layer];
      [v32 setAllowsGroupOpacity:0];

      [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      v33 = [(UIView *)v12 layer];
      [v33 setAllowsEdgeAntialiasing:0];

      v34 = [(UIView *)v12 layer];
      [v34 setAllowsGroupBlending:0];

      v35 = [(UIView *)v12 layer];
      [v35 setAllowsGroupOpacity:0];

      [(_UIKBLightEffectsBackground *)self useMaskedKeyplaneBackdrop:v36 assistantBackdrop:v12];
    }
  }

  else
  {

    if (v5)
    {
      v17 = MEMORY[0x1E69977A0];
      v18 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
      [v17 deactivateConstraints:v18];

      v19 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
      [v19 removeAllObjects];

      v20 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
      [v20 removeFromSuperview];

      v21 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
      [v21 removeFromSuperview];

      [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];

      [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
    }
  }
}

- (void)useMaskedKeyplaneBackdrop:(id)a3 assistantBackdrop:(id)a4
{
  v101[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    v9 = [v8 isEqual:v6];

    if ((v9 & 1) == 0)
    {
      v96 = v7;
      [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded];
      v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = [(UIView *)self traitCollection];
      [v10 displayScale];
      v12 = v11;

      v13 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      v14 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [v13 insertSubview:v6 belowSubview:v14];

      v94 = [v6 leadingAnchor];
      v92 = [(UIView *)self leadingAnchor];
      v89 = [v94 constraintEqualToAnchor:v92];
      v101[0] = v89;
      v86 = [v6 topAnchor];
      v15 = [(UIView *)self topAnchor];
      v16 = [v86 constraintEqualToAnchor:v15];
      v101[1] = v16;
      v17 = [(UIView *)self bottomAnchor];
      v18 = [v6 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v101[2] = v19;
      v20 = [(UIView *)self trailingAnchor];
      [v6 trailingAnchor];
      v21 = v97 = v6;
      v22 = [v20 constraintEqualToAnchor:v21];
      v101[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [v98 addObjectsFromArray:v23];

      v24 = [(UIView *)self _inheritedRenderConfig];
      if ([v24 lightKeyboard])
      {
        v25 = 140.0;
      }

      else
      {
        v25 = 80.0;
      }

      v26 = objc_alloc_init(UIView);
      v27 = +[UIColor clearColor];
      [(UIView *)v26 setBackgroundColor:v27];

      v28 = +[UIColor blackColor];
      v29 = [v28 CGColor];
      v30 = [(UIView *)v26 layer];
      [v30 setShadowColor:v29];

      v31 = [(UIView *)v26 layer];
      LODWORD(v32) = 1.0;
      [v31 setShadowOpacity:v32];

      v33 = [(UIView *)v26 layer];
      [v33 setShadowRadius:v25 / v12];

      v34 = [(UIView *)v26 layer];
      [v34 setShadowPathIsBounds:1];

      v35 = *MEMORY[0x1E695F060];
      v36 = *(MEMORY[0x1E695F060] + 8);
      v37 = [(UIView *)v26 layer];
      [v37 setShadowOffset:{v35, v36}];

      v38 = [(UIView *)v26 layer];
      [v38 setAllowsGroupOpacity:0];

      v39 = [(UIView *)v26 layer];
      [v39 setAllowsGroupBlending:0];

      v40 = [(UIView *)v26 layer];
      [v40 setAllowsEdgeAntialiasing:0];

      [v97 setMaskView:v26];
      [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:v97];
      v95 = v26;
      [(_UIKBLightEffectsBackground *)self setFullBackdropMaskView:v26];
      v41 = objc_alloc_init(UIView);
      [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
      v42 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      v43 = [(UIView *)v41 layer];
      [v43 setCompositingFilter:v42];

      if ([(_UIKBLightEffectsBackground *)self isAnimating])
      {
        [(UIView *)v41 setAlpha:0.0];
      }

      else
      {
        v44 = [(UIView *)self _inheritedRenderConfig];
        v45 = [v44 lightKeyboard];
        v46 = 0.62;
        if (!v45)
        {
          v46 = 0.25;
        }

        [(UIView *)v41 setAlpha:v46];
      }

      v47 = [(UIView *)v41 layer];
      [v47 setAllowsGroupOpacity:0];

      v48 = [(UIView *)v41 layer];
      [v48 setAllowsGroupBlending:0];

      [(UIView *)v41 addSubview:v96];
      v49 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      v50 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [v49 insertSubview:v41 aboveSubview:v50];

      v90 = [v96 topAnchor];
      v87 = [(UIView *)v41 topAnchor];
      v84 = [v90 constraintEqualToAnchor:v87];
      v100[0] = v84;
      v82 = [v96 leadingAnchor];
      v51 = [(UIView *)v41 leadingAnchor];
      v52 = [v82 constraintEqualToAnchor:v51];
      v100[1] = v52;
      [(UIView *)v41 bottomAnchor];
      v53 = v93 = self;
      v54 = [v96 bottomAnchor];
      v55 = [v53 constraintEqualToAnchor:v54];
      v100[2] = v55;
      v56 = [(UIView *)v41 trailingAnchor];
      v57 = [v96 trailingAnchor];
      v58 = [v56 constraintEqualToAnchor:v57];
      v100[3] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      [v98 addObjectsFromArray:v59];

      v91 = [(UIView *)v41 topAnchor];
      v88 = [v97 topAnchor];
      v85 = [v91 constraintEqualToAnchor:v88];
      v99[0] = v85;
      v83 = [(UIView *)v41 leadingAnchor];
      v60 = [v97 leadingAnchor];
      v61 = [v83 constraintEqualToAnchor:v60];
      v99[1] = v61;
      v62 = [v97 bottomAnchor];
      v63 = [(UIView *)v41 bottomAnchor];
      v64 = [v62 constraintEqualToAnchor:v63];
      v99[2] = v64;
      v65 = [v97 trailingAnchor];
      v66 = [(UIView *)v41 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66];
      v99[3] = v67;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:4];
      [v98 addObjectsFromArray:v68];

      v69 = objc_alloc_init(UIView);
      v70 = +[UIColor clearColor];
      [(UIView *)v69 setBackgroundColor:v70];

      v71 = [(UIView *)v69 layer];
      [v71 setAllowsGroupBlending:0];

      v72 = [(UIView *)v69 layer];
      [v72 setAllowsGroupOpacity:0];

      v73 = [(UIView *)v69 layer];
      [v73 setAllowsEdgeAntialiasing:0];

      v74 = +[UIColor blackColor];
      v75 = [v74 CGColor];
      v76 = [(UIView *)v69 layer];
      [v76 setShadowColor:v75];

      v7 = v96;
      v77 = [(UIView *)v69 layer];
      LODWORD(v78) = 1.0;
      [v77 setShadowOpacity:v78];

      v79 = [(UIView *)v69 layer];
      [v79 setShadowRadius:80.0 / v12];

      v80 = [(UIView *)v69 layer];
      [v80 setShadowPathIsBounds:1];

      v81 = [(UIView *)v69 layer];
      [v81 setShadowOffset:{v35, v36}];

      v6 = v97;
      [v96 setMaskView:v69];
      [(_UIKBLightEffectsBackground *)v93 setBehindAssistantView:v41];
      [(_UIKBLightEffectsBackground *)v93 setAssistantBarMaskView:v69];
      [MEMORY[0x1E69977A0] activateConstraints:v98];
      [(_UIKBLightEffectsBackground *)v93 setLightSourceConstraints:v98];
      [(UIView *)v93 setNeedsLayout];
    }
  }
}

- (void)layoutInputBackdropToFullWithRect:(CGRect)a3
{
  v48[4] = *MEMORY[0x1E69E9840];
  [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded:a3.origin.x];
  v4 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  v5 = [v4 superview];
  if (v5)
  {
  }

  else
  {
    v6 = [(UIKBInputBackdropView *)self inputBackdropRightView];
    v7 = [v6 superview];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [v8 removeFromSuperview];

  v9 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [v9 removeFromSuperview];

LABEL_5:
  v10 = [(_UIKBLightEffectsBackground *)self behindAssistantView];

  v11 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v12 = [(UIKBInputBackdropView *)self inputBackdropFullView];
  if (v10)
  {
    v13 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [v11 insertSubview:v12 belowSubview:v13];
  }

  else
  {
    [v11 addSubview:v12];
  }

  v14 = [(UIKBInputBackdropView *)self fullWidthConstraints];

  if (!v14)
  {
    v47 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v45 = [v47 leftAnchor];
    v46 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    v44 = [v46 leftAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:0.0];
    v48[0] = v43;
    v42 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    v40 = [v42 topAnchor];
    v41 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v39 = [v41 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:0.0];
    v48[1] = v38;
    v37 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    v36 = [v37 rightAnchor];
    v15 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v16 = [v15 rightAnchor];
    v17 = [v36 constraintEqualToAnchor:v16 constant:0.0];
    v48[2] = v17;
    v18 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    v19 = [v18 bottomAnchor];
    v20 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
    v48[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [(UIKBInputBackdropView *)self setFullWidthConstraints:v23];
  }

  v24 = [(UIKBInputBackdropView *)self fullWidthConstraints];
  v25 = [v24 firstObject];
  v26 = [v25 isActive];

  if ((v26 & 1) == 0)
  {
    v27 = MEMORY[0x1E69977A0];
    v28 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    [v27 activateConstraints:v28];
  }

  if (![(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    v30 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v30 setBackgroundColor:0];

    v31 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v32 = MEMORY[0x1E695E0F0];
    [v31 setBackgroundEffects:MEMORY[0x1E695E0F0]];

    v33 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [v33 setContentEffects:v32];

    v34 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    [v34 removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
    return;
  }

  v29 = [(UIView *)self _inheritedRenderConfig];
  if ([v29 animatedBackground])
  {
  }

  else
  {
    v35 = [(_UIKBLightEffectsBackground *)self isUsingAnimatedBackdrop];

    if (!v35)
    {
      return;
    }
  }

  [(_UIKBLightEffectsBackground *)self maskEffectsBackdrop];
}

- (void)maskEffectsBackdrop
{
  v56[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIKBLightEffectsBackground *)self shouldShowBackdrop];
  v4 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = objc_alloc_init(_UIGradientView);
      [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = *MEMORY[0x1E6979DA0];
      v8 = [(_UIGradientView *)v6 gradientLayer];
      [v8 setType:v7];

      v9 = [(_UIGradientView *)v6 gradientLayer];
      [v9 setStartPoint:{0.5, 0.0}];

      v10 = [(_UIGradientView *)v6 gradientLayer];
      [v10 setEndPoint:{0.5, 0.2}];

      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      v56[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v13 = [(_UIGradientView *)v6 gradientLayer];
      [v13 setInterpolations:v12];

      v14 = [UIColor colorWithRed:1.0 green:0.1491 blue:0.0 alpha:0.0];
      v15 = [UIColor colorWithRed:0.2549 green:0.5725 blue:0.9647 alpha:1.0];
      v52 = v14;
      v55[0] = [v14 CGColor];
      v51 = v15;
      v55[1] = [v15 CGColor];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      v17 = [(_UIGradientView *)v6 gradientLayer];
      [v17 setColors:v16];

      v18 = [(_UIGradientView *)v6 gradientLayer];
      [v18 setAllowsEdgeAntialiasing:0];

      v19 = [(_UIGradientView *)v6 gradientLayer];
      [v19 setAllowsGroupBlending:0];

      v20 = [(_UIGradientView *)v6 gradientLayer];
      [v20 setAllowsGroupOpacity:0];

      v53 = v6;
      [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:v6];
      v21 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      v22 = [v21 contentView];
      v23 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      [v22 addSubview:v23];

      v24 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      v25 = [v24 heightAnchor];
      v26 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      v27 = [v26 heightAnchor];
      v28 = [v25 constraintEqualToAnchor:v27];

      v44 = MEMORY[0x1E69977A0];
      v50 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      v48 = [v50 topAnchor];
      v49 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      v47 = [v49 topAnchor];
      v46 = [v48 constraintEqualToAnchor:v47 constant:0.0];
      v54[0] = v46;
      v45 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      v42 = [v45 leadingAnchor];
      v43 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      v29 = [v43 leadingAnchor];
      v30 = [v42 constraintEqualToAnchor:v29];
      v54[1] = v30;
      v54[2] = v28;
      v31 = v28;
      v32 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      v33 = [v32 trailingAnchor];
      v34 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      v35 = [v34 trailingAnchor];
      v36 = [v33 constraintEqualToAnchor:v35];
      v54[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
      [v44 activateConstraints:v37];

      if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 3)
      {
        LODWORD(v38) = 1144750080;
        [v31 setPriority:v38];
        v39 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
        v40 = [v39 heightAnchor];
        v41 = [v40 constraintGreaterThanOrEqualToConstant:336.0];

        [v41 setActive:1];
      }
    }
  }

  else
  {
    [v4 removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
  }
}

- (void)updateConstraints
{
  if ([(_UIKBLightEffectsBackground *)self clippingStyle]!= 4)
  {
    v3 = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v3];
    v5 = v4;

    v6 = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [v6 setConstant:v5];
  }

  v7.receiver = self;
  v7.super_class = _UIKBLightEffectsBackground;
  [(UIView *)&v7 updateConstraints];
}

- (void)_adjustMaskForCandidateViewSize:(CGSize)a3 collapsedState:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(_UIKBLightEffectsBackground *)self backdropMask];

  if (!v8)
  {
    v9 = [UIKBBackgroundShapeView alloc];
    v10 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v10 bounds];
    v11 = [(UIView *)v9 initWithFrame:?];
    [(_UIKBLightEffectsBackground *)self setBackdropMask:v11];

    v12 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    v13 = [(_UIKBLightEffectsBackground *)self backdropMask];
    [v12 setMaskView:v13];
  }

  v14 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(_UIKBLightEffectsBackground *)self backdropMask];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
  [v24 layoutFrame];
  v26 = v25;
  v28 = v27;

  if (v4)
  {
    v29 = -height;
  }

  else
  {
    v29 = 0.0;
  }

  v32 = [UIBezierPath bezierPathWithRect:0.0];
  v30 = [UIBezierPath bezierPathWithRoundedRect:(v26 - width) * 0.5 cornerRadius:v29, width, height + v28, UIKBCornerRadius()];
  [v30 appendPath:v32];
  v31 = [(_UIKBLightEffectsBackground *)self backdropMask];
  [v31 setPath:v30];
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = _UIKBLightEffectsBackground;
  [(UIView *)&v40 layoutSubviews];
  v3 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
  [v3 layoutFrame];
  v5 = v4;

  v6 = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];

  if (v6)
  {
    v7 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    [v7 layoutFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];
    [v16 setFrame:{v9 + -100.0, v11 - v5, v13 + 200.0, v15 - (-100.0 - v5)}];
  }

  if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 4)
  {
    v17 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(_UIKBLightEffectsBackground *)self backdropMask];
    [v26 setFrame:{v19, v21, v23, v25}];

    [(_UIKBLightEffectsBackground *)self candidateBarSize];
    if (v27 > 0.0)
    {
      [(_UIKBLightEffectsBackground *)self candidateBarSize];
      [(_UIKBLightEffectsBackground *)self _adjustMaskForCandidateViewSize:0 collapsedState:?];
    }
  }

  else
  {
    v28 = [(_UIKBLightEffectsBackground *)self assistantBarMaskView];

    if (v28)
    {
      v29 = v5 * 0.5;
      v30 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
      [v30 layoutFrame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = [(_UIKBLightEffectsBackground *)self assistantBarMaskView];
      [v39 setFrame:{v32, v29 + v34, v36, v38}];
    }
  }
}

- (CGSize)candidateBarSize
{
  width = self->_candidateBarSize.width;
  height = self->_candidateBarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end