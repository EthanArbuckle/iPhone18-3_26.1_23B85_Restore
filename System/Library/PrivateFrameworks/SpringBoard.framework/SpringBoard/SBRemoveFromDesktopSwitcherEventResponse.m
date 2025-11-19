@interface SBRemoveFromDesktopSwitcherEventResponse
- (SBRemoveFromDesktopSwitcherEventResponse)initWithDisplayItems:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBRemoveFromDesktopSwitcherEventResponse

- (SBRemoveFromDesktopSwitcherEventResponse)initWithDisplayItems:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBRemoveFromDesktopSwitcherEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v10 init];
  if (v6)
  {
    if (![v5 count])
    {
      [(SBRemoveFromDesktopSwitcherEventResponse *)a2 initWithDisplayItems:v6];
    }

    v7 = [v5 copy];
    displayItems = v6->_displayItems;
    v6->_displayItems = v7;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBRemoveFromDesktopSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_displayItems withName:@"displayItems"];

  return v4;
}

- (void)initWithDisplayItems:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemoveFromDesktopSwitcherEventResponse.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"[displayItems count] > 0"}];
}

@end