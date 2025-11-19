@interface SBHomeHardwareButtonLongPressDurationAssertion
- (SBHomeHardwareButtonLongPressDurationAssertion)initWithReason:(id)a3 duration:(double)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBHomeHardwareButtonLongPressDurationAssertion

- (SBHomeHardwareButtonLongPressDurationAssertion)initWithReason:(id)a3 duration:(double)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SBHomeHardwareButtonLongPressDurationAssertion;
  v7 = [(SBHomeHardwareButtonLongPressDurationAssertion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_duration = a4;
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(SBHomeHardwareButtonLongPressDurationAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHomeHardwareButtonLongPressDurationAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeHardwareButtonLongPressDurationAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__SBHomeHardwareButtonLongPressDurationAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end