@interface STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 inAsscendingPriority:(BOOL)a5 identifiersByPriority:(id)a6;
@end

@implementation STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 inAsscendingPriority:(BOOL)a5 identifiersByPriority:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v26 = v11;
  if (a5)
  {
    [v11 objectEnumerator];
  }

  else
  {
    [v11 reverseObjectEnumerator];
  }
  v12 = ;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = a3 - a4;
    v18 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = [v9 objectForKeyedSubscript:v20];
        v22 = [v20 integerValue];
        if (v22 < v17)
        {
          v23 = [STUIStatusBarDisplayItemPlacement additionalEntryPlacementWithIdentifier:v21 priority:v22];
          [v13 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v24 = [a1 groupWithPriority:a4 placements:v13];

  return v24;
}

@end