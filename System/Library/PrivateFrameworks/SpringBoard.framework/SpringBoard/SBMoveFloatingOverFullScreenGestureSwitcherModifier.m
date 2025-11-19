@interface SBMoveFloatingOverFullScreenGestureSwitcherModifier
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (id)handleTransitionEvent:(id)a3;
@end

@implementation SBMoveFloatingOverFullScreenGestureSwitcherModifier

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 == 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sbf_isLowEndForSlideOverMoveGesture];

  if (v6)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(1u, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
    v7 = [(SBMoveFloatingOverFullScreenGestureSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:v4];
  }

  v8 = v7;

  return v8;
}

@end