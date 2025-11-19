@interface _SBUIBiometricMatchingAssertion
- (_SBUIBiometricMatchingAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 queue:(id)a5 invalidationBlock:(id)a6;
- (_SBUIBiometricMatchingAssertion)initWithMatchMode:(unint64_t)a3 reason:(id)a4 invalidationBlock:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation _SBUIBiometricMatchingAssertion

- (_SBUIBiometricMatchingAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 queue:(id)a5 invalidationBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Use initWithMatchMode:reason:invalidationBlock:" userInfo:0];
  objc_exception_throw(v13);
}

- (_SBUIBiometricMatchingAssertion)initWithMatchMode:(unint64_t)a3 reason:(id)a4 invalidationBlock:(id)a5
{
  v7.receiver = self;
  v7.super_class = _SBUIBiometricMatchingAssertion;
  result = [(_SBUIBiometricOperationAssertion *)&v7 initWithIdentifier:@"MatchingAssertion" forReason:a4 queue:MEMORY[0x1E69E96A0] invalidationBlock:a5];
  if (result)
  {
    result->_matchMode = a3;
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(_SBUIBiometricMatchingAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBUIBiometricMatchingAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBUIBiometricMatchingAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___SBUIBiometricMatchingAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

@end