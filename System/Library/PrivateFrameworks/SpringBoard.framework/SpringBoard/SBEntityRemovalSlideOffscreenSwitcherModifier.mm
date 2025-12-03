@interface SBEntityRemovalSlideOffscreenSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBEntityRemovalSlideOffscreenSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout direction:(unint64_t)direction animationSettings:(id)settings multitaskingModifier:(id)modifier;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBEntityRemovalSlideOffscreenSwitcherModifier

- (SBEntityRemovalSlideOffscreenSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout direction:(unint64_t)direction animationSettings:(id)settings multitaskingModifier:(id)modifier
{
  dCopy = d;
  layoutCopy = layout;
  settingsCopy = settings;
  modifierCopy = modifier;
  v21.receiver = self;
  v21.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v17 = [(SBTransitionSwitcherModifier *)&v21 initWithTransitionID:dCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transitionID, d);
    objc_storeStrong(&v18->_appLayout, layout);
    v18->_direction = direction;
    objc_storeStrong(&v18->_multitaskingModifier, modifier);
    objc_storeStrong(&v18->_animationSettings, settings);
    [settingsCopy fromViewSlideOutAnimationDelay];
    v18->_isSecondStage = v19 == 0.0;
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v12.receiver = self;
  v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  [(SBChainableModifier *)&v12 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_toHomeRemovalModifier)
    {
      defaultAnimationSettings = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings defaultAnimationSettings];
      [defaultAnimationSettings toViewScaleAndAlphaResetAnimationDelay];
      v7 = v6;
      UIAnimationDragCoefficient();
      v9 = v7 * v8;

      v10 = [[SBEntityRemovalToHomeSwitcherModifier alloc] initWithTransitionID:self->_transitionID homeAnimationDelay:self->_multitaskingModifier multitaskingModifier:v9];
      toHomeRemovalModifier = self->_toHomeRemovalModifier;
      self->_toHomeRemovalModifier = v10;

      [(SBChainableModifier *)self addChildModifier:self->_toHomeRemovalModifier];
    }
  }
}

- (id)transitionWillUpdate
{
  v18.receiver = self;
  v18.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v18 transitionWillUpdate];
  if (!self->_isSecondStage)
  {
    objc_initWeak(&location, self);
    [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings fromViewSlideOutAnimationDelay];
    v5 = v4;
    UIAnimationDragCoefficient();
    v7 = v6;
    v8 = [SBTimerEventSwitcherEventResponse alloc];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __69__SBEntityRemovalSlideOffscreenSwitcherModifier_transitionWillUpdate__block_invoke;
    v15 = &unk_2783AD4A0;
    objc_copyWeak(&v16, &location);
    v9 = [(SBTimerEventSwitcherEventResponse *)v8 initWithDelay:&v12 validator:@"kSBEntityRemovalSlideOffsrceenSwitcherModifierSlideDelayReson" reason:v5 * v7];
    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:transitionWillUpdate, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    transitionWillUpdate = v10;
  }

  return transitionWillUpdate;
}

BOOL __69__SBEntityRemovalSlideOffscreenSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"kSBEntityRemovalSlideOffsrceenSwitcherModifierSlideDelayReson"];
  if (eventCopy)
  {
    self->_isSecondStage = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  visibleAppLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    windowManagementContext = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (isFlexibleWindowingEnabled)
    {
      v21 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_appLayout];
      [v21 boundingBox];
      v8 = v22;
      v10 = v23;
      v12 = v24;
      v14 = v25;
    }

    else
    {
      [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self containerViewBounds];
      v8 = v26;
      v10 = v27;
      v12 = v28;
      v14 = v29;
    }

    if (self->_isSecondStage)
    {
      [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self containerViewBounds];
      v31 = v30;
      [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings fromViewSlideOutHeightOffsetMultiplier];
      v33 = v31 * v32;
      v34 = -(v31 * v32);
      if (self->_direction == 1)
      {
        v34 = v33;
      }

      v10 = v10 + v34;
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v35 frameForIndex:index];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    defaultAnimationSettings = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings defaultAnimationSettings];
    [defaultAnimationSettings fromViewFinalScale];
    v8 = v10;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v12 scaleForIndex:index];
    v8 = v7;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![(SBAppLayout *)self->_appLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v13 anchorPointForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v7 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v7 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_appLayout isEqual:layoutCopy]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    appLayouts = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
    -[SBEntityRemovalSlideOffscreenSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_appLayout]);
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  if (![(SBAppLayout *)self->_appLayout isEqual:layoutCopy]|| (v8 = 0.5, v9 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v14.receiver = self;
    v14.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (![(SBAppLayout *)self->_appLayout isEqual:layoutCopy]|| (v9 = 1.0, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  topMostLayoutElements = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v4 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:event];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_appLayout];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  if ([elementCopy switcherLayoutElementType] || !objc_msgSend(elementCopy, "isEqual:", self->_appLayout))
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:elementCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v5 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:elementCopy];
    v6 = [v5 mutableCopy];

    _layoutSettings = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self _layoutSettings];
    [v6 setLayoutSettings:_layoutSettings];
  }

  return v6;
}

- (id)_layoutSettings
{
  isSecondStage = self->_isSecondStage;
  animationSettings = self->_animationSettings;
  if (isSecondStage)
  {
    fromViewSlideOutAnimationSettings = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)animationSettings fromViewSlideOutAnimationSettings];
  }

  else
  {
    defaultAnimationSettings = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)animationSettings defaultAnimationSettings];
    fromViewSlideOutAnimationSettings = [defaultAnimationSettings fromViewScaleAnimationSettings];
  }

  return fromViewSlideOutAnimationSettings;
}

@end