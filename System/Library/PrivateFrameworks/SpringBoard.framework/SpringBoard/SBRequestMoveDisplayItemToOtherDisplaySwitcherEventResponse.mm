@interface SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse
- (SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse)initWithDisplayItem:(id)item;
@end

@implementation SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse

- (SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse)initWithDisplayItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse;
  v7 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v7)
  {
    if (!itemCopy)
    {
      [(SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, item);
  }

  return v7;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end