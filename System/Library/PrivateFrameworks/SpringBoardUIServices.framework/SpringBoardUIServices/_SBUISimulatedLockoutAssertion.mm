@interface _SBUISimulatedLockoutAssertion
- (_SBUISimulatedLockoutAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block;
- (_SBUISimulatedLockoutAssertion)initWithLockoutState:(unint64_t)state reason:(id)reason invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation _SBUISimulatedLockoutAssertion

- (_SBUISimulatedLockoutAssertion)initWithIdentifier:(id)identifier forReason:(id)reason queue:(id)queue invalidationBlock:(id)block
{
  identifierCopy = identifier;
  reasonCopy = reason;
  queueCopy = queue;
  blockCopy = block;
  v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Use initWithLockoutState:reason:invalidationBlock:" userInfo:0];
  objc_exception_throw(v13);
}

- (_SBUISimulatedLockoutAssertion)initWithLockoutState:(unint64_t)state reason:(id)reason invalidationBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = _SBUISimulatedLockoutAssertion;
  result = [(BSSimpleAssertion *)&v7 initWithIdentifier:@"PasscodeRequiredAssertion" forReason:reason queue:MEMORY[0x1E69E96A0] invalidationBlock:block];
  if (result)
  {
    result->_lockoutState = state;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBUISimulatedLockoutAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBUISimulatedLockoutAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBUISimulatedLockoutAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___SBUISimulatedLockoutAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

@end