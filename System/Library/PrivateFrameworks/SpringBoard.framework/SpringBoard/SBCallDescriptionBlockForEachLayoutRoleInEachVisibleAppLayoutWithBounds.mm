@interface SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithBounds
@end

@implementation SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithBounds

void ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithBounds_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = v5;
  if ([*(a1 + 32) containsObject:v5])
  {
    v23 = a3;
    [*(a1 + 40) frameForIndex:a3];
    v29.origin.x = v6;
    v29.origin.y = v7;
    v29.size.width = v8;
    v29.size.height = v9;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v5 allItems];
    v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [v30 layoutRoleForItem:*(*(&v25 + 1) + 8 * v12)];
          v13 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:*(a1 + 48)];
          [v13 setTarget:*(a1 + 40)];
          [v13 setSelector:*(a1 + 72)];
          [v13 setArgument:&v24 atIndex:2];
          [v13 setArgument:&v30 atIndex:3];
          [v13 setArgument:&v29 atIndex:4];
          [v13 invoke];
          v14 = (*(*(a1 + 64) + 16))();
          v15 = [v14 sb_switcherModifierDebugTimelineDescription];

          v16 = *(a1 + 56);
          v17 = MEMORY[0x277CCACA8];
          v18 = [v30 succinctDescription];
          v19 = SBLayoutRoleDescription(v24);
          v20 = NSStringFromCGRect(v29);
          v21 = [v17 stringWithFormat:@"%lu %@, role: %@, bounds: %@ --> %@", v23, v18, v19, v20, v15];
          [v16 addObject:v21];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    v5 = v30;
  }
}

@end