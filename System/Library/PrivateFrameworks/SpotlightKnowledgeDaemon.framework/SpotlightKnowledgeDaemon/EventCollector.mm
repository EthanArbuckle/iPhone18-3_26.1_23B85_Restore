@interface EventCollector
- (EventCollector)init;
- (void)clear;
- (void)handleEventWithStr1:(id)str1 str2:(id)str2 num:(unint64_t)num;
- (void)printResultsWithBlock:(id)block;
@end

@implementation EventCollector

- (EventCollector)init
{
  v6.receiver = self;
  v6.super_class = EventCollector;
  v2 = [(EventCollector *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    collectedData = v2->_collectedData;
    v2->_collectedData = dictionary;
  }

  return v2;
}

- (void)handleEventWithStr1:(id)str1 str2:(id)str2 num:(unint64_t)num
{
  str2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@", str1, str2];
  collectedData = [(EventCollector *)self collectedData];
  v8 = [collectedData objectForKeyedSubscript:str2];

  if (!v8)
  {
    v9 = [&unk_2846E8628 mutableCopy];
    collectedData2 = [(EventCollector *)self collectedData];
    [collectedData2 setObject:v9 forKeyedSubscript:str2];
  }

  collectedData3 = [(EventCollector *)self collectedData];
  v12 = [collectedData3 objectForKeyedSubscript:str2];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v12 objectForKeyedSubscript:@"count"];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];
  [v12 setObject:v15 forKeyedSubscript:@"count"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v12 objectForKeyedSubscript:@"total"];
  v18 = [v16 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue") + num}];
  [v12 setObject:v18 forKeyedSubscript:@"total"];
}

- (void)printResultsWithBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  collectedData = [(EventCollector *)self collectedData];
  allKeys = [collectedData allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
        collectedData2 = [(EventCollector *)selfCopy collectedData];
        v13 = [collectedData2 objectForKeyedSubscript:v11];

        v14 = [v13 objectForKeyedSubscript:@"count"];
        unsignedLongLongValue = [v14 unsignedLongLongValue];

        v16 = [v13 objectForKeyedSubscript:@"total"];
        unsignedLongLongValue2 = [v16 unsignedLongLongValue];

        if (unsignedLongLongValue)
        {
          v18 = unsignedLongLongValue2 / unsignedLongLongValue;
        }

        else
        {
          v18 = 0.0;
        }

        v19 = [v11 componentsSeparatedByString:@"|"];
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v19 objectAtIndexedSubscript:1];
        __sprintf_chk(v30, 0, 0x400uLL, "type: %s, outcome: %s -> count: %llu, avg: %.2f, total:%llu", [v20 UTF8String], objc_msgSend(v21, "UTF8String"), unsignedLongLongValue, v18, unsignedLongLongValue2);
        blockCopy[2](blockCopy, v30);

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
  collectedData = [(EventCollector *)self collectedData];
  [collectedData removeAllObjects];
}

@end