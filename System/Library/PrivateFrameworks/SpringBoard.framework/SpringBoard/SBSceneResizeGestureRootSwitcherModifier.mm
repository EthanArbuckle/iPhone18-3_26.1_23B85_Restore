@interface SBSceneResizeGestureRootSwitcherModifier
- (SBSceneResizeGestureRootSwitcherModifier)initWithAppLayout:(id)a3 spaceConfiguration:(int64_t)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBSceneResizeGestureRootSwitcherModifier

- (SBSceneResizeGestureRootSwitcherModifier)initWithAppLayout:(id)a3 spaceConfiguration:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBSceneResizeGestureRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, a3);
    v9->_startingSpaceConfiguration = a4;
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v5 = a3;
  v6 = [SBSceneResizeGestureSwitcherModifier alloc];
  v7 = [v5 gestureID];

  v8 = [(SBSceneResizeGestureSwitcherModifier *)v6 initWithGestureID:v7 appLayout:self->_appLayout spaceConfiguration:self->_startingSpaceConfiguration];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [SBSceneResizeTransitionSwitcherModifier alloc];
  v12 = [v6 transitionID];
  v13 = [v6 fromAppLayout];
  v14 = [v6 toAppLayout];

  [v10 _minimumCardWidthForDismissalAction];
  v16 = v15;

  v17 = [(SBSceneResizeTransitionSwitcherModifier *)v11 initWithTransitionID:v12 fromAppLayout:v13 toAppLayout:v14 minimumCardWithForDismissal:v16];

  return v17;
}

- (id)handleTransitionEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBSceneResizeGestureRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureRootSwitcherModifier *)&v9 handleTransitionEvent:v4];
  v6 = [v4 toAppLayout];

  appLayout = self->_appLayout;
  self->_appLayout = v6;

  return v5;
}

@end