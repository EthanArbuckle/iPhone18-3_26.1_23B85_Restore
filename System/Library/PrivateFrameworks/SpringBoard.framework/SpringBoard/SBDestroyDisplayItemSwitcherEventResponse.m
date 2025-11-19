@interface SBDestroyDisplayItemSwitcherEventResponse
- (SBDestroyDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)a3 destroyAllScenesMatchingBundleIdentifier:(BOOL)a4;
@end

@implementation SBDestroyDisplayItemSwitcherEventResponse

- (SBDestroyDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)a3 destroyAllScenesMatchingBundleIdentifier:(BOOL)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = SBDestroyDisplayItemSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!v8)
    {
      [SBDestroyDisplayItemSwitcherEventResponse initWithDisplayItem:a2 destroyAllScenesMatchingBundleIdentifier:v9];
    }

    objc_storeStrong(&v9->_displayItem, a3);
    v9->_destroyAllScenesMatchingBundleIdentifier = a4;
  }

  return v9;
}

- (void)initWithDisplayItem:(uint64_t)a1 destroyAllScenesMatchingBundleIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDestroyDisplayItemSwitcherEventResponse.m" lineNumber:21 description:@"displayItem may not be nil"];
}

@end