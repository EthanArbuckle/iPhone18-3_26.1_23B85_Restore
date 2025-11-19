@interface SBConsumedPreludeAnimationTokenSwitcherEventResponse
- (SBConsumedPreludeAnimationTokenSwitcherEventResponse)initWithPreludeToken:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBConsumedPreludeAnimationTokenSwitcherEventResponse

- (SBConsumedPreludeAnimationTokenSwitcherEventResponse)initWithPreludeToken:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBConsumedPreludeAnimationTokenSwitcherEventResponse;
  v7 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBConsumedPreludeAnimationTokenSwitcherEventResponse *)a2 initWithPreludeToken:v7];
    }

    objc_storeStrong(&v7->_preludeToken, a3);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBConsumedPreludeAnimationTokenSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_preludeToken withName:@"preludeToken"];

  return v4;
}

- (void)initWithPreludeToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBConsumedPreludeAnimationTokenSwitcherEventResponse.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"preludeToken != nil"}];
}

@end