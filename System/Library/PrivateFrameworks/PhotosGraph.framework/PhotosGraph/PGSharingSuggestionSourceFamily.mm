@interface PGSharingSuggestionSourceFamily
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceFamily

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  v27 = inputCopy;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  familyMembers = [graph familyMembers];
  partners = [graph partners];
  v8 = [familyMembers setByAddingObjectsFromSet:partners];

  if ([v8 count])
  {
    v29 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = momentNodes;
    v9 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v9)
    {
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          collection = [v12 collection];
          birthdayPersonNodes = [collection birthdayPersonNodes];

          if ([birthdayPersonNodes count] && (objc_msgSend(birthdayPersonNodes, "temporarySet"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intersectsSet:", v8), v15, v16))
          {
            [v29 addObject:v12];
          }

          else
          {
            v44 = 0;
            v45 = &v44;
            v46 = 0x2020000000;
            v47 = 0;
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke;
            v43[3] = &unk_278885C70;
            v43[4] = &v44;
            [v12 enumerateCelebratedHolidayNodesUsingBlock:v43];
            if (v45[3] & 1) != 0 || ([MEMORY[0x277CBEB98] setWithObjects:{@"Wedding", @"Celebration", @"Gathering", 0}], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "meaningLabels"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "intersectsSet:", v17), v18, v17, ((*(v45 + 24) | v19)))
            {
              v39 = 0;
              v40 = &v39;
              v41 = 0x2020000000;
              v42 = 0;
              v35 = 0;
              v36 = &v35;
              v37 = 0x2020000000;
              v38 = 0;
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke_2;
              v31[3] = &unk_2788850E0;
              v32 = v8;
              v33 = &v39;
              v34 = &v35;
              [v12 enumeratePersonNodesUsingBlock:v31];
              v20 = v40[3];
              if (v20 >= 2 && v20 / (v36[3] + v20) >= 0.25)
              {
                [v29 addObject:v12];
              }

              _Block_object_dispose(&v35, 8);
              _Block_object_dispose(&v39, 8);
            }

            _Block_object_dispose(&v44, 8);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v9);
    }

    if ([v29 count])
    {
      [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v8];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v21 = ;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  v4 = 48;
  if (result)
  {
    v4 = 40;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
  return result;
}

@end