@interface SBContinuousExposeFullScreenToStripTransitionSwitcherModifier
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)frameForIconOverlayInAppLayout:(id)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBContinuousExposeFullScreenToStripTransitionSwitcherModifier)initWithTransitionID:(id)a3 outgoingAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillBegin;
@end

@implementation SBContinuousExposeFullScreenToStripTransitionSwitcherModifier

- (SBContinuousExposeFullScreenToStripTransitionSwitcherModifier)initWithTransitionID:(id)a3 outgoingAppLayout:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outgoingAppLayout, a4);
    v9->_animationPhase = 0;
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 stringWithFormat:@"%@:%@", @"SBContinuousExposeFullScreenToStripTransitionSwitcherModifierTimerEventReason", v12];
    timerReason = v9->_timerReason;
    v9->_timerReason = v13;
  }

  return v9;
}

- (id)transitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v8 transitionWillBegin];
  if (!self->_animationPhase)
  {
    v4 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.14];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v6 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_timerReason reason:0.14];
    v3 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v13 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:self->_timerReason];
  if (v4)
  {
    animationPhase = self->_animationPhase;
    if (animationPhase)
    {
      if (animationPhase != 1)
      {
        goto LABEL_7;
      }

      v8 = 3;
      v9 = 2;
    }

    else
    {
      v8 = 2;
      v9 = 1;
    }

    self->_animationPhase = v9;
    v10 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:v8];
    v11 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v10 toResponse:v5];

    v5 = v11;
  }

LABEL_7:

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_outgoingAppLayout isEqual:v6])
  {
    goto LABEL_5;
  }

  animationPhase = self->_animationPhase;
  if (animationPhase == 1)
  {
    v30.receiver = self;
    v30.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v30 frameForIndex:a3];
    v14 = v25;
    v16 = v26;
    v10 = v27 * 0.1;
    v12 = v28 * 1.065;
    goto LABEL_6;
  }

  if (animationPhase)
  {
LABEL_5:
    v29.receiver = self;
    v29.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v29 frameForIndex:a3];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  else
  {
    v8 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
    [v8 boundingBox];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

LABEL_6:

  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)frameForIconOverlayInAppLayout:(id)a3
{
  outgoingAppLayout = self->_outgoingAppLayout;
  v5 = a3;
  if ([(SBAppLayout *)outgoingAppLayout isEqual:v5])
  {
    v6 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v5];

    [v6 boundingBox];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v23 frameForIconOverlayInAppLayout:v5];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_outgoingAppLayout isEqual:v6]&& !self->_animationPhase)
  {
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_outgoingAppLayout isEqual:v6]|| (v7 = 0.5, v8 = 0.5, self->_animationPhase >= 2))
  {
    v13.receiver = self;
    v13.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v13 anchorPointForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_outgoingAppLayout isEqual:v6]&& !self->_animationPhase)
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_outgoingAppLayout isEqual:v6])
  {
    goto LABEL_5;
  }

  animationPhase = self->_animationPhase;
  if (animationPhase == 1)
  {
    v11 = 0.32;
    goto LABEL_6;
  }

  if (animationPhase)
  {
LABEL_5:
    v14.receiver = self;
    v14.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v14 scaleForIndex:a3];
    v11 = v12;
  }

  else
  {
    v8 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self switcherSettings];
    v9 = [v8 animationSettings];
    [v9 crossblurDosidoSmallScale];
    v11 = v10;
  }

LABEL_6:

  return v11;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (![(SBAppLayout *)self->_outgoingAppLayout isEqual:v8]|| (v9 = 0.0, self->_animationPhase >= 2))
  {
    v12.receiver = self;
    v12.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_outgoingAppLayout isEqual:v6]|| (v7 = 0.0, self->_animationPhase >= 2))
  {
    v10.receiver = self;
    v10.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)a3
{
  v4 = a3;
  if (SBFIsChamoisFullScreenToStripGroupOpacityAvailable())
  {
    v5 = [(SBAppLayout *)self->_outgoingAppLayout isEqual:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
    v5 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)&v8 shouldAllowGroupOpacityForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBContinuousExposeFullScreenToStripTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v15 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 crossblurDosidoSettings];
  v9 = [v8 copy];

  [v9 setResponse:0.4];
  [v9 setDampingRatio:1.0];
  [v5 setLayoutUpdateMode:3];
  [v5 setLayoutSettings:v9];
  v10 = [(SBContinuousExposeFullScreenToStripTransitionSwitcherModifier *)self switcherSettings];
  v11 = [v10 animationSettings];
  v12 = [v11 crossblurDosidoSettings];
  v13 = [v12 copy];

  [v13 setResponse:0.15];
  [v5 setOpacitySettings:v13];

  return v5;
}

@end