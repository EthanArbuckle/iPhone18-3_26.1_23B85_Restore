@interface SBPulseTransitionSwitcherModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (SBPulseTransitionSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
@end

@implementation SBPulseTransitionSwitcherModifier

- (SBPulseTransitionSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBPulseTransitionSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:d];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBPulseTransitionSwitcherModifier initWithTransitionID:a2 appLayout:v9];
    }

    objc_storeStrong(&v9->_appLayout, layout);
  }

  return v9;
}

- (id)transitionWillUpdate
{
  v11.receiver = self;
  v11.super_class = SBPulseTransitionSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v11 transitionWillUpdate];
  self->_shouldScaleIn = 1;
  switcherSettings = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings pulseSecondStageDelay];
  v7 = v6;

  v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"Pulse" reason:v7];
  v9 = SBAppendSwitcherModifierResponse(v8, transitionWillUpdate);

  return v9;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBPulseTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"Pulse"];
  if (eventCopy)
  {
    self->_shouldScaleIn = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (double)scaleForIndex:(unint64_t)index
{
  v15.receiver = self;
  v15.super_class = SBPulseTransitionSwitcherModifier;
  [(SBPulseTransitionSwitcherModifier *)&v15 scaleForIndex:?];
  v6 = v5;
  if (self->_shouldScaleIn)
  {
    appLayouts = [(SBPulseTransitionSwitcherModifier *)self appLayouts];
    v8 = [appLayouts objectAtIndex:index];
    v9 = [v8 isEqual:self->_appLayout];

    if (v9)
    {
      switcherSettings = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      [animationSettings pulseScale];
      v13 = v12;

      return v6 * v13;
    }
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v10.receiver = self;
  v10.super_class = SBPulseTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBPulseTransitionSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  pulseScaleSettings = [animationSettings pulseScaleSettings];
  [v5 setLayoutSettings:pulseScaleSettings];

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  if (self->_appLayout == layout)
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

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBPulseTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPulseTransitionSwitcherModifier;
    v7 = [(SBPulseTransitionSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBPulseTransitionSwitcherModifier;
  topMostLayoutElements = [(SBPulseTransitionSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_appLayout toIndex:0];

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPulseTransitionSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end