@interface NSThread(TSPersistence)
+ (uint64_t)tsp_hasReadFileAccess;
+ (uint64_t)tsp_isArchiverThread;
+ (void)tsp_performSynchronousOperationMarkingThreadWithKey:()TSPersistence usingBlock:;
@end

@implementation NSThread(TSPersistence)

+ (uint64_t)tsp_isArchiverThread
{
  currentThread = [self currentThread];
  threadDictionary = [currentThread threadDictionary];
  v3 = [threadDictionary objectForKey:@"TSPIsArchiverThread"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (uint64_t)tsp_hasReadFileAccess
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v2 = [threadDictionary objectForKeyedSubscript:@"TSPHasFileAccess"];
  if ([v2 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v4 = [threadDictionary objectForKeyedSubscript:@"TSPIsArchiverThread"];
    bOOLValue = [v4 BOOLValue];
  }

  return bOOLValue;
}

+ (void)tsp_performSynchronousOperationMarkingThreadWithKey:()TSPersistence usingBlock:
{
  v9 = a3;
  v5 = a4;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v8 = [threadDictionary objectForKeyedSubscript:v9];
  [threadDictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v9];
  v5[2](v5);
  if (v8)
  {
    [threadDictionary setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    [threadDictionary removeObjectForKey:v9];
  }
}

@end