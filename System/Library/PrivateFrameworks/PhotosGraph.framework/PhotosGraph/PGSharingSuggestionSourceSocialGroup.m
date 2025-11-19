@interface PGSharingSuggestionSourceSocialGroup
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceSocialGroup

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [v5 graph];
  v7 = [PGGraphMomentNodeCollection alloc];
  v8 = [v5 momentNodes];

  v9 = [(MAElementCollection *)v7 initWithArray:v8 graph:v6];
  v10 = [(PGGraphMomentNodeCollection *)v9 socialGroupNodes];
  v11 = [v10 memberNodes];
  v12 = [v6 commonSocialGroupNodesForMemberNodes:v11 withThreshold:0.8];
  v13 = objc_opt_new();
  v14 = [v12 memberNodes];
  v15 = [v14 collectionBySubtracting:v11];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PGSharingSuggestionSourceSocialGroup_suggestedResultsForInput_withOptions___block_invoke;
  v19[3] = &unk_278887E60;
  v16 = v13;
  v20 = v16;
  v21 = self;
  [v15 enumerateNodesUsingBlock:v19];
  v17 = v16;

  return v16;
}

void __77__PGSharingSuggestionSourceSocialGroup_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 memberType])
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) suggestionResultWithPerson:v5];
    [v3 addObject:v4];
  }
}

@end