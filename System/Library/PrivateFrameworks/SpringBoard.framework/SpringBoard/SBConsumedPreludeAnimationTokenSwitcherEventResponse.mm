@interface SBConsumedPreludeAnimationTokenSwitcherEventResponse
- (SBConsumedPreludeAnimationTokenSwitcherEventResponse)initWithPreludeToken:(id)token;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBConsumedPreludeAnimationTokenSwitcherEventResponse

- (SBConsumedPreludeAnimationTokenSwitcherEventResponse)initWithPreludeToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = SBConsumedPreludeAnimationTokenSwitcherEventResponse;
  v7 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v7)
  {
    if (!tokenCopy)
    {
      [(SBConsumedPreludeAnimationTokenSwitcherEventResponse *)a2 initWithPreludeToken:v7];
    }

    objc_storeStrong(&v7->_preludeToken, token);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBConsumedPreludeAnimationTokenSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_preludeToken withName:@"preludeToken"];

  return v4;
}

- (void)initWithPreludeToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBConsumedPreludeAnimationTokenSwitcherEventResponse.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"preludeToken != nil"}];
}

@end