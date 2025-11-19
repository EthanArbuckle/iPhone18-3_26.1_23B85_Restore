@interface TIInMemoryResultLogger
- (TIInMemoryResultLogger)init;
- (void)addResult:(id)a3;
- (void)enumerateResultsWithBlock:(id)a3;
@end

@implementation TIInMemoryResultLogger

- (void)enumerateResultsWithBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(TIInMemoryResultLogger *)self results];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addResult:(id)a3
{
  v4 = a3;
  v5 = [(TIInMemoryResultLogger *)self results];
  [v5 addObject:v4];
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