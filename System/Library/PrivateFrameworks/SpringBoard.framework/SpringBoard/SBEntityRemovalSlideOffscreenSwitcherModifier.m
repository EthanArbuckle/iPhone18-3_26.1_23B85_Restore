@interface SBEntityRemovalSlideOffscreenSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBEntityRemovalSlideOffscreenSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5 animationSettings:(id)a6 multitaskingModifier:(id)a7;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBEntityRemovalSlideOffscreenSwitcherModifier

- (SBEntityRemovalSlideOffscreenSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5 animationSettings:(id)a6 multitaskingModifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v17 = [(SBTransitionSwitcherModifier *)&v21 initWithTransitionID:v13];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transitionID, a3);
    objc_storeStrong(&v18->_appLayout, a4);
    v18->_direction = a5;
    objc_storeStrong(&v18->_multitaskingModifier, a7);
    objc_storeStrong(&v18->_animationSettings, a6);
    [v15 fromViewSlideOutAnimationDelay];
    v18->_isSecondStage = v19 == 0.0;
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  [(SBChainableModifier *)&v12 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_toHomeRemovalModifier)
    {
      v5 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings defaultAnimationSettings];
      [v5 toViewScaleAndAlphaResetAnimationDelay];
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
  v3 = [(SBTransitionSwitcherModifier *)&v18 transitionWillUpdate];
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
    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v3, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    v3 = v10;
  }

  return v3;
}

BOOL __69__SBEntityRemovalSlideOffscreenSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBEntityRemovalSlideOffsrceenSwitcherModifierSlideDelayReson"];
  if (v4)
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
  v3 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v19 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self windowManagementContext];
    v20 = [v19 isFlexibleWindowingEnabled];

    if (v20)
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
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v35 frameForIndex:a3];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v9 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self->_animationSettings defaultAnimationSettings];
    [v9 fromViewFinalScale];
    v8 = v10;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v12 scaleForIndex:a3];
    v8 = v7;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_appLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v13 anchorPointForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v7 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v7 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([(SBAppLayout *)self->_appLayout isEqual:v9]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v18 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self appLayouts];
    -[SBEntityRemovalSlideOffscreenSwitcherModifier frameForIndex:](self, "frameForIndex:", [v18 indexOfObject:self->_appLayout]);
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![(SBAppLayout *)self->_appLayout isEqual:v7]|| (v8 = 0.5, v9 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v14.receiver = self;
    v14.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (![(SBAppLayout *)self->_appLayout isEqual:v8]|| (v9 = 1.0, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v3 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
  v4 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:a3];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_appLayout];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  if ([v4 switcherLayoutElementType] || !objc_msgSend(v4, "isEqual:", self->_appLayout))
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBEntityRemovalSlideOffscreenSwitcherModifier;
    v5 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:v4];
    v6 = [v5 mutableCopy];

    v7 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)self _layoutSettings];
    [v6 setLayoutSettings:v7];
  }

  return v6;
}

- (id)_layoutSettings
{
  isSecondStage = self->_isSecondStage;
  animationSettings = self->_animationSettings;
  if (isSecondStage)
  {
    v4 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)animationSettings fromViewSlideOutAnimationSettings];
  }

  else
  {
    v5 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)animationSettings defaultAnimationSettings];
    v4 = [v5 fromViewScaleAnimationSettings];
  }

  return v4;
}

@end