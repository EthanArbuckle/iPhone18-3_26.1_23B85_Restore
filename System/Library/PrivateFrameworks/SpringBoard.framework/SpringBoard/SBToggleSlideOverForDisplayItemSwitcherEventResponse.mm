@interface SBToggleSlideOverForDisplayItemSwitcherEventResponse
- (SBToggleSlideOverForDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)item direction:(int64_t)direction;
@end

@implementation SBToggleSlideOverForDisplayItemSwitcherEventResponse

- (SBToggleSlideOverForDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)item direction:(int64_t)direction
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBToggleSlideOverForDisplayItemSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!itemCopy)
    {
      [SBToggleSlideOverForDisplayItemSwitcherEventResponse initWithDisplayItem:a2 direction:v9];
    }

    objc_storeStrong(&v9->_displayItem, item);
    v9->_direction = direction;
  }

  return v9;
}

- (void)initWithDisplayItem:(uint64_t)a1 direction:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBToggleSlideOverForDisplayItemSwitcherEventResponse.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end