@interface PGSharingSuggestionSourceSocialGroup
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceSocialGroup

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  inputCopy = input;
  graph = [inputCopy graph];
  v7 = [PGGraphMomentNodeCollection alloc];
  momentNodes = [inputCopy momentNodes];

  v9 = [(MAElementCollection *)v7 initWithArray:momentNodes graph:graph];
  socialGroupNodes = [(PGGraphMomentNodeCollection *)v9 socialGroupNodes];
  memberNodes = [socialGroupNodes memberNodes];
  v12 = [graph commonSocialGroupNodesForMemberNodes:memberNodes withThreshold:0.8];
  v13 = objc_opt_new();
  memberNodes2 = [v12 memberNodes];
  v15 = [memberNodes2 collectionBySubtracting:memberNodes];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PGSharingSuggestionSourceSocialGroup_suggestedResultsForInput_withOptions___block_invoke;
  v19[3] = &unk_278887E60;
  v16 = v13;
  v20 = v16;
  selfCopy = self;
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