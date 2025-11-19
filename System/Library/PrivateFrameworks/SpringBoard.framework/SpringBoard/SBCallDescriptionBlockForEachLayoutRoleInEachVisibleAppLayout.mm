@interface SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout
@end

@implementation SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout

void ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = v5;
  if ([*(a1 + 32) containsObject:v5])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [v5 allItems];
    v6 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [v22 layoutRoleForItem:*(*(&v18 + 1) + 8 * v8)];
          v9 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:*(a1 + 40)];
          [v9 setTarget:*(a1 + 48)];
          [v9 setSelector:*(a1 + 72)];
          [v9 setArgument:&v17 atIndex:2];
          [v9 setArgument:&v22 atIndex:3];
          [v9 invoke];
          v10 = (*(*(a1 + 64) + 16))();

          v11 = *(a1 + 56);
          v12 = MEMORY[0x277CCACA8];
          v13 = [v22 succinctDescription];
          v14 = SBLayoutRoleDescription(v17);
          v15 = [v12 stringWithFormat:@"%lu %@, role: %@ --> %@", a3, v13, v14, v10];
          [v11 addObject:v15];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    v5 = v22;
  }
}

@end