@interface SBHomeGestureRootFloatingSwitcherModifier
- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)a3;
- (SBHomeGestureRootFloatingSwitcherModifier)initWithMultitaskingModifier:(id)a3 floatingConfiguration:(int64_t)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBHomeGestureRootFloatingSwitcherModifier

- (SBHomeGestureRootFloatingSwitcherModifier)initWithMultitaskingModifier:(id)a3 floatingConfiguration:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBHomeGestureRootFloatingSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_multitaskingModifier, a3);
    v9->_floatingConfiguration = a4;
  }

  return v9;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureRootFloatingSwitcherModifier;
  v4 = [(SBGestureRootSwitcherModifier *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = SBStringForFloatingConfiguration(self->_floatingConfiguration);
  v6 = [v4 appendObject:v5 withName:@"floatingConfiguration"];

  return v4;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v10 = [SBHomeGestureFloatingSwitcherModifier alloc];
  v11 = [v7 gestureID];

  v12 = [(SBHomeGestureFloatingSwitcherModifier *)v10 initWithGestureID:v11 selectedAppLayout:v8 continuingGesture:v6 != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1 floatingConfiguration:self->_floatingConfiguration];

  return v12;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 toFloatingAppLayout];
  v10 = [v7 toFloatingSwitcherVisible];
  v11 = [v7 transitionID];
  if (v10)
  {
    v12 = [SBHomeGestureToSwitcherFloatingSwitcherModifier alloc];
    multitaskingModifier = self->_multitaskingModifier;
    v14 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
    v15 = [(SBHomeGestureToSwitcherFloatingSwitcherModifier *)v12 initWithTransitionID:v11 multitaskingModifier:multitaskingModifier selectedAppLayout:v14];
LABEL_11:
    v33 = v15;
    goto LABEL_12;
  }

  if (!v9)
  {
    v34 = [SBHomeGestureToStashedFloatingSwitcherModifier alloc];
    v14 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
    v15 = -[SBHomeGestureToStashedFloatingSwitcherModifier initWithTransitionID:fromAppLayout:toFloatingConfiguration:](v34, "initWithTransitionID:fromAppLayout:toFloatingConfiguration:", v11, v14, [v7 toFloatingConfiguration]);
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBHomeGestureRootFloatingSwitcherModifier transitionChildModifierForMainTransitionEvent:a2 activeGestureModifier:self];
  }

  v36 = [v8 currentFinalDestination] == 1;
  v14 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v16 = [(SBHomeGestureRootFloatingSwitcherModifier *)self appLayouts];
  v17 = [v16 indexOfObject:v14];
  v18 = [v16 indexOfObject:v9];
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

  v33 = -[SBArcSwipeFloatingSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:floatingConfiguration:direction:needsOvershoot:]([SBArcSwipeFloatingSwitcherModifier alloc], "initWithTransitionID:fromAppLayout:toAppLayout:floatingConfiguration:direction:needsOvershoot:", v11, v14, v9, [v7 toFloatingConfiguration], v36, v19);

LABEL_12:

  return v33;
}

- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)a3
{
  [(SBHomeGestureRootFloatingSwitcherModifier *)self frameForIndex:?];
  [(SBHomeGestureRootFloatingSwitcherModifier *)self scaleForIndex:a3];

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