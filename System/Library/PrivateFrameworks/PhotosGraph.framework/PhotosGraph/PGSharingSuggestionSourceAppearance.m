@interface PGSharingSuggestionSourceAppearance
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceAppearance

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [a3 momentNodes];
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 numberOfAssets];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __76__PGSharingSuggestionSourceAppearance_suggestedResultsForInput_withOptions___block_invoke;
        v16[3] = &unk_278884958;
        v19 = v13;
        v17 = v6;
        v18 = self;
        [v12 enumeratePersonEdgesAndNodesUsingBlock:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

void __76__PGSharingSuggestionSourceAppearance_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 isMeNode] & 1) == 0)
  {
    v6 = [v9 numberOfAssets];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) suggestionResultWithPerson:v5 weight:v6 / *(a1 + 48)];
    [v7 addObject:v8];
  }
}

@end