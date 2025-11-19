@interface PGSharingSuggestionSourceChildSocialGroup
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceChildSocialGroup

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = a4;
  v32 = v5;
  v6 = [v5 momentNodes];
  v33 = [v5 graph];
  v7 = objc_opt_new();
  v31 = [v33 meNode];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v10 = *v42;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __82__PGSharingSuggestionSourceChildSocialGroup_suggestedResultsForInput_withOptions___block_invoke;
        v38[3] = &unk_278889420;
        v39 = v7;
        v40 = &v45;
        [v12 enumeratePersonNodesUsingBlock:v38];
        if (*(v46 + 24) == 1)
        {
          v21 = [MEMORY[0x277CBEB98] set];
          v15 = v39;
          v14 = v8;
          goto LABEL_24;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([v7 count] <= 2 && objc_msgSend(v7, "count"))
  {
    if (v31)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [MEMORY[0x277CBEB58] set];
    [v33 socialGroupNodesSortedByImportance];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v15 = v35 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (v16)
    {
      v17 = *v35;
LABEL_16:
      v18 = 0;
      while (1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v34 + 1) + 8 * v18) personNodes];
        v20 = [v19 count];
        if (v20 != v13)
        {
          break;
        }

        [v14 unionSet:v19];

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v34 objects:v49 count:16];
          if (v16)
          {
            goto LABEL_16;
          }

          goto LABEL_36;
        }
      }

      if ([v14 count] && !objc_msgSend(v14, "intersectsSet:", v19) || !objc_msgSend(v19, "intersectsSet:", v7))
      {

        goto LABEL_36;
      }

      if (v20 >= 6)
      {
        v24 = +[PGGraphPersonNode personScoreSortDescriptors];
        v25 = [v19 sortedArrayUsingDescriptors:v24];

        v26 = MEMORY[0x277CBEB98];
        v27 = [v25 subarrayWithRange:{0, 5}];
        v28 = [v26 setWithArray:v27];

        v19 = v28;
      }

      v21 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v19];
    }

    else
    {
LABEL_36:

      v21 = [MEMORY[0x277CBEB98] set];
    }

LABEL_24:
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v45, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __82__PGSharingSuggestionSourceChildSocialGroup_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([v7 isMeNode] & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
    v5 = [v7 ageCategory];
    v6 = [v7 contactIdentifier];
    if ([v6 length])
    {

      if ((v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

@end