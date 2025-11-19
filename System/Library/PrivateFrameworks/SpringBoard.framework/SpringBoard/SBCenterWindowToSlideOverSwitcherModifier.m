@interface SBCenterWindowToSlideOverSwitcherModifier
- (BOOL)_shouldBlurAndStretchLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBCenterWindowToSlideOverSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 fromFloatingAppLayout:(id)a6 toFloatingAppLayout:(id)a7 toFloatingConfiguration:(int64_t)a8 direction:(unint64_t)a9;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBCenterWindowToSlideOverSwitcherModifier

- (SBCenterWindowToSlideOverSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 fromFloatingAppLayout:(id)a6 toFloatingAppLayout:(id)a7 toFloatingConfiguration:(int64_t)a8 direction:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v36 = a7;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? toFloatingConfiguration:? direction:?];
    if (v18)
    {
      goto LABEL_3;
    }
  }

  [SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? fromFloatingAppLayout:? toFloatingAppLayout:? toFloatingConfiguration:? direction:?];
LABEL_3:
  v40.receiver = self;
  v40.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v20 = [(SBTransitionSwitcherModifier *)&v40 initWithTransitionID:v16, v36];
  v21 = v20;
  if (v20)
  {
    if (a9 == 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = v17;
    }

    objc_storeStrong(&v20->_fullScreenWithCenterAppLayout, v22);
    v21->_floatingConfiguration = a8;
    if (a9 != 1)
    {
      if (!v19 || a9)
      {
        v21->_kind = 0;
        if (a9)
        {
          goto LABEL_17;
        }

        p_movingAppLayout = &v21->_movingAppLayout;
        v34 = a7;
      }

      else
      {
        v21->_kind = 2;
        v31 = [v37 leafAppLayoutForRole:1];
        movingAppLayout = v21->_movingAppLayout;
        v21->_movingAppLayout = v31;

        objc_storeStrong(&v21->_fullScreenWithoutCenterAppLayout, a5);
        p_movingAppLayout = &v21->_outgoingFloatingAppLayout;
        v34 = a6;
      }

      objc_storeStrong(p_movingAppLayout, v34);
      goto LABEL_17;
    }

    v23 = [v17 itemForLayoutRole:4];

    if (v23)
    {
      v21->_kind = 1;
      v24 = [v18 leafAppLayoutForRole:4];
      v25 = v21->_movingAppLayout;
      v21->_movingAppLayout = v24;

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __168__SBCenterWindowToSlideOverSwitcherModifier_initWithTransitionID_fromAppLayout_toAppLayout_fromFloatingAppLayout_toFloatingAppLayout_toFloatingConfiguration_direction___block_invoke;
      v38[3] = &unk_2783A8C90;
      v26 = v21;
      v39 = v26;
      v27 = [v18 appLayoutWithItemsPassingTest:v38];
      fullScreenWithoutCenterAppLayout = v26->_fullScreenWithoutCenterAppLayout;
      v26->_fullScreenWithoutCenterAppLayout = v27;

      v29 = [v17 leafAppLayoutForRole:4];
      outgoingCenterWindowAppLayout = v26->_outgoingCenterWindowAppLayout;
      v26->_outgoingCenterWindowAppLayout = v29;
    }

    else
    {
      v21->_kind = 0;
    }
  }

LABEL_17:

  return v21;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)transitionWillBegin
{
  v21.receiver = self;
  v21.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v21 transitionWillBegin];
  if (self->_kind)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    if (self->_kind == 2 && !self->_isInSecondStageOfDosidoAnimation)
    {
      v6 = [(SBCenterWindowToSlideOverSwitcherModifier *)self switcherSettings];
      v7 = [v6 floatingSwitcherSettings];
      [v7 overshootPullbackDelayOnscreen];
      v9 = v8;

      UIAnimationDragCoefficient();
      v11 = v10;
      objc_initWeak(&location, self);
      v12 = [SBTimerEventSwitcherEventResponse alloc];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __64__SBCenterWindowToSlideOverSwitcherModifier_transitionWillBegin__block_invoke;
      v18 = &unk_2783AD4A0;
      objc_copyWeak(&v19, &location);
      v13 = [(SBTimerEventSwitcherEventResponse *)v12 initWithDelay:&v15 validator:@"kSBCenterWindowToSlideOverSwitcherModifierDosidoReason" reason:v9 * v11];
      v3 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:v5, v15, v16, v17, v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v3 = v5;
    }
  }

  return v3;
}

BOOL __64__SBCenterWindowToSlideOverSwitcherModifier_transitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBCenterWindowToSlideOverSwitcherModifierDosidoReason"];
  if (v4)
  {
    self->_isInSecondStageOfDosidoAnimation = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v11 adjustedAppLayoutsForAppLayouts:a3];
  v5 = v4;
  if (self->_kind == 1)
  {
    v6 = [v4 indexOfObjectPassingTest:&__block_literal_global_271];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v5 count];
    }

    v7 = [v5 sb_arrayByInsertingOrMovingObject:self->_movingAppLayout toIndex:v6];

    v8 = [v7 sb_arrayByInsertingOrMovingObject:self->_outgoingCenterWindowAppLayout toIndex:v6 + 1];

    v9 = [v8 sb_arrayByInsertingOrMovingObject:self->_fullScreenWithoutCenterAppLayout toIndex:v6 + 2];

    v5 = [v9 sb_arrayByRemovingObject:self->_fullScreenWithCenterAppLayout];
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v3 = [(SBCenterWindowToSlideOverSwitcherModifier *)&v8 visibleAppLayouts];
  v4 = [v3 mutableCopy];

  kind = self->_kind;
  if (kind == 2)
  {
    v6 = &OBJC_IVAR___SBCenterWindowToSlideOverSwitcherModifier__outgoingFloatingAppLayout;
  }

  else
  {
    if (kind != 1)
    {
      goto LABEL_6;
    }

    [v4 removeObject:self->_fullScreenWithCenterAppLayout];
    [v4 addObject:self->_movingAppLayout];
    [v4 addObject:self->_outgoingCenterWindowAppLayout];
    v6 = &OBJC_IVAR___SBCenterWindowToSlideOverSwitcherModifier__fullScreenWithoutCenterAppLayout;
  }

  [v4 addObject:*(&self->super.super.super.super.super.isa + *v6)];
LABEL_6:

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v36.receiver = self;
  v36.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v36 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  kind = self->_kind;
  if (kind == 2)
  {
    v25 = [(SBCenterWindowToSlideOverSwitcherModifier *)self appLayouts];
    v15 = [v25 objectAtIndex:a3];

    if (v15 == self->_outgoingFloatingAppLayout && !self->_isInSecondStageOfDosidoAnimation)
    {
      v26 = [(SBCenterWindowToSlideOverSwitcherModifier *)self medusaSettings];
      [v26 switcherSlideOverDosidoLayoutOvershootMultiplicationFactor];
      v28 = v27;
      v29 = v10 * v27;

      v30 = [(SBCenterWindowToSlideOverSwitcherModifier *)self isRTLEnabled];
      v31 = -(v10 * v28);
      if (!v30)
      {
        v31 = v29;
      }

      if (self->_floatingConfiguration == 1)
      {
        v31 = -v31;
      }

      v6 = v6 + v31;
    }

    goto LABEL_13;
  }

  if (kind == 1)
  {
    v14 = [(SBCenterWindowToSlideOverSwitcherModifier *)self appLayouts];
    v15 = [v14 objectAtIndex:a3];

    if (v15 == self->_outgoingCenterWindowAppLayout || v15 == self->_movingAppLayout)
    {
      fullScreenWithCenterAppLayout = self->_fullScreenWithCenterAppLayout;
      [(SBCenterWindowToSlideOverSwitcherModifier *)self containerViewBounds];
      [(SBCenterWindowToSlideOverSwitcherModifier *)self preferredFrameForLayoutRole:4 inAppLayout:fullScreenWithCenterAppLayout bounds:[(SBCenterWindowToSlideOverSwitcherModifier *)self switcherInterfaceOrientation] interfaceOrientation:v17, v18, v19, v20];
      v6 = v21;
      v8 = v22;
      v10 = v23;
      v12 = v24;
    }

LABEL_13:
  }

  v32 = v6;
  v33 = v8;
  v34 = v10;
  v35 = v12;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v24.receiver = self;
  v24.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v24 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_kind == 1 && (self->_outgoingCenterWindowAppLayout == v11 || self->_movingAppLayout == v11 || self->_fullScreenWithoutCenterAppLayout == v11))
  {
    v19 = height;
    v17 = width;
    v15 = y;
    v13 = x;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)topMostLayoutElements
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v3 = [(SBCenterWindowToSlideOverSwitcherModifier *)&v12 topMostLayoutElements];
  v4 = v3;
  kind = self->_kind;
  if (kind == 2)
  {
    if (self->_isInSecondStageOfDosidoAnimation)
    {
      goto LABEL_7;
    }

    outgoingFloatingAppLayout = self->_outgoingFloatingAppLayout;
    v9 = 0;
  }

  else
  {
    if (kind != 1)
    {
      goto LABEL_7;
    }

    v6 = [v3 sb_arrayByRemovingObject:self->_fullScreenWithCenterAppLayout];

    v7 = [v6 sb_arrayByInsertingOrMovingObject:self->_movingAppLayout toIndex:0];

    v4 = [v7 sb_arrayByInsertingOrMovingObject:self->_outgoingCenterWindowAppLayout toIndex:1];

    outgoingFloatingAppLayout = self->_fullScreenWithoutCenterAppLayout;
    v3 = v4;
    v9 = 2;
  }

  v10 = [v3 sb_arrayByInsertingOrMovingObject:outgoingFloatingAppLayout toIndex:v9];

  v4 = v10;
LABEL_7:

  return v4;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v13 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  kind = self->_kind;
  if (kind == 2)
  {
    if (self->_outgoingFloatingAppLayout == v6 && self->_isInSecondStageOfDosidoAnimation)
    {
      goto LABEL_8;
    }
  }

  else if (kind == 1 && (self->_fullScreenWithoutCenterAppLayout == v6 || self->_outgoingCenterWindowAppLayout == v6))
  {
LABEL_8:
    v10 = [(SBCenterWindowToSlideOverSwitcherModifier *)self medusaSettings];
    [v10 defaultDimmingOpacity];
    v8 = v11;
  }

  return v8;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v12 scaleForIndex:?];
  v6 = v5;
  if (self->_kind == 2)
  {
    v7 = [(SBCenterWindowToSlideOverSwitcherModifier *)self appLayouts];
    v8 = [v7 objectAtIndex:a3];

    if (v8 == self->_outgoingFloatingAppLayout)
    {
      v6 = 1.0;
      if (([(SBCenterWindowToSlideOverSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
      {
        v9 = [(SBCenterWindowToSlideOverSwitcherModifier *)self medusaSettings];
        [v9 switcherSlideOverContentPushInScale];
        v6 = v10;
      }
    }
  }

  return v6;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v12 scaleForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  if (self->_kind == 1 && self->_outgoingCenterWindowAppLayout == v6)
  {
    v8 = 1.0;
    if (([(SBCenterWindowToSlideOverSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
    {
      v9 = [(SBCenterWindowToSlideOverSwitcherModifier *)self medusaSettings];
      [v9 switcherCenterWindowContentPushInScale];
      v8 = v10;
    }
  }

  return v8;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBCenterWindowToSlideOverSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 centerToSlideOverAnimationSettings];
  [v5 setLayoutSettings:v8];

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
  v10 = v9;
  kind = self->_kind;
  if (kind == 1)
  {
    v12 = &OBJC_IVAR___SBCenterWindowToSlideOverSwitcherModifier__outgoingCenterWindowAppLayout;
  }

  else
  {
    if (kind != 2)
    {
      goto LABEL_7;
    }

    v12 = &OBJC_IVAR___SBCenterWindowToSlideOverSwitcherModifier__outgoingFloatingAppLayout;
  }

  if (*(&self->super.super.super.super.super.isa + *v12) == v8)
  {
    v10 = 1.0;
  }

LABEL_7:

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v11 shadowOpacityForLayoutRole:a3 atIndex:?];
  v7 = v6;
  v8 = [(SBCenterWindowToSlideOverSwitcherModifier *)self appLayouts];
  v9 = [v8 objectAtIndex:a4];

  if (v9 == self->_outgoingCenterWindowAppLayout)
  {
    v7 = 0.0;
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v30.receiver = self;
  v30.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v30 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (self->_kind == 1 && (self->_movingAppLayout == v11 || self->_outgoingCenterWindowAppLayout == v11))
  {
    fullScreenWithCenterAppLayout = self->_fullScreenWithCenterAppLayout;
    v29.receiver = self;
    v29.super_class = SBCenterWindowToSlideOverSwitcherModifier;
    [(SBCenterWindowToSlideOverSwitcherModifier *)&v29 cornerRadiiForLayoutRole:4 inAppLayout:fullScreenWithCenterAppLayout withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v13 = v21;
    v15 = v22;
    v17 = v23;
    v19 = v24;
  }

  v25 = v13;
  v26 = v15;
  v27 = v17;
  v28 = v19;
  result.topRight = v28;
  result.bottomRight = v27;
  result.bottomLeft = v26;
  result.topLeft = v25;
  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToSlideOverSwitcherModifier *)&v9 isLayoutRoleBlurred:a3 inAppLayout:v6];
  if ([(SBCenterWindowToSlideOverSwitcherModifier *)self _shouldBlurAndStretchLayoutRole:a3 inAppLayout:v6])
  {
    v7 = [(SBCenterWindowToSlideOverSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v6 = a4;
  [(SBCenterWindowToSlideOverSwitcherModifier *)&v13 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [(SBCenterWindowToSlideOverSwitcherModifier *)self _shouldBlurAndStretchLayoutRole:a3 inAppLayout:v6, v13.receiver, v13.super_class];

  if (a3)
  {
    v9 = [(SBCenterWindowToSlideOverSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  v6 = a4;
  v7 = [(SBCenterWindowToSlideOverSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  LOBYTE(a3) = [(SBCenterWindowToSlideOverSwitcherModifier *)self _shouldBlurAndStretchLayoutRole:a3 inAppLayout:v6, v9.receiver, v9.super_class];

  return (a3 | v7) & 1;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3
{
  retstr->var3 = 0;
  *&retstr->var1.origin.y = 0u;
  *&retstr->var1.size.height = 0u;
  *&retstr->var0 = 0u;
  v6.receiver = self;
  v6.super_class = SBCenterWindowToSlideOverSwitcherModifier;
  result = [(SBSwitcherShelfPresentationAttributes *)&v6 presentationAttributesForShelf:a4];
  retstr->var0 = 0;
  return result;
}

- (BOOL)_shouldBlurAndStretchLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_movingAppLayout == a4)
  {
    return 1;
  }

  return self->_fullScreenWithCenterAppLayout == a4 && a3 == 4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToSlideOverSwitcherModifier.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToSlideOverSwitcherModifier.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end