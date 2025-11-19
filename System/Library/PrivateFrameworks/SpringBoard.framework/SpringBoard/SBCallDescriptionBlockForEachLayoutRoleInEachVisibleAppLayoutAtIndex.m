@interface SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex
@end

@implementation SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex

void ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24 = a3;
  v25 = v5;
  if ([*(a1 + 32) containsObject:v5])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [v5 allItems];
    v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [v25 layoutRoleForItem:*(*(&v20 + 1) + 8 * v8)];
          v9 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:*(a1 + 40)];
          [v9 setTarget:*(a1 + 48)];
          [v9 setSelector:*(a1 + 72)];
          [v9 setArgument:&v19 atIndex:2];
          [v9 setArgument:&v25 atIndex:3];
          [v9 setArgument:&v24 atIndex:4];
          [v9 invoke];
          v10 = (*(*(a1 + 64) + 16))();
          v11 = [v10 sb_switcherModifierDebugTimelineDescription];

          v12 = *(a1 + 56);
          v13 = MEMORY[0x277CCACA8];
          v14 = v24;
          v15 = [v25 succinctDescription];
          v16 = SBLayoutRoleDescription(v19);
          v17 = [v13 stringWithFormat:@"%lu %@, role: %@ --> %@", v14, v15, v16, v11];
          [v12 addObject:v17];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v6);
    }

    v5 = v25;
  }
}

@end