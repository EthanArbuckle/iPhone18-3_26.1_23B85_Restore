@interface PGSharingSuggestionSourceActivity
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceActivity

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32 = a4;
  v33 = v5;
  v6 = [v5 momentNodes];
  v36 = [v5 graph];
  [v36 _checkCanRead];
  v7 = [MEMORY[0x277CBEB58] set];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v52 + 1) + 8 * i) meaningLabels];
        [v7 unionSet:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v31 = [MEMORY[0x277CBEB98] setWithObjects:{@"Hiking", @"Climbing", @"Beaching", @"Diving", @"WinterSport", @"AmusementPark", @"Performance", @"Concert", @"Festival", @"SportEvent", @"NightOut", @"Museum", 0}];
    [v7 intersectSet:v31];
    if ([v7 count])
    {
      v13 = [MEMORY[0x277CBEB58] set];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v7;
      v14 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v14)
      {
        v35 = *v49;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v49 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v48 + 1) + 8 * j);
            v17 = [MEMORY[0x277CCA940] set];
            v44 = 0;
            v45 = &v44;
            v46 = 0x2020000000;
            v47 = 0;
            v18 = [PGGraph meaningForMeaningLabel:v16];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __74__PGSharingSuggestionSourceActivity_suggestedResultsForInput_withOptions___block_invoke;
            v41[3] = &unk_2788881B8;
            v19 = v17;
            v42 = v19;
            v43 = &v44;
            [v36 enumerateMeaningfulEventsWithMeaning:v18 usingBlock:v41];
            v20 = v45[3];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v37 objects:v56 count:16];
            if (v22)
            {
              v23 = v20 * 0.5;
              v24 = *v38;
              do
              {
                for (k = 0; k != v22; ++k)
                {
                  if (*v38 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v37 + 1) + 8 * k);
                  if (([v26 isMeNode] & 1) == 0 && v23 <= objc_msgSend(v21, "countForObject:", v26))
                  {
                    [v13 addObject:v26];
                  }
                }

                v22 = [v21 countByEnumeratingWithState:&v37 objects:v56 count:16];
              }

              while (v22);
            }

            _Block_object_dispose(&v44, 8);
          }

          v14 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v14);
      }

      if ([v13 count])
      {
        v27 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v13];

        goto LABEL_32;
      }
    }
  }

  v27 = [MEMORY[0x277CBEB98] set];
LABEL_32:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __74__PGSharingSuggestionSourceActivity_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 peopledEvent];
  if (v3)
  {
    v4 = *(a1 + 32);
    v6 = v3;
    v5 = [v3 personNodes];
    [v4 unionSet:v5];

    v3 = v6;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

@end