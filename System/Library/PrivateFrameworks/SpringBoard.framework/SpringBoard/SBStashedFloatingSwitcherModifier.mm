@interface SBStashedFloatingSwitcherModifier
- (SBStashedFloatingSwitcherModifier)initWithFloatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode;
- (id)handleTapSlideOverTongueEvent:(id)event;
@end

@implementation SBStashedFloatingSwitcherModifier

- (SBStashedFloatingSwitcherModifier)initWithFloatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = SBStashedFloatingSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v10 init];
  if (v6)
  {
    v7 = [[SBActiveAppLayoutFloatingSwitcherModifier alloc] initWithActiveAppLayout:0 fullScreenAppLayout:0 floatingConfiguration:configuration environmentMode:mode];
    activeModifier = v6->_activeModifier;
    v6->_activeModifier = v7;

    [(SBChainableModifier *)v6 addChildModifier:v6->_activeModifier];
  }

  return v6;
}

- (id)handleTapSlideOverTongueEvent:(id)event
{
  eventCopy = event;
  appLayouts = [(SBStashedFloatingSwitcherModifier *)self appLayouts];
  firstObject = [appLayouts firstObject];
  v7 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:firstObject];
  v8 = [v7 mutableCopy];

  [v8 setSource:60];
  v9 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v8 gestureInitiated:0];
  v13.receiver = self;
  v13.super_class = SBStashedFloatingSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v13 handleTapSlideOverTongueEvent:eventCopy];

  v11 = SBAppendSwitcherModifierResponse(v9, v10);

  return v11;
}

@end