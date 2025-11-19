@interface SBContinuousExposeDragAndDropGestureRootSwitcherModifier
- (SBContinuousExposeDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 appLayout:(id)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleTransitionEvent:(id)a3;
@end

@implementation SBContinuousExposeDragAndDropGestureRootSwitcherModifier

- (SBContinuousExposeDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 appLayout:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeDragAndDropGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:a3];
  if (v9)
  {
    if (a3 == 3 && !v8)
    {
      [SBContinuousExposeDragAndDropGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 appLayout:v9];
    }

    objc_storeStrong(&v9->_appLayout, a4);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v5 = a3;
  if ([(SBGestureRootSwitcherModifier *)self currentEnvironmentMode]== 3)
  {
    v6 = [(SBContinuousExposeDragAndDropGestureRootSwitcherModifier *)self maximumNumberOfScenesOnStage];
    v7 = [(SBAppLayout *)self->_appLayout allItems];
    v8 = [v7 count];

    if (v8 >= v6)
    {
      v11 = [(SBAppLayout *)self->_appLayout allItems];
      v12 = [(SBContinuousExposeDragAndDropGestureRootSwitcherModifier *)self layoutAttributesMapForAppLayout:self->_appLayout];
      v13 = SBDisplayItemDescendingZOrderComparator(v12);
      v14 = [v11 sortedArrayUsingComparator:v13];

      v9 = [v14 lastObject];
    }

    else
    {
      v9 = 0;
    }

    v15 = [SBContinuousExposeAppDragAndDropGestureSwitcherModifier alloc];
    v16 = [v5 gestureID];
    v10 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)v15 initWithGestureID:v16 appLayout:self->_appLayout displayItemThatWouldBeEvicted:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)handleTransitionEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeDragAndDropGestureRootSwitcherModifier;
  v3 = a3;
  v4 = [(SBGestureRootSwitcherModifier *)&v10 handleTransitionEvent:v3];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ handling drag and drop initiated transition.", v7];
  [v3 handleWithReason:v8];

  return v4;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 appLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeDragAndDropGestureRootSwitcherModifier.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end