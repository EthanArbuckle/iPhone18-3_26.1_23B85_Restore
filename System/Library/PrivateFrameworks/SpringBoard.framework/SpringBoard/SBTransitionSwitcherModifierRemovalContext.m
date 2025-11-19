@interface SBTransitionSwitcherModifierRemovalContext
- (SBTransitionSwitcherModifierRemovalContext)initWithAnimationStyle:(int64_t)a3 displayItem:(id)a4;
@end

@implementation SBTransitionSwitcherModifierRemovalContext

- (SBTransitionSwitcherModifierRemovalContext)initWithAnimationStyle:(int64_t)a3 displayItem:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBTransitionSwitcherModifierRemovalContext;
  v9 = [(SBTransitionSwitcherModifierRemovalContext *)&v11 init];
  if (v9)
  {
    if (!v8)
    {
      [SBTransitionSwitcherModifierRemovalContext initWithAnimationStyle:a2 displayItem:v9];
    }

    v9->_animationStyle = a3;
    objc_storeStrong(&v9->_displayItem, a4);
  }

  return v9;
}

- (void)initWithAnimationStyle:(uint64_t)a1 displayItem:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTransitionSwitcherModifierRemovalContext.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end