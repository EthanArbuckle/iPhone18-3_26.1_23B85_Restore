@interface TIInMemoryResultLogger
- (TIInMemoryResultLogger)init;
- (void)addResult:(id)result;
- (void)enumerateResultsWithBlock:(id)block;
@end

@implementation TIInMemoryResultLogger

- (void)enumerateResultsWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  results = [(TIInMemoryResultLogger *)self results];
  v6 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(results);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addResult:(id)result
{
  resultCopy = result;
  results = [(TIInMemoryResultLogger *)self results];
  [results addObject:resultCopy];
}

- (TIInMemoryResultLogger)init
{
  v6.receiver = self;
  v6.super_class = TIInMemoryResultLogger;
  v2 = [(TIInMemoryResultLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v2->_results;
    v2->_results = v3;
  }

  return v2;
}

@end