@interface SBLockScreenPluginPresentation
- (UIEdgeInsets)suggestedContentInsets;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginPresentation

- (id)succinctDescription
{
  v2 = [(SBLockScreenPluginPresentation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(SBLockScreenPluginPresentation *)self suggestedContentInsets];
  v4 = NSStringFromUIEdgeInsets(v8);
  v5 = [v3 appendObject:v4 withName:@"suggestedContentInsets" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPluginPresentation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPluginPresentation *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SBLockScreenPluginPresentation_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27836AE50;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __72__SBLockScreenPluginPresentation_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) legibilitySettings];
  v2 = [v1 appendObject:v3 withName:@"legibilitySettings" skipIfNil:1];
}

- (UIEdgeInsets)suggestedContentInsets
{
  top = self->suggestedContentInsets.top;
  left = self->suggestedContentInsets.left;
  bottom = self->suggestedContentInsets.bottom;
  right = self->suggestedContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end