@interface _UIKBLightEffectsBackground
- (BOOL)shouldShowBackdrop;
- (BOOL)shouldShowWaveView;
- (CGSize)candidateBarSize;
- (_UIKBLightEffectsBackground)initWithFrame:(CGRect)frame;
- (id)bringupWaveEffectViewForDisplayScale:(double)scale;
- (id)extraBackdropViewForConfig:(id)config;
- (id)layerForPositionMatchMove;
- (void)_addContentEffectsForConfig:(id)config;
- (void)_adjustMaskForCandidateViewSize:(CGSize)size collapsedState:(BOOL)state;
- (void)_setRenderConfig:(id)config;
- (void)addLayoutGuidesIfNeeded;
- (void)addLightSourceViews;
- (void)animatedTransitionToRenderConfig:(id)config;
- (void)changeClippingStyle:(int64_t)style;
- (void)completeTransitionToRenderConfig:(id)config;
- (void)extendForCandidateViewHeight:(double)height width:(double)width;
- (void)layoutInputBackdropToFullWithRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)maskEffectsBackdrop;
- (void)performTransitionToRenderConfig:(id)config fromRenderConfig:(id)renderConfig alongsideAnimations:(id)animations completion:(id)completion;
- (void)removeAnimatedBackdropEffects;
- (void)setClientBackdropInUse:(BOOL)use;
- (void)showShadowEffects:(BOOL)effects;
- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split;
- (void)updateAlphaForAnimationStart:(BOOL)start;
- (void)updateConstraints;
- (void)updateCornersWithRadius:(double)radius forVisualState:(int64_t)state;
- (void)updateEffectsForLightKeyboard:(BOOL)keyboard forceUpdate:(BOOL)update;
- (void)useMaskedKeyplaneBackdrop:(id)backdrop assistantBackdrop:(id)assistantBackdrop;
@end

@implementation _UIKBLightEffectsBackground

- (_UIKBLightEffectsBackground)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = _UIKBLightEffectsBackground;
  v7 = [(UIKBInputBackdropView *)&v11 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_clientBackdropInUse = 0;
    [(_UIKBLightEffectsBackground *)v7 layoutInputBackdropToFullWithRect:x, y, width, height];
    _inheritedRenderConfig = [(UIView *)v8 _inheritedRenderConfig];
    v8->_useLightConfigEffects = [_inheritedRenderConfig lightKeyboard];
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

- (void)setClientBackdropInUse:(BOOL)use
{
  if (self->_clientBackdropInUse != use)
  {
    self->_clientBackdropInUse = use;
  }
}

- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split
{
  splitCopy = split;
  if (style == 3904)
  {
    layer = [(UIView *)self layer];
    [layer setAllowsGroupBlending:0];

    [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    [(_UIKBLightEffectsBackground *)self _addContentEffectsForConfig:_inheritedRenderConfig];

    [(_UIKBLightEffectsBackground *)self addLightSourceViews];
    if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
    {
      style = 3904;
    }

    else
    {
      style = 3903;
    }
  }

  v8.receiver = self;
  v8.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v8 transitionToStyle:style isSplit:splitCopy];
}

- (void)_addContentEffectsForConfig:(id)config
{
  v19[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    lightKeyboard = [configCopy lightKeyboard];
    if (!configCopy || lightKeyboard)
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
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView setContentEffects:v11];

    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView2 setBackgroundColor:0];
  }

  else
  {
    inputBackdropFullView3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView3 setContentEffects:MEMORY[0x1E695E0F0]];

    inputBackdropFullView4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView4 setBackgroundColor:0];
  }
}

- (void)updateEffectsForLightKeyboard:(BOOL)keyboard forceUpdate:(BOOL)update
{
  updateCopy = update;
  keyboardCopy = keyboard;
  if (![(_UIKBLightEffectsBackground *)self isAnimating]|| updateCopy)
  {
    backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView setAlpha:1.0];

    behindFullBackdropView = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [behindFullBackdropView setAlpha:1.0];

    if (keyboardCopy)
    {
      v9 = 0.62;
    }

    else
    {
      v9 = 0.25;
    }

    behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [behindAssistantView setAlpha:v9];
  }

  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v13 = v12;

  v14 = 80.0;
  if (keyboardCopy)
  {
    v14 = 140.0;
  }

  v15 = v14 / v13;
  fullBackdropMaskView = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];
  layer = [fullBackdropMaskView layer];
  [layer setShadowRadius:v15];
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  v5.receiver = self;
  v5.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v5 _setRenderConfig:configCopy];
  if (-[_UIKBLightEffectsBackground isUsingAnimatedBackdrop](self, "isUsingAnimatedBackdrop") && ([configCopy animatedBackground] & 1) == 0)
  {
    [(_UIKBLightEffectsBackground *)self removeAnimatedBackdropEffects];
  }

  -[_UIKBLightEffectsBackground setUseLightConfigEffects:](self, "setUseLightConfigEffects:", [configCopy lightKeyboard]);
  if ([configCopy animatedBackground])
  {
    [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
    [(UIView *)self bounds];
    [(_UIKBLightEffectsBackground *)self layoutInputBackdropToFullWithRect:?];
    -[_UIKBLightEffectsBackground updateEffectsForLightKeyboard:forceUpdate:](self, "updateEffectsForLightKeyboard:forceUpdate:", [configCopy lightKeyboard], 0);
  }

  -[_UIKBLightEffectsBackground transitionToStyle:isSplit:](self, "transitionToStyle:isSplit:", [configCopy backdropStyle], 0);
}

- (void)removeAnimatedBackdropEffects
{
  [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:0];
  behindFullBackdropView = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];

  if (behindFullBackdropView)
  {
    inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView setContentEffects:MEMORY[0x1E695E0F0]];

    v5 = +[UIColor systemBackgroundColor];
    v6 = [v5 colorWithAlphaComponent:0.1];
    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView2 setBackgroundColor:v6];

    v8 = MEMORY[0x1E69977A0];
    lightSourceConstraints = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
    [v8 deactivateConstraints:lightSourceConstraints];

    [(_UIKBLightEffectsBackground *)self setLightSourceConstraints:0];
    behindFullBackdropView2 = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [behindFullBackdropView2 removeFromSuperview];

    behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [behindAssistantView removeFromSuperview];

    backdropGradientMaskView = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    [backdropGradientMaskView removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
    [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];
    [(_UIKBLightEffectsBackground *)self setAssistantBarMaskView:0];
    [(_UIKBLightEffectsBackground *)self setFullBackdropMaskView:0];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
  }
}

- (void)performTransitionToRenderConfig:(id)config fromRenderConfig:(id)renderConfig alongsideAnimations:(id)animations completion:(id)completion
{
  configCopy = config;
  renderConfigCopy = renderConfig;
  animationsCopy = animations;
  completionCopy = completion;
  if (![configCopy animatedBackground])
  {
    goto LABEL_9;
  }

  [(_UIKBLightEffectsBackground *)self setIsUsingAnimatedBackdrop:1];
  [(UIView *)self bounds];
  [(_UIKBLightEffectsBackground *)self layoutInputBackdropToFullWithRect:?];
  if ([(_UIKBLightEffectsBackground *)self shouldShowWaveView]&& !_AXSEnhanceBackgroundContrastEnabled())
  {
    if (renderConfigCopy)
    {
      transitionStartBackdropView = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];

      if (!transitionStartBackdropView)
      {
        v28 = [(_UIKBLightEffectsBackground *)self extraBackdropViewForConfig:renderConfigCopy];
        [(_UIKBLightEffectsBackground *)self setTransitionStartBackdropView:v28];
      }

      transitionStartBackdropView2 = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];
      [transitionStartBackdropView2 transitionToStyle:{objc_msgSend(renderConfigCopy, "backdropStyle")}];

      inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [inputBackdropFullView transitionToStyle:3903];

      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        goto LABEL_5;
      }

      backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      [backdropClippingView setAlpha:0.0];
    }

    else
    {
      backdropClippingView = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [backdropClippingView transitionToStyle:3903];
    }
  }

  else
  {
    [(_UIKBLightEffectsBackground *)self transitionToStyle:3904 isSplit:0];
  }

LABEL_5:
  [(_UIKBLightEffectsBackground *)self setIsAnimating:1];
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v16 = v15;

  if ([(_UIKBLightEffectsBackground *)self shouldShowWaveView])
  {
    v17 = [(_UIKBLightEffectsBackground *)self bringupWaveEffectViewForDisplayScale:v16];
    [(UIView *)self addSubview:v17];
    topAnchor = [v17 topAnchor];
    aboveKeyboardLayoutGuide = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    topAnchor2 = [aboveKeyboardLayoutGuide topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:720.0 / v16];

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
  v39 = configCopy;
  v40 = animationsCopy;
  v23 = v21;
  v24 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __111___UIKBLightEffectsBackground_performTransitionToRenderConfig_fromRenderConfig_alongsideAnimations_completion___block_invoke_3;
  v32[3] = &unk_1E71168F8;
  v33 = v22;
  v34 = v24;
  v32[4] = self;
  v35 = completionCopy;
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
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    v3 = [_inheritedRenderConfig colorAdaptiveBackground] ^ 1;
  }

  return v3;
}

- (void)updateAlphaForAnimationStart:(BOOL)start
{
  if (start && [(_UIKBLightEffectsBackground *)self shouldShowWaveView]&& !_AXSEnhanceBackgroundContrastEnabled())
  {
    if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 3)
    {
      inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [inputBackdropFullView transitionToStyle:3903];
    }

    behindFullBackdropView = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    [behindFullBackdropView setAlpha:0.2];

    behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [behindAssistantView setAlpha:0.2];
  }

  else
  {
    useLightConfigEffects = [(_UIKBLightEffectsBackground *)self useLightConfigEffects];

    [(_UIKBLightEffectsBackground *)self updateEffectsForLightKeyboard:useLightConfigEffects forceUpdate:1];
  }
}

- (void)animatedTransitionToRenderConfig:(id)config
{
  configCopy = config;
  -[_UIKBLightEffectsBackground setIsUsingAnimatedBackdrop:](self, "setIsUsingAnimatedBackdrop:", [configCopy animatedBackground]);
  if ([configCopy animatedBackground])
  {
    [(_UIKBLightEffectsBackground *)self transitionToStyle:3904 isSplit:0];
    -[_UIKBLightEffectsBackground setUseLightConfigEffects:](self, "setUseLightConfigEffects:", [configCopy lightKeyboard]);
    [(_UIKBLightEffectsBackground *)self updateAlphaForAnimationStart:0];
  }
}

- (void)completeTransitionToRenderConfig:(id)config
{
  transitionStartBackdropView = [(_UIKBLightEffectsBackground *)self transitionStartBackdropView];
  [transitionStartBackdropView removeFromSuperview];

  [(_UIKBLightEffectsBackground *)self setTransitionStartBackdropView:0];
  [(_UIKBLightEffectsBackground *)self setIsAnimating:0];
  behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];
  [(UIView *)self bringSubviewToFront:behindAssistantView];
}

- (id)bringupWaveEffectViewForDisplayScale:(double)scale
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(_UIGradientView);
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *MEMORY[0x1E6979DB0];
  gradientLayer = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer setType:v6];

  v8 = *MEMORY[0x1E6979CF8];
  gradientLayer2 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer2 setCompositingFilter:v8];

  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v36[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  gradientLayer3 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer3 setInterpolations:v11];

  gradientLayer4 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer4 setStartPoint:{0.5, 0.5}];

  gradientLayer5 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer5 setEndPoint:{0.0, 0.0}];

  gradientLayer6 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer6 setLocations:&unk_1EFE2CC88];

  v16 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v35[0] = [v16 CGColor];
  v17 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.38];
  v35[1] = [v17 CGColor];
  v18 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.36];
  v35[2] = [v18 CGColor];
  v19 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v35[3] = [v19 CGColor];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  gradientLayer7 = [(_UIGradientView *)v5 gradientLayer];
  [gradientLayer7 setColors:v20];

  [(UIView *)self addSubview:v5];
  v32 = MEMORY[0x1E69977A0];
  heightAnchor = [(UIView *)v5 heightAnchor];
  scale = [heightAnchor constraintEqualToConstant:3360.0 / scale];
  v34[0] = scale;
  centerXAnchor = [(UIView *)v5 centerXAnchor];
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  centerXAnchor2 = [inputBackdropFullView centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v34[1] = v26;
  widthAnchor = [(UIView *)v5 widthAnchor];
  heightAnchor2 = [(UIView *)v5 heightAnchor];
  v29 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v34[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  [v32 activateConstraints:v30];

  return v5;
}

- (id)extraBackdropViewForConfig:(id)config
{
  v37[4] = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = [UIKBBackdropView alloc];
  backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  [backdropClippingView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  backdropStyle = [configCopy backdropStyle];

  v16 = [(UIKBBackdropView *)v5 initWithFrame:backdropStyle style:v8, v10, v12, v14];
  [(UIView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  [(UIView *)self insertSubview:v16 aboveSubview:inputBackdropFullView];

  v29 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)v16 topAnchor];
  fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
  topAnchor2 = [fullBackdropLayoutGuide topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[0] = v33;
  leadingAnchor = [(UIView *)v16 leadingAnchor];
  backdropClippingView2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  leadingAnchor2 = [backdropClippingView2 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[1] = v28;
  backdropClippingView3 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  bottomAnchor = [backdropClippingView3 bottomAnchor];
  bottomAnchor2 = [(UIView *)v16 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[2] = v21;
  backdropClippingView4 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  trailingAnchor = [backdropClippingView4 trailingAnchor];
  trailingAnchor2 = [(UIView *)v16 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v29 activateConstraints:v26];

  return v16;
}

- (id)layerForPositionMatchMove
{
  if ([(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    backdropGradientMaskView = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    layer = [backdropGradientMaskView layer];
  }

  else
  {
    layer = 0;
  }

  return layer;
}

- (void)addLayoutGuidesIfNeeded
{
  v73[2] = *MEMORY[0x1E69E9840];
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];

  if (!backdropClippingView)
  {
    v67 = objc_alloc_init(UIView);
    [(UIView *)v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    captureView = [(UIKBInputBackdropView *)self captureView];
    [(UIView *)self insertSubview:v67 atIndex:captureView != 0];

    [(_UIKBLightEffectsBackground *)self setBackdropClippingView:v67];
    backdropClippingView2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView2 setClipsToBounds:1];

    backdropClippingView3 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    layer = [backdropClippingView3 layer];
    [layer setAllowsGroupBlending:0];

    backdropClippingView4 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    layer2 = [backdropClippingView4 layer];
    [layer2 setAllowsGroupOpacity:0];

    backdropClippingView5 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    layer3 = [backdropClippingView5 layer];
    [layer3 setAllowsEdgeAntialiasing:0];

    [(_UIKBLightEffectsBackground *)self changeClippingStyle:0];
    backdropClippingView6 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    leadingAnchor = [backdropClippingView6 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v73[0] = v15;
    trailingAnchor = [(UIView *)self trailingAnchor];
    backdropClippingView7 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    trailingAnchor2 = [backdropClippingView7 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
    assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    leadingAnchor3 = [assistantLayoutGuide leadingAnchor];
    backdropClippingView8 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    leadingAnchor4 = [backdropClippingView8 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:50.0];
    v72[0] = v27;
    backdropClippingView9 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    trailingAnchor3 = [backdropClippingView9 trailingAnchor];
    assistantLayoutGuide2 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    trailingAnchor4 = [assistantLayoutGuide2 trailingAnchor];
    v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:50.0];
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
    aboveKeyboardLayoutGuide = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    heightAnchor = [aboveKeyboardLayoutGuide heightAnchor];
    assistantLayoutGuide3 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    heightAnchor2 = [assistantLayoutGuide3 heightAnchor];
    v40 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

    LODWORD(v41) = 1148829696;
    v66 = v40;
    [v40 setPriority:v41];
    traitCollection = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    v44 = v43;

    aboveKeyboardLayoutGuide2 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    heightAnchor3 = [aboveKeyboardLayoutGuide2 heightAnchor];
    v47 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v44];
    [(_UIKBLightEffectsBackground *)self setMinimumAboveKeyboardHeightConstraint:v47];

    fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    topAnchor = [fullBackdropLayoutGuide topAnchor];
    aboveKeyboardLayoutGuide3 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    bottomAnchor = [aboveKeyboardLayoutGuide3 bottomAnchor];
    v61 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v71[0] = v61;
    v71[1] = v40;
    minimumAboveKeyboardHeightConstraint = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    v71[2] = minimumAboveKeyboardHeightConstraint;
    aboveKeyboardLayoutGuide4 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    leadingAnchor5 = [aboveKeyboardLayoutGuide4 leadingAnchor];
    assistantLayoutGuide4 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    leadingAnchor6 = [assistantLayoutGuide4 leadingAnchor];
    v50 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v71[3] = v50;
    aboveKeyboardLayoutGuide5 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    trailingAnchor5 = [aboveKeyboardLayoutGuide5 trailingAnchor];
    assistantLayoutGuide5 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
    trailingAnchor6 = [assistantLayoutGuide5 trailingAnchor];
    v55 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
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

- (void)changeClippingStyle:(int64_t)style
{
  v47[2] = *MEMORY[0x1E69E9840];
  [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded];
  v5 = MEMORY[0x1E69977A0];
  backdropClippingConstraints = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
  [v5 deactivateConstraints:backdropClippingConstraints];

  v41 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_clippingStyle = style;
  backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  v8 = backdropClippingView;
  if (style > 1)
  {
    switch(style)
    {
      case 2:
        topAnchor = [backdropClippingView topAnchor];
        assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
        topAnchor2 = [assistantLayoutGuide topAnchor];
        bottomAnchor4 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v45[0] = bottomAnchor4;
        assistantLayoutGuide2 = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
        bottomAnchor = [assistantLayoutGuide2 bottomAnchor];
        backdropClippingView2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        [backdropClippingView2 bottomAnchor];
        v27 = backdropClippingView3 = v8;
        v28 = [bottomAnchor constraintEqualToAnchor:v27];
        v45[1] = v28;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];

        topAnchor3 = topAnchor;
        break;
      case 3:
        [backdropClippingView setClipsToBounds:0];

        backdropClippingView3 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        topAnchor3 = [backdropClippingView3 topAnchor];
        assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        topAnchor2 = [assistantLayoutGuide topAnchor];
        bottomAnchor4 = [topAnchor3 constraintEqualToAnchor:topAnchor2];
        v44[0] = bottomAnchor4;
        assistantLayoutGuide2 = [(UIView *)self bottomAnchor];
        bottomAnchor = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        backdropClippingView2 = [bottomAnchor bottomAnchor];
        v27 = [assistantLayoutGuide2 constraintEqualToAnchor:backdropClippingView2 constant:0.0];
        v44[1] = v27;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

        break;
      case 4:
        topAnchor4 = [backdropClippingView topAnchor];
        fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        topAnchor5 = [fullBackdropLayoutGuide topAnchor];
        [topAnchor4 constraintEqualToAnchor:topAnchor5];
        v12 = v38 = v8;
        v43[0] = v12;
        bottomAnchor2 = [(UIView *)self bottomAnchor];
        backdropClippingView4 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        bottomAnchor3 = [backdropClippingView4 bottomAnchor];
        v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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
        topAnchor6 = [backdropClippingView topAnchor];
        assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
        topAnchor2 = [assistantLayoutGuide topAnchor];
        bottomAnchor4 = [topAnchor6 constraintEqualToAnchor:topAnchor2];
        v42[0] = bottomAnchor4;
        assistantLayoutGuide2 = [(UIView *)self bottomAnchor];
        bottomAnchor = [(_UIKBLightEffectsBackground *)self backdropClippingView];
        backdropClippingView2 = [bottomAnchor bottomAnchor];
        [assistantLayoutGuide2 constraintEqualToAnchor:backdropClippingView2];
        v24 = v23 = v8;
        v42[1] = v24;
        v25 = MEMORY[0x1E695DEC8];
        v26 = v42;
        goto LABEL_14;
    }

    v30 = v27;
    v8 = backdropClippingView3;
    goto LABEL_15;
  }

  if (style == -1)
  {
    topAnchor3 = [backdropClippingView topAnchor];
    assistantLayoutGuide = [(UIView *)self topAnchor];
    topAnchor2 = [topAnchor3 constraintEqualToAnchor:?];
    v47[0] = topAnchor2;
    bottomAnchor4 = [(UIView *)self bottomAnchor];
    assistantLayoutGuide2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    bottomAnchor = [assistantLayoutGuide2 bottomAnchor];
    backdropClippingView2 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor];
    v47[1] = backdropClippingView2;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v30 = v41;
    goto LABEL_15;
  }

  if (style != 1)
  {
    goto LABEL_13;
  }

  topAnchor6 = [backdropClippingView topAnchor];
  assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self assistantLayoutGuide];
  topAnchor2 = [assistantLayoutGuide bottomAnchor];
  bottomAnchor4 = [topAnchor6 constraintEqualToAnchor:topAnchor2];
  v46[0] = bottomAnchor4;
  assistantLayoutGuide2 = [(UIView *)self bottomAnchor];
  bottomAnchor = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  backdropClippingView2 = [bottomAnchor bottomAnchor];
  [assistantLayoutGuide2 constraintEqualToAnchor:backdropClippingView2];
  v24 = v23 = v8;
  v46[1] = v24;
  v25 = MEMORY[0x1E695DEC8];
  v26 = v46;
LABEL_14:
  v17 = [v25 arrayWithObjects:v26 count:2];

  v30 = v24;
  v8 = v23;
  topAnchor3 = topAnchor6;
LABEL_15:

  backdropMask = [(_UIKBLightEffectsBackground *)self backdropMask];

  if (backdropMask)
  {
    backdropClippingView5 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView5 setMaskView:0];

    backdropMask2 = [(_UIKBLightEffectsBackground *)self backdropMask];
    [backdropMask2 removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropMask:0];
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  if (style)
  {
    goto LABEL_18;
  }

LABEL_20:
  [(_UIKBLightEffectsBackground *)self setBackdropClippingConstraints:v17];
  v34 = MEMORY[0x1E69977A0];
  backdropClippingConstraints2 = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
  [v34 activateConstraints:backdropClippingConstraints2];
}

- (void)extendForCandidateViewHeight:(double)height width:(double)width
{
  if (height <= 0.0)
  {
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:width, 0.0];
    backdropClippingConstraints = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
    v11 = [backdropClippingConstraints objectAtIndexedSubscript:0];
    [v11 setConstant:height];

    traitCollection = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    v14 = v13;

    minimumAboveKeyboardHeightConstraint = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [minimumAboveKeyboardHeightConstraint setConstant:v14];
  }

  else
  {
    [(_UIKBLightEffectsBackground *)self changeClippingStyle:4];
    [(_UIKBLightEffectsBackground *)self setCandidateBarSize:width, height];
    [(_UIKBLightEffectsBackground *)self candidateBarSize];
    [(_UIKBLightEffectsBackground *)self _adjustMaskForCandidateViewSize:1 collapsedState:?];
    minimumAboveKeyboardHeightConstraint2 = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [minimumAboveKeyboardHeightConstraint2 setConstant:height];

    minimumAboveKeyboardHeightConstraint = [(_UIKBLightEffectsBackground *)self backdropClippingConstraints];
    v9 = [minimumAboveKeyboardHeightConstraint objectAtIndexedSubscript:0];
    [v9 setConstant:-height];
  }

  [(UIView *)self layoutIfNeeded];
}

- (void)showShadowEffects:(BOOL)effects
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    mirroredShadowView = [(_UIKBLightEffectsBackground *)self mirroredShadowView];
    if (!mirroredShadowView || (v6 = mirroredShadowView, [(_UIKBLightEffectsBackground *)self mirroredLightBorderView], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      if (effects)
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
        mirroredShadowView2 = [(_UIKBLightEffectsBackground *)self mirroredShadowView];
        [mirroredShadowView2 removeFromSuperview];

        mirroredLightBorderView = [(_UIKBLightEffectsBackground *)self mirroredLightBorderView];
        [mirroredLightBorderView removeFromSuperview];
      }
    }
  }
}

- (void)updateCornersWithRadius:(double)radius forVisualState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = _UIKBLightEffectsBackground;
  [(UIKBInputBackdropView *)&v7 updateCornersWithRadius:state forVisualState:?];
  if ([(UIKBInputBackdropView *)self backdropStyle]== 3904 && ([(UIKBInputBackdropView *)self keyboardVisualState]== 3 || ![(UIKBInputBackdropView *)self keyboardVisualState]&& +[UIKeyboardImpl isFloating]))
  {
    backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView _setContinuousCornerRadius:radius];
  }
}

- (void)addLightSourceViews
{
  shouldShowBackdrop = [(_UIKBLightEffectsBackground *)self shouldShowBackdrop];
  behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];
  v5 = behindAssistantView;
  if (shouldShowBackdrop)
  {
    if (behindAssistantView)
    {
      behindAssistantView2 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
      superview = [behindAssistantView2 superview];

      if (!superview)
      {
        v8 = MEMORY[0x1E69977A0];
        lightSourceConstraints = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
        [v8 deactivateConstraints:lightSourceConstraints];

        lightSourceConstraints2 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
        [lightSourceConstraints2 removeAllObjects];

        [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
        [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];
      }
    }

    behindAssistantView3 = [(_UIKBLightEffectsBackground *)self behindAssistantView];

    if (!behindAssistantView3)
    {
      v36 = objc_alloc_init(UIView);
      v12 = objc_alloc_init(UIView);
      if (TIGetShowDebugBackdropValue_onceToken != -1)
      {
        dispatch_once(&TIGetShowDebugBackdropValue_onceToken, &__block_literal_global_379);
      }

      mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
      v14 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"ShowDebugBackdrop"];

      if (v14 && [v14 BOOLValue])
      {
        v15 = +[UIColor systemPurpleColor];
        [(UIView *)v36 setBackgroundColor:v15];

        superview3 = +[UIColor systemRedColor];
        [(UIView *)v12 setBackgroundColor:superview3];
      }

      else
      {
        v22 = [_UIIntelligenceSystemLightView alloc];
        superview2 = [(UIView *)self superview];
        [superview2 bounds];
        v24 = [(_UIIntelligenceSystemLightView *)v22 initWithFrame:0 preferringAudioReactivity:?];

        v25 = [_UIIntelligenceSystemLightView alloc];
        superview3 = [(UIView *)self superview];
        [superview3 bounds];
        v26 = [(_UIIntelligenceSystemLightView *)v25 initWithFrame:0 preferringAudioReactivity:?];

        v12 = v26;
        v36 = v24;
      }

      [(UIView *)v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([(_UIKBLightEffectsBackground *)self isAnimating])
      {
        _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
        lightKeyboard = [_inheritedRenderConfig lightKeyboard];
        v29 = 0.2;
        if (lightKeyboard)
        {
          v29 = 0.0;
        }

        [(UIView *)v36 setAlpha:v29];
      }

      else
      {
        [(UIView *)v36 setAlpha:1.0];
      }

      layer = [(UIView *)v36 layer];
      [layer setAllowsEdgeAntialiasing:0];

      layer2 = [(UIView *)v36 layer];
      [layer2 setAllowsGroupBlending:0];

      layer3 = [(UIView *)v36 layer];
      [layer3 setAllowsGroupOpacity:0];

      [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      layer4 = [(UIView *)v12 layer];
      [layer4 setAllowsEdgeAntialiasing:0];

      layer5 = [(UIView *)v12 layer];
      [layer5 setAllowsGroupBlending:0];

      layer6 = [(UIView *)v12 layer];
      [layer6 setAllowsGroupOpacity:0];

      [(_UIKBLightEffectsBackground *)self useMaskedKeyplaneBackdrop:v36 assistantBackdrop:v12];
    }
  }

  else
  {

    if (v5)
    {
      v17 = MEMORY[0x1E69977A0];
      lightSourceConstraints3 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
      [v17 deactivateConstraints:lightSourceConstraints3];

      lightSourceConstraints4 = [(_UIKBLightEffectsBackground *)self lightSourceConstraints];
      [lightSourceConstraints4 removeAllObjects];

      behindAssistantView4 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
      [behindAssistantView4 removeFromSuperview];

      behindFullBackdropView = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
      [behindFullBackdropView removeFromSuperview];

      [(_UIKBLightEffectsBackground *)self setBehindAssistantView:0];

      [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:0];
    }
  }
}

- (void)useMaskedKeyplaneBackdrop:(id)backdrop assistantBackdrop:(id)assistantBackdrop
{
  v101[4] = *MEMORY[0x1E69E9840];
  backdropCopy = backdrop;
  assistantBackdropCopy = assistantBackdrop;
  if (backdropCopy)
  {
    behindFullBackdropView = [(_UIKBLightEffectsBackground *)self behindFullBackdropView];
    v9 = [behindFullBackdropView isEqual:backdropCopy];

    if ((v9 & 1) == 0)
    {
      v96 = assistantBackdropCopy;
      [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded];
      v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
      traitCollection = [(UIView *)self traitCollection];
      [traitCollection displayScale];
      v12 = v11;

      backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [backdropClippingView insertSubview:backdropCopy belowSubview:inputBackdropFullView];

      leadingAnchor = [backdropCopy leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v101[0] = v89;
      topAnchor = [backdropCopy topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v101[1] = v16;
      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [backdropCopy bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v101[2] = v19;
      trailingAnchor = [(UIView *)self trailingAnchor];
      [backdropCopy trailingAnchor];
      v21 = v97 = backdropCopy;
      v22 = [trailingAnchor constraintEqualToAnchor:v21];
      v101[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [v98 addObjectsFromArray:v23];

      _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
      if ([_inheritedRenderConfig lightKeyboard])
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
      cGColor = [v28 CGColor];
      layer = [(UIView *)v26 layer];
      [layer setShadowColor:cGColor];

      layer2 = [(UIView *)v26 layer];
      LODWORD(v32) = 1.0;
      [layer2 setShadowOpacity:v32];

      layer3 = [(UIView *)v26 layer];
      [layer3 setShadowRadius:v25 / v12];

      layer4 = [(UIView *)v26 layer];
      [layer4 setShadowPathIsBounds:1];

      v35 = *MEMORY[0x1E695F060];
      v36 = *(MEMORY[0x1E695F060] + 8);
      layer5 = [(UIView *)v26 layer];
      [layer5 setShadowOffset:{v35, v36}];

      layer6 = [(UIView *)v26 layer];
      [layer6 setAllowsGroupOpacity:0];

      layer7 = [(UIView *)v26 layer];
      [layer7 setAllowsGroupBlending:0];

      layer8 = [(UIView *)v26 layer];
      [layer8 setAllowsEdgeAntialiasing:0];

      [v97 setMaskView:v26];
      [(_UIKBLightEffectsBackground *)self setBehindFullBackdropView:v97];
      v95 = v26;
      [(_UIKBLightEffectsBackground *)self setFullBackdropMaskView:v26];
      v41 = objc_alloc_init(UIView);
      [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
      v42 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      layer9 = [(UIView *)v41 layer];
      [layer9 setCompositingFilter:v42];

      if ([(_UIKBLightEffectsBackground *)self isAnimating])
      {
        [(UIView *)v41 setAlpha:0.0];
      }

      else
      {
        _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
        lightKeyboard = [_inheritedRenderConfig2 lightKeyboard];
        v46 = 0.62;
        if (!lightKeyboard)
        {
          v46 = 0.25;
        }

        [(UIView *)v41 setAlpha:v46];
      }

      layer10 = [(UIView *)v41 layer];
      [layer10 setAllowsGroupOpacity:0];

      layer11 = [(UIView *)v41 layer];
      [layer11 setAllowsGroupBlending:0];

      [(UIView *)v41 addSubview:v96];
      backdropClippingView2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
      inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      [backdropClippingView2 insertSubview:v41 aboveSubview:inputBackdropFullView2];

      topAnchor3 = [v96 topAnchor];
      topAnchor4 = [(UIView *)v41 topAnchor];
      v84 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v100[0] = v84;
      leadingAnchor3 = [v96 leadingAnchor];
      leadingAnchor4 = [(UIView *)v41 leadingAnchor];
      v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v100[1] = v52;
      [(UIView *)v41 bottomAnchor];
      v53 = v93 = self;
      bottomAnchor3 = [v96 bottomAnchor];
      v55 = [v53 constraintEqualToAnchor:bottomAnchor3];
      v100[2] = v55;
      trailingAnchor2 = [(UIView *)v41 trailingAnchor];
      trailingAnchor3 = [v96 trailingAnchor];
      v58 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v100[3] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      [v98 addObjectsFromArray:v59];

      topAnchor5 = [(UIView *)v41 topAnchor];
      topAnchor6 = [v97 topAnchor];
      v85 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v99[0] = v85;
      leadingAnchor5 = [(UIView *)v41 leadingAnchor];
      leadingAnchor6 = [v97 leadingAnchor];
      v61 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v99[1] = v61;
      bottomAnchor4 = [v97 bottomAnchor];
      bottomAnchor5 = [(UIView *)v41 bottomAnchor];
      v64 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v99[2] = v64;
      trailingAnchor4 = [v97 trailingAnchor];
      trailingAnchor5 = [(UIView *)v41 trailingAnchor];
      v67 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v99[3] = v67;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:4];
      [v98 addObjectsFromArray:v68];

      v69 = objc_alloc_init(UIView);
      v70 = +[UIColor clearColor];
      [(UIView *)v69 setBackgroundColor:v70];

      layer12 = [(UIView *)v69 layer];
      [layer12 setAllowsGroupBlending:0];

      layer13 = [(UIView *)v69 layer];
      [layer13 setAllowsGroupOpacity:0];

      layer14 = [(UIView *)v69 layer];
      [layer14 setAllowsEdgeAntialiasing:0];

      v74 = +[UIColor blackColor];
      cGColor2 = [v74 CGColor];
      layer15 = [(UIView *)v69 layer];
      [layer15 setShadowColor:cGColor2];

      assistantBackdropCopy = v96;
      layer16 = [(UIView *)v69 layer];
      LODWORD(v78) = 1.0;
      [layer16 setShadowOpacity:v78];

      layer17 = [(UIView *)v69 layer];
      [layer17 setShadowRadius:80.0 / v12];

      layer18 = [(UIView *)v69 layer];
      [layer18 setShadowPathIsBounds:1];

      layer19 = [(UIView *)v69 layer];
      [layer19 setShadowOffset:{v35, v36}];

      backdropCopy = v97;
      [v96 setMaskView:v69];
      [(_UIKBLightEffectsBackground *)v93 setBehindAssistantView:v41];
      [(_UIKBLightEffectsBackground *)v93 setAssistantBarMaskView:v69];
      [MEMORY[0x1E69977A0] activateConstraints:v98];
      [(_UIKBLightEffectsBackground *)v93 setLightSourceConstraints:v98];
      [(UIView *)v93 setNeedsLayout];
    }
  }
}

- (void)layoutInputBackdropToFullWithRect:(CGRect)rect
{
  v48[4] = *MEMORY[0x1E69E9840];
  [(_UIKBLightEffectsBackground *)self addLayoutGuidesIfNeeded:rect.origin.x];
  inputBackdropLeftView = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  superview = [inputBackdropLeftView superview];
  if (superview)
  {
  }

  else
  {
    inputBackdropRightView = [(UIKBInputBackdropView *)self inputBackdropRightView];
    superview2 = [inputBackdropRightView superview];

    if (!superview2)
    {
      goto LABEL_5;
    }
  }

  inputBackdropLeftView2 = [(UIKBInputBackdropView *)self inputBackdropLeftView];
  [inputBackdropLeftView2 removeFromSuperview];

  inputBackdropRightView2 = [(UIKBInputBackdropView *)self inputBackdropRightView];
  [inputBackdropRightView2 removeFromSuperview];

LABEL_5:
  behindAssistantView = [(_UIKBLightEffectsBackground *)self behindAssistantView];

  backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
  if (behindAssistantView)
  {
    behindAssistantView2 = [(_UIKBLightEffectsBackground *)self behindAssistantView];
    [backdropClippingView insertSubview:inputBackdropFullView belowSubview:behindAssistantView2];
  }

  else
  {
    [backdropClippingView addSubview:inputBackdropFullView];
  }

  fullWidthConstraints = [(UIKBInputBackdropView *)self fullWidthConstraints];

  if (!fullWidthConstraints)
  {
    inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    leftAnchor = [inputBackdropFullView2 leftAnchor];
    fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    leftAnchor2 = [fullBackdropLayoutGuide leftAnchor];
    v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    v48[0] = v43;
    aboveKeyboardLayoutGuide = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
    topAnchor = [aboveKeyboardLayoutGuide topAnchor];
    inputBackdropFullView3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    topAnchor2 = [inputBackdropFullView3 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v48[1] = v38;
    fullBackdropLayoutGuide2 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    rightAnchor = [fullBackdropLayoutGuide2 rightAnchor];
    inputBackdropFullView4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    rightAnchor2 = [inputBackdropFullView4 rightAnchor];
    v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    v48[2] = v17;
    fullBackdropLayoutGuide3 = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    bottomAnchor = [fullBackdropLayoutGuide3 bottomAnchor];
    inputBackdropFullView5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    bottomAnchor2 = [inputBackdropFullView5 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v48[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [(UIKBInputBackdropView *)self setFullWidthConstraints:v23];
  }

  fullWidthConstraints2 = [(UIKBInputBackdropView *)self fullWidthConstraints];
  firstObject = [fullWidthConstraints2 firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v27 = MEMORY[0x1E69977A0];
    fullWidthConstraints3 = [(UIKBInputBackdropView *)self fullWidthConstraints];
    [v27 activateConstraints:fullWidthConstraints3];
  }

  if (![(_UIKBLightEffectsBackground *)self shouldShowBackdrop])
  {
    inputBackdropFullView6 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView6 setBackgroundColor:0];

    inputBackdropFullView7 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    v32 = MEMORY[0x1E695E0F0];
    [inputBackdropFullView7 setBackgroundEffects:MEMORY[0x1E695E0F0]];

    inputBackdropFullView8 = [(UIKBInputBackdropView *)self inputBackdropFullView];
    [inputBackdropFullView8 setContentEffects:v32];

    backdropGradientMaskView = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
    [backdropGradientMaskView removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
    return;
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig animatedBackground])
  {
  }

  else
  {
    isUsingAnimatedBackdrop = [(_UIKBLightEffectsBackground *)self isUsingAnimatedBackdrop];

    if (!isUsingAnimatedBackdrop)
    {
      return;
    }
  }

  [(_UIKBLightEffectsBackground *)self maskEffectsBackdrop];
}

- (void)maskEffectsBackdrop
{
  v56[1] = *MEMORY[0x1E69E9840];
  shouldShowBackdrop = [(_UIKBLightEffectsBackground *)self shouldShowBackdrop];
  backdropGradientMaskView = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
  v5 = backdropGradientMaskView;
  if (shouldShowBackdrop)
  {

    if (!v5)
    {
      v6 = objc_alloc_init(_UIGradientView);
      [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = *MEMORY[0x1E6979DA0];
      gradientLayer = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer setType:v7];

      gradientLayer2 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer2 setStartPoint:{0.5, 0.0}];

      gradientLayer3 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer3 setEndPoint:{0.5, 0.2}];

      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      v56[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      gradientLayer4 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer4 setInterpolations:v12];

      v14 = [UIColor colorWithRed:1.0 green:0.1491 blue:0.0 alpha:0.0];
      v15 = [UIColor colorWithRed:0.2549 green:0.5725 blue:0.9647 alpha:1.0];
      v52 = v14;
      v55[0] = [v14 CGColor];
      v51 = v15;
      v55[1] = [v15 CGColor];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      gradientLayer5 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer5 setColors:v16];

      gradientLayer6 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer6 setAllowsEdgeAntialiasing:0];

      gradientLayer7 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer7 setAllowsGroupBlending:0];

      gradientLayer8 = [(_UIGradientView *)v6 gradientLayer];
      [gradientLayer8 setAllowsGroupOpacity:0];

      v53 = v6;
      [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:v6];
      inputBackdropFullView = [(UIKBInputBackdropView *)self inputBackdropFullView];
      contentView = [inputBackdropFullView contentView];
      backdropGradientMaskView2 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      [contentView addSubview:backdropGradientMaskView2];

      backdropGradientMaskView3 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      heightAnchor = [backdropGradientMaskView3 heightAnchor];
      inputBackdropFullView2 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      heightAnchor2 = [inputBackdropFullView2 heightAnchor];
      v28 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

      v44 = MEMORY[0x1E69977A0];
      backdropGradientMaskView4 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      topAnchor = [backdropGradientMaskView4 topAnchor];
      inputBackdropFullView3 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      topAnchor2 = [inputBackdropFullView3 topAnchor];
      v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v54[0] = v46;
      backdropGradientMaskView5 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      leadingAnchor = [backdropGradientMaskView5 leadingAnchor];
      inputBackdropFullView4 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      leadingAnchor2 = [inputBackdropFullView4 leadingAnchor];
      v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v54[1] = v30;
      v54[2] = v28;
      v31 = v28;
      backdropGradientMaskView6 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
      trailingAnchor = [backdropGradientMaskView6 trailingAnchor];
      inputBackdropFullView5 = [(UIKBInputBackdropView *)self inputBackdropFullView];
      trailingAnchor2 = [inputBackdropFullView5 trailingAnchor];
      v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v54[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
      [v44 activateConstraints:v37];

      if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 3)
      {
        LODWORD(v38) = 1144750080;
        [v31 setPriority:v38];
        backdropGradientMaskView7 = [(_UIKBLightEffectsBackground *)self backdropGradientMaskView];
        heightAnchor3 = [backdropGradientMaskView7 heightAnchor];
        v41 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:336.0];

        [v41 setActive:1];
      }
    }
  }

  else
  {
    [backdropGradientMaskView removeFromSuperview];

    [(_UIKBLightEffectsBackground *)self setBackdropGradientMaskView:0];
  }
}

- (void)updateConstraints
{
  if ([(_UIKBLightEffectsBackground *)self clippingStyle]!= 4)
  {
    traitCollection = [(UIView *)self traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    v5 = v4;

    minimumAboveKeyboardHeightConstraint = [(_UIKBLightEffectsBackground *)self minimumAboveKeyboardHeightConstraint];
    [minimumAboveKeyboardHeightConstraint setConstant:v5];
  }

  v7.receiver = self;
  v7.super_class = _UIKBLightEffectsBackground;
  [(UIView *)&v7 updateConstraints];
}

- (void)_adjustMaskForCandidateViewSize:(CGSize)size collapsedState:(BOOL)state
{
  stateCopy = state;
  height = size.height;
  width = size.width;
  backdropMask = [(_UIKBLightEffectsBackground *)self backdropMask];

  if (!backdropMask)
  {
    v9 = [UIKBBackgroundShapeView alloc];
    backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView bounds];
    v11 = [(UIView *)v9 initWithFrame:?];
    [(_UIKBLightEffectsBackground *)self setBackdropMask:v11];

    backdropClippingView2 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    backdropMask2 = [(_UIKBLightEffectsBackground *)self backdropMask];
    [backdropClippingView2 setMaskView:backdropMask2];
  }

  backdropClippingView3 = [(_UIKBLightEffectsBackground *)self backdropClippingView];
  [backdropClippingView3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  backdropMask3 = [(_UIKBLightEffectsBackground *)self backdropMask];
  [backdropMask3 setFrame:{v16, v18, v20, v22}];

  fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
  [fullBackdropLayoutGuide layoutFrame];
  v26 = v25;
  v28 = v27;

  if (stateCopy)
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
  backdropMask4 = [(_UIKBLightEffectsBackground *)self backdropMask];
  [backdropMask4 setPath:v30];
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = _UIKBLightEffectsBackground;
  [(UIView *)&v40 layoutSubviews];
  aboveKeyboardLayoutGuide = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
  [aboveKeyboardLayoutGuide layoutFrame];
  v5 = v4;

  fullBackdropMaskView = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];

  if (fullBackdropMaskView)
  {
    fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self fullBackdropLayoutGuide];
    [fullBackdropLayoutGuide layoutFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    fullBackdropMaskView2 = [(_UIKBLightEffectsBackground *)self fullBackdropMaskView];
    [fullBackdropMaskView2 setFrame:{v9 + -100.0, v11 - v5, v13 + 200.0, v15 - (-100.0 - v5)}];
  }

  if ([(_UIKBLightEffectsBackground *)self clippingStyle]== 4)
  {
    backdropClippingView = [(_UIKBLightEffectsBackground *)self backdropClippingView];
    [backdropClippingView bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    backdropMask = [(_UIKBLightEffectsBackground *)self backdropMask];
    [backdropMask setFrame:{v19, v21, v23, v25}];

    [(_UIKBLightEffectsBackground *)self candidateBarSize];
    if (v27 > 0.0)
    {
      [(_UIKBLightEffectsBackground *)self candidateBarSize];
      [(_UIKBLightEffectsBackground *)self _adjustMaskForCandidateViewSize:0 collapsedState:?];
    }
  }

  else
  {
    assistantBarMaskView = [(_UIKBLightEffectsBackground *)self assistantBarMaskView];

    if (assistantBarMaskView)
    {
      v29 = v5 * 0.5;
      aboveKeyboardLayoutGuide2 = [(_UIKBLightEffectsBackground *)self aboveKeyboardLayoutGuide];
      [aboveKeyboardLayoutGuide2 layoutFrame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      assistantBarMaskView2 = [(_UIKBLightEffectsBackground *)self assistantBarMaskView];
      [assistantBarMaskView2 setFrame:{v32, v29 + v34, v36, v38}];
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