@interface SBHistorianSwitcherModifier
- (SBHistorianSwitcherModifier)initWithRootModifier:(id)a3;
- (SBHistorianSwitcherModifierDelegate)historianDelegate;
- (id)handleEvent:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SBHistorianSwitcherModifier

- (SBHistorianSwitcherModifier)initWithRootModifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBHistorianSwitcherModifier *)a2 initWithRootModifier:?];
  }

  v10.receiver = self;
  v10.super_class = SBHistorianSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootModifier, a3);
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBHistorianSwitcherModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (a3)
  {
    if (![(SBChainableModifier *)self containsChildModifier:self->_rootModifier])
    {
      [(SBChainableModifier *)self addChildModifier:self->_rootModifier];
    }
  }
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBHistorianSwitcherModifier *)self historianDelegate];
  if ([v5 historianModifier:self shouldRecordEvent:v4])
  {
    v6 = [[SBSwitcherModifierEventSnapshot alloc] initWithEvent:v4];
    v13.receiver = self;
    v13.super_class = SBHistorianSwitcherModifier;
    v7 = [(SBChainableModifier *)&v13 handleEvent:v4];
    v8 = [[SBSwitcherModifierEventResponseSnapshot alloc] initWithEventResponse:v7];
    v9 = [[SBSwitcherModifierStackSnapshot alloc] initWithRootModifier:self->_rootModifier];
    v10 = [[SBSwitcherModifierTimelineEntry alloc] initWithEventSnapshot:v6 responseSnapshot:v8 stackSnapshotAfterEvent:v9];
    [v5 historianModifier:self didRecordEntry:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHistorianSwitcherModifier;
    v7 = [(SBChainableModifier *)&v12 handleEvent:v4];
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