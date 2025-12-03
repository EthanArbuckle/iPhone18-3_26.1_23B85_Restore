@interface PGSearchKeywordComputerKeywordAggregator
- (PGSearchKeywordComputerKeywordAggregator)init;
- (void)aggregateKeywordArraysByCategoryMask:(id)mask forMomentUUID:(id)d fromUniversalStartDate:(id)date toEndDate:(id)endDate;
- (void)aggregateKeywordsByCategoryMask:(id)mask forMomentNode:(id)node;
- (void)aggregateKeywordsByCategoryMask:(id)mask forMomentUUID:(id)d duringDateInterval:(id)interval;
@end

@implementation PGSearchKeywordComputerKeywordAggregator

- (void)aggregateKeywordArraysByCategoryMask:(id)mask forMomentUUID:(id)d fromUniversalStartDate:(id)date toEndDate:(id)endDate
{
  maskCopy = mask;
  dCopy = d;
  keywordsByCategoryMaskByDateIntervalByMomentUUID = self->_keywordsByCategoryMaskByDateIntervalByMomentUUID;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = [(NSMutableDictionary *)keywordsByCategoryMaskByDateIntervalByMomentUUID objectForKeyedSubscript:dCopy];
  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID setObject:v15 forKeyedSubscript:dCopy];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];

  dictionary = [v15 objectForKeyedSubscript:v16];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:dictionary forKeyedSubscript:v16];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __128__PGSearchKeywordComputerKeywordAggregator_aggregateKeywordArraysByCategoryMask_forMomentUUID_fromUniversalStartDate_toEndDate___block_invoke;
  v19[3] = &unk_278885788;
  v20 = dictionary;
  v18 = dictionary;
  [maskCopy enumerateKeysAndObjectsUsingBlock:v19];
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

- (void)aggregateKeywordsByCategoryMask:(id)mask forMomentUUID:(id)d duringDateInterval:(id)interval
{
  maskCopy = mask;
  dCopy = d;
  intervalCopy = interval;
  v10 = [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID objectForKeyedSubscript:dCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_keywordsByCategoryMaskByDateIntervalByMomentUUID setObject:v10 forKeyedSubscript:dCopy];
  }

  v11 = [v10 objectForKeyedSubscript:intervalCopy];
  v12 = v11;
  if (v11)
  {
    [v11 addEntriesFromDictionary:maskCopy];
  }

  else
  {
    v13 = [maskCopy mutableCopy];
    [v10 setObject:v13 forKeyedSubscript:intervalCopy];
  }
}

- (void)aggregateKeywordsByCategoryMask:(id)mask forMomentNode:(id)node
{
  v6 = MEMORY[0x277CCA970];
  nodeCopy = node;
  maskCopy = mask;
  v9 = [v6 alloc];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [v9 initWithStartDate:distantPast endDate:distantFuture];

  v12 = MEMORY[0x277CD9918];
  localIdentifier = [nodeCopy localIdentifier];

  v14 = [v12 uuidFromLocalIdentifier:localIdentifier];

  [(PGSearchKeywordComputerKeywordAggregator *)self aggregateKeywordsByCategoryMask:maskCopy forMomentUUID:v14 duringDateInterval:v15];
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