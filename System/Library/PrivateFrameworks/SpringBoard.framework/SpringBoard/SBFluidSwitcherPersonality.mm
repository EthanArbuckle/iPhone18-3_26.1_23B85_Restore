@interface SBFluidSwitcherPersonality
- (SBFluidSwitcherPersonality)initWithRootModifier:(id)modifier;
- (SBSwitcherPersonalityView)view;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)handleEvent:(id)event responseHandler:(id)handler;
- (void)performWithFinalPresentationValue:(id)value;
- (void)performWithInterfaceOrientation:(int64_t)orientation block:(id)block;
- (void)performWithUpdateMode:(int64_t)mode block:(id)block;
- (void)setTimelineAuditor:(id)auditor;
@end

@implementation SBFluidSwitcherPersonality

- (SBFluidSwitcherPersonality)initWithRootModifier:(id)modifier
{
  modifierCopy = modifier;
  if (!modifierCopy)
  {
    [(SBFluidSwitcherPersonality *)a2 initWithRootModifier:?];
  }

  v10.receiver = self;
  v10.super_class = SBFluidSwitcherPersonality;
  v7 = [(SBSwitcherModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootModifier, modifier);
    [(SBChainableModifier *)v8 addChildModifier:v8->_rootModifier];
  }

  return v8;
}

- (void)performWithInterfaceOrientation:(int64_t)orientation block:(id)block
{
  blockCopy = block;
  v7 = [[SBOverrideInterfaceOrientationSwitcherModifier alloc] initWithInterfaceOrientation:orientation];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v7 usingBlock:blockCopy];
}

- (void)performWithUpdateMode:(int64_t)mode block:(id)block
{
  blockCopy = block;
  v7 = [[SBFixedLayoutModeSwitcherModifier alloc] initWithUpdateMode:mode];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v7 usingBlock:blockCopy];
}

- (void)performWithFinalPresentationValue:(id)value
{
  rootModifier = self->_rootModifier;
  valueCopy = value;
  animatablePropertyIdentifiers = [(SBSwitcherModifier *)rootModifier animatablePropertyIdentifiers];
  v6 = [[SBOverridePresentationValueSwitcherModifier alloc] initWithAnimatablePropertyKeys:animatablePropertyIdentifiers presentationValue:1.0];
  [(SBChainableModifier *)self->_rootModifier performTransactionWithTemporaryChildModifier:v6 usingBlock:valueCopy];
}

- (void)handleEvent:(id)event responseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(SBChainableModifier *)self handleEvent:event];
  handlerCopy[2](handlerCopy, v7);
}

- (void)setTimelineAuditor:(id)auditor
{
  auditorCopy = auditor;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (auditorCopy && (isKindOfClass & 1) == 0)
  {
    v5 = [[SBHistorianSwitcherModifier alloc] initWithRootModifier:self->_rootModifier];
    delegate = [(SBChainableModifier *)self->_rootModifier delegate];
    [(SBHistorianSwitcherModifier *)v5 setDelegate:delegate];

    [(SBHistorianSwitcherModifier *)v5 setHistorianDelegate:auditorCopy];
    rootModifier = self->_rootModifier;
    self->_rootModifier = &v5->super;
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if (!auditorCopy && (v8 & 1) != 0)
  {
    rootModifier = self->_rootModifier;
    rootModifier = [(SBSwitcherModifier *)rootModifier rootModifier];
    v10 = self->_rootModifier;
    self->_rootModifier = rootModifier;

    goto LABEL_7;
  }

LABEL_8:
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFluidSwitcherPersonality *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFluidSwitcherPersonality *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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