@interface SBEntityRemovalCrossblurSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBEntityRemovalCrossblurSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 multitaskingModifier:(id)a5;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBEntityRemovalCrossblurSwitcherModifier

- (SBEntityRemovalCrossblurSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 multitaskingModifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v15 initWithTransitionID:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transitionID, a3);
    objc_storeStrong(&v13->_appLayout, a4);
    objc_storeStrong(&v13->_multitaskingModifier, a5);
  }

  return v13;
}

- (void)didMoveToParentModifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  [(SBChainableModifier *)&v13 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_toHomeRemovalModifier)
    {
      v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      v6 = [v5 dosidoDeleteIntentAnimationSettings];
      [v6 toViewScaleAndAlphaResetAnimationDelay];
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
  v3 = [(SBTransitionSwitcherModifier *)&v20 transitionWillUpdate];
  if (!SBReduceMotion())
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout shouldBlur:1 animationUpdateMode:3];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v5;
  }

  objc_initWeak(&location, self);
  v6 = [SBTimerEventSwitcherEventResponse alloc];
  v7 = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
  v8 = [v7 dosidoDeleteIntentAnimationSettings];
  [v8 fromViewAlphaAnimationDelay];
  v10 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __64__SBEntityRemovalCrossblurSwitcherModifier_transitionWillUpdate__block_invoke;
  v17 = &unk_2783AD4A0;
  objc_copyWeak(&v18, &location);
  v11 = [(SBTimerEventSwitcherEventResponse *)v6 initWithDelay:&v14 validator:@"kSBEntityRemovalCrossblurSwitcherModifierAlphaAnimationDelayReason" reason:v10];

  v12 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v11 toResponse:v3, v14, v15, v16, v17];

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

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBEntityRemovalCrossblurSwitcherModifierAlphaAnimationDelayReason"];
  if (v4)
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
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout shouldBlur:0 animationUpdateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v5;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v3 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v19 = [(SBEntityRemovalCrossblurSwitcherModifier *)self windowManagementContext];
    v20 = [v19 isFlexibleWindowingEnabled];

    if (v20)
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
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v26 frameForIndex:a3];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = 1.0;
    if (!SBReduceMotion())
    {
      v10 = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      v11 = [v10 dosidoDeleteIntentAnimationSettings];
      [v11 fromViewFinalScale];
      v8 = v12;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 scaleForIndex:a3];
    v8 = v7;
  }

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_appLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, [(SBTransitionSwitcherModifier *)self isPreparingLayout]))
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 anchorPointForIndex:a3];
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
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_appLayout isEqual:v6]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
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
    v18 = [(SBEntityRemovalCrossblurSwitcherModifier *)self appLayouts];
    -[SBEntityRemovalCrossblurSwitcherModifier frameForIndex:](self, "frameForIndex:", [v18 indexOfObject:self->_appLayout]);
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v27 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
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
    v14.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  if ([v4 switcherLayoutElementType] || !objc_msgSend(v4, "isEqual:", self->_appLayout))
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v8 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  }

  else
  {
    v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
    v6 = [v5 dosidoDeleteIntentAnimationSettings];

    v13.receiver = self;
    v13.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:v4];
    v8 = [v7 mutableCopy];

    v9 = [v6 fromViewScaleAnimationSettings];
    [v8 setLayoutSettings:v9];

    v10 = [v6 fromViewAlphaAnimationSettings];
    [v8 setOpacitySettings:v10];
  }

  return v8;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v3 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalCrossblurSwitcherModifier;
  v4 = [(SBEntityRemovalCrossblurSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:a3];
  v5 = [v4 sb_arrayByAddingOrMovingObject:self->_appLayout];

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if ([(SBAppLayout *)self->_appLayout isEqual:v8]&& ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v10 = 1.0;
    if (self->_animateOpacity)
    {
      v12 = [(SBEntityRemovalCrossblurSwitcherModifier *)self entityRemovalSettings];
      v13 = [v12 dosidoDeleteIntentAnimationSettings];
      [v13 fromViewFinalAlpha];
      v10 = v14;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBEntityRemovalCrossblurSwitcherModifier;
    [(SBEntityRemovalCrossblurSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v10 = v9;
  }

  return v10;
}

@end