@interface SBDismissSiriSwitcherModifier
- (id)_eventResponseForGestureModifierEvent:(id)event;
- (id)handleGestureEvent:(id)event;
@end

@implementation SBDismissSiriSwitcherModifier

- (id)handleGestureEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBDismissSiriSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleGestureEvent:eventCopy];
  v6 = [(SBDismissSiriSwitcherModifier *)self _eventResponseForGestureModifierEvent:eventCopy, v10.receiver, v10.super_class];

  if (v6)
  {
    v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)_eventResponseForGestureModifierEvent:(id)event
{
  eventCopy = event;
  [eventCopy translationInContainerView];
  v5 = v4;
  v7 = v6;
  [eventCopy velocityInContainerView];
  v9 = v8;
  v11 = v10;

  if ([SBAssistantController shouldDismissSiriForGestureTranslation:v5 velocity:v7, v9, v11])
  {
    v12 = objc_alloc_init(SBDismissSiriSwitcherEventResponse);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end