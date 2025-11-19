@interface PGSharingSuggestionResult
- (NSDictionary)dictionaryRepresentation;
- (PGSharingSuggestionResult)initWithPerson:(id)a3 weight:(double)a4 sourceWeight:(double)a5 sourceName:(id)a6;
- (id)description;
- (void)mergeWithSuggestionResult:(id)a3;
@end

@implementation PGSharingSuggestionResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGSharingSuggestionResult;
  v4 = [(PGSharingSuggestionResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - person:%@ weight:%.2f sourceWeight:%.2f sources:%@", v4, self->_person, *&self->_weight, *&self->_sourceWeight, self->_sourceNames];

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = [(PGSharingSuggestionResult *)self person];
  v4 = [v3 contactIdentifier];

  if (![(__CFString *)v4 length]&& [(PGSharingSuggestionResult *)self useContactSuggestion])
  {
    v5 = [(PGSharingSuggestionResult *)self person];
    v6 = [v5 suggestedContactIdentifier];

    v4 = v6;
  }

  v24[0] = @"localIdentifier";
  v7 = [(PGSharingSuggestionResult *)self person];
  v8 = [v7 localIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2843F5C58;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = &stru_2843F5C58;
  }

  v25[0] = v10;
  v25[1] = v11;
  v24[1] = @"contactIdentifier";
  v24[2] = @"displayName";
  v12 = [(PGSharingSuggestionResult *)self person];
  v13 = [v12 fullName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2843F5C58;
  }

  v25[2] = v15;
  v24[3] = @"score";
  v16 = MEMORY[0x277CCABB0];
  [(PGSharingSuggestionResult *)self score];
  v17 = [v16 numberWithDouble:?];
  v25[3] = v17;
  v24[4] = @"weight";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weight];
  v25[4] = v18;
  v24[5] = @"sourceWeight";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sourceWeight];
  v25[5] = v19;
  v24[6] = @"sourceNames";
  v20 = [(PGSharingSuggestionResult *)self sourceNames];
  v25[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)mergeWithSuggestionResult:(id)a3
{
  v12 = a3;
  [v12 weight];
  sourceWeight = self->_sourceWeight;
  self->_weight = v5 + self->_weight;
  if (sourceWeight > 0.25 || ([v12 sourceWeight], v6 > 0.25))
  {
    [v12 sourceWeight];
    self->_sourceWeight = v7 + self->_sourceWeight;
  }

  sourceNames = self->_sourceNames;
  v9 = [v12 sourceNames];
  v10 = [(NSArray *)sourceNames arrayByAddingObjectsFromArray:v9];
  v11 = self->_sourceNames;
  self->_sourceNames = v10;
}

- (PGSharingSuggestionResult)initWithPerson:(id)a3 weight:(double)a4 sourceWeight:(double)a5 sourceName:(id)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PGSharingSuggestionResult;
  v13 = [(PGSharingSuggestionResult *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_person, a3);
    v14->_weight = a4;
    v14->_sourceWeight = a5;
    v20[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    sourceNames = v14->_sourceNames;
    v14->_sourceNames = v15;

    v14->_useContactSuggestion = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

@end