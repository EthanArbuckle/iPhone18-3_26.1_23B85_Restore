@interface SBDestroyDisplayItemSwitcherEventResponse
- (SBDestroyDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)item destroyAllScenesMatchingBundleIdentifier:(BOOL)identifier;
@end

@implementation SBDestroyDisplayItemSwitcherEventResponse

- (SBDestroyDisplayItemSwitcherEventResponse)initWithDisplayItem:(id)item destroyAllScenesMatchingBundleIdentifier:(BOOL)identifier
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBDestroyDisplayItemSwitcherEventResponse;
  v9 = [(SBChainableModifierEventResponse *)&v11 init];
  if (v9)
  {
    if (!itemCopy)
    {
      [SBDestroyDisplayItemSwitcherEventResponse initWithDisplayItem:a2 destroyAllScenesMatchingBundleIdentifier:v9];
    }

    objc_storeStrong(&v9->_displayItem, item);
    v9->_destroyAllScenesMatchingBundleIdentifier = identifier;
  }

  return v9;
}

- (void)initWithDisplayItem:(uint64_t)a1 destroyAllScenesMatchingBundleIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDestroyDisplayItemSwitcherEventResponse.m" lineNumber:21 description:@"displayItem may not be nil"];
}

@end