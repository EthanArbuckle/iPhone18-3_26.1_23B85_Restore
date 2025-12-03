@interface SBDragAndDropGestureRootSwitcherModifier
- (SBDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible fullScreenAppLayout:(id)layout;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleSwitcherDropEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
@end

@implementation SBDragAndDropGestureRootSwitcherModifier

- (SBDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode floatingSwitcherVisible:(BOOL)visible fullScreenAppLayout:(id)layout
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBDragAndDropGestureRootSwitcherModifier;
  v11 = [(SBGestureRootSwitcherModifier *)&v13 initWithStartingEnvironmentMode:mode];
  if (v11)
  {
    if (mode == 3 && !layoutCopy)
    {
      [SBDragAndDropGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 floatingSwitcherVisible:v11 fullScreenAppLayout:?];
    }

    v11->_floatingSwitcherVisible = visible;
    objc_storeStrong(&v11->_fullScreenAppLayout, layout);
  }

  return v11;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  if (currentEnvironmentMode == 2)
  {
    v10 = [SBCardDragAndDropGestureSwitcherModifier alloc];
    gestureID = [eventCopy gestureID];
    v9 = [(SBCardDragAndDropGestureSwitcherModifier *)v10 initWithGestureID:gestureID];
    goto LABEL_5;
  }

  if (currentEnvironmentMode == 3)
  {
    v7 = [SBAppDragAndDropGestureSwitcherModifier alloc];
    gestureID = [eventCopy gestureID];
    v9 = [(SBAppDragAndDropGestureSwitcherModifier *)v7 initWithGestureID:gestureID floatingSwitcherVisible:self->_floatingSwitcherVisible fullScreenAppLayout:self->_fullScreenAppLayout];
LABEL_5:
    v11 = v9;

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)handleSwitcherDropEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    v5 = [SBCardDropSwitcherModifier alloc];
    context = [eventCopy context];
    v7 = [(SBCardDropSwitcherModifier *)v5 initWithDropContext:context];

    [(SBChainableModifier *)self addChildModifier:v7];
  }

  v10.receiver = self;
  v10.super_class = SBDragAndDropGestureRootSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleSwitcherDropEvent:eventCopy];

  return v8;
}

- (id)handleTransitionEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBDragAndDropGestureRootSwitcherModifier;
  eventCopy = event;
  v4 = [(SBGestureRootSwitcherModifier *)&v10 handleTransitionEvent:eventCopy];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ handling drag and drop initiated transition.", v7];
  [eventCopy handleWithReason:v8];

  return v4;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 floatingSwitcherVisible:(uint64_t)a2 fullScreenAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDragAndDropGestureRootSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

@end