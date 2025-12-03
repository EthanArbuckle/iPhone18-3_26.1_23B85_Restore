@interface SBSplitAllDisplayItemsSwitcherModifier
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)handleEvent:(id)event;
@end

@implementation SBSplitAllDisplayItemsSwitcherModifier

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if (self->_hasInvalidatedAppLayoutsForInsertion || [(SBChainableModifier *)self state]== 1)
  {
    v5 = 0;
  }

  else
  {
    self->_hasInvalidatedAppLayoutsForInsertion = 1;
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v6, 0);
  }

  v12.receiver = self;
  v12.super_class = SBSplitAllDisplayItemsSwitcherModifier;
  v7 = [(SBChainableModifier *)&v12 handleEvent:eventCopy];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  if (!self->_hasInvalidatedAppLayoutsForRemoval && [(SBChainableModifier *)self state]== 1)
  {
    self->_hasInvalidatedAppLayoutsForRemoval = 1;
    v9 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v10 = SBAppendSwitcherModifierResponse(v9, v8);

    v8 = v10;
  }

  return v8;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = layoutsCopy;
  v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v18 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v5;
        v6 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        allItems = [v6 allItems];
        v8 = [allItems countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(allItems);
              }

              v12 = *(*(&v23 + 1) + 8 * i);
              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = __74__SBSplitAllDisplayItemsSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
              v22[3] = &unk_2783A8C90;
              v22[4] = v12;
              v13 = [v6 appLayoutWithItemsPassingTest:v22];
              [v4 addObject:v13];
            }

            v9 = [allItems countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

  v21.receiver = selfCopy;
  v21.super_class = SBSplitAllDisplayItemsSwitcherModifier;
  v14 = [(SBSplitAllDisplayItemsSwitcherModifier *)&v21 adjustedAppLayoutsForAppLayouts:v4];

  return v14;
}

@end