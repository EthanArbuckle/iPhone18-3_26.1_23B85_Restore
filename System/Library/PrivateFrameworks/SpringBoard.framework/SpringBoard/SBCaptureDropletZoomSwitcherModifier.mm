@interface SBCaptureDropletZoomSwitcherModifier
- (BOOL)isDropletEffectRequiredBehindAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBCaptureDropletZoomSwitcherModifier)initWithTransitionID:(id)d zoomModifier:(id)modifier appLayout:(id)layout launchPreludeAnimationToken:(id)token;
- (double)homeScreenBackdropBlurProgress;
- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)switcherDimmingAlpha;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleAnimatablePropertyChangedEvent:(id)event;
- (id)handleHardwareButtonDropletAnimationEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)settingsForAnimatableProperty:(id)property;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)updateModeForAnimatableProperty:(id)property;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBCaptureDropletZoomSwitcherModifier

- (SBCaptureDropletZoomSwitcherModifier)initWithTransitionID:(id)d zoomModifier:(id)modifier appLayout:(id)layout launchPreludeAnimationToken:(id)token
{
  dCopy = d;
  modifierCopy = modifier;
  layoutCopy = layout;
  tokenCopy = token;
  if (modifierCopy)
  {
    if (layoutCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBCaptureDropletZoomSwitcherModifier initWithTransitionID:a2 zoomModifier:self appLayout:? launchPreludeAnimationToken:?];
    if (tokenCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBCaptureDropletZoomSwitcherModifier initWithTransitionID:a2 zoomModifier:self appLayout:? launchPreludeAnimationToken:?];
  if (!layoutCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (tokenCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBCaptureDropletZoomSwitcherModifier initWithTransitionID:a2 zoomModifier:self appLayout:? launchPreludeAnimationToken:?];
LABEL_4:
  v23.receiver = self;
  v23.super_class = SBCaptureDropletZoomSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:dCopy];
  if (v15)
  {
    v16 = +[SBCaptureButtonDomain rootSettings];
    settings = v15->_settings;
    v15->_settings = v16;

    objc_storeStrong(&v15->_appLayout, layout);
    objc_storeStrong(&v15->_zoomModifier, modifier);
    objc_storeStrong(&v15->_preludeAnimationToken, token);
    v15->_dropletEffectRequired = 1;
    v15->_shouldDimBackground = 0;
    [tokenCopy preludeAnimationRectPresentationValue];
    v15->_initialDropletFrame.origin.x = v18;
    v15->_initialDropletFrame.origin.y = v19;
    v15->_initialDropletFrame.size.width = v20;
    v15->_initialDropletFrame.size.height = v21;
  }

  return v15;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBCaptureDropletZoomSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    if (![(SBChainableModifier *)self containsChildModifier:self->_zoomModifier])
    {
      [(SBChainableModifier *)self addChildModifier:self->_zoomModifier];
    }

    [(SBCaptureDropletZoomSwitcherModifier *)self presentationValueForAnimatableProperty:@"SBDropletZoomAnimatablePropertyIdentifier"];
    if ([(SBCaptureButtonSettings *)self->_settings enableZoomUpBlur])
    {
      [(SBCaptureButtonSettings *)self->_settings zoomUpBlurStartProgress];
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        self->_allowHomeScreenBlur = 1;
      }
    }

    [(SBCaptureButtonSettings *)self->_settings zoomUpBackgroundDimStartProgress];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      self->_shouldDimBackground = 1;
    }
  }
}

- (id)handleAnimatablePropertyChangedEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBCaptureDropletZoomSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v9 handleAnimatablePropertyChangedEvent:event];
  [(SBCaptureDropletZoomSwitcherModifier *)self presentationValueForAnimatableProperty:@"SBDropletZoomAnimatablePropertyIdentifier"];
  if ([(SBCaptureButtonSettings *)self->_settings enableZoomUpBlur]&& ([(SBCaptureButtonSettings *)self->_settings zoomUpBlurStartProgress], BSFloatGreaterThanOrEqualToFloat()) && !self->_allowHomeScreenBlur)
  {
    v5 = 1;
    self->_allowHomeScreenBlur = 1;
  }

  else
  {
    v5 = 0;
  }

  [(SBCaptureButtonSettings *)self->_settings zoomUpBackgroundDimStartProgress];
  if (BSFloatGreaterThanOrEqualToFloat() && !self->_shouldDimBackground)
  {
    self->_shouldDimBackground = 1;
    goto LABEL_10;
  }

  if (v5)
  {
LABEL_10:
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    v7 = SBAppendSwitcherModifierResponse(v6, v4);

    v4 = v7;
  }

  return v4;
}

- (id)handleHardwareButtonDropletAnimationEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBCaptureDropletZoomSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v14 handleHardwareButtonDropletAnimationEvent:eventCopy];
  preludeAnimationToken = self->_preludeAnimationToken;
  self->_preludeAnimationToken = 0;

  zoomUpToken = [eventCopy zoomUpToken];

  zoomupAnimationToken = self->_zoomupAnimationToken;
  self->_zoomupAnimationToken = zoomUpToken;

  v9 = MEMORY[0x277CCAE60];
  [(SBHardwareButtonLaunchZoomUpAnimationToken *)self->_zoomupAnimationToken preludeAnimationVelocity];
  v10 = [v9 valueWithCGPoint:?];
  v11 = [[SBInjectVelocitySwitcherEventResponse alloc] initWithVelocity:v10 forKey:@"position" appLayout:self->_appLayout];
  v12 = SBAppendSwitcherModifierResponse(v11, v5);

  return v12;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBCaptureDropletZoomSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = BSEqualStrings();
  if (eventCopy)
  {
    self->_dropletEffectRequired = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)transitionWillBegin
{
  v15.receiver = self;
  v15.super_class = SBCaptureDropletZoomSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v15 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [SBTimerEventSwitcherEventResponse alloc];
  [(SBCaptureButtonSettings *)self->_settings disableDropletEffectDelay];
  v7 = v6;
  UIAnimationDragCoefficient();
  v9 = [(SBTimerEventSwitcherEventResponse *)v5 initWithDelay:0 validator:@"SBDropletEffectDisableTimerReason" reason:v7 * v8];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v9];

  v10 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v10];

  v11 = [[SBHardwareButtonDropletActionResponse alloc] initWithPreludeToken:self->_preludeAnimationToken zoomUpToken:0 appLayout:self->_appLayout action:0];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v11];

  v12 = [[SBMatchMoveToDropletSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout active:1];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v12];

  v13 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

  return v13;
}

- (id)transitionDidEnd
{
  v11.receiver = self;
  v11.super_class = SBCaptureDropletZoomSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v11 transitionDidEnd];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [[SBMatchMoveToDropletSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout active:0];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];

  v6 = [[SBHardwareButtonDropletActionResponse alloc] initWithPreludeToken:self->_preludeAnimationToken zoomUpToken:self->_zoomupAnimationToken appLayout:self->_appLayout action:1];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];

  preludeAnimationToken = self->_preludeAnimationToken;
  self->_preludeAnimationToken = 0;

  zoomupAnimationToken = self->_zoomupAnimationToken;
  self->_zoomupAnimationToken = 0;

  v9 = SBAppendSwitcherModifierResponse(v4, transitionDidEnd);

  return v9;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v28.receiver = self;
  v28.super_class = SBCaptureDropletZoomSwitcherModifier;
  [(SBCaptureDropletZoomSwitcherModifier *)&v28 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBCaptureDropletZoomSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  if ([v14 isEqual:self->_appLayout])
  {
    v27.receiver = self;
    v27.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v27 fullyPresentedFrameForIndex:index frame:v6, v8, v10, v12];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      UIRectGetCenter();
      SBUnintegralizedRectCenteredAboutPoint();
      v6 = v19;
      v8 = v20;
      v10 = v21;
      v12 = v22;
    }
  }

  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBCaptureDropletZoomSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 1.0;
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      Height = CGRectGetHeight(self->_initialDropletFrame);
      [(SBCaptureDropletZoomSwitcherModifier *)self containerViewBounds];
      v7 = Height / CGRectGetHeight(v12);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v11 scaleForIndex:index];
    v7 = v9;
  }

  return v7;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBCaptureDropletZoomSwitcherModifier;
  visibleAppLayouts = [(SBCaptureDropletZoomSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  return v4;
}

- (BOOL)isDropletEffectRequiredBehindAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_appLayout])
  {
    dropletEffectRequired = self->_dropletEffectRequired;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCaptureDropletZoomSwitcherModifier;
    dropletEffectRequired = [(SBCaptureDropletZoomSwitcherModifier *)&v7 isDropletEffectRequiredBehindAppLayout:layoutCopy];
  }

  return dropletEffectRequired;
}

- (id)topMostLayoutElements
{
  v13.receiver = self;
  v13.super_class = SBCaptureDropletZoomSwitcherModifier;
  topMostLayoutElements = [(SBCaptureDropletZoomSwitcherModifier *)&v13 topMostLayoutElements];
  if (topMostLayoutElements && [(SBCaptureDropletZoomSwitcherModifier *)self wantsBezelEffectsLayoutElement])
  {
    v12.receiver = self;
    v12.super_class = SBCaptureDropletZoomSwitcherModifier;
    bezelEffectsLayoutElement = [(SBCaptureDropletZoomSwitcherModifier *)&v12 bezelEffectsLayoutElement];
    if (bezelEffectsLayoutElement)
    {
      v5 = [topMostLayoutElements mutableCopy];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__SBCaptureDropletZoomSwitcherModifier_topMostLayoutElements__block_invoke;
      v11[3] = &unk_2783B76C8;
      v11[4] = self;
      v6 = [v5 indexOfObjectPassingTest:v11];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v6;
        [v5 insertObject:bezelEffectsLayoutElement atIndex:v6 + 1];
        v10.receiver = self;
        v10.super_class = SBCaptureDropletZoomSwitcherModifier;
        switcherDimmingViewLayoutElement = [(SBCaptureDropletZoomSwitcherModifier *)&v10 switcherDimmingViewLayoutElement];
        if (switcherDimmingViewLayoutElement)
        {
          [v5 insertObject:switcherDimmingViewLayoutElement atIndex:v7 + 1];
        }
      }
    }

    else
    {
      v5 = topMostLayoutElements;
    }
  }

  else
  {
    v5 = topMostLayoutElements;
  }

  return v5;
}

uint64_t __61__SBCaptureDropletZoomSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 switcherLayoutElementType] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 176) isEqual:v3];
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SBCaptureDropletZoomSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v16 animationAttributesForLayoutElement:elementCopy];
  switcherLayoutElementType = [elementCopy switcherLayoutElementType];
  if (switcherLayoutElementType == 2)
  {
    v7 = [v5 mutableCopy];
    zoomUpBackgroundDimAnimationSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpBackgroundDimAnimationSettings];
    [v7 setOpacitySettings:zoomUpBackgroundDimAnimationSettings];

    [v7 setUpdateMode:3];
    goto LABEL_6;
  }

  if (!switcherLayoutElementType && [elementCopy isEqual:self->_appLayout])
  {
    v7 = [v5 mutableCopy];
    zoomUpScaleSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpScaleSettings];
    [v7 setLayoutSettings:zoomUpScaleSettings];

    zoomUpPositionXSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpPositionXSettings];
    [v7 setPositionSettings:zoomUpPositionXSettings];

    zoomUpPositionXSettings2 = [(SBCaptureButtonSettings *)self->_settings zoomUpPositionXSettings];
    [v7 setDropletPositionXSettings:zoomUpPositionXSettings2];

    zoomUpPositionYSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpPositionYSettings];
    [v7 setDropletPositionYSettings:zoomUpPositionYSettings];

    zoomUpScaleSettings2 = [(SBCaptureButtonSettings *)self->_settings zoomUpScaleSettings];
    [v7 setScaleSettings:zoomUpScaleSettings2];

    zoomUpCornerRadiusSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpCornerRadiusSettings];
    [v7 setCornerRadiusSettings:zoomUpCornerRadiusSettings];

LABEL_6:
    v5 = v7;
  }

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (![layoutCopy isEqual:self->_appLayout] || (v9 = 0.0, !-[SBTransitionSwitcherModifier isPreparingLayout](self, "isPreparingLayout")))
  {
    v12.receiver = self;
    v12.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (double)homeScreenBackdropBlurProgress
{
  result = 0.0;
  if (self->_allowHomeScreenBlur)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v5 homeScreenBackdropBlurProgress];
  }

  return result;
}

- (double)switcherDimmingAlpha
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| (result = 1.0, !self->_shouldDimBackground))
  {
    v4.receiver = self;
    v4.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v4 switcherDimmingAlpha];
  }

  return result;
}

- (id)animatablePropertyIdentifiers
{
  v6.receiver = self;
  v6.super_class = SBCaptureDropletZoomSwitcherModifier;
  animatablePropertyIdentifiers = [(SBCaptureDropletZoomSwitcherModifier *)&v6 animatablePropertyIdentifiers];
  if ([(SBCaptureButtonSettings *)self->_settings enableZoomUpBlur])
  {
    v4 = [animatablePropertyIdentifiers setByAddingObject:@"SBDropletZoomAnimatablePropertyIdentifier"];

    animatablePropertyIdentifiers = v4;
  }

  return animatablePropertyIdentifiers;
}

- (int64_t)updateModeForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBDropletZoomAnimatablePropertyIdentifier"])
  {
    v5 = 3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCaptureDropletZoomSwitcherModifier;
    v5 = [(SBCaptureDropletZoomSwitcherModifier *)&v7 updateModeForAnimatableProperty:propertyCopy];
  }

  return v5;
}

- (id)settingsForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBDropletZoomAnimatablePropertyIdentifier"])
  {
    zoomUpScaleSettings = [(SBCaptureButtonSettings *)self->_settings zoomUpScaleSettings];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCaptureDropletZoomSwitcherModifier;
    zoomUpScaleSettings = [(SBCaptureDropletZoomSwitcherModifier *)&v8 settingsForAnimatableProperty:propertyCopy];
  }

  v6 = zoomUpScaleSettings;

  return v6;
}

- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating
{
  creatingCopy = creating;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBDropletZoomAnimatablePropertyIdentifier"])
  {
    if (creatingCopy)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBCaptureDropletZoomSwitcherModifier;
    [(SBCaptureDropletZoomSwitcherModifier *)&v12 modelValueForAnimatableProperty:propertyCopy currentValue:creatingCopy creating:value];
    v9 = v10;
  }

  return v9;
}

- (void)initWithTransitionID:(uint64_t)a1 zoomModifier:(uint64_t)a2 appLayout:launchPreludeAnimationToken:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureDropletZoomSwitcherModifier.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"zoomModifier != nil"}];
}

- (void)initWithTransitionID:(uint64_t)a1 zoomModifier:(uint64_t)a2 appLayout:launchPreludeAnimationToken:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureDropletZoomSwitcherModifier.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"appLayout != nil"}];
}

- (void)initWithTransitionID:(uint64_t)a1 zoomModifier:(uint64_t)a2 appLayout:launchPreludeAnimationToken:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureDropletZoomSwitcherModifier.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"preludeToken != nil"}];
}

@end