@interface SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier
- (SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier)initWithAppLayout:(id)layout gestureEdge:(unint64_t)edge liftOffVelocity:(CGPoint)velocity;
- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom;
- (double)scaleForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)_positionSettings;
- (id)_scaleSettings;
- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)genieAttributesForAppLayout:(id)layout;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier

- (SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier)initWithAppLayout:(id)layout gestureEdge:(unint64_t)edge liftOffVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appLayout, layout);
    v12->_gestureEdge = edge;
    v12->_liftOffVelocity.x = x;
    v12->_liftOffVelocity.y = y;
  }

  return v12;
}

- (id)handleTransitionEvent:(id)event
{
  v17.receiver = self;
  v17.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v17 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 2)
  {
    v7 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self homeScreenIconGridSizeClassForAppLayout:self->_appLayout];
    iconGridSizeClass = self->_iconGridSizeClass;
    self->_iconGridSizeClass = v7;

    v9 = self->_iconGridSizeClass > *MEMORY[0x277D66508];
    self->_overshootScaleForWidgetZoomDown = v9;
    if (v9)
    {
      switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      [animationSettings zoomDownWidgetScaleOvershootDuration];
      v13 = v12;

      v14 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"OvershootScaleForWidgetZoomDown" reason:v13];
      v15 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v14 toResponse:v5];

      v5 = v15;
    }
  }

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"OvershootScaleForWidgetZoomDown"];
  if (eventCopy)
  {
    self->_overshootScaleForWidgetZoomDown = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (double)scaleForIndex:(unint64_t)index
{
  v21.receiver = self;
  v21.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)&v21 scaleForIndex:?];
  v6 = v5;
  appLayouts = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if (v8 == self->_appLayout && self->_overshootScaleForWidgetZoomDown)
  {
    switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];

    [animationSettings zoomDownWidgetScaleVelocityYMinimum];
    v12 = v11;
    [animationSettings zoomDownWidgetScaleVelocityYMaximum];
    v14 = v13;
    [animationSettings zoomDownWidgetScaleOvershootMinimumMultiplier];
    v16 = v15;
    [animationSettings zoomDownWidgetScaleOvershootMaximumMultiplier];
    v18 = v16 + (v17 - v16) * (-self->_liftOffVelocity.y - v12) / (v14 - v12);
    if (v16 >= v17)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v16 <= v17)
    {
      v17 = v16;
    }

    if (v18 > v19)
    {
      v18 = v19;
    }

    if (v18 >= v17)
    {
      v17 = v18;
    }

    v6 = v6 * v17;
  }

  return v6;
}

- (id)genieAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  v5 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)&v8 genieAttributesForAppLayout:layoutCopy];
  if (v5 && [(SBAppLayout *)self->_appLayout isEqual:layoutCopy])
  {
    _layoutSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _layoutSettings];
    [v5 setLayoutSettings:_layoutSettings];
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier;
  v5 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)&v13 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  _layoutSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _layoutSettings];
  [v6 setLayoutSettings:_layoutSettings];

  if (![elementCopy switcherLayoutElementType])
  {
    _positionSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _positionSettings];
    [v6 setPositionSettings:_positionSettings];

    _scaleSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _scaleSettings];
    [v6 setScaleSettings:_scaleSettings];

    appLayout = [elementCopy appLayout];
    if ([appLayout isEqual:self->_appLayout])
    {
      v11 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self genieAttributesForAppLayout:self->_appLayout];

      if (!v11)
      {
        goto LABEL_6;
      }

      appLayout = [v6 layoutSettings];
      [v6 setCornerRadiusSettings:appLayout];
    }
  }

LABEL_6:

  return v6;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (![(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self isDevicePad])
  {
    goto LABEL_16;
  }

  iconGridSizeClass = self->_iconGridSizeClass;
  if (iconGridSizeClass != *MEMORY[0x277D66548] && ![(NSString *)iconGridSizeClass isEqualToString:?])
  {
    v7 = self->_iconGridSizeClass;
    if (v7 == *MEMORY[0x277D66520] || [(NSString *)v7 isEqualToString:?])
    {
      homeGestureMediumWidgetZoomDownLayoutSettings = [animationSettings homeGestureMediumWidgetZoomDownLayoutSettings];
      goto LABEL_15;
    }

    v8 = self->_iconGridSizeClass;
    if (v8 == *MEMORY[0x277D66518] || [(NSString *)v8 isEqualToString:?]|| (v9 = self->_iconGridSizeClass, v9 == *MEMORY[0x277D66528]) || [(NSString *)v9 isEqualToString:?]|| (v10 = self->_iconGridSizeClass, v10 == *MEMORY[0x277D66510]) || [(NSString *)v10 isEqualToString:?])
    {
      homeGestureMediumWidgetZoomDownLayoutSettings = [animationSettings homeGestureLargeWidgetZoomDownLayoutSettings];
      goto LABEL_15;
    }

LABEL_16:
    homeGestureTopRowZoomDownLayoutSettings = [animationSettings homeGestureTopRowZoomDownLayoutSettings];
    homeGestureBottomRowZoomDownLayoutSettings = [animationSettings homeGestureBottomRowZoomDownLayoutSettings];
    [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _normalizedHomeScreenIconZoomPercentBetweenTopAndBottom];
    v11 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _settingsByInterpolatingBetween:homeGestureTopRowZoomDownLayoutSettings and:homeGestureBottomRowZoomDownLayoutSettings progress:?];
    [animationSettings zoomDownVelocityYMinimum];
    v15 = v14;
    [animationSettings zoomDownVelocityYMaximum];
    v17 = v16;
    [animationSettings zoomDownVelocityYLayoutResponseMultiplier];
    v19 = v18;
    v20 = (-self->_liftOffVelocity.y - v15) / (v17 - v15);
    if (v20 <= 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v20 + 0.0;
    }

    v22 = fmin(v21, 1.0);
    [v11 response];
    [v11 setResponse:((v19 + -1.0) * v22 + 1.0) * v23];

    goto LABEL_20;
  }

  homeGestureMediumWidgetZoomDownLayoutSettings = [animationSettings homeGestureSmallWidgetZoomDownLayoutSettings];
LABEL_15:
  v11 = homeGestureMediumWidgetZoomDownLayoutSettings;
LABEL_20:

  return v11;
}

- (id)_positionSettings
{
  switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (![(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self isDevicePad])
  {
    goto LABEL_14;
  }

  iconGridSizeClass = self->_iconGridSizeClass;
  if (iconGridSizeClass != *MEMORY[0x277D66548] && ![(NSString *)iconGridSizeClass isEqualToString:?])
  {
    v7 = self->_iconGridSizeClass;
    if (v7 == *MEMORY[0x277D66520] || [(NSString *)v7 isEqualToString:?])
    {
      homeGestureMediumWidgetZoomDownPositionSettings = [animationSettings homeGestureMediumWidgetZoomDownPositionSettings];
      goto LABEL_13;
    }

    v8 = self->_iconGridSizeClass;
    if (v8 == *MEMORY[0x277D66518] || [(NSString *)v8 isEqualToString:?]|| (v9 = self->_iconGridSizeClass, v9 == *MEMORY[0x277D66510]) || [(NSString *)v9 isEqualToString:?])
    {
      homeGestureMediumWidgetZoomDownPositionSettings = [animationSettings homeGestureLargeWidgetZoomDownPositionSettings];
      goto LABEL_13;
    }

LABEL_14:
    homeGestureTopRowZoomDownPositionSettings = [animationSettings homeGestureTopRowZoomDownPositionSettings];
    homeGestureBottomRowZoomDownPositionSettings = [animationSettings homeGestureBottomRowZoomDownPositionSettings];
    [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _normalizedHomeScreenIconZoomPercentBetweenTopAndBottom];
    v10 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _settingsByInterpolatingBetween:homeGestureTopRowZoomDownPositionSettings and:homeGestureBottomRowZoomDownPositionSettings progress:?];
    [animationSettings zoomDownVelocityXMinimum];
    v14 = v13;
    [animationSettings zoomDownVelocityXMaximum];
    v16 = v15;
    [animationSettings zoomDownVelocityXPositionResponseMultiplier];
    v18 = v17;
    v19 = (fabs(self->_liftOffVelocity.x) - v14) / (v16 - v14);
    if (v19 <= 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19 + 0.0;
    }

    v21 = fmin(v20, 1.0);
    [v10 response];
    [v10 setResponse:((v18 + -1.0) * v21 + 1.0) * v22];
    v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v10 setFrameRateRange:1114115 highFrameRateReason:{*&v25.minimum, *&v25.maximum, *&v25.preferred}];

    goto LABEL_18;
  }

  homeGestureMediumWidgetZoomDownPositionSettings = [animationSettings homeGestureSmallWidgetZoomDownPositionSettings];
LABEL_13:
  v10 = homeGestureMediumWidgetZoomDownPositionSettings;
LABEL_18:

  return v10;
}

- (id)_scaleSettings
{
  switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if ([(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self isDevicePad])
  {
    iconGridSizeClass = self->_iconGridSizeClass;
    if (iconGridSizeClass == *MEMORY[0x277D66548] || [(NSString *)iconGridSizeClass isEqualToString:?])
    {
      homeGestureSmallWidgetZoomDownScaleSettings = [animationSettings homeGestureSmallWidgetZoomDownScaleSettings];
LABEL_13:
      v10 = homeGestureSmallWidgetZoomDownScaleSettings;
      goto LABEL_15;
    }

    v7 = self->_iconGridSizeClass;
    if (v7 == *MEMORY[0x277D66520] || [(NSString *)v7 isEqualToString:?])
    {
      homeGestureSmallWidgetZoomDownScaleSettings = [animationSettings homeGestureMediumWidgetZoomDownScaleSettings];
      goto LABEL_13;
    }

    v8 = self->_iconGridSizeClass;
    if (v8 == *MEMORY[0x277D66518] || [(NSString *)v8 isEqualToString:?]|| (v9 = self->_iconGridSizeClass, v9 == *MEMORY[0x277D66510]) || [(NSString *)v9 isEqualToString:?])
    {
      homeGestureSmallWidgetZoomDownScaleSettings = [animationSettings homeGestureLargeWidgetZoomDownScaleSettings];
      goto LABEL_13;
    }
  }

  homeGestureTopRowZoomDownScaleSettings = [animationSettings homeGestureTopRowZoomDownScaleSettings];
  homeGestureBottomRowZoomDownScaleSettings = [animationSettings homeGestureBottomRowZoomDownScaleSettings];
  [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _normalizedHomeScreenIconZoomPercentBetweenTopAndBottom];
  v10 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self _settingsByInterpolatingBetween:homeGestureTopRowZoomDownScaleSettings and:homeGestureBottomRowZoomDownScaleSettings progress:?];

LABEL_15:

  return v10;
}

- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress
{
  andCopy = and;
  betweenCopy = between;
  switcherSettings = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  iconGridSizeClass = self->_iconGridSizeClass;
  if (iconGridSizeClass == *MEMORY[0x277D66548] || [(NSString *)iconGridSizeClass isEqualToString:?]|| (v12 = self->_iconGridSizeClass, v12 == *MEMORY[0x277D66520]) || [(NSString *)v12 isEqualToString:?]|| (v13 = self->_iconGridSizeClass, v13 == *MEMORY[0x277D66518]) || [(NSString *)v13 isEqualToString:?]|| (v14 = self->_iconGridSizeClass, v14 == *MEMORY[0x277D66510]) || [(NSString *)v14 isEqualToString:?])
  {
    [animationSettings homeGestureZoomDownScaleMultiplierWidgets];
LABEL_10:
    v16 = v15;
    goto LABEL_11;
  }

  v16 = 1.0;
  if (([(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self isDevicePad]& 1) == 0)
  {
    [animationSettings homeGestureZoomDownScaleMultiplier];
    goto LABEL_10;
  }

LABEL_11:
  v17 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v17 setDefaultValues];
  [betweenCopy dampingRatio];
  [andCopy dampingRatio];
  BSFloatByLinearlyInterpolatingFloats();
  [v17 setDampingRatio:?];
  [betweenCopy response];
  [andCopy response];
  BSFloatByLinearlyInterpolatingFloats();
  [v17 setResponse:v16 * v18];
  [betweenCopy retargetImpulse];

  [andCopy retargetImpulse];
  BSFloatByLinearlyInterpolatingFloats();
  [v17 setRetargetImpulse:?];
  v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v17 setFrameRateRange:1114115 highFrameRateReason:{*&v21.minimum, *&v21.maximum, *&v21.preferred}];

  return v17;
}

- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom
{
  switcherInterfaceOrientation = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self containerViewBounds];
  v22 = v4;
  appLayouts = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self appLayouts];
  v6 = [appLayouts indexOfObject:self->_appLayout];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    appLayouts2 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self appLayouts];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __120__SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier__normalizedHomeScreenIconZoomPercentBetweenTopAndBottom__block_invoke;
    v24[3] = &unk_2783AE1A0;
    v24[4] = self;
    v6 = [appLayouts2 indexOfObjectPassingTest:v24];
  }

  if ((switcherInterfaceOrientation - 1) >= 2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 102.0;
  }

  [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self frameForIndex:v6];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)self scaleForIndex:v6];
  v18 = v17;
  UIRectGetCenter();
  CGAffineTransformMakeScale(&v23, v18, v18);
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  CGRectApplyAffineTransform(v25, &v23);
  SBUnintegralizedRectCenteredAboutPoint();
  UIRectGetCenter();
  if (self->_gestureEdge == 1)
  {
    v20 = 1.0 - (v19 - v8) / (v22 - v8);
  }

  else
  {
    v20 = (v19 - v8) / (v22 - v8);
  }

  return v20;
}

uint64_t __120__SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier__normalizedHomeScreenIconZoomPercentBetweenTopAndBottom__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrContainsAppLayout:*(*(a1 + 32) + 128)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 128) isOrContainsAppLayout:v3];
  }

  return v4;
}

@end