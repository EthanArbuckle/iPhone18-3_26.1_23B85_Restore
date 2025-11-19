@interface SBToggleSlideOverForDisplayItemSwitcherEventResponse
- (SBToggleSlideOverForDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)a3 direction:(int64_t)a4;
@end

@implementation SBToggleSlideOverForDisplayItemSwitcherEventResponse

- (SBToggleSlideOverForDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)a3 direction:(int64_t)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = SBToggleSlideOverForDisplayItemSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!v8)
    {
      [SBToggleSlideOverForDisplayItemSwitcherEventResponse initWithDisplayItem:a2 direction:v9];
    }

    objc_storeStrong(&v9->_displayItem, a3);
    v9->_direction = a4;
  }

  return v9;
}

- (void)initWithDisplayItem:(uint64_t)a1 direction:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBToggleSlideOverForDisplayItemSwitcherEventResponse.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end