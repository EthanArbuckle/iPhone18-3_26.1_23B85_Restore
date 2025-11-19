@interface SBPulseTransitionSwitcherModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (SBPulseTransitionSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
@end

@implementation SBPulseTransitionSwitcherModifier

- (SBPulseTransitionSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBPulseTransitionSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:a3];
  if (v9)
  {
    if (!v8)
    {
      [SBPulseTransitionSwitcherModifier initWithTransitionID:a2 appLayout:v9];
    }

    objc_storeStrong(&v9->_appLayout, a4);
  }

  return v9;
}

- (id)transitionWillUpdate
{
  v11.receiver = self;
  v11.super_class = SBPulseTransitionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillUpdate];
  self->_shouldScaleIn = 1;
  v4 = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
  v5 = [v4 animationSettings];
  [v5 pulseSecondStageDelay];
  v7 = v6;

  v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"Pulse" reason:v7];
  v9 = SBAppendSwitcherModifierResponse(v8, v3);

  return v9;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBPulseTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"Pulse"];
  if (v4)
  {
    self->_shouldScaleIn = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = SBPulseTransitionSwitcherModifier;
  [(SBPulseTransitionSwitcherModifier *)&v15 scaleForIndex:?];
  v6 = v5;
  if (self->_shouldScaleIn)
  {
    v7 = [(SBPulseTransitionSwitcherModifier *)self appLayouts];
    v8 = [v7 objectAtIndex:a3];
    v9 = [v8 isEqual:self->_appLayout];

    if (v9)
    {
      v10 = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
      v11 = [v10 animationSettings];
      [v11 pulseScale];
      v13 = v12;

      return v6 * v13;
    }
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBPulseTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 pulseScaleSettings];
  [v5 setLayoutSettings:v8];

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  if (self->_appLayout == a3)
  {

    return SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = SBPulseTransitionSwitcherModifier;
    return [(SBTransitionSwitcherModifier *)&v6 asyncRenderingAttributesForAppLayout:?];
  }
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBPulseTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPulseTransitionSwitcherModifier;
    v7 = [(SBPulseTransitionSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBPulseTransitionSwitcherModifier;
  v3 = [(SBPulseTransitionSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPulseTransitionSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end