@interface SBFluidSwitcherPersonality
- (SBFluidSwitcherPersonality)initWithRootModifier:(id)a3;
- (SBSwitcherPersonalityView)view;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)handleEvent:(id)a3 responseHandler:(id)a4;
- (void)performWithFinalPresentationValue:(id)a3;
- (void)performWithInterfaceOrientation:(int64_t)a3 block:(id)a4;
- (void)performWithUpdateMode:(int64_t)a3 block:(id)a4;
- (void)setTimelineAuditor:(id)a3;
@end

@implementation SBFluidSwitcherPersonality

- (SBFluidSwitcherPersonality)initWithRootModifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBFluidSwitcherPersonality *)a2 initWithRootModifier:?];
  }

  v10.receiver = self;
  v10.super_class = SBFluidSwitcherPersonality;
  v7 = [(SBSwitcherModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootModifier, a3);
    [(SBChainableModifier *)v8 addChildModifier:v8->_rootModifier];
  }

  return v8;
}

- (void)performWithInterfaceOrientation:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [[SBOverrideInterfaceOrientationSwitcherModifier alloc] initWithInterfaceOrientation:a3];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v7 usingBlock:v6];
}

- (void)performWithUpdateMode:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [[SBFixedLayoutModeSwitcherModifier alloc] initWithUpdateMode:a3];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v7 usingBlock:v6];
}

- (void)performWithFinalPresentationValue:(id)a3
{
  rootModifier = self->_rootModifier;
  v5 = a3;
  v7 = [(SBSwitcherModifier *)rootModifier animatablePropertyIdentifiers];
  v6 = [[SBOverridePresentationValueSwitcherModifier alloc] initWithAnimatablePropertyKeys:v7 presentationValue:1.0];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v6 usingBlock:v5];
}

- (void)handleEvent:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = [(SBChainableModifier *)self handleEvent:a3];
  v6[2](v6, v7);
}

- (void)setTimelineAuditor:(id)a3
{
  v11 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v11 && (isKindOfClass & 1) == 0)
  {
    v5 = [[SBHistorianSwitcherModifier alloc] initWithRootModifier:self->_rootModifier];
    v6 = [(SBChainableModifier *)self->_rootModifier delegate];
    [(SBHistorianSwitcherModifier *)v5 setDelegate:v6];

    [(SBHistorianSwitcherModifier *)v5 setHistorianDelegate:v11];
    rootModifier = self->_rootModifier;
    self->_rootModifier = &v5->super;
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if (!v11 && (v8 & 1) != 0)
  {
    rootModifier = self->_rootModifier;
    v9 = [(SBSwitcherModifier *)rootModifier rootModifier];
    v10 = self->_rootModifier;
    self->_rootModifier = v9;

    goto LABEL_7;
  }

LABEL_8:
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFluidSwitcherPersonality *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBFluidSwitcherPersonality *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBSwitcherPersonalityView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)initWithRootModifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherPersonality.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"rootModifier"}];
}

@end