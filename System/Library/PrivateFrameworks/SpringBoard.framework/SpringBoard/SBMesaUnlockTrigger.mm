@interface SBMesaUnlockTrigger
- (SBMesaUnlockTriggerDelegate)delegate;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBMesaUnlockTrigger

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBMesaUnlockTrigger *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CF0C00];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 descriptionForObject:WeakRetained];
  v7 = [v3 appendObject:v6 withName:@"delegate"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBMesaUnlockTrigger *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBMesaUnlockTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end