@interface SBAddModifierSwitcherEventResponse
- (SBAddModifierSwitcherEventResponse)initWithModifier:(id)a3 level:(int64_t)a4 key:(id)a5;
@end

@implementation SBAddModifierSwitcherEventResponse

- (SBAddModifierSwitcherEventResponse)initWithModifier:(id)a3 level:(int64_t)a4 key:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    [SBAddModifierSwitcherEventResponse initWithModifier:a2 level:self key:?];
  }

  v17.receiver = self;
  v17.super_class = SBAddModifierSwitcherEventResponse;
  v12 = [(SBChainableModifierEventResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modifier, a3);
    v13->_level = a4;
    v14 = [v11 copy];
    key = v13->_key;
    v13->_key = v14;
  }

  return v13;
}

- (void)initWithModifier:(uint64_t)a1 level:(uint64_t)a2 key:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAddModifierSwitcherEventResponse.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"modifier"}];
}

@end