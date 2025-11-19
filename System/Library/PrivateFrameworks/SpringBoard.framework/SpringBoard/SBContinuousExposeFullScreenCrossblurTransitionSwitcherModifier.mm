@interface SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier)initWithTransitionID:(id)a3 toAppLayout:(id)a4 fromAppLayout:(id)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (id)_updateLayoutWithAnimationUpdateMode:(int64_t)a3 appendResponse:(id)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillUpdate;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier

- (SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier)initWithTransitionID:(id)a3 toAppLayout:(id)a4 fromAppLayout:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_toAppLayout, a4);
    objc_storeStrong(&v12->_fromAppLayout, a5);
    v12->_animationPhase = 0;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    v16 = [v13 stringWithFormat:@"%@:%@", @"SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifierTimerEventReason", v15];
    timerReason = v12->_timerReason;
    v12->_timerReason = v16;
  }

  return v12;
}

- (void)didMoveToParentModifier:(id)a3
{
  v20.receiver = self;
  v20.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  [(SBChainableModifier *)&v20 didMoveToParentModifier:?];
  if (a3)
  {
    v6 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
    v7 = [v6 indexOfObject:self->_toAppLayout];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)a2 didMoveToParentModifier:?];
    }

    v19.receiver = self;
    v19.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v19 frameForIndex:v7];
    self->_toAppLayoutInitialFrame.origin.x = v8;
    self->_toAppLayoutInitialFrame.origin.y = v9;
    self->_toAppLayoutInitialFrame.size.width = v10;
    self->_toAppLayoutInitialFrame.size.height = v11;
    v18.receiver = self;
    v18.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v18 scaleForIndex:v7];
    self->_toAppLayoutInitialScale = v12;
    v17.receiver = self;
    v17.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v17 cornerRadiiForIndex:v7];
    self->_toAppLayoutInitialCornerRadius.topLeft = v13;
    self->_toAppLayoutInitialCornerRadius.bottomLeft = v14;
    self->_toAppLayoutInitialCornerRadius.bottomRight = v15;
    self->_toAppLayoutInitialCornerRadius.topRight = v16;
  }
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (!self->_animationPhase)
  {
    v4 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.045];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v5;
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v15 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:self->_timerReason];
  if (v4)
  {
    animationPhase = self->_animationPhase;
    if (animationPhase > 1)
    {
      if (animationPhase != 2)
      {
        if (animationPhase != 3)
        {
          goto LABEL_14;
        }

        self->_animationPhase = 4;
        v12 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self _updateLayoutWithAnimationUpdateMode:3 appendResponse:v5];
        goto LABEL_13;
      }

      v13 = 3;
    }

    else
    {
      if (animationPhase)
      {
        if (animationPhase != 1)
        {
          goto LABEL_14;
        }

        self->_animationPhase = 2;
        v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.25];
        v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

        v10 = self;
        v11 = 3;
        goto LABEL_12;
      }

      v13 = 1;
    }

    self->_animationPhase = v13;
    v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.01];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    v10 = self;
    v11 = 2;
LABEL_12:
    v12 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)v10 _updateLayoutWithAnimationUpdateMode:v11 appendResponse:v9];

    v5 = v8;
LABEL_13:

    v5 = v12;
  }

LABEL_14:

  return v5;
}

- (id)_updateLayoutWithAnimationUpdateMode:(int64_t)a3 appendResponse:(id)a4
{
  v5 = a4;
  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:a3];
  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_fromAppLayout isEqual:v6]&& self->_animationPhase <= 2)
  {
    v7 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
    [v7 boundingBox];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else if ([(SBAppLayout *)self->_toAppLayout isEqual:v6]&& !self->_animationPhase)
  {
    x = self->_toAppLayoutInitialFrame.origin.x;
    y = self->_toAppLayoutInitialFrame.origin.y;
    width = self->_toAppLayoutInitialFrame.size.width;
    height = self->_toAppLayoutInitialFrame.size.height;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v24 frameForIndex:a3];
    x = v16;
    y = v17;
    width = v18;
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6])
  {
    goto LABEL_8;
  }

  animationPhase = self->_animationPhase;
  if (animationPhase <= 2)
  {
    v8 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
    v9 = [v8 animationSettings];
    [v9 crossblurDosidoLargeScale];
LABEL_12:
    toAppLayoutInitialScale = v10;

    goto LABEL_13;
  }

  if (animationPhase == 3)
  {
    v17.receiver = self;
    v17.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v17 scaleForIndex:a3];
    toAppLayoutInitialScale = v11 + -0.02;
  }

  else
  {
LABEL_8:
    if (![(SBAppLayout *)self->_toAppLayout isEqual:v6])
    {
      goto LABEL_10;
    }

    v13 = self->_animationPhase;
    if (v13 == 1)
    {
      v8 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
      v9 = [v8 animationSettings];
      [v9 crossblurDosidoSmallScale];
      goto LABEL_12;
    }

    if (v13)
    {
LABEL_10:
      v16.receiver = self;
      v16.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v16 scaleForIndex:a3];
      toAppLayoutInitialScale = v14;
    }

    else
    {
      toAppLayoutInitialScale = self->_toAppLayoutInitialScale;
    }
  }

LABEL_13:

  return toAppLayoutInitialScale;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (![(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:v8]|| (v9 = 0.0, self->_animationPhase >= 4))
  {
    if (![(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v8])
    {
      goto LABEL_7;
    }

    animationPhase = self->_animationPhase;
    if (!animationPhase)
    {
      v9 = 0.0;
      goto LABEL_8;
    }

    if (animationPhase == 1)
    {
      v9 = 0.1;
    }

    else
    {
LABEL_7:
      v13.receiver = self;
      v13.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v13 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
      v9 = v11;
    }
  }

LABEL_8:

  return v9;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_fromAppLayout isEqual:v6]&& self->_animationPhase <= 2)
  {
    v8 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  else if (([(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) != 0 || ![(SBAppLayout *)self->_toAppLayout isEqual:v6]|| self->_animationPhase)
  {
    v16.receiver = self;
    v16.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v16 perspectiveAngleForIndex:a3];
    v8 = v9;
    v7 = v10;
  }

  else
  {
    v13 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v14 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v14 stripTiltAngle];
    v7 = v15;
    if (v13 == 1)
    {
      v7 = -v15;
    }

    v8 = 0.0;
  }

  v11 = v8;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, self->_animationPhase >= 3))
  {
    if ([(SBAppLayout *)self->_toAppLayout isEqual:v6]&& !self->_animationPhase)
    {
      v13 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      if (v13 == 1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 0.5;
      }

      if (v13 == 1)
      {
        v7 = 0.5;
      }

      else
      {
        v7 = 0.0;
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v14 anchorPointForIndex:a3];
      v7 = v9;
      v8 = v10;
    }
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_fromAppLayout isEqual:v6]&& self->_animationPhase <= 2)
  {
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    if ([(SBAppLayout *)self->_toAppLayout isEqual:v6]&& !self->_animationPhase)
    {
      topLeft = self->_toAppLayoutInitialCornerRadius.topLeft;
      bottomLeft = self->_toAppLayoutInitialCornerRadius.bottomLeft;
      bottomRight = self->_toAppLayoutInitialCornerRadius.bottomRight;
      topRight = self->_toAppLayoutInitialCornerRadius.topRight;
      goto LABEL_8;
    }

    v19.receiver = self;
    v19.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
  }

  topLeft = v7;
  bottomLeft = v8;
  bottomRight = v9;
  topRight = v10;
LABEL_8:

  v15 = topLeft;
  v16 = bottomLeft;
  v17 = bottomRight;
  v18 = topRight;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6]|| (v7 = 0.0, self->_animationPhase >= 3))
  {
    if (![(SBAppLayout *)self->_toAppLayout isEqual:v6]|| (v7 = 0.0, self->_animationPhase >= 2))
    {
      v10.receiver = self;
      v10.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
      v7 = v8;
    }
  }

  return v7;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3
{
  v4 = a3;
  if (SBFIsChamoisFullScreenToStripGroupOpacityAvailable())
  {
    v5 = [v4 isEqual:self->_fromAppLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v8 shouldAllowGroupOpacityForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v11 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 crossblurDosidoSettings];
  v9 = [v8 copy];

  [v9 setResponse:0.45];
  [v9 setDampingRatio:0.92];
  [v5 setLayoutUpdateMode:3];
  [v5 setLayoutSettings:v9];
  [v5 setOpacitySettings:v9];

  return v5;
}

- (void)didMoveToParentModifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier.m" lineNumber:89 description:@"We must know about _toAppLayout"];
}

@end