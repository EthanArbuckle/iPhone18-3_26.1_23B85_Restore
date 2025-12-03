@interface SUIAShockwaveViewController
+ (id)_propertyKeyPathToAnimatableKeyPathMap;
- (SUIAShockwaveViewController)initWithStyle:(id)style overlay:(id)overlay;
- (void)_applyChromaticAberrationForState:(int64_t)state completionGenerator:(id)generator;
- (void)_applyColorOverlayForState:(int64_t)state completionGenerator:(id)generator;
- (void)_applyConfig:(id)config configPropertyKey:(id)key object:(id)object objectPropertyKeyPath:(id)path transformerBlock:(id)block state:(int64_t)state subcompletionGenerator:(id)generator;
- (void)_applyConfig:(id)config configPropertyKey:(id)key object:(id)object objectPropertyKeyPath:(id)path transformerBlock:(id)block valueApplyBlock:(id)applyBlock animatableKeyPaths:(id)paths state:(int64_t)self0 subcompletionGenerator:(id)self1;
- (void)_applyEdgeLightOverlayForState:(int64_t)state;
- (void)_applyFillLightForState:(int64_t)state completionGenerator:(id)generator;
- (void)_applyMeshForState:(int64_t)state completionGenerator:(id)generator;
- (void)_applyRootViewConfigurationForState:(int64_t)state completionGenerator:(id)generator;
- (void)_invalidateAndLayoutIfNeeded:(BOOL)needed completion:(id)completion;
- (void)_setupChromaticAberrationIfNecessary;
- (void)_setupColorOverlayIfNecessary;
- (void)_setupEdgeLightIfNecessary;
- (void)_setupMeshIfNecessary;
- (void)_updateFillLightIfNecessary;
- (void)setPreferredLightType:(int64_t)type;
- (void)setState:(int64_t)state animated:(BOOL)animated recommendedNextAction:(id)action completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUIAShockwaveViewController

- (SUIAShockwaveViewController)initWithStyle:(id)style overlay:(id)overlay
{
  styleCopy = style;
  overlayCopy = overlay;
  v15.receiver = self;
  v15.super_class = SUIAShockwaveViewController;
  v9 = [(SUIAShockwaveViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_edgeLightOverlay, overlay);
    v11 = +[SUIAnimationKitPrototypeSettingsDomain rootSettings];
    shockwaveSettings = [v11 shockwaveSettings];
    prototypeSettings = v10->_prototypeSettings;
    v10->_prototypeSettings = shockwaveSettings;
  }

  return v10;
}

- (void)setState:(int64_t)state animated:(BOOL)animated recommendedNextAction:(id)action completion:(id)completion
{
  animatedCopy = animated;
  actionCopy = action;
  completionCopy = completion;
  if (self->_state == state)
  {
    if (state <= 2 && actionCopy)
    {
      actionCopy[2](actionCopy, state + 1);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    self->_state = state;
    [(BSAbsoluteMachTimer *)self->_transitionToNextStateTimer cancel];
    [(BSAbsoluteMachTimer *)self->_transitionToNextStateTimer invalidate];
    transitionToNextStateTimer = self->_transitionToNextStateTimer;
    self->_transitionToNextStateTimer = 0;

    [(SUIAShockwaveViewController *)self _invalidateAndLayoutIfNeeded:animatedCopy completion:completionCopy];
    [(SUIAShockwaveStyle *)self->_style recommendedPresentationDurationForState:state];
    if (state <= 2)
    {
      if (actionCopy)
      {
        v14 = v13;
        if ((BSFloatEqualToFloat() & 1) == 0)
        {
          v15 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SUIAShockwave-Transition-to-next-state"];
          v16 = self->_transitionToNextStateTimer;
          self->_transitionToNextStateTimer = v15;

          v17 = self->_transitionToNextStateTimer;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __82__SUIAShockwaveViewController_setState_animated_recommendedNextAction_completion___block_invoke;
          v18[3] = &unk_279D3F9D8;
          v18[4] = self;
          v19 = actionCopy;
          stateCopy = state;
          [(BSAbsoluteMachTimer *)v17 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v18 queue:v14 handler:0.000001];
        }
      }
    }
  }
}

uint64_t __82__SUIAShockwaveViewController_setState_animated_recommendedNextAction_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1032);
  *(v2 + 1032) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setPreferredLightType:(int64_t)type
{
  if (self->_preferredLightType != type)
  {
    self->_preferredLightType = type;
    [(SUIAShockwaveStyle *)self->_style setUsesIntelligentFillLight:type == 1];
    [(SUIARadialGradientView *)self->_fillLightCircleMaskView removeFromSuperview];
    fillLightCircleMaskView = self->_fillLightCircleMaskView;
    self->_fillLightCircleMaskView = 0;

    [(UIView *)self->_fillLightView removeFromSuperview];
    fillLightView = self->_fillLightView;
    self->_fillLightView = 0;

    [(SUIAShockwaveViewController *)self _updateFillLightIfNecessary];

    [(SUIAShockwaveViewController *)self _invalidateAndLayoutIfNeeded:0 completion:0];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SUIAShockwaveViewController;
  [(SUIAShockwaveViewController *)&v9 viewDidLoad];
  view = [(SUIAShockwaveViewController *)self view];
  [view setUserInteractionEnabled:0];

  style = self->_style;
  view2 = [(SUIAShockwaveViewController *)self view];
  [view2 bounds];
  [(SUIAShockwaveStyle *)style setShockwaveBounds:?];

  v6 = self->_style;
  traitCollection = [(SUIAShockwaveViewController *)self traitCollection];
  -[SUIAShockwaveStyle setUserInterfaceIdiom:](v6, "setUserInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SUIAShockwaveViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_279D3FA00;
  v8[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v8];
}

uint64_t __42__SUIAShockwaveViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupChromaticAberrationIfNecessary];
  [*(a1 + 32) _updateFillLightIfNecessary];
  [*(a1 + 32) _setupMeshIfNecessary];
  [*(a1 + 32) _setupEdgeLightIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _setupColorOverlayIfNecessary];
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SUIAShockwaveViewController;
  [(SUIAShockwaveViewController *)&v18 viewWillLayoutSubviews];
  nextLayoutContext = self->_nextLayoutContext;
  if (nextLayoutContext)
  {
    v4 = nextLayoutContext;
    v5 = self->_nextLayoutContext;
    self->_nextLayoutContext = 0;

    ++self->_layoutGeneration;
    style = self->_style;
    view = [(SUIAShockwaveViewController *)self view];
    [view bounds];
    [(SUIAShockwaveStyle *)style setShockwaveBounds:?];

    v8 = self->_style;
    traitCollection = [(SUIAShockwaveViewController *)self traitCollection];
    -[SUIAShockwaveStyle setUserInterfaceIdiom:](v8, "setUserInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __53__SUIAShockwaveViewController_viewWillLayoutSubviews__block_invoke;
    v15 = &unk_279D3FA50;
    selfCopy = self;
    v10 = v4;
    v17 = v10;
    v11 = _Block_copy(&v12);
    if ([(_SUIAShockwaveLayoutContext *)v10 animated:v12])
    {
      v11[2](v11);
    }

    else
    {
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v11];
    }
  }
}

void __53__SUIAShockwaveViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SUIAShockwaveViewController_viewWillLayoutSubviews__block_invoke_2;
  v4[3] = &unk_279D3FA28;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[4] = v2;
  v3 = [v1 completion];
  [SUIAC2GroupCompletion perform:v4 finalCompletion:v3 options:0 delegate:0];
}

void __53__SUIAShockwaveViewController_viewWillLayoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyRootViewConfigurationForState:*(*(a1 + 32) + 1000) completionGenerator:?];
  if ([*(*(a1 + 32) + 992) usesChromaticAberation])
  {
    [*(a1 + 32) _applyChromaticAberrationForState:*(*(a1 + 32) + 1000) completionGenerator:v3];
  }

  if ([*(*(a1 + 32) + 992) usesFillLight])
  {
    [*(a1 + 32) _applyFillLightForState:*(*(a1 + 32) + 1000) completionGenerator:v3];
  }

  if ([*(*(a1 + 32) + 992) usesMeshTransform])
  {
    [*(a1 + 32) _applyMeshForState:*(*(a1 + 32) + 1000) completionGenerator:v3];
  }

  if ([*(*(a1 + 32) + 992) usesEdgeLight])
  {
    [*(a1 + 32) _applyEdgeLightOverlayForState:*(*(a1 + 32) + 1000)];
  }

  if ([*(*(a1 + 32) + 992) usesColorOverlay])
  {
    [*(a1 + 32) _applyColorOverlayForState:*(*(a1 + 32) + 1000) completionGenerator:v3];
  }
}

- (void)_setupChromaticAberrationIfNecessary
{
  v81[2] = *MEMORY[0x277D85DE8];
  if ([(SUIAShockwaveStyle *)self->_style usesChromaticAberation])
  {
    v3 = [(SUIAShockwaveStyle *)self->_style chromaticAberrationConfigurationForState:0];
    if ([(SUIAShockwavePrototypeSettings *)self->_prototypeSettings visualizeEffectMasks])
    {
      v4 = [SUIARadialGradientView alloc];
      [v3 donutMaskFrame];
      v5 = [(SUIARadialGradientView *)v4 initWithFrame:?];
      chromaticAberrationDonutMaskView = self->_chromaticAberrationDonutMaskView;
      self->_chromaticAberrationDonutMaskView = v5;

      v7 = self->_chromaticAberrationDonutMaskView;
      donutGradientLocations = [v3 donutGradientLocations];
      [(SUIARadialGradientView *)v7 setLocations:donutGradientLocations];

      v9 = self->_chromaticAberrationDonutMaskView;
      donutGradientColors = [v3 donutGradientColors];
      [(SUIARadialGradientView *)v9 setColors:donutGradientColors];

      backdropLayer = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
      v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
      greenColor = [MEMORY[0x277D75348] greenColor];
      v14 = [greenColor colorWithAlphaComponent:0.5];
      [v12 setValue:objc_msgSend(v14 forKey:{"CGColor"), @"inputColor"}];

      layer = [(SUIARadialGradientView *)self->_chromaticAberrationDonutMaskView layer];
      v80[0] = backdropLayer;
      v80[1] = v12;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
      [layer setFilters:v16];

      view = [(SUIAShockwaveViewController *)self view];
      [view addSubview:self->_chromaticAberrationDonutMaskView];
    }

    else
    {
      view2 = [(SUIAShockwaveViewController *)self view];
      [view2 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [[_SUIABackdropView alloc] initWithFrame:v20, v22, v24, v26];
      chromaticAberrationEffectView = self->_chromaticAberrationEffectView;
      self->_chromaticAberrationEffectView = v27;

      [(_SUIABackdropView *)self->_chromaticAberrationEffectView setAutoresizingMask:18];
      backdropLayer = [(_SUIABackdropView *)self->_chromaticAberrationEffectView backdropLayer];
      [backdropLayer setGroupName:@"spherochromatism"];
      [backdropLayer setScale:0.25];
      [backdropLayer setAllowsGroupBlending:0];
      [backdropLayer setMarginWidth:25.0];
      view3 = [(SUIAShockwaveViewController *)self view];
      [view3 addSubview:self->_chromaticAberrationEffectView];

      v30 = self->_chromaticAberrationEffectView;
      view4 = [(SUIAShockwaveViewController *)self view];
      [view4 bounds];
      [(_SUIABackdropView *)v30 setFrame:?];

      [v3 aberrationEDRGain];
      v33 = v32;
      if ((BSFloatIsZero() & 1) == 0)
      {
        layer2 = [(_SUIABackdropView *)self->_chromaticAberrationEffectView layer];
        *&v35 = v33;
        [layer2 setGain:v35];
        [layer2 setAllowsLimitedHeadroom:v33 > 1.0];
      }

      v36 = *MEMORY[0x277CDA280];
      v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA280]];
      [v12 setName:v36];
      [v3 aberrationMagnitude];
      v38 = v37;
      v40 = v39;
      v41 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:?];
      [v12 setValue:v41 forKey:*MEMORY[0x277CDA3C8]];

      v42 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{*MEMORY[0x277CBF348] - v38, *(MEMORY[0x277CBF348] + 8) - v40}];
      [v12 setValue:v42 forKey:*MEMORY[0x277CDA4F8]];

      [v12 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA468]];
      v43 = *MEMORY[0x277CDA328];
      view = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [view setName:v43];
      v44 = MEMORY[0x277CCABB0];
      [v3 aberrationBlurRadius];
      v45 = [v44 numberWithDouble:?];
      [view setValue:v45 forKey:*MEMORY[0x277CDA4F0]];

      [view setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
      v81[0] = v12;
      v81[1] = view;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
      v47 = [v46 mutableCopy];

      [v3 aberrationColorSaturateAmount];
      v49 = v48;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v50 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        [v50 setValue:v51 forKey:*MEMORY[0x277CDA360]];

        [v47 addObject:v50];
      }

      [v3 aberrationColorBrightnessFactor];
      v53 = v52;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v54 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
        v55 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        [v54 setValue:v55 forKey:*MEMORY[0x277CDA360]];

        [v47 addObject:v54];
      }

      [v3 aberrationMultiplyFactor];
      v57 = v56;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v58 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
        v59 = v57;
        v72 = v59;
        v73 = *(MEMORY[0x277CD9DA0] + 4);
        v74 = *(MEMORY[0x277CD9DA0] + 20);
        v75 = v59;
        v76 = *(MEMORY[0x277CD9DA0] + 28);
        v77 = *(MEMORY[0x277CD9DA0] + 44);
        v78 = v59;
        *v79 = *(MEMORY[0x277CD9DA0] + 52);
        *&v79[12] = *(MEMORY[0x277CD9DA0] + 64);
        v60 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v72];
        [v58 setValue:v60 forKey:*MEMORY[0x277CDA440]];

        [v47 addObject:v58];
      }

      layer3 = [(_SUIABackdropView *)self->_chromaticAberrationEffectView layer];
      [layer3 setFilters:v47];

      v62 = [SUIARadialGradientView alloc];
      [v3 donutMaskFrame];
      v63 = [(SUIARadialGradientView *)v62 initWithFrame:?];
      v64 = self->_chromaticAberrationDonutMaskView;
      self->_chromaticAberrationDonutMaskView = v63;

      v65 = self->_chromaticAberrationDonutMaskView;
      donutGradientLocations2 = [v3 donutGradientLocations];
      [(SUIARadialGradientView *)v65 setLocations:donutGradientLocations2];

      v67 = self->_chromaticAberrationDonutMaskView;
      donutGradientColors2 = [v3 donutGradientColors];
      [(SUIARadialGradientView *)v67 setColors:donutGradientColors2];

      [(_SUIABackdropView *)self->_chromaticAberrationEffectView setMaskView:self->_chromaticAberrationDonutMaskView];
      v69 = self->_chromaticAberrationDonutMaskView;
      donutGradientLocations3 = [v3 donutGradientLocations];
      [(SUIARadialGradientView *)v69 setLocations:donutGradientLocations3];

      v71 = self->_chromaticAberrationDonutMaskView;
      [v3 aberrationIntensity];
      [(SUIARadialGradientView *)v71 setAlpha:?];
    }
  }
}

- (void)_setupMeshIfNecessary
{
  if ([(SUIAShockwaveStyle *)self->_style usesMeshTransform])
  {
    v3 = [(SUIAShockwaveStyle *)self->_style meshConfigurationForState:0];
    v4 = [_SUIABackdropView alloc];
    [v3 meshFrame];
    v5 = [(_SUIABackdropView *)v4 initWithFrame:?];
    meshedBackdrop = self->_meshedBackdrop;
    self->_meshedBackdrop = v5;

    layer = [(_SUIABackdropView *)self->_meshedBackdrop layer];
    meshTransform = [v3 meshTransform];
    [layer setMeshTransform:meshTransform];

    layer2 = [(_SUIABackdropView *)self->_meshedBackdrop layer];
    view = [(SUIAShockwaveViewController *)self view];
    traitCollection = [view traitCollection];
    [traitCollection displayScale];
    [layer2 setRasterizationScale:?];

    layer3 = [(_SUIABackdropView *)self->_meshedBackdrop layer];
    [layer3 setWantsExtendedDynamicRangeContent:1];

    backdropLayer = [(_SUIABackdropView *)self->_meshedBackdrop backdropLayer];
    [backdropLayer setContentsMaximumDesiredEDR:2.0];

    backdropLayer2 = [(_SUIABackdropView *)self->_meshedBackdrop backdropLayer];
    [backdropLayer2 setAllowsLimitedHeadroom:1];

    backdropLayer3 = [(_SUIABackdropView *)self->_meshedBackdrop backdropLayer];
    LOBYTE(view) = objc_opt_respondsToSelector();

    if (view)
    {
      backdropLayer4 = [(_SUIABackdropView *)self->_meshedBackdrop backdropLayer];
      [backdropLayer4 setPreallocatesScreenArea:1];
    }

    backdropLayer5 = [(_SUIABackdropView *)self->_meshedBackdrop backdropLayer];
    [backdropLayer5 setGroupName:@"SUIAShockwaveBackdropGroup"];

    v18 = self->_meshedBackdrop;
    if (v3)
    {
      [v3 viewTransform];
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    [(_SUIABackdropView *)v18 setTransform3D:v20];
    view2 = [(SUIAShockwaveViewController *)self view];
    [view2 addSubview:self->_meshedBackdrop];
  }
}

- (void)_updateFillLightIfNecessary
{
  v85[1] = *MEMORY[0x277D85DE8];
  if (!self->_fillLightView && [(SUIAShockwaveStyle *)self->_style usesFillLight])
  {
    v3 = [(SUIAShockwaveStyle *)self->_style fillLightConfigurationForState:0];
    v4 = v3;
    preferredLightType = self->_preferredLightType;
    if (!preferredLightType)
    {
      preferredLightType = [v3 lightType];
    }

    if ([(SUIAShockwavePrototypeSettings *)self->_prototypeSettings visualizeEffectMasks])
    {
      v6 = [SUIARadialGradientView alloc];
      [v4 circleMaskFrame];
      v7 = [(SUIARadialGradientView *)v6 initWithFrame:?];
      fillLightCircleMaskView = self->_fillLightCircleMaskView;
      self->_fillLightCircleMaskView = v7;

      v9 = self->_fillLightCircleMaskView;
      circleGradientLocations = [v4 circleGradientLocations];
      [(SUIARadialGradientView *)v9 setLocations:circleGradientLocations];

      v11 = self->_fillLightCircleMaskView;
      circleGradientColors = [v4 circleGradientColors];
      [(SUIARadialGradientView *)v11 setColors:circleGradientColors];

      array = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
      layer5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
      redColor = [MEMORY[0x277D75348] redColor];
      v16 = [redColor colorWithAlphaComponent:0.5];
      [layer5 setValue:objc_msgSend(v16 forKey:{"CGColor"), @"inputColor"}];

      layer = [(SUIARadialGradientView *)self->_fillLightCircleMaskView layer];
      v84[0] = array;
      v84[1] = layer5;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
      [layer setFilters:v18];

      view = [(SUIAShockwaveViewController *)self view];
      [view addSubview:self->_fillLightCircleMaskView];

LABEL_29:
      return;
    }

    view2 = [(SUIAShockwaveViewController *)self view];
    [view2 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [SUIARadialGradientView alloc];
    [v4 circleMaskFrame];
    v30 = [(SUIARadialGradientView *)v29 initWithFrame:?];
    v31 = self->_fillLightCircleMaskView;
    self->_fillLightCircleMaskView = v30;

    if (preferredLightType == 2)
    {
      v36 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v22, v24, v26, v28}];
      fillLightView = self->_fillLightView;
      self->_fillLightView = v36;

      [v4 whiteValue];
      v39 = v38;
      if (v38 != 1.0)
      {
        layer3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
        v40 = [MEMORY[0x277D75348] colorWithWhite:v39 alpha:1.0];
        cGColor = [v40 CGColor];
        [layer3 setValue:cGColor forKey:*MEMORY[0x277CDA430]];

        layer2 = [(SUIARadialGradientView *)self->_fillLightCircleMaskView layer];
        v85[0] = layer3;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
        [layer2 setFilters:v42];

        goto LABEL_12;
      }
    }

    else if (preferredLightType == 1)
    {
      v32 = [[SUIAShockwaveIntelligenceSystemLightView alloc] initWithFrame:0 preferringAudioReactivity:v22, v24, v26, v28];
      v33 = self->_fillLightView;
      self->_fillLightView = &v32->super.super.super;

      layer3 = [(SUIARadialGradientView *)self->_fillLightCircleMaskView layer];
      layer2 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA308]];
      [layer3 setCompositingFilter:layer2];
LABEL_12:
    }

    [(UIView *)self->_fillLightView setAutoresizingMask:18];
    view3 = [(SUIAShockwaveViewController *)self view];
    [view3 addSubview:self->_fillLightView];

    v44 = self->_fillLightCircleMaskView;
    circleGradientLocations2 = [v4 circleGradientLocations];
    [(SUIARadialGradientView *)v44 setLocations:circleGradientLocations2];

    v46 = self->_fillLightCircleMaskView;
    circleGradientColors2 = [v4 circleGradientColors];
    [(SUIARadialGradientView *)v46 setColors:circleGradientColors2];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v49 = self->_fillLightView;
    v50 = self->_fillLightCircleMaskView;
    if (isKindOfClass)
    {
      [(UIView *)v49 setCircleMaskView:v50];
    }

    else
    {
      [(UIView *)v49 addSubview:v50];
    }

    v51 = objc_alloc(MEMORY[0x277D755E8]);
    sideLightMaskImage = [v4 sideLightMaskImage];
    v53 = [v51 initWithImage:sideLightMaskImage];
    fillSideLightMaskView = self->_fillSideLightMaskView;
    self->_fillSideLightMaskView = v53;

    v55 = self->_fillSideLightMaskView;
    if (v4)
    {
      [v4 sideLightMaskTransform];
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
    }

    [(UIImageView *)v55 setTransform3D:&v76];
    [(UIImageView *)self->_fillSideLightMaskView setFrame:v22, v24, v26, v28];
    [(UIImageView *)self->_fillSideLightMaskView setAutoresizingMask:18];
    layer4 = [(UIImageView *)self->_fillSideLightMaskView layer];
    v57 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
    [layer4 setCompositingFilter:v57];

    objc_opt_class();
    v58 = objc_opt_isKindOfClass();
    v59 = self->_fillLightView;
    v60 = self->_fillSideLightMaskView;
    if (v58)
    {
      [(UIView *)v59 setSideLightMaskView:v60];
    }

    else
    {
      [(UIView *)v59 addSubview:v60];
    }

    v61 = self->_fillLightView;
    [v4 lightIntensity];
    [(UIView *)v61 setAlpha:?];
    array = [MEMORY[0x277CBEB18] array];
    [v4 lightColorBrightnessAmount];
    v63 = v62;
    IsZero = BSFloatIsZero();
    v65 = MEMORY[0x277CDA360];
    if ((IsZero & 1) == 0)
    {
      v66 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
      v67 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
      [v66 setValue:v67 forKey:*v65];

      [array addObject:v66];
    }

    [v4 lightColorSaturateAmount];
    v69 = v68;
    if ((BSFloatIsOne() & 1) == 0)
    {
      v70 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
      v71 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
      [v70 setValue:v71 forKey:*v65];

      [array addObject:v70];
    }

    [v4 lightColorContrastAmount];
    v73 = v72;
    if ((BSFloatIsOne() & 1) == 0)
    {
      v74 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2A0]];
      v75 = [MEMORY[0x277CCABB0] numberWithDouble:v73];
      [v74 setValue:v75 forKey:*v65];

      [array addObject:v74];
    }

    layer5 = [(UIView *)self->_fillLightView layer];
    [layer5 setFilters:array];
    goto LABEL_29;
  }
}

- (void)_setupEdgeLightIfNecessary
{
  if ([(SUIAShockwaveStyle *)self->_style usesEdgeLight])
  {
    v12 = [(SUIAShockwaveStyle *)self->_style edgeLightOverlayConfigurationForState:0];
    [SUIAShockwaveEdgeLightOverlay applyConfiguration:"applyConfiguration:forState:" forState:?];
    if ([(SUIAShockwavePrototypeSettings *)self->_prototypeSettings visualizeEffectMasks])
    {
      v3 = [SUIARadialGradientView alloc];
      [v12 edgeLightMaskFrame];
      v4 = [(SUIARadialGradientView *)v3 initWithFrame:?];
      edgeLightDebugMaskView = self->_edgeLightDebugMaskView;
      self->_edgeLightDebugMaskView = v4;

      v6 = self->_edgeLightDebugMaskView;
      edgeLightMaskGradientLocations = [v12 edgeLightMaskGradientLocations];
      [(SUIARadialGradientView *)v6 setLocations:edgeLightMaskGradientLocations];

      v8 = self->_edgeLightDebugMaskView;
      edgeLightMaskGradientColors = [v12 edgeLightMaskGradientColors];
      [(SUIARadialGradientView *)v8 setColors:edgeLightMaskGradientColors];

      v10 = self->_edgeLightDebugMaskView;
      [v12 edgeLightIntensity];
      [(SUIARadialGradientView *)v10 setAlpha:?];
      view = [(SUIAShockwaveViewController *)self view];
      [view addSubview:self->_edgeLightDebugMaskView];
    }
  }
}

- (void)_setupColorOverlayIfNecessary
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (!self->_colorOverlayView && [(SUIAShockwaveStyle *)self->_style usesColorOverlay])
  {
    v3 = [(SUIAShockwaveStyle *)self->_style colorOverlayConfigurationForState:0];
    v4 = [_SUIABackdropView alloc];
    view = [(SUIAShockwaveViewController *)self view];
    [view bounds];
    v6 = [(_SUIABackdropView *)v4 initWithFrame:?];
    colorBlurView = self->_colorBlurView;
    self->_colorBlurView = v6;

    [(_SUIABackdropView *)self->_colorBlurView setAutoresizingMask:18];
    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    v9 = MEMORY[0x277CBEC38];
    [v8 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    [v8 setValue:v9 forKey:*MEMORY[0x277CDA448]];
    layer = [(_SUIABackdropView *)self->_colorBlurView layer];
    v55[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    [layer setFilters:v11];

    [(_SUIABackdropView *)self->_colorBlurView setUserInteractionEnabled:0];
    view2 = [(SUIAShockwaveViewController *)self view];
    [view2 addSubview:self->_colorBlurView];

    v13 = objc_alloc(MEMORY[0x277D75D18]);
    view3 = [(SUIAShockwaveViewController *)self view];
    [view3 bounds];
    v15 = [v13 initWithFrame:?];
    colorOverlayView = self->_colorOverlayView;
    self->_colorOverlayView = v15;

    [(UIView *)self->_colorOverlayView setAutoresizingMask:18];
    v17 = self->_colorOverlayView;
    color = [v3 color];
    [(UIView *)v17 setBackgroundColor:color];

    layer2 = [(UIView *)self->_colorOverlayView layer];
    v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [layer2 setCompositingFilter:v20];

    [(UIView *)self->_colorOverlayView setUserInteractionEnabled:0];
    view4 = [(SUIAShockwaveViewController *)self view];
    [view4 addSubview:self->_colorOverlayView];

    if ([v3 usesGaussianBlurMaskingTechnique])
    {
      [(SUIAShockwaveStyle *)self->_style shockwaveBounds];
      v23 = [[_SUIABlurrableView alloc] initWithFrame:0.0, 0.0, v22, v22];
      p_colorOverlayGaussianBlurMaskView = &self->_colorOverlayGaussianBlurMaskView;
      colorOverlayGaussianBlurMaskView = self->_colorOverlayGaussianBlurMaskView;
      self->_colorOverlayGaussianBlurMaskView = v23;

      v26 = self->_colorOverlayGaussianBlurMaskView;
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(_SUIABlurrableView *)v26 setBackgroundColor:blackColor];

      [(_SUIABlurrableView *)self->_colorOverlayGaussianBlurMaskView setClipsToBounds:0];
      [(_SUIABlurrableView *)self->_colorOverlayGaussianBlurMaskView setIsRound:1];
      v28 = self->_colorOverlayGaussianBlurMaskView;
      [v3 colorMaskBlurRadius];
      [(_SUIABlurrableView *)v28 setBlurRadius:?];
      v29 = self->_colorOverlayGaussianBlurMaskView;
      [v3 colorMaskCenter];
      [(_SUIABlurrableView *)v29 setCenter:?];
      v30 = self->_colorOverlayGaussianBlurMaskView;
      [v3 colorMaskScale];
      v32 = v31;
      [v3 colorMaskScale];
      CATransform3DMakeScale(&v53, v32, v33, 1.0);
      [(_SUIABlurrableView *)v30 setTransform3D:&v53];
    }

    else
    {
      v34 = [SUIARadialGradientView alloc];
      [v3 colorMaskDonutFrame];
      v35 = [(SUIARadialGradientView *)v34 initWithFrame:?];
      p_colorOverlayGaussianBlurMaskView = &self->_colorOverlayMaskView;
      colorOverlayMaskView = self->_colorOverlayMaskView;
      self->_colorOverlayMaskView = v35;

      v37 = self->_colorOverlayMaskView;
      colorMaskDonutGradientLocations = [v3 colorMaskDonutGradientLocations];
      [(SUIARadialGradientView *)v37 setLocations:colorMaskDonutGradientLocations];

      v39 = self->_colorOverlayMaskView;
      colorMaskDonutGradientColors = [v3 colorMaskDonutGradientColors];
      [(SUIARadialGradientView *)v39 setColors:colorMaskDonutGradientColors];
    }

    [(UIView *)self->_colorOverlayView setMaskView:*p_colorOverlayGaussianBlurMaskView];
    v41 = [_SUIABackdropView alloc];
    view5 = [(SUIAShockwaveViewController *)self view];
    [view5 bounds];
    v43 = [(_SUIABackdropView *)v41 initWithFrame:?];
    colorOverlayMatrixView = self->_colorOverlayMatrixView;
    self->_colorOverlayMatrixView = v43;

    [(_SUIABackdropView *)self->_colorOverlayMatrixView setUserInteractionEnabled:0];
    backdropLayer = [(_SUIABackdropView *)self->_colorOverlayMatrixView backdropLayer];
    [backdropLayer setAllowsInPlaceFiltering:1];

    [(_SUIABackdropView *)self->_colorOverlayMatrixView setAutoresizingMask:18];
    v46 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
    [v46 setName:@"matrix"];
    v47 = MEMORY[0x277CCAE60];
    if (v3)
    {
      [v3 colorMatrix];
    }

    else
    {
      memset(&v53, 0, 80);
    }

    v48 = [v47 valueWithCAColorMatrix:&v53];
    [v46 setValue:v48 forKey:*MEMORY[0x277CDA440]];

    layer3 = [(_SUIABackdropView *)self->_colorOverlayMatrixView layer];
    v54 = v46;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [layer3 setFilters:v50];

    view6 = [(SUIAShockwaveViewController *)self view];
    [view6 addSubview:self->_colorOverlayMatrixView];

    v52 = self->_colorOverlayMatrixView;
    [v3 colorMatrixOpacity];
    [(_SUIABackdropView *)v52 setAlpha:?];
  }
}

- (void)_invalidateAndLayoutIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  if (self->_nextLayoutContext)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v6 = objc_alloc_init(_SUIAShockwaveLayoutContext);
    nextLayoutContext = self->_nextLayoutContext;
    self->_nextLayoutContext = v6;

    [(_SUIAShockwaveLayoutContext *)self->_nextLayoutContext setAnimated:neededCopy];
    [(_SUIAShockwaveLayoutContext *)self->_nextLayoutContext setCompletion:completionCopy];
  }

  view = [(SUIAShockwaveViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SUIAShockwaveViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)_applyRootViewConfigurationForState:(int64_t)state completionGenerator:(id)generator
{
  style = self->_style;
  generatorCopy = generator;
  v9 = [(SUIAShockwaveStyle *)style rootViewConfigurationForState:state];
  view = [(SUIAShockwaveViewController *)self view];
  [(SUIAShockwaveViewController *)self _applyConfig:v9 configPropertyKey:@"hidden" object:view objectPropertyKeyPath:@"hidden" state:state subcompletionGenerator:generatorCopy];
}

- (void)_applyChromaticAberrationForState:(int64_t)state completionGenerator:(id)generator
{
  style = self->_style;
  generatorCopy = generator;
  v8 = [(SUIAShockwaveStyle *)style chromaticAberrationConfigurationForState:state];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"aberrationMagnitude" object:self->_chromaticAberrationEffectView objectPropertyKeyPath:@"layer.filters.chromaticAberration.inputRedOffset" transformerBlock:&__block_literal_global state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"aberrationMagnitude" object:self->_chromaticAberrationEffectView objectPropertyKeyPath:@"layer.filters.chromaticAberration.inputBlueOffset" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"aberrationBlurRadius" object:self->_chromaticAberrationEffectView objectPropertyKeyPath:@"layer.filters.gaussianBlur.inputRadius" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyFrameConfig:v8 configPropertyKey:@"donutMaskFrame" object:self->_chromaticAberrationDonutMaskView objectPropertyKeyPath:@"frame" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"donutGradientLocations" object:self->_chromaticAberrationDonutMaskView objectPropertyKeyPath:@"locations" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"donutGradientColors" object:self->_chromaticAberrationDonutMaskView objectPropertyKeyPath:@"colors" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"aberrationIntensity" object:self->_chromaticAberrationDonutMaskView objectPropertyKeyPath:@"alpha" state:state subcompletionGenerator:generatorCopy];
}

uint64_t __85__SUIAShockwaveViewController__applyChromaticAberrationForState_completionGenerator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:?];
  [v2 bs_CGPointValue];
  v4 = v3;
  v6 = v5;

  v7.n128_f64[0] = *MEMORY[0x277CBF348] - v4;
  v8.n128_f64[0] = *(MEMORY[0x277CBF348] + 8) - v6;

  return MEMORY[0x282143BA0](v7, v8);
}

- (void)_applyFillLightForState:(int64_t)state completionGenerator:(id)generator
{
  generatorCopy = generator;
  v6 = [(SUIAShockwaveStyle *)self->_style fillLightConfigurationForState:state];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"lightIntensity" object:self->_fillLightView objectPropertyKeyPath:@"alpha" state:state subcompletionGenerator:generatorCopy];
  image = [(UIImageView *)self->_fillSideLightMaskView image];
  sideLightMaskImage = [v6 sideLightMaskImage];

  if (image != sideLightMaskImage)
  {
    fillSideLightMaskView = self->_fillSideLightMaskView;
    sideLightMaskImage2 = [v6 sideLightMaskImage];
    [(UIImageView *)fillSideLightMaskView setImage:sideLightMaskImage2];
  }

  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"sideLightMaskTransform" object:self->_fillSideLightMaskView objectPropertyKeyPath:@"transform3D" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyFrameConfig:v6 configPropertyKey:@"circleMaskFrame" object:self->_fillLightCircleMaskView objectPropertyKeyPath:@"frame" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"circleGradientLocations" object:self->_fillLightCircleMaskView objectPropertyKeyPath:@"locations" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"circleGradientColors" object:self->_fillLightCircleMaskView objectPropertyKeyPath:@"colors" state:state subcompletionGenerator:generatorCopy];
}

- (void)_applyMeshForState:(int64_t)state completionGenerator:(id)generator
{
  style = self->_style;
  generatorCopy = generator;
  v8 = [(SUIAShockwaveStyle *)style meshConfigurationForState:state];
  [(SUIAShockwaveViewController *)self _applyFrameConfig:v8 configPropertyKey:@"meshFrame" object:self->_meshedBackdrop objectPropertyKeyPath:@"frame" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"meshTransform" object:self->_meshedBackdrop objectPropertyKeyPath:@"layer.meshTransform" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v8 configPropertyKey:@"viewTransform" object:self->_meshedBackdrop objectPropertyKeyPath:@"transform3D" state:state subcompletionGenerator:generatorCopy];
}

- (void)_applyEdgeLightOverlayForState:(int64_t)state
{
  v5 = [(SUIAShockwaveStyle *)self->_style edgeLightOverlayConfigurationForState:?];
  [(SUIAShockwaveEdgeLightOverlay *)self->_edgeLightOverlay applyConfiguration:v5 forState:state];
  if ([(SUIAShockwavePrototypeSettings *)self->_prototypeSettings visualizeEffectMasks])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SUIAShockwaveViewController__applyEdgeLightOverlayForState___block_invoke;
    v6[3] = &unk_279D3FA98;
    v6[4] = self;
    v7 = v5;
    stateCopy = state;
    [SUIAC2GroupCompletion perform:v6 finalCompletion:0];
  }
}

void __62__SUIAShockwaveViewController__applyEdgeLightOverlayForState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3[138];
  v6 = *(a1 + 48);
  v7 = a2;
  [v3 _applyFrameConfig:v4 configPropertyKey:@"edgeLightMaskFrame" object:v5 objectPropertyKeyPath:@"frame" state:v6 subcompletionGenerator:v7];
  [*(a1 + 32) _applyConfig:*(a1 + 40) configPropertyKey:@"edgeLightMaskGradientLocations" object:*(*(a1 + 32) + 1104) objectPropertyKeyPath:@"locations" state:*(a1 + 48) subcompletionGenerator:v7];
  [*(a1 + 32) _applyConfig:*(a1 + 40) configPropertyKey:@"edgeLightMaskGradientColors" object:*(*(a1 + 32) + 1104) objectPropertyKeyPath:@"colors" state:*(a1 + 48) subcompletionGenerator:v7];
  [*(a1 + 32) _applyConfig:*(a1 + 40) configPropertyKey:@"edgeLightIntensity" object:*(*(a1 + 32) + 1104) objectPropertyKeyPath:@"alpha" state:*(a1 + 48) subcompletionGenerator:v7];
}

- (void)_applyColorOverlayForState:(int64_t)state completionGenerator:(id)generator
{
  generatorCopy = generator;
  v6 = [(SUIAShockwaveStyle *)self->_style colorOverlayConfigurationForState:state];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"color" object:self->_colorOverlayView objectPropertyKeyPath:@"backgroundColor" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"colorMatrixOpacity" object:self->_colorOverlayMatrixView objectPropertyKeyPath:@"alpha" state:state subcompletionGenerator:generatorCopy];
  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"colorBlurRadius" object:self->_colorBlurView objectPropertyKeyPath:@"layer.filters.gaussianBlur.inputRadius" state:state subcompletionGenerator:generatorCopy];
  if ([v6 usesGaussianBlurMaskingTechnique])
  {
    [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"colorMaskScale" object:self->_colorOverlayGaussianBlurMaskView objectPropertyKeyPath:@"transform3D" transformerBlock:&__block_literal_global_165 state:state subcompletionGenerator:generatorCopy];
    [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"colorMaskBlurRadius" object:self->_colorOverlayGaussianBlurMaskView objectPropertyKeyPath:@"blurRadius" state:state subcompletionGenerator:generatorCopy];
    colorOverlayGaussianBlurMaskView = self->_colorOverlayGaussianBlurMaskView;
    v8 = @"colorMaskCenter";
    v9 = @"center";
  }

  else
  {
    [(SUIAShockwaveViewController *)self _applyFrameConfig:v6 configPropertyKey:@"colorMaskDonutFrame" object:self->_colorOverlayMaskView objectPropertyKeyPath:@"frame" state:state subcompletionGenerator:generatorCopy];
    [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:@"colorMaskDonutGradientLocations" object:self->_colorOverlayMaskView objectPropertyKeyPath:@"locations" state:state subcompletionGenerator:generatorCopy];
    colorOverlayGaussianBlurMaskView = self->_colorOverlayMaskView;
    v8 = @"colorMaskDonutGradientColors";
    v9 = @"colors";
  }

  [(SUIAShockwaveViewController *)self _applyConfig:v6 configPropertyKey:v8 object:colorOverlayGaussianBlurMaskView objectPropertyKeyPath:v9 state:state subcompletionGenerator:generatorCopy];
}

id __78__SUIAShockwaveViewController__applyColorOverlayForState_completionGenerator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:?];
  [v2 bs_CGFloatValue];
  v4 = v3;

  v5 = MEMORY[0x277CCAE60];
  CATransform3DMakeScale(&v8, v4, v4, 1.0);
  v6 = [v5 valueWithCATransform3D:&v8];

  return v6;
}

+ (id)_propertyKeyPathToAnimatableKeyPathMap
{
  if (_propertyKeyPathToAnimatableKeyPathMap_sOnceToken != -1)
  {
    +[SUIAShockwaveViewController _propertyKeyPathToAnimatableKeyPathMap];
  }

  v3 = _propertyKeyPathToAnimatableKeyPathMap_sPropertyKeyPathToAnimatableKeyPathMap;

  return v3;
}

void __69__SUIAShockwaveViewController__propertyKeyPathToAnimatableKeyPathMap__block_invoke()
{
  v0 = _propertyKeyPathToAnimatableKeyPathMap_sPropertyKeyPathToAnimatableKeyPathMap;
  _propertyKeyPathToAnimatableKeyPathMap_sPropertyKeyPathToAnimatableKeyPathMap = &unk_287D24E48;
}

- (void)_applyConfig:(id)config configPropertyKey:(id)key object:(id)object objectPropertyKeyPath:(id)path transformerBlock:(id)block state:(int64_t)state subcompletionGenerator:(id)generator
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = path;
  v16 = MEMORY[0x277CBEA60];
  generatorCopy = generator;
  blockCopy = block;
  pathCopy = path;
  objectCopy = object;
  keyCopy = key;
  configCopy = config;
  v23 = [v16 arrayWithObjects:v24 count:1];
  [(SUIAShockwaveViewController *)self _applyConfig:configCopy configPropertyKey:keyCopy object:objectCopy objectPropertyKeyPath:pathCopy transformerBlock:blockCopy valueApplyBlock:&__block_literal_global_198 animatableKeyPaths:v23 state:state subcompletionGenerator:generatorCopy];
}

void __142__SUIAShockwaveViewController__applyFrameConfig_configPropertyKey_object_objectPropertyKeyPath_transformerBlock_state_subcompletionGenerator___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  [a4 CGRectValue];
  [v5 suia_setBoundsAndPositionFromFrame:?];
}

- (void)_applyConfig:(id)config configPropertyKey:(id)key object:(id)object objectPropertyKeyPath:(id)path transformerBlock:(id)block valueApplyBlock:(id)applyBlock animatableKeyPaths:(id)paths state:(int64_t)self0 subcompletionGenerator:(id)self1
{
  configCopy = config;
  keyCopy = key;
  objectCopy = object;
  pathCopy = path;
  blockCopy = block;
  applyBlockCopy = applyBlock;
  pathsCopy = paths;
  v21 = MEMORY[0x277CCACA8];
  generatorCopy = generator;
  configurationType = [objc_opt_class() configurationType];
  v24 = SUIAStringFromShockwaveConfigurationType(configurationType);
  keyCopy = [v21 stringWithFormat:@"(%@)-%@", v24, keyCopy];
  v26 = (*(generator + 2))(generatorCopy, keyCopy);

  [configCopy delayForApplicationOfKeypath:keyCopy];
  v28 = v27;
  layoutGeneration = self->_layoutGeneration;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __172__SUIAShockwaveViewController__applyConfig_configPropertyKey_object_objectPropertyKeyPath_transformerBlock_valueApplyBlock_animatableKeyPaths_state_subcompletionGenerator___block_invoke;
  aBlock[3] = &unk_279D3FB28;
  aBlock[4] = self;
  v44 = configCopy;
  v45 = keyCopy;
  v46 = objectCopy;
  v49 = blockCopy;
  v50 = applyBlockCopy;
  v47 = pathsCopy;
  v48 = pathCopy;
  v51 = v26;
  v52 = layoutGeneration;
  v30 = v26;
  v31 = pathCopy;
  v32 = applyBlockCopy;
  v33 = pathsCopy;
  v34 = objectCopy;
  v35 = keyCopy;
  v36 = configCopy;
  v37 = blockCopy;
  v38 = _Block_copy(aBlock);
  if (BSFloatIsZero())
  {
    v38[2](v38);
  }

  else
  {
    v39 = dispatch_time(0, (v28 * 1000000000.0));
    dispatch_after(v39, MEMORY[0x277D85CD0], v38);
  }
}

void __172__SUIAShockwaveViewController__applyConfig_configPropertyKey_object_objectPropertyKeyPath_transformerBlock_valueApplyBlock_animatableKeyPaths_state_subcompletionGenerator___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == *(*(a1 + 32) + 1024))
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      [*(a1 + 40) valueForKey:*(a1 + 48)];
    }
    v5 = ;
    v6 = [*(a1 + 40) behaviorSettingsForKeypath:*(a1 + 48)];
    v7 = v6;
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v5;
        v9 = [objc_opt_class() _propertyKeyPathToAnimatableKeyPathMap];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = *(a1 + 64);
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [v9 objectForKey:v15];
              v17 = v16;
              if (v16)
              {
                v18 = v16;
              }

              else
              {
                v18 = v15;
              }

              v19 = v18;

              [*(a1 + 56) suia_replaceInProcessAnimationForKeyPath:v19 settings:v7 mode:v8];
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v12);
        }

        v5 = v23;
      }
    }

    v20 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __172__SUIAShockwaveViewController__applyConfig_configPropertyKey_object_objectPropertyKeyPath_transformerBlock_valueApplyBlock_animatableKeyPaths_state_subcompletionGenerator___block_invoke_2;
    v24[3] = &unk_279D3FB00;
    v28 = *(a1 + 88);
    v25 = *(a1 + 56);
    v26 = *(a1 + 72);
    v27 = v5;
    v21 = *(a1 + 96);
    v22 = v5;
    [v20 suia_animateWithSettings:v7 mode:v8 animations:v24 completion:v21];
  }

  else
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

@end