@interface _SBUIBiometricMatchingAssertion
- (_SBUIBiometricMatchingAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block;
- (_SBUIBiometricMatchingAssertion)initWithMatchMode:(unint64_t)mode reason:(id)reason invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation _SBUIBiometricMatchingAssertion

- (_SBUIBiometricMatchingAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block
{
  identifierCopy = identifier;
  reasonCopy = reason;
  queueCopy = queue;
  blockCopy = block;
  v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Use initWithMatchMode:reason:invalidationBlock:" userInfo:0];
  objc_exception_throw(v13);
}

- (_SBUIBiometricMatchingAssertion)initWithMatchMode:(unint64_t)mode reason:(id)reason invalidationBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = _SBUIBiometricMatchingAssertion;
  result = [(_SBUIBiometricOperationAssertion *)&v7 initWithIdentifier:@"MatchingAssertion" forReason:reason queue:MEMORY[0x1E69E96A0] invalidationBlock:block];
  if (result)
  {
    result->_matchMode = mode;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBUIBiometricMatchingAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBUIBiometricMatchingAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBUIBiometricMatchingAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___SBUIBiometricMatchingAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

@end