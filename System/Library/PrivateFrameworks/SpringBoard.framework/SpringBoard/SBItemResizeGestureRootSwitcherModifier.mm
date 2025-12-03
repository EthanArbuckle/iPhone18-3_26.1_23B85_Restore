@interface SBItemResizeGestureRootSwitcherModifier
- (SBItemResizeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode selectedLayoutRole:(int64_t)role;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBItemResizeGestureRootSwitcherModifier

- (SBItemResizeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode selectedLayoutRole:(int64_t)role
{
  v6.receiver = self;
  v6.super_class = SBItemResizeGestureRootSwitcherModifier;
  result = [(SBGestureRootSwitcherModifier *)&v6 initWithStartingEnvironmentMode:mode];
  if (result)
  {
    result->_selectedLayoutRole = role;
  }

  return result;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v5 = [SBFlexibleWindowingItemResizeGestureSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v7 = [(SBFlexibleWindowingItemResizeGestureSwitcherModifier *)v5 initWithGestureID:gestureID];

  return v7;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  modifierCopy = modifier;
  eventCopy = event;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, modifierCopy);

  v10 = [SBItemResizeTransitionSwitcherModifier alloc];
  transitionID = [eventCopy transitionID];

  selectedAppLayout = [v9 selectedAppLayout];
  v13 = [(SBItemResizeTransitionSwitcherModifier *)v10 initWithTransitionID:transitionID selectedAppLayout:selectedAppLayout selectedLayoutRole:self->_selectedLayoutRole];

  return v13;
}

@end