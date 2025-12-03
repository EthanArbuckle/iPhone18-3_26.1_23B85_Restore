@interface SBEntityRemovalCrossblurSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBEntityRemovalCrossblurSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout multitaskingModifier:(id)modifier;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBEntityRemovalCrossblurSwitcherModifier

- (SBEntityRemovalCrossblurSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout multitaskingModifier:(id)modifier
{
  dCopy = d;
  layoutCopy = layout;
  modifierCopy = modifier;
  v15.receiver = self;
  v15.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:dCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transitionID, d);
    objc_storeStrong(&v13->_appLayout, layout);
    objc_storeStrong(&v13->_multitaskingModifier, modifier);
  }

  return v13;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v13.receiver = self;
  v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  [(SBChainableModifier *)&v13 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_toHomeRemovalModifier)
    {
      entityRemovalSettings = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];
      [dosidoDeleteIntentAnimationSettings toViewScaleAndAlphaResetAnimationDelay];
      v8 = v7;
      UIAnimationDragCoefficient();
      v10 = v8 * v9;

      v11 = [[SBEntityRemovalToHomeSwitcherModifier alloc] initWithTransitionID:self->_transitionID homeAnimationDelay:self->_multitaskingModifier multitaskingModifier:v10];
      toHomeRemovalModifier = self->_toHomeRemovalModifier;
      self->_toHomeRemovalModifier = v11;

      [(SBChainableModifier *)self addChildModifier:self->_toHomeRemovalModifier];
    }
  }
}

- (id)transitionWillUpdate
{
  v20.receiver = self;
  v20.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v20 transitionWillUpdate];
  if (!SBReduceMotion())
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout shouldBlur:1 animationUpdateMode:3];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillUpdate];

    transitionWillUpdate = v5;
  }

  objc_initWeak(&location, self);
  v6 = [SBTimerEventSwitcherEventResponse alloc];
  entityRemovalSettings = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
  dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];
  [dosidoDeleteIntentAnimationSettings fromViewAlphaAnimationDelay];
  v10 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __64__SBEntityRemovalCrossblurSwitcherModifier_transitionWillUpdate__block_invoke;
  v17 = &unk_2783AD4A0;
  objc_copyWeak(&v18, &location);
  v11 = [(SBTimerEventSwitcherEventResponse *)v6 initWithDelay:&v14 validator:@"kSBEntityRemovalCrossblurSwitcherModifierAlphaAnimationDelayReason" reason:v10];

  v12 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v11 toResponse:transitionWillUpdate, v14, v15, v16, v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

BOOL __64__SBEntityRemovalCrossblurSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"kSBEntityRemovalCrossblurSwitcherModifierAlphaAnimationDelayReason"];
  if (eventCopy)
  {
    self->_animateOpacity = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

  return v5;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  visibleAppLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    windowManagementContext = [(SBEntityRemovalCrossblurSwitcherModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (isFlexibleWindowingEnabled)
    {
      v21 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_appLayout];
      [v21 boundingBox];
      v11 = v22;
      v12 = v23;
      v13 = v24;
      v14 = v25;

      goto LABEL_5;
    }

    [(SBEntityRemovalCrossblurSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v26 frameForIndex:index];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
LABEL_5:

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = 1.0;
    if (!SBReduceMotion())
    {
      entityRemovalSettings = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];
      [dosidoDeleteIntentAnimationSettings fromViewFinalScale];
      v8 = v12;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 scaleForIndex:index];
    v8 = v7;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![(SBAppLayout *)self->_appLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 anchorPointForIndex:index];
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
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
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
    appLayouts = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
    -[SBEntityRemovalCrossblurSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_appLayout]);
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
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
    v14.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  if ([elementCopy switcherLayoutElementType] || !objc_msgSend(elementCopy, "isEqual:", self->_appLayout))
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v8 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];
  }

  else
  {
    entityRemovalSettings = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
    dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];

    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:elementCopy];
    v8 = [v7 mutableCopy];

    fromViewScaleAnimationSettings = [dosidoDeleteIntentAnimationSettings fromViewScaleAnimationSettings];
    [v8 setLayoutSettings:fromViewScaleAnimationSettings];

    fromViewAlphaAnimationSettings = [dosidoDeleteIntentAnimationSettings fromViewAlphaAnimationSettings];
    [v8 setOpacitySettings:fromViewAlphaAnimationSettings];
  }

  return v8;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  topMostLayoutElements = [(SBEntityRemovalCrossblurSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v4 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:event];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_appLayout];

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_appLayout isEqual:layoutCopy]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v10 = 1.0;
    if (self->_animateOpacity)
    {
      entityRemovalSettings = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      dosidoDeleteIntentAnimationSettings = [entityRemovalSettings dosidoDeleteIntentAnimationSettings];
      [dosidoDeleteIntentAnimationSettings fromViewFinalAlpha];
      v10 = v14;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v15 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v10 = v9;
  }

  return v10;
}

@end