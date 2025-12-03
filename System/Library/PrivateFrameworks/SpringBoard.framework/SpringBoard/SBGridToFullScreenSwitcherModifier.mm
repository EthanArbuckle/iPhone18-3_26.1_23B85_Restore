@interface SBGridToFullScreenSwitcherModifier
- (SBGridToFullScreenSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction fullScreenAppLayout:(id)layout gridModifier:(id)modifier;
- (id)appLayoutToScrollToBeforeTransitioning;
- (id)transitionWillBegin;
@end

@implementation SBGridToFullScreenSwitcherModifier

- (SBGridToFullScreenSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction fullScreenAppLayout:(id)layout gridModifier:(id)modifier
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  layoutCopy = layout;
  modifierCopy = modifier;
  v19.receiver = self;
  v19.super_class = SBGridToFullScreenSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:dCopy];
  if (v14)
  {
    if (layoutCopy)
    {
      if (modifierCopy)
      {
LABEL_4:
        v14->_direction = direction;
        objc_storeStrong(&v14->_fullScreenAppLayout, layout);
        v15 = [SBGridToActiveAppLayoutsSwitcherModifier alloc];
        v20[0] = layoutCopy;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        v17 = [(SBGridToActiveAppLayoutsSwitcherModifier *)v15 initWithTransitionID:dCopy direction:direction activeAppLayouts:v16 gridModifier:modifierCopy];

        [(SBChainableModifier *)v14 addChildModifier:v17];
        goto LABEL_5;
      }
    }

    else
    {
      [SBGridToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v14 fullScreenAppLayout:? gridModifier:?];
      if (modifierCopy)
      {
        goto LABEL_4;
      }
    }

    [SBGridToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v14 fullScreenAppLayout:? gridModifier:?];
    goto LABEL_4;
  }

LABEL_5:

  return v14;
}

- (id)transitionWillBegin
{
  v7.receiver = self;
  v7.super_class = SBGridToFullScreenSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v7 transitionWillBegin];
  if (self->_direction == 1)
  {
    v4 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:self->_fullScreenAppLayout alignment:0 animated:0];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

    transitionWillBegin = v5;
  }

  return transitionWillBegin;
}

- (id)appLayoutToScrollToBeforeTransitioning
{
  if (self->_direction)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_fullScreenAppLayout;
  }

  return v3;
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:gridModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGridToFullScreenSwitcherModifier.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:gridModifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGridToFullScreenSwitcherModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"gridModifier"}];
}

@end