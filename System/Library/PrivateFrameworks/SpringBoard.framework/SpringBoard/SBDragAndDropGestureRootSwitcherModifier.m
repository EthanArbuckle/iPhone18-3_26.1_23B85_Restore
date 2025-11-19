@interface SBDragAndDropGestureRootSwitcherModifier
- (SBDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 floatingSwitcherVisible:(BOOL)a4 fullScreenAppLayout:(id)a5;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleSwitcherDropEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
@end

@implementation SBDragAndDropGestureRootSwitcherModifier

- (SBDragAndDropGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 floatingSwitcherVisible:(BOOL)a4 fullScreenAppLayout:(id)a5
{
  v10 = a5;
  v13.receiver = self;
  v13.super_class = SBDragAndDropGestureRootSwitcherModifier;
  v11 = [(SBGestureRootSwitcherModifier *)&v13 initWithStartingEnvironmentMode:a3];
  if (v11)
  {
    if (a3 == 3 && !v10)
    {
      [SBDragAndDropGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 floatingSwitcherVisible:v11 fullScreenAppLayout:?];
    }

    v11->_floatingSwitcherVisible = a4;
    objc_storeStrong(&v11->_fullScreenAppLayout, a5);
  }

  return v11;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v5 = a3;
  v6 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  if (v6 == 2)
  {
    v10 = [SBCardDragAndDropGestureSwitcherModifier alloc];
    v8 = [v5 gestureID];
    v9 = [(SBCardDragAndDropGestureSwitcherModifier *)v10 initWithGestureID:v8];
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    v7 = [SBAppDragAndDropGestureSwitcherModifier alloc];
    v8 = [v5 gestureID];
    v9 = [(SBAppDragAndDropGestureSwitcherModifier *)v7 initWithGestureID:v8 floatingSwitcherVisible:self->_floatingSwitcherVisible fullScreenAppLayout:self->_fullScreenAppLayout];
LABEL_5:
    v11 = v9;

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)handleSwitcherDropEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    v5 = [SBCardDropSwitcherModifier alloc];
    v6 = [v4 context];
    v7 = [(SBCardDropSwitcherModifier *)v5 initWithDropContext:v6];

    [(SBChainableModifier *)self addChildModifier:v7];
  }

  v10.receiver = self;
  v10.super_class = SBDragAndDropGestureRootSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleSwitcherDropEvent:v4];

  return v8;
}

- (id)handleTransitionEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBDragAndDropGestureRootSwitcherModifier;
  v3 = a3;
  v4 = [(SBGestureRootSwitcherModifier *)&v10 handleTransitionEvent:v3];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ handling drag and drop initiated transition.", v7];
  [v3 handleWithReason:v8];

  return v4;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 floatingSwitcherVisible:(uint64_t)a2 fullScreenAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDragAndDropGestureRootSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

@end