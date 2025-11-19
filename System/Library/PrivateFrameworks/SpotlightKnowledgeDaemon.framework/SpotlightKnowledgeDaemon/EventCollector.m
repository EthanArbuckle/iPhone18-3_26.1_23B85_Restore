@interface EventCollector
- (EventCollector)init;
- (void)clear;
- (void)handleEventWithStr1:(id)a3 str2:(id)a4 num:(unint64_t)a5;
- (void)printResultsWithBlock:(id)a3;
@end

@implementation EventCollector

- (EventCollector)init
{
  v6.receiver = self;
  v6.super_class = EventCollector;
  v2 = [(EventCollector *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    collectedData = v2->_collectedData;
    v2->_collectedData = v3;
  }

  return v2;
}

- (void)handleEventWithStr1:(id)a3 str2:(id)a4 num:(unint64_t)a5
{
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@", a3, a4];
  v7 = [(EventCollector *)self collectedData];
  v8 = [v7 objectForKeyedSubscript:v19];

  if (!v8)
  {
    v9 = [&unk_2846E8628 mutableCopy];
    v10 = [(EventCollector *)self collectedData];
    [v10 setObject:v9 forKeyedSubscript:v19];
  }

  v11 = [(EventCollector *)self collectedData];
  v12 = [v11 objectForKeyedSubscript:v19];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v12 objectForKeyedSubscript:@"count"];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];
  [v12 setObject:v15 forKeyedSubscript:@"count"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v12 objectForKeyedSubscript:@"total"];
  v18 = [v16 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue") + a5}];
  [v12 setObject:v18 forKeyedSubscript:@"total"];
}

- (void)printResultsWithBlock:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = self;
  v5 = [(EventCollector *)self collectedData];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v24 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        bzero(v30, 0x400uLL);
        v12 = [(EventCollector *)v25 collectedData];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v13 objectForKeyedSubscript:@"count"];
        v15 = [v14 unsignedLongLongValue];

        v16 = [v13 objectForKeyedSubscript:@"total"];
        v17 = [v16 unsignedLongLongValue];

        if (v15)
        {
          v18 = v17 / v15;
        }

        else
        {
          v18 = 0.0;
        }

        v19 = [v11 componentsSeparatedByString:@"|"];
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v19 objectAtIndexedSubscript:1];
        __sprintf_chk(v30, 0, 0x400uLL, "type: %s, outcome: %s -> count: %llu, avg: %.2f, total:%llu", [v20 UTF8String], objc_msgSend(v21, "UTF8String"), v15, v18, v17);
        v4[2](v4, v30);

        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  v2 = [(EventCollector *)self collectedData];
  [v2 removeAllObjects];
}

@end