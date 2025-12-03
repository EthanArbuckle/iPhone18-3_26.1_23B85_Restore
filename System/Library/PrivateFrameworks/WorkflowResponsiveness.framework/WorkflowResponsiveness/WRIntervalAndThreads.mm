@interface WRIntervalAndThreads
- (id)encodedDict;
- (id)initWithStart:end:;
- (void)insertIntoSortedArray:(uint64_t)array;
@end

@implementation WRIntervalAndThreads

uint64_t __46__WRIntervalAndThreads_insertIntoSortedArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 start];
  v7 = [v6 machContTimeNs];
  v8 = [v5 start];
  v9 = [v8 machContTimeNs];

  if (v7 <= v9)
  {
    v11 = [v4 start];
    v12 = [v11 machContTimeNs];
    v13 = [v5 start];
    v14 = [v13 machContTimeNs];

    if (v12 >= v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)initWithStart:end:
{
  OUTLINED_FUNCTION_55();
  v3 = v1;
  v4 = v0;
  if (v2)
  {
    v7.receiver = v2;
    v7.super_class = WRIntervalAndThreads;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    v2 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, v1);
      objc_storeStrong(v2 + 2, v0);
    }
  }

  return v2;
}

- (id)encodedDict
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    start = [selfCopy start];
    [(WRTimestampAndThread *)start encodedDict];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_87() end];
    encodedDict = [(WRTimestampAndThread *)v5 encodedDict];
    selfCopy = [v3 initWithObjectsAndKeys:{v1, @"iat_start", encodedDict, @"iat_end", 0}];
  }

  return selfCopy;
}

- (void)insertIntoSortedArray:(uint64_t)array
{
  if (array)
  {
    v17 = a2;
    v2 = [v17 count];
    v8 = [OUTLINED_FUNCTION_80(v2 v3];
    [OUTLINED_FUNCTION_80(v8 v9];
  }
}

@end