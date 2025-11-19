@interface PGSharingSuggestionSourceTimeBasedFriend
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceTimeBasedFriend

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 graph];
  v6 = [PGGraphMomentNodeCollection alloc];
  v7 = [v4 momentNodes];
  v8 = [(MAElementCollection *)v6 initWithArray:v7 graph:v5];

  v26 = v8;
  v9 = [(PGGraphMomentNodeCollection *)v8 dateNodes];
  v10 = [v9 yearNodes];

  v25 = v10;
  v11 = [v10 dateNodes];
  v12 = [v11 momentNodes];

  v13 = [v5 sortedSocialGroupNodesWithMomentNodes:v12];
  v14 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v29;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = [*(*(&v28 + 1) + 8 * v20) personNodes];
      [v14 unionSet:v21];

      if (v18)
      {
        break;
      }

      ++v20;
      v18 = 1;
      if (v17 == v20)
      {
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v14];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end