@interface NSThread(TSPersistence)
+ (uint64_t)tsp_hasReadFileAccess;
+ (uint64_t)tsp_isArchiverThread;
+ (void)tsp_performSynchronousOperationMarkingThreadWithKey:()TSPersistence usingBlock:;
@end

@implementation NSThread(TSPersistence)

+ (uint64_t)tsp_isArchiverThread
{
  v1 = [a1 currentThread];
  v2 = [v1 threadDictionary];
  v3 = [v2 objectForKey:@"TSPIsArchiverThread"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (uint64_t)tsp_hasReadFileAccess
{
  v0 = [MEMORY[0x277CCACC8] currentThread];
  v1 = [v0 threadDictionary];

  v2 = [v1 objectForKeyedSubscript:@"TSPHasFileAccess"];
  if ([v2 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:@"TSPIsArchiverThread"];
    v3 = [v4 BOOLValue];
  }

  return v3;
}

+ (void)tsp_performSynchronousOperationMarkingThreadWithKey:()TSPersistence usingBlock:
{
  v9 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v6 threadDictionary];

  v8 = [v7 objectForKeyedSubscript:v9];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v9];
  v5[2](v5);
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    [v7 removeObjectForKey:v9];
  }
}

@end