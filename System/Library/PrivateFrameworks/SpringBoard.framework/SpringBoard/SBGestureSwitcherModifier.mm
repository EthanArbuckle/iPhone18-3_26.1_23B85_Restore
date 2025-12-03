@interface SBGestureSwitcherModifier
- (SBGestureSwitcherModifier)initWithGestureID:(id)d;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBGestureSwitcherModifier

- (SBGestureSwitcherModifier)initWithGestureID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureID, d);
    v7->_gesturePhase = 0;
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SBGestureSwitcherModifier;
  v3 = [(SBGestureSwitcherModifier *)&v6 animationAttributesForLayoutElement:element];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:5];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(SBGestureSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isGestureEvent] && (objc_msgSend(eventCopy, "gestureID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", self->_gestureID), v5, (v6 & 1) == 0))
  {
    lastGestureEvent = self->_lastGestureEvent;
    if (lastGestureEvent && self->_gesturePhase != 3)
    {
      [(SBGestureSwitcherModifierEvent *)lastGestureEvent setPhase:3];
      v9 = self->_lastGestureEvent;
      v13.receiver = self;
      v13.super_class = SBGestureSwitcherModifier;
      v7 = [(SBChainableModifier *)&v13 handleEvent:v9];
    }

    else
    {
      v7 = 0;
    }

    [(SBChainableModifier *)self setState:1];
    v10 = self->_lastGestureEvent;
    self->_lastGestureEvent = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBGestureSwitcherModifier;
    v7 = [(SBChainableModifier *)&v12 handleEvent:eventCopy];
  }

  return v7;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBGestureSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v15 handleGestureEvent:eventCopy];
  gestureID = [eventCopy gestureID];
  v9 = [gestureID isEqual:self->_gestureID];

  if (v9)
  {
    phase = [eventCopy phase];
    v11 = phase;
    if (phase < self->_gesturePhase)
    {
      [(SBGestureSwitcherModifier *)phase handleGestureEvent:a2, self];
    }

    self->_gesturePhase = v11;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v12 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:v7];

      v7 = v13;
    }

    objc_storeStrong(&self->_lastGestureEvent, event);
  }

  return v7;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if (([eventCopy isGestureInitiated] & 1) == 0 && (objc_msgSend(eventCopy, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(eventCopy, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBGestureSwitcherModifier;
  v4 = [(SBChainableModifier *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = SBStringFromGesturePhase(self->_gesturePhase);
  [v4 appendString:v5 withName:@"phase"];

  return v4;
}

- (void)handleGestureEvent:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = SBStringFromGesturePhase(a1);
  v10 = SBStringFromGesturePhase(*a2);
  [v8 handleFailureInMethod:a3 object:a4 file:@"SBGestureSwitcherModifier.m" lineNumber:118 description:{@"Expected the same or a more advanced phase. Got %@, currently %@.", v9, v10}];
}

@end