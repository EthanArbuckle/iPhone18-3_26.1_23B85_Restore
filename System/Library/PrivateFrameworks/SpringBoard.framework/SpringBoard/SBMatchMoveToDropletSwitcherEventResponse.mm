@interface SBMatchMoveToDropletSwitcherEventResponse
- (SBMatchMoveToDropletSwitcherEventResponse)initWithAppLayout:(id)a3 active:(BOOL)a4;
@end

@implementation SBMatchMoveToDropletSwitcherEventResponse

- (SBMatchMoveToDropletSwitcherEventResponse)initWithAppLayout:(id)a3 active:(BOOL)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = SBMatchMoveToDropletSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!v8)
    {
      [SBMatchMoveToDropletSwitcherEventResponse initWithAppLayout:a2 active:v9];
    }

    objc_storeStrong(&v9->_appLayout, a3);
    v9->_active = a4;
  }

  return v9;
}

- (void)initWithAppLayout:(uint64_t)a1 active:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMatchMoveToDropletSwitcherEventResponse.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end