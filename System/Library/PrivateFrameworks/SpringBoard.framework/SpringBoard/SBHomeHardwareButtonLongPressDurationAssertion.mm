@interface SBHomeHardwareButtonLongPressDurationAssertion
- (SBHomeHardwareButtonLongPressDurationAssertion)initWithReason:(id)reason duration:(double)duration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBHomeHardwareButtonLongPressDurationAssertion

- (SBHomeHardwareButtonLongPressDurationAssertion)initWithReason:(id)reason duration:(double)duration
{
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = SBHomeHardwareButtonLongPressDurationAssertion;
  v7 = [(SBHomeHardwareButtonLongPressDurationAssertion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_duration = duration;
    v9 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v9;
  }

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHomeHardwareButtonLongPressDurationAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHomeHardwareButtonLongPressDurationAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBHomeHardwareButtonLongPressDurationAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__SBHomeHardwareButtonLongPressDurationAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end