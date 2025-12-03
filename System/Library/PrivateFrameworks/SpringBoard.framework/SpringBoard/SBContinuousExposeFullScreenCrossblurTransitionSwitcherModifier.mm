@interface SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout fromAppLayout:(id)appLayout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)_updateLayoutWithAnimationUpdateMode:(int64_t)mode appendResponse:(id)response;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleTimerEvent:(id)event;
- (id)transitionWillUpdate;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier

- (SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier)initWithTransitionID:(id)d toAppLayout:(id)layout fromAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v19.receiver = self;
  v19.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:d];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_toAppLayout, layout);
    objc_storeStrong(&v12->_fromAppLayout, appLayout);
    v12->_animationPhase = 0;
    v13 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [v13 stringWithFormat:@"%@:%@", @"SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifierTimerEventReason", uUIDString];
    timerReason = v12->_timerReason;
    v12->_timerReason = v16;
  }

  return v12;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v20.receiver = self;
  v20.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  [(SBChainableModifier *)&v20 didMoveToParentModifier:?];
  if (modifier)
  {
    appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
    v7 = [appLayouts indexOfObject:self->_toAppLayout];

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
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (!self->_animationPhase)
  {
    v4 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.045];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillUpdate];

    transitionWillUpdate = v5;
  }

  return transitionWillUpdate;
}

- (id)handleTimerEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v15 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:self->_timerReason];
  if (eventCopy)
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

        selfCopy2 = self;
        v11 = 3;
        goto LABEL_12;
      }

      v13 = 1;
    }

    self->_animationPhase = v13;
    v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.01];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    selfCopy2 = self;
    v11 = 2;
LABEL_12:
    v12 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)selfCopy2 _updateLayoutWithAnimationUpdateMode:v11 appendResponse:v9];

    v5 = v8;
LABEL_13:

    v5 = v12;
  }

LABEL_14:

  return v5;
}

- (id)_updateLayoutWithAnimationUpdateMode:(int64_t)mode appendResponse:(id)response
{
  responseCopy = response;
  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:mode];
  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:responseCopy];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

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
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v24 frameForIndex:index];
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

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6])
  {
    goto LABEL_8;
  }

  animationPhase = self->_animationPhase;
  if (animationPhase <= 2)
  {
    switcherSettings = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings crossblurDosidoLargeScale];
LABEL_12:
    toAppLayoutInitialScale = v10;

    goto LABEL_13;
  }

  if (animationPhase == 3)
  {
    v17.receiver = self;
    v17.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v17 scaleForIndex:index];
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
      switcherSettings = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      [animationSettings crossblurDosidoSmallScale];
      goto LABEL_12;
    }

    if (v13)
    {
LABEL_10:
      v16.receiver = self;
      v16.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v16 scaleForIndex:index];
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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (![(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:layoutCopy]|| (v9 = 0.0, self->_animationPhase >= 4))
  {
    if (![(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:layoutCopy])
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
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v13 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
      v9 = v11;
    }
  }

LABEL_8:

  return v9;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_fromAppLayout isEqual:v6]&& self->_animationPhase <= 2)
  {
    v8 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  else if (([(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) != 0 || ![(SBAppLayout *)self->_toAppLayout isEqual:v6]|| self->_animationPhase)
  {
    v16.receiver = self;
    v16.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v16 perspectiveAngleForIndex:index];
    v8 = v9;
    v7 = v10;
  }

  else
  {
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    [windowingConfiguration stripTiltAngle];
    v7 = v15;
    if (userInterfaceLayoutDirection == 1)
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

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, self->_animationPhase >= 3))
  {
    if ([(SBAppLayout *)self->_toAppLayout isEqual:v6]&& !self->_animationPhase)
    {
      userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      if (userInterfaceLayoutDirection == 1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 0.5;
      }

      if (userInterfaceLayoutDirection == 1)
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
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v14 anchorPointForIndex:index];
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

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_fromAppLayout isEqual:v6]&& self->_animationPhase <= 2)
  {
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self scaleForIndex:index];
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
    [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v19 cornerRadiiForIndex:index];
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

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![(SBAppLayout *)self->_fromAppLayout isEqual:v6]|| (v7 = 0.0, self->_animationPhase >= 3))
  {
    if (![(SBAppLayout *)self->_toAppLayout isEqual:v6]|| (v7 = 0.0, self->_animationPhase >= 2))
    {
      v10.receiver = self;
      v10.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
      [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v10 titleAndIconOpacityForIndex:index];
      v7 = v8;
    }
  }

  return v7;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout
{
  layoutCopy = layout;
  if (SBFIsChamoisFullScreenToStripGroupOpacityAvailable())
  {
    v5 = [layoutCopy isEqual:self->_fromAppLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
    v5 = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)&v8 shouldAllowGroupOpacityForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v11 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBContinuousExposeFullScreenCrossblurTransitionSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  crossblurDosidoSettings = [animationSettings crossblurDosidoSettings];
  v9 = [crossblurDosidoSettings copy];

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