@interface SBContinuousExposeDragAndDropGestureRootSwitcherModifier
- (SBContinuousExposeDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode appLayout:(id)layout;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBContinuousExposeDragAndDropGestureRootSwitcherModifier

- (SBContinuousExposeDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode appLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeDragAndDropGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:mode];
  if (v9)
  {
    if (mode == 3 && !layoutCopy)
    {
      [SBContinuousExposeDragAndDropGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 appLayout:v9];
    }

    objc_storeStrong(&v9->_appLayout, layout);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  if ([(SBGestureRootSwitcherModifier *)self currentEnvironmentMode]== 3)
  {
    maximumNumberOfScenesOnStage = [(SBContinuousExposeDragAndDropGestureRootSwitcherModifier *)self maximumNumberOfScenesOnStage];
    allItems = [(SBAppLayout *)self->_appLayout allItems];
    v8 = [allItems count];

    if (v8 >= maximumNumberOfScenesOnStage)
    {
      allItems2 = [(SBAppLayout *)self->_appLayout allItems];
      v12 = [(SBContinuousExposeDragAndDropGestureRootSwitcherModifier *)self layoutAttributesMapForAppLayout:self->_appLayout];
      v13 = SBDisplayItemDescendingZOrderComparator(v12);
      v14 = [allItems2 sortedArrayUsingComparator:v13];

      lastObject = [v14 lastObject];
    }

    else
    {
      lastObject = 0;
    }

    v15 = [SBContinuousExposeAppDragAndDropGestureSwitcherModifier alloc];
    gestureID = [eventCopy gestureID];
    v10 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)v15 initWithGestureID:gestureID appLayout:self->_appLayout displayItemThatWouldBeEvicted:lastObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)handleTransitionEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeDragAndDropGestureRootSwitcherModifier;
  eventCopy = event;
  v4 = [(SBGestureRootSwitcherModifier *)&v10 handleTransitionEvent:eventCopy];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ handling drag and drop initiated transition.", v7];
  [eventCopy handleWithReason:v8];

  return v4;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 appLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeDragAndDropGestureRootSwitcherModifier.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end