@interface _SBUIBiometricOperationAssertion
- (_SBUIBiometricOperationAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation _SBUIBiometricOperationAssertion

- (_SBUIBiometricOperationAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block
{
  blockCopy = block;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89___SBUIBiometricOperationAssertion_initWithIdentifier_forReason_queue_invalidationBlock___block_invoke;
  v15[3] = &unk_1E789F980;
  v16 = blockCopy;
  v14.receiver = self;
  v14.super_class = _SBUIBiometricOperationAssertion;
  v11 = blockCopy;
  v12 = [(BSSimpleAssertion *)&v14 initWithIdentifier:identifier forReason:reason queue:queue invalidationBlock:v15];

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBUIBiometricOperationAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBUIBiometricOperationAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBUIBiometricOperationAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___SBUIBiometricOperationAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

@end