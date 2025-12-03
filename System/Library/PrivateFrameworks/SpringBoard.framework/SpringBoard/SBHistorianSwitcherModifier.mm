@interface SBHistorianSwitcherModifier
- (SBHistorianSwitcherModifier)initWithRootModifier:(id)modifier;
- (SBHistorianSwitcherModifierDelegate)historianDelegate;
- (id)handleEvent:(id)event;
- (void)setDelegate:(id)delegate;
@end

@implementation SBHistorianSwitcherModifier

- (SBHistorianSwitcherModifier)initWithRootModifier:(id)modifier
{
  modifierCopy = modifier;
  if (!modifierCopy)
  {
    [(SBHistorianSwitcherModifier *)a2 initWithRootModifier:?];
  }

  v10.receiver = self;
  v10.super_class = SBHistorianSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootModifier, modifier);
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = SBHistorianSwitcherModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (delegate)
  {
    if (![(SBChainableModifier *)self containsChildModifier:self->_rootModifier])
    {
      [(SBChainableModifier *)self addChildModifier:self->_rootModifier];
    }
  }
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  historianDelegate = [(SBHistorianSwitcherModifier *)self historianDelegate];
  if ([historianDelegate historianModifier:self shouldRecordEvent:eventCopy])
  {
    v6 = [[SBSwitcherModifierEventSnapshot alloc] initWithEvent:eventCopy];
    v13.receiver = self;
    v13.super_class = SBHistorianSwitcherModifier;
    v7 = [(SBChainableModifier *)&v13 handleEvent:eventCopy];
    v8 = [[SBSwitcherModifierEventResponseSnapshot alloc] initWithEventResponse:v7];
    v9 = [[SBSwitcherModifierStackSnapshot alloc] initWithRootModifier:self->_rootModifier];
    v10 = [[SBSwitcherModifierTimelineEntry alloc] initWithEventSnapshot:v6 responseSnapshot:v8 stackSnapshotAfterEvent:v9];
    [historianDelegate historianModifier:self didRecordEntry:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHistorianSwitcherModifier;
    v7 = [(SBChainableModifier *)&v12 handleEvent:eventCopy];
  }

  return v7;
}

- (SBHistorianSwitcherModifierDelegate)historianDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_historianDelegate);

  return WeakRetained;
}

- (void)initWithRootModifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHistorianSwitcherModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"modifier"}];
}

@end