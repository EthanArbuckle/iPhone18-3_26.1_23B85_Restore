@interface SBItemResizeGestureRootSwitcherModifier
- (SBItemResizeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 selectedLayoutRole:(int64_t)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBItemResizeGestureRootSwitcherModifier

- (SBItemResizeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 selectedLayoutRole:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBItemResizeGestureRootSwitcherModifier;
  result = [(SBGestureRootSwitcherModifier *)&v6 initWithStartingEnvironmentMode:a3];
  if (result)
  {
    result->_selectedLayoutRole = a4;
  }

  return result;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v4 = a3;
  v5 = [SBFlexibleWindowingItemResizeGestureSwitcherModifier alloc];
  v6 = [v4 gestureID];

  v7 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)v5 initWithGestureID:v6];

  return v7;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, v6);

  v10 = [SBItemResizeTransitionSwitcherModifier alloc];
  v11 = [v7 transitionID];

  v12 = [v9 selectedAppLayout];
  v13 = [(SBItemResizeTransitionSwitcherModifier *)v10 initWithTransitionID:v11 selectedAppLayout:v12 selectedLayoutRole:self->_selectedLayoutRole];

  return v13;
}

@end