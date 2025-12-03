@interface SBMoveFloatingOverFullScreenGestureSwitcherModifier
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBMoveFloatingOverFullScreenGestureSwitcherModifier

- (id)handleTransitionEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
  eventCopy = event;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sbf_isLowEndForSlideOverMoveGesture = [currentDevice sbf_isLowEndForSlideOverMoveGesture];

  if (sbf_isLowEndForSlideOverMoveGesture)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(1u, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
    v7 = [(SBMoveFloatingOverFullScreenGestureSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

@end