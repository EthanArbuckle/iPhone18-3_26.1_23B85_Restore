@interface SBMesaUnlockTrigger
- (SBMesaUnlockTriggerDelegate)delegate;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBMesaUnlockTrigger

- (id)succinctDescription
{
  v2 = [(SBMesaUnlockTrigger *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBMesaUnlockTrigger *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (SBMesaUnlockTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end