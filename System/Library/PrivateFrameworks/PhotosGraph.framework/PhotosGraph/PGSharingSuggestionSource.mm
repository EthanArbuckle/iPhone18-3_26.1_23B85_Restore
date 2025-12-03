@interface PGSharingSuggestionSource
- (id)description;
- (id)sourceDescription;
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
- (id)suggestionResultWithPerson:(id)person weight:(double)weight;
- (id)suggestionResultsWithPersons:(id)persons;
@end

@implementation PGSharingSuggestionSource

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  inputCopy = input;
  optionsCopy = options;
  abort();
}

- (id)suggestionResultsWithPersons:(id)persons
{
  v19 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = personsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PGSharingSuggestionSource *)self suggestionResultWithPerson:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)suggestionResultWithPerson:(id)person weight:(double)weight
{
  personCopy = person;
  v7 = [PGSharingSuggestionResult alloc];
  [(PGSharingSuggestionSource *)self weight];
  v9 = v8;
  name = [(PGSharingSuggestionSource *)self name];
  v11 = [(PGSharingSuggestionResult *)v7 initWithPerson:personCopy weight:name sourceWeight:weight sourceName:v9];

  return v11;
}

- (id)sourceDescription
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PGSharingSuggestionSource *)self name];
  [(PGSharingSuggestionSource *)self weight];
  v6 = [v3 stringWithFormat:@"%@ (weight %.2f)", name, v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGSharingSuggestionSource;
  v4 = [(PGSharingSuggestionSource *)&v9 description];
  name = [(PGSharingSuggestionSource *)self name];
  [(PGSharingSuggestionSource *)self weight];
  v7 = [v3 stringWithFormat:@"%@ - name:%@, weight:%.2f", v4, name, v6];

  return v7;
}

@end