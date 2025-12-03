@interface PGSharingSuggestionSourceLocationBasedFriend
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceLocationBasedFriend

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  graph = [inputCopy graph];
  v6 = [PGGraphMomentNodeCollection alloc];
  momentNodes = [inputCopy momentNodes];
  v8 = [(MAElementCollection *)v6 initWithArray:momentNodes graph:graph];

  v26 = v8;
  addressNodes = [(PGGraphMomentNodeCollection *)v8 addressNodes];
  cityNodes = [addressNodes cityNodes];

  v25 = cityNodes;
  addressNodes2 = [cityNodes addressNodes];
  momentNodes2 = [addressNodes2 momentNodes];

  v13 = [graph sortedSocialGroupNodesWithMomentNodes:momentNodes2];
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

      personNodes = [*(*(&v28 + 1) + 8 * v20) personNodes];
      [v14 unionSet:personNodes];

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