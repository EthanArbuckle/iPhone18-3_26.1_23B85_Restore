@interface SBMatchMoveToDropletSwitcherEventResponse
- (SBMatchMoveToDropletSwitcherEventResponse)initWithAppLayout:(id)layout active:(BOOL)active;
@end

@implementation SBMatchMoveToDropletSwitcherEventResponse

- (SBMatchMoveToDropletSwitcherEventResponse)initWithAppLayout:(id)layout active:(BOOL)active
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBMatchMoveToDropletSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBMatchMoveToDropletSwitcherEventResponse initWithAppLayout:a2 active:v9];
    }

    objc_storeStrong(&v9->_appLayout, layout);
    v9->_active = active;
  }

  return v9;
}

- (void)initWithAppLayout:(uint64_t)a1 active:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMatchMoveToDropletSwitcherEventResponse.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end