@interface PGSearchKeywordComputerKeywordAggregator
- (PGSearchKeywordComputerKeywordAggregator)init;
- (void)aggregateKeywordArraysByCategoryMask:(id)a3 forMomentUUID:(id)a4 fromUniversalStartDate:(id)a5 toEndDate:(id)a6;
- (void)aggregateKeywordsByCategoryMask:(id)a3 forMomentNode:(id)a4;
- (void)aggregateKeywordsByCategoryMask:(id)a3 forMomentUUID:(id)a4 duringDateInterval:(id)a5;
@end

@implementation PGSearchKeywordComputerKeywordAggregator

- (void)aggregateKeywordArraysByCategoryMask:(id)a3 forMomentUUID:(id)a4 fromUniversalStartDate:(id)a5 toEndDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  keywordsByCategoryMaskByDateIntervalByMomentUUID = self->_keywordsByCategoryMaskByDateIntervalByMomentUUID;
  v13 = a6;
  v14 = a5;
  v15 = [(NSMutableDictionary *)keywordsByCategoryMaskByDateIntervalByMomentUUID objectForKeyedSubscript:v11];
  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID setObject:v15 forKeyedSubscript:v11];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v13];

  v17 = [v15 objectForKeyedSubscript:v16];
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:v17 forKeyedSubscript:v16];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __128__PGSearchKeywordComputerKeywordAggregator_aggregateKeywordArraysByCategoryMask_forMomentUUID_fromUniversalStartDate_toEndDate___block_invoke;
  v19[3] = &unk_278885788;
  v20 = v17;
  v18 = v17;
  [v10 enumerateKeysAndObjectsUsingBlock:v19];
}

void __128__PGSearchKeywordComputerKeywordAggregator_aggregateKeywordArraysByCategoryMask_forMomentUUID_fromUniversalStartDate_toEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addObjectsFromArray:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];

    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

- (void)aggregateKeywordsByCategoryMask:(id)a3 forMomentUUID:(id)a4 duringDateInterval:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    [v11 addEntriesFromDictionary:v14];
  }

  else
  {
    v13 = [v14 mutableCopy];
    [v10 setObject:v13 forKeyedSubscript:v9];
  }
}

- (void)aggregateKeywordsByCategoryMask:(id)a3 forMomentNode:(id)a4
{
  v6 = MEMORY[0x277CCA970];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x277CBEAA8] distantPast];
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [v9 initWithStartDate:v10 endDate:v11];

  v12 = MEMORY[0x277CD9918];
  v13 = [v7 localIdentifier];

  v14 = [v12 uuidFromLocalIdentifier:v13];

  [(PGSearchKeywordComputerKeywordAggregator *)self aggregateKeywordsByCategoryMask:v8 forMomentUUID:v14 duringDateInterval:v15];
}

- (PGSearchKeywordComputerKeywordAggregator)init
{
  v6.receiver = self;
  v6.super_class = PGSearchKeywordComputerKeywordAggregator;
  v2 = [(PGSearchKeywordComputerKeywordAggregator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keywordsByCategoryMaskByDateIntervalByMomentUUID = v2->_keywordsByCategoryMaskByDateIntervalByMomentUUID;
    v2->_keywordsByCategoryMaskByDateIntervalByMomentUUID = v3;
  }

  return v2;
}

@end