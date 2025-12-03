@interface SBHomeGestureRootFloatingSwitcherModifier
- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)index;
- (SBHomeGestureRootFloatingSwitcherModifier)initWithMultitaskingModifier:(id)modifier floatingConfiguration:(int64_t)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBHomeGestureRootFloatingSwitcherModifier

- (SBHomeGestureRootFloatingSwitcherModifier)initWithMultitaskingModifier:(id)modifier floatingConfiguration:(int64_t)configuration
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBHomeGestureRootFloatingSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_multitaskingModifier, modifier);
    v9->_floatingConfiguration = configuration;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureRootFloatingSwitcherModifier;
  v4 = [(SBGestureRootSwitcherModifier *)&v8 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = SBStringForFloatingConfiguration(self->_floatingConfiguration);
  v6 = [v4 appendObject:v5 withName:@"floatingConfiguration"];

  return v4;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  modifierCopy = modifier;
  eventCopy = event;
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if (modifierCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v10 = [SBHomeGestureFloatingSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v12 = [(SBHomeGestureFloatingSwitcherModifier *)v10 initWithGestureID:gestureID selectedAppLayout:selectedAppLayout continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1 floatingConfiguration:self->_floatingConfiguration];

  return v12;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  modifierCopy = modifier;
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  transitionID = [eventCopy transitionID];
  if (toFloatingSwitcherVisible)
  {
    v12 = [SBHomeGestureToSwitcherFloatingSwitcherModifier alloc];
    multitaskingModifier = self->_multitaskingModifier;
    selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
    v15 = [(SBHomeGestureToSwitcherFloatingSwitcherModifier *)v12 initWithTransitionID:transitionID multitaskingModifier:multitaskingModifier selectedAppLayout:selectedAppLayout];
LABEL_11:
    v33 = v15;
    goto LABEL_12;
  }

  if (!toFloatingAppLayout)
  {
    v34 = [SBHomeGestureToStashedFloatingSwitcherModifier alloc];
    selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
    v15 = -[SBHomeGestureToStashedFloatingSwitcherModifier initWithTransitionID:fromAppLayout:toFloatingConfiguration:](v34, "initWithTransitionID:fromAppLayout:toFloatingConfiguration:", transitionID, selectedAppLayout, [eventCopy toFloatingConfiguration]);
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBHomeGestureRootFloatingSwitcherModifier transitionChildModifierForMainTransitionEvent:a2 activeGestureModifier:self];
  }

  v36 = [modifierCopy currentFinalDestination] == 1;
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  appLayouts = [(SBHomeGestureRootFloatingSwitcherModifier *)self appLayouts];
  v17 = [appLayouts indexOfObject:selectedAppLayout];
  v18 = [appLayouts indexOfObject:toFloatingAppLayout];
  v19 = 1;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v18;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBHomeGestureRootFloatingSwitcherModifier *)self _frameWithScaleAppliedForIndex:v17];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(SBHomeGestureRootFloatingSwitcherModifier *)self _frameWithScaleAppliedForIndex:v20];
      v39.origin.x = v29;
      v39.origin.y = v30;
      v39.size.width = v31;
      v39.size.height = v32;
      v38.origin.x = v22;
      v38.origin.y = v24;
      v38.size.width = v26;
      v38.size.height = v28;
      v19 = CGRectIntersectsRect(v38, v39);
    }
  }

  v33 = -[SBArcSwipeFloatingSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:floatingConfiguration:direction:needsOvershoot:]([SBArcSwipeFloatingSwitcherModifier alloc], "initWithTransitionID:fromAppLayout:toAppLayout:floatingConfiguration:direction:needsOvershoot:", transitionID, selectedAppLayout, toFloatingAppLayout, [eventCopy toFloatingConfiguration], v36, v19);

LABEL_12:

  return v33;
}

- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)index
{
  [(SBHomeGestureRootFloatingSwitcherModifier *)self frameForIndex:?];
  [(SBHomeGestureRootFloatingSwitcherModifier *)self scaleForIndex:index];

  SBTransformedRectWithScale();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)transitionChildModifierForMainTransitionEvent:(uint64_t)a1 activeGestureModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGestureRootFloatingSwitcherModifier.m" lineNumber:78 description:@"The gesture modifier should be an instance of SBHomeGestureFloatingSwitcherModifier."];
}

@end