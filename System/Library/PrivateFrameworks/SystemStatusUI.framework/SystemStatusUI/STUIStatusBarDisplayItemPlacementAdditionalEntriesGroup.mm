@interface STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority inAsscendingPriority:(BOOL)asscendingPriority identifiersByPriority:(id)byPriority;
@end

@implementation STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority inAsscendingPriority:(BOOL)asscendingPriority identifiersByPriority:(id)byPriority
{
  v33 = *MEMORY[0x277D85DE8];
  byPriorityCopy = byPriority;
  allKeys = [byPriorityCopy allKeys];
  v11 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v26 = v11;
  if (asscendingPriority)
  {
    [v11 objectEnumerator];
  }

  else
  {
    [v11 reverseObjectEnumerator];
  }
  v12 = ;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(byPriorityCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = priority - lowPriority;
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
        v21 = [byPriorityCopy objectForKeyedSubscript:v20];
        integerValue = [v20 integerValue];
        if (integerValue < v17)
        {
          v23 = [STUIStatusBarDisplayItemPlacement additionalEntryPlacementWithIdentifier:v21 priority:integerValue];
          [v13 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v24 = [self groupWithPriority:lowPriority placements:v13];

  return v24;
}

@end