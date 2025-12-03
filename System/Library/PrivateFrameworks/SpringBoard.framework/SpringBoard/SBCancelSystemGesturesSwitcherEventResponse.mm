@interface SBCancelSystemGesturesSwitcherEventResponse
- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureType:(unint64_t)type;
- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureTypes:(id)types;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBCancelSystemGesturesSwitcherEventResponse

- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureType:(unint64_t)type
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v6 = [v4 setWithObject:v5];
  v7 = [(SBCancelSystemGesturesSwitcherEventResponse *)self initWithSystemGestureTypes:v6];

  return v7;
}

- (SBCancelSystemGesturesSwitcherEventResponse)initWithSystemGestureTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = SBCancelSystemGesturesSwitcherEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    systemGestureTypes = v5->_systemGestureTypes;
    v5->_systemGestureTypes = v6;
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBCancelSystemGesturesSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_systemGestureTypes withName:@"systemGestureTypes"];

  return v4;
}

@end