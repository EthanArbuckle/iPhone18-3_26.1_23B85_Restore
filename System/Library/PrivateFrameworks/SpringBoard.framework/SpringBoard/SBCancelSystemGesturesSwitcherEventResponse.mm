@interface SBCancelSystemGesturesSwitcherEventResponse
- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureType:(unint64_t)a3;
- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureTypes:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBCancelSystemGesturesSwitcherEventResponse

- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureType:(unint64_t)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 setWithObject:v5];
  v7 = [(SBCancelSystemGesturesSwitcherEventResponse *)self initWithSystemGestureTypes:v6];

  return v7;
}

- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBCancelSystemGesturesSwitcherEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    systemGestureTypes = v5->_systemGestureTypes;
    v5->_systemGestureTypes = v6;
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBCancelSystemGesturesSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_systemGestureTypes withName:@"systemGestureTypes"];

  return v4;
}

@end