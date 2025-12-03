@interface SBCaptureButtonDropletLaunchViewController
- (BOOL)expandHintingDropletByAddingComponents:(unint64_t)components;
- (CGPoint)preludeAnimationVelocity;
- (CGRect)preludeAnimationRectPresentationValue;
- (SBCaptureButtonDropletLaunchViewController)initWithButtonOrigin:(int64_t)origin;
- (id)_configurationForStage:(unint64_t)stage;
- (id)_defaultConfigurationForStage:(unint64_t)stage;
- (id)lendAnimatingDropletViewToExternalOwner;
- (void)_applyViewConfigurationForCurrentStage;
- (void)_setStage:(unint64_t)stage animated:(BOOL)animated milestones:(id)milestones;
- (void)_zoomUpAnimationCompleted:(BOOL)completed;
- (void)appendDropletZoomUpCompletionBlock:(id)block;
- (void)expandDropletKeylineToIntelligentKeylineStage:(unint64_t)stage;
- (void)loadView;
- (void)resetToOffscreenAnimated:(BOOL)animated milestones:(id)milestones;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBCaptureButtonDropletLaunchViewController

- (SBCaptureButtonDropletLaunchViewController)initWithButtonOrigin:(int64_t)origin
{
  v14.receiver = self;
  v14.super_class = SBCaptureButtonDropletLaunchViewController;
  v4 = [(SBCaptureButtonDropletLaunchViewController *)&v14 init];
  if (v4)
  {
    v5 = +[SBCaptureButtonDomain rootSettings];
    settings = v4->_settings;
    v4->_settings = v5;

    v7 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
    buttonGeometryInfo = v4->_buttonGeometryInfo;
    v4->_buttonGeometryInfo = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    toStageFloatAnimatableProperty = v4->_toStageFloatAnimatableProperty;
    v4->_toStageFloatAnimatableProperty = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    toStageCompletionBlock = v4->_toStageCompletionBlock;
    v4->_toStageCompletionBlock = dictionary2;

    v4->_associatedButton = origin;
  }

  return v4;
}

- (BOOL)expandHintingDropletByAddingComponents:(unint64_t)components
{
  stage = self->_stage;
  if (stage - 1 > 1)
  {
    return 0;
  }

  expansionComponents = self->_expansionComponents;
  v6 = (expansionComponents & components) != components;
  if ((expansionComponents & components) != components)
  {
    self->_expansionComponents = expansionComponents | components;
    view = [(SBCaptureButtonDropletLaunchViewController *)self view];
    [view setNeedsLayout];

    stage = self->_stage;
  }

  if (stage == 1)
  {
    [(SBCaptureButtonDropletLaunchViewController *)self _setStage:2 animated:!SBReduceMotion() milestones:0];
    return self->_stage > 1;
  }

  return v6;
}

- (void)expandDropletKeylineToIntelligentKeylineStage:(unint64_t)stage
{
  if (self->_dropetIntelligentKeylineStage != stage)
  {
    self->_dropetIntelligentKeylineStage = stage;
    view = [(SBCaptureButtonDropletLaunchViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)appendDropletZoomUpCompletionBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (self->_stage > 1)
  {
    pendingZoomUpCompletionBlocks = self->_pendingZoomUpCompletionBlocks;
    if (!pendingZoomUpCompletionBlocks)
    {
      v6 = objc_opt_new();
      v7 = self->_pendingZoomUpCompletionBlocks;
      self->_pendingZoomUpCompletionBlocks = v6;

      pendingZoomUpCompletionBlocks = self->_pendingZoomUpCompletionBlocks;
    }

    v8 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)pendingZoomUpCompletionBlocks addObject:v8];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (id)lendAnimatingDropletViewToExternalOwner
{
  [(SBCaptureButtonDropletLaunchViewController *)self _setStage:3 animated:0 milestones:0];
  dropletContext = self->_dropletContext;

  return [(DRPDropletContextView *)dropletContext acquireGeometricChangeAssertionForReason:@"Lent Droplet"];
}

- (void)resetToOffscreenAnimated:(BOOL)animated milestones:(id)milestones
{
  [(SBCaptureButtonDropletLaunchViewController *)self _setStage:0 animated:animated milestones:milestones];

  [(SBCaptureButtonDropletLaunchViewController *)self _zoomUpAnimationCompleted:0];
}

- (CGRect)preludeAnimationRectPresentationValue
{
  layer = [(DRPDropletContainerView *)self->_appDropletContainer layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)preludeAnimationVelocity
{
  v3 = [(DRPDropletContainerView *)self->_appDropletContainer _velocityForKey:@"position.x"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(DRPDropletContainerView *)self->_appDropletContainer _velocityForKey:@"position.y"];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)loadView
{
  [(SBCaptureButtonDropletLaunchViewController *)self _defaultInitialViewFrame];
  v7 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v3, v4, v5, v6}];
  [v7 setOpaque:0];
  [(SBCaptureButtonDropletLaunchViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SBCaptureButtonDropletLaunchViewController;
  [(SBCaptureButtonDropletLaunchViewController *)&v16 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D069F0]);
  view = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  dropletContext = self->_dropletContext;
  self->_dropletContext = v5;

  view2 = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view2 addSubview:self->_dropletContext];

  [(DRPDropletContextView *)self->_dropletContext setAutoresizingMask:18];
  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentView = self->_contentView;
  self->_contentView = v8;

  v10 = [(DRPDropletContextView *)self->_dropletContext addContainerWithContentView:self->_contentView];
  appDropletContainer = self->_appDropletContainer;
  self->_appDropletContainer = v10;

  v12 = objc_alloc_init(MEMORY[0x277D069E8]);
  animator = self->_animator;
  self->_animator = v12;

  self->_stage = 0;
  view3 = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view3 setNeedsLayout];

  view4 = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view4 layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBCaptureButtonDropletLaunchViewController;
  [(SBCaptureButtonDropletLaunchViewController *)&v3 viewWillLayoutSubviews];
  if (self->_stage != 3)
  {
    [(SBCaptureButtonDropletLaunchViewController *)self _applyViewConfigurationForCurrentStage];
  }
}

- (void)_setStage:(unint64_t)stage animated:(BOOL)animated milestones:(id)milestones
{
  animatedCopy = animated;
  v55 = *MEMORY[0x277D85DE8];
  milestonesCopy = milestones;
  v10 = milestonesCopy;
  if (self->_stage == stage && self->_animateNextStageTransition == animatedCopy)
  {
    goto LABEL_47;
  }

  self->_stage = stage;
  self->_animateNextStageTransition = animatedCopy;
  if (stage == 2 || (self->_expansionComponents = 0, self->_stage != 1))
  {
    self->_dropetIntelligentKeylineStage = 0;
  }

  if (stage == 3 && milestonesCopy)
  {
    [SBCaptureButtonDropletLaunchViewController _setStage:a2 animated:self milestones:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [(NSMutableDictionary *)self->_toStageCompletionBlock allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = [(NSMutableDictionary *)self->_toStageCompletionBlock objectForKey:*(*(&v48 + 1) + 8 * i)];
        v17 = v16;
        if (v16)
        {
          (*(v16 + 16))(v16, 0, 1, 1.79769313e308, 1.79769313e308);
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v13);
  }

  [(NSMutableDictionary *)self->_toStageCompletionBlock removeAllObjects];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_toStageFloatAnimatableProperty allKeys];
  v19 = [allKeys2 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(allKeys2);
        }

        v23 = [(NSMutableDictionary *)self->_toStageFloatAnimatableProperty objectForKey:*(*(&v44 + 1) + 8 * j)];
        v24 = v23;
        if (v23 && ([v23 isInvalidated] & 1) == 0)
        {
          [v24 invalidate];
        }
      }

      v20 = [allKeys2 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v20);
  }

  [(NSMutableDictionary *)self->_toStageFloatAnimatableProperty removeAllObjects];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v10;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v41;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v40 + 1) + 8 * k);
        [v31 bs_CGFloatValue];
        if (BSFloatEqualToFloat())
        {
          v32 = [v25 objectForKey:v31];

          v28 = v32;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v27);

    if (!v28)
    {
      goto LABEL_41;
    }

    toStageCompletionBlock = self->_toStageCompletionBlock;
    v34 = MEMORY[0x223D6F7F0](v28);
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
    [(NSMutableDictionary *)toStageCompletionBlock setObject:v34 forKey:v35];
  }

  else
  {
    v28 = 0;
    v34 = v25;
  }

LABEL_41:
  v10 = [v25 bs_filter:{&__block_literal_global_239, v40}];

  if (v10 && [v10 count])
  {
    v36 = [MEMORY[0x277D65F90] sbf_animatablePropertyWithProgressMilestonesToBlocks:v10];
    toStageFloatAnimatableProperty = self->_toStageFloatAnimatableProperty;
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
    [(NSMutableDictionary *)toStageFloatAnimatableProperty setObject:v36 forKey:v38];
  }

  if (stage != 3)
  {
    view = [(SBCaptureButtonDropletLaunchViewController *)self view];
    [view setNeedsLayout];
  }

LABEL_47:
}

- (void)_applyViewConfigurationForCurrentStage
{
  v3 = [(SBCaptureButtonDropletLaunchViewController *)self _configurationForStage:self->_stage];
  if (v3)
  {
    v4 = v3;
    [(DRPDropletAnimationCoordinator *)self->_animator applyViewConfiguration:v3 animated:self->_animateNextStageTransition tracking:0 containerView:self->_appDropletContainer contextView:self->_dropletContext];
    v3 = v4;
  }
}

- (void)_zoomUpAnimationCompleted:(BOOL)completed
{
  v16 = *MEMORY[0x277D85DE8];
  pendingZoomUpCompletionBlocks = self->_pendingZoomUpCompletionBlocks;
  if (pendingZoomUpCompletionBlocks)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSMutableArray *)pendingZoomUpCompletionBlocks copy];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_pendingZoomUpCompletionBlocks removeAllObjects];
    v10 = self->_pendingZoomUpCompletionBlocks;
    self->_pendingZoomUpCompletionBlocks = 0;
  }
}

- (id)_configurationForStage:(unint64_t)stage
{
  view = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view bounds];
  rect.origin.x = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (stage == 2)
  {
    v15 = [(SBCaptureButtonDropletLaunchViewController *)self _defaultConfigurationForStage:2];
    UIRectGetCenter();
    v17 = v16;
    expansionComponents = self->_expansionComponents;
    if (expansionComponents)
    {
      [v15 setCenterX:?];
      expansionComponents = self->_expansionComponents;
      if ((expansionComponents & 2) == 0)
      {
LABEL_9:
        if ((expansionComponents & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((expansionComponents & 2) == 0)
    {
      goto LABEL_9;
    }

    [v15 setCenterY:v17];
    if ((self->_expansionComponents & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    [v15 setContainerWidth:v10];
    [v15 setContainerHeight:v12];
    goto LABEL_15;
  }

  if (stage == 1)
  {
    selfCopy2 = self;
    v14 = 1;
  }

  else
  {
    if (stage)
    {
      v15 = 0;
      goto LABEL_15;
    }

    selfCopy2 = self;
    v14 = 0;
  }

  v15 = [(SBCaptureButtonDropletLaunchViewController *)selfCopy2 _defaultConfigurationForStage:v14];
LABEL_15:
  objc_initWeak(&location, self);
  if (self->_stage == 2 && (self->_expansionComponents & 4) != 0)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __69__SBCaptureButtonDropletLaunchViewController__configurationForStage___block_invoke;
    v58[3] = &unk_2783B6850;
    objc_copyWeak(&v59, &location);
    [v15 addAnimationCompletionBlockForKeyPath:@"containerTransform" animationCompletionBlock:v58];
    objc_destroyWeak(&v59);
  }

  v19 = [(SBButtonBezelGeometryInfo *)self->_buttonGeometryInfo buttonScreenEdgeForButton:self->_associatedButton];
  v20 = @"centerX";
  if ((v19 & 0xA) == 0)
  {
    v20 = @"centerY";
  }

  v21 = v20;
  toStageFloatAnimatableProperty = self->_toStageFloatAnimatableProperty;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
  v24 = [(NSMutableDictionary *)toStageFloatAnimatableProperty objectForKey:v23];

  toStageCompletionBlock = self->_toStageCompletionBlock;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
  v27 = [(NSMutableDictionary *)toStageCompletionBlock objectForKey:v26];

  if (v24 | v27)
  {
    if (v24)
    {
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __69__SBCaptureButtonDropletLaunchViewController__configurationForStage___block_invoke_2;
      v56[3] = &unk_2783BAB58;
      v57 = v24;
      [v15 addAlongsideAnimationBlockForKeyPath:v21 animationBlock:v56];
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __69__SBCaptureButtonDropletLaunchViewController__configurationForStage___block_invoke_3;
    v53[3] = &unk_2783B3518;
    objc_copyWeak(v55, &location);
    v55[1] = stage;
    v54 = v27;
    [v15 addAnimationCompletionBlockForKeyPath:v21 animationCompletionBlock:v53];

    objc_destroyWeak(v55);
  }

  if (stage == 2 && (self->_expansionComponents & 4) != 0)
  {
    [v15 setDisableDropletEffectFilters:1];
    zoomUpDisableDropletEffectFiltersSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpDisableDropletEffectFiltersSettings];
    [v15 setBehaviorSettingsForKeyPath:@"disableDropletEffectFilters" behaviorSettings:zoomUpDisableDropletEffectFiltersSettings];
  }

  [(SBCaptureButtonSettings *)self->_settings preludeDropletRadius];
  [v15 setDropletRadius:?];
  [v15 containerWidth];
  v30 = v29;
  [v15 containerHeight];
  v32 = v31;
  [v15 centerX];
  v34 = v33;
  [v15 centerY];
  v36 = v35;
  if (stage == 2)
  {
    v37 = self->_expansionComponents;
    if (v37)
    {
      zoomUpPositionXSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpPositionXSettings];
      [v15 setBehaviorSettingsForKeyPath:@"centerX" behaviorSettings:zoomUpPositionXSettings];

      v37 = self->_expansionComponents;
    }

    if ((v37 & 2) != 0)
    {
      zoomUpPositionYSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpPositionYSettings];
      [v15 setBehaviorSettingsForKeyPath:@"centerY" behaviorSettings:zoomUpPositionYSettings];

      v37 = self->_expansionComponents;
    }

    if ((v37 & 4) != 0)
    {
      zoomUpScaleSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpScaleSettings];
      [v15 setBehaviorSettingsForKeyPath:@"containerTransform" behaviorSettings:zoomUpScaleSettings];

      v40 = SBScreenDisplayCornerRadius();
    }

    else
    {
      v40 = SBScreenDisplayCornerRadius() / (v30 / v10);
    }

    [v15 setContainerCornerRadius:v40];
    zoomUpCornerRadiusSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpCornerRadiusSettings];
    [v15 setBehaviorSettingsForKeyPath:@"cornerRadius" behaviorSettings:zoomUpCornerRadiusSettings];
  }

  else
  {
    [(SBCaptureButtonSettings *)self->_settings preludeCornerRadius];
    [v15 setContainerCornerRadius:?];
    zoomUpCornerRadiusSettings = [(SBCaptureButtonSettings *)self->_settings preludePresentationTranslationSettings];
    [v15 setBehaviorSettingsForKeyPath:@"centerX" behaviorSettings:zoomUpCornerRadiusSettings];
    [v15 setBehaviorSettingsForKeyPath:@"centerY" behaviorSettings:zoomUpCornerRadiusSettings];
    [v15 setBehaviorSettingsForKeyPath:@"containerTransform" behaviorSettings:zoomUpCornerRadiusSettings];
    [v15 setBehaviorSettingsForKeyPath:@"cornerRadius" behaviorSettings:zoomUpCornerRadiusSettings];
  }

  v43 = v34 - v30 * 0.5;
  v44 = v36 - v32 * 0.5;

  v62.origin.x = v43;
  v62.origin.y = v44;
  v62.size.width = v30;
  v62.size.height = v32;
  [v15 setCenterX:CGRectGetMidX(v62)];
  v63.origin.x = v43;
  v63.origin.y = v44;
  v63.size.width = v30;
  v63.size.height = v32;
  [v15 setCenterY:CGRectGetMidY(v63)];
  v64.origin.x = rect.origin.x;
  v64.origin.y = v8;
  v64.size.width = v10;
  v64.size.height = v12;
  [v15 setContainerWidth:CGRectGetWidth(v64)];
  v65.origin.x = rect.origin.x;
  v65.origin.y = v8;
  v65.size.width = v10;
  v65.size.height = v12;
  [v15 setContainerHeight:CGRectGetHeight(v65)];
  CATransform3DMakeScale(&rect.origin.y, v30 / v10, v32 / v12, 1.0);
  [v15 setContainerTransform:&rect.origin.y];
  [v15 setBoundaryEdges:v19];
  keylineStyle = [v15 keylineStyle];
  v46 = +[SBHardwareButtonHintPrototypeDomain rootSettings];
  [v46 allButtonKeylineWidth];
  [keylineStyle setOuterWidth:?];

  [v15 defaultResetKeylineForCanvasSize:{v10, v12}];
  if (self->_dropetIntelligentKeylineStage)
  {
    [v15 changeToIntelligentLightStyle:2 preferAudioReactivity:0 canvasSize:{v10, v12}];
    keylineStyle2 = [v15 keylineStyle];
    [keylineStyle2 setScreenBlendMode:{-[SBCaptureButtonSettings visionIntelligenceKeylineScreenBlendMode](self->_settings, "visionIntelligenceKeylineScreenBlendMode")}];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineAlpha];
    [keylineStyle2 setAlpha:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineLargeBlurRadius];
    [keylineStyle2 setKeylineBlurRadius:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineLargeAmount];
    [keylineStyle2 setKeylineInputAmount:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineLargeStart];
    [keylineStyle2 setKeylineInputStart:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineLargeEnd];
    [keylineStyle2 setKeylineInputEnd:?];
    [keylineStyle2 setSoftRim:{-[SBCaptureButtonSettings visionIntelligenceKeylineRimIsSoft](self->_settings, "visionIntelligenceKeylineRimIsSoft")}];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineSmallWidth];
    [keylineStyle2 setOuterWidth:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineFadeLength];
    [keylineStyle2 setKeylineFadeLengths:{v48, v48 * 0.5, v48, 0.0}];
    [keylineStyle2 keylineOutsets];
    [keylineStyle2 setKeylineOutsets:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineFadeStart];
    [keylineStyle2 setNormalizedStartLocation:?];
    [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineFadeEnd];
    [keylineStyle2 setNormalizedStopLocation:?];
    if (objc_opt_respondsToSelector())
    {
      [(SBCaptureButtonSettings *)self->_settings visionIntelligenceKeylineEDRGain];
      [keylineStyle2 setEdrGain:?];
    }

    settings = self->_settings;
    if (self->_dropetIntelligentKeylineStage == 1)
    {
      [(SBCaptureButtonSettings *)settings visionIntelligenceHintBehaviorSettings];
    }

    else
    {
      [(SBCaptureButtonSettings *)settings visionIntelligenceBehaviorSettings];
    }
    v50 = ;
    [v15 setBehaviorSettingsForKeyPath:@"keylineStyle" behaviorSettings:v50];
  }

  else
  {
    keylineStyle2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [keylineStyle2 setResponse:0.0];
    [keylineStyle2 setDampingRatio:1.0];
    [v15 setBehaviorSettingsForKeyPath:@"keylineStyle" behaviorSettings:keylineStyle2];
  }

  objc_destroyWeak(&location);

  return v15;
}

void __69__SBCaptureButtonDropletLaunchViewController__configurationForStage___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _zoomUpAnimationCompleted:a2];
    WeakRetained = v4;
  }
}

void __69__SBCaptureButtonDropletLaunchViewController__configurationForStage___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[131];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v7 = [v5 objectForKey:v6];

    if (v7)
    {
      if (([v7 isInvalidated] & 1) == 0)
      {
        [v7 invalidate];
      }

      v8 = v11[131];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
      [v8 removeObjectForKey:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, a2, 1.79769313e308, 1.79769313e308);
  }
}

- (id)_defaultConfigurationForStage:(unint64_t)stage
{
  v5 = [(SBButtonBezelGeometryInfo *)self->_buttonGeometryInfo buttonScreenEdgeForButton:9];
  buttonGeometryInfo = self->_buttonGeometryInfo;
  view = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view bounds];
  [(SBButtonBezelGeometryInfo *)buttonGeometryInfo buttonHWRectForButton:9 onEmbeddedDisplayBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  view2 = [(SBCaptureButtonDropletLaunchViewController *)self view];
  [view2 bounds];
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x277D069F8];

  return [v21 hardwareButtonHintForButton:9 stage:stage != 0 keylineStyle:0 rectEdge:v5 buttonRect:v9 canvasSize:{v11, v13, v15, v18, v20}];
}

- (void)_setStage:(uint64_t)a1 animated:(uint64_t)a2 milestones:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureButtonDropletLaunchViewController.m" lineNumber:199 description:@"Unimplemented"];
}

@end