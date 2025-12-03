@interface PGSharingSuggestionSourceChild
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceChild

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  children = [graph children];
  if ([children count])
  {
    parents = [graph parents];
    partners = [graph partners];
    v19 = [parents setByAddingObjectsFromSet:partners];

    if ([v19 count])
    {
      v22 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = momentNodes;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        v11 = *v31;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            v26 = 0;
            v27 = &v26;
            v28 = 0x2020000000;
            v29 = 0;
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __71__PGSharingSuggestionSourceChild_suggestedResultsForInput_withOptions___block_invoke;
            v23[3] = &unk_278889420;
            v24 = children;
            v25 = &v26;
            [v13 enumeratePersonNodesUsingBlock:v23];
            if (*(v27 + 24) == 1)
            {
              [v22 addObject:v13];
            }

            _Block_object_dispose(&v26, 8);
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v10);
      }

      if ([v22 count])
      {
        [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v19];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v14 = ;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __71__PGSharingSuggestionSourceChild_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end