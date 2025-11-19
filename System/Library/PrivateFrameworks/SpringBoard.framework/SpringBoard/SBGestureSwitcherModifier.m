@interface SBGestureSwitcherModifier
- (SBGestureSwitcherModifier)initWithGestureID:(id)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
@end

@implementation SBGestureSwitcherModifier

- (SBGestureSwitcherModifier)initWithGestureID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureID, a3);
    v7->_gesturePhase = 0;
  }

  return v7;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBGestureSwitcherModifier;
  v3 = [(SBGestureSwitcherModifier *)&v6 animationAttributesForLayoutElement:a3];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:5];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBGestureSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 isGestureEvent] && (objc_msgSend(v4, "gestureID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", self->_gestureID), v5, (v6 & 1) == 0))
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
    v7 = [(SBChainableModifier *)&v12 handleEvent:v4];
  }

  return v7;
}

- (id)handleGestureEvent:(id)a3
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SBGestureSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v15 handleGestureEvent:v6];
  v8 = [v6 gestureID];
  v9 = [v8 isEqual:self->_gestureID];

  if (v9)
  {
    v10 = [v6 phase];
    v11 = v10;
    if (v10 < self->_gesturePhase)
    {
      [(SBGestureSwitcherModifier *)v10 handleGestureEvent:a2, self];
    }

    self->_gesturePhase = v11;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v12 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:v7];

      v7 = v13;
    }

    objc_storeStrong(&self->_lastGestureEvent, a3);
  }

  return v7;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if (([v4 isGestureInitiated] & 1) == 0 && (objc_msgSend(v4, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(v4, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:v4];

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBGestureSwitcherModifier;
  v4 = [(SBChainableModifier *)&v7 descriptionBuilderWithMultilinePrefix:a3];
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