@interface TSKChangeCollector
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)threadCollector;
- (id)endCollectingChanges;
- (id)peekCollectedChanges;
- (void)beginCollectingChanges;
- (void)registerChange:(int)a3 details:(id)a4 forChangeSource:(id)a5;
@end

@implementation TSKChangeCollector

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSKChangeCollector;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)threadCollector
{
  result = threadCollector_sSingletonInstance;
  if (!threadCollector_sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!threadCollector_sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      threadCollector_sSingletonInstance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKChangeCollector threadCollector]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKChangeCollector.m"), 17, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return threadCollector_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKChangeCollector allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKChangeCollector.m"), 17, @"Don't alloc a singleton"}];
  return 0;
}

- (void)beginCollectingChanges
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  }

  v3 = objc_alloc_init(TSKChangeGroup);

  [v2 addObject:v3];
}

- (id)endCollectingChanges
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  if (![v2 count])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKChangeCollector endCollectingChanges]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKChangeCollector.m"), 34, @"Trying to endCollectingChanges without beginning (or calls have gotten out of sync)"}];
  }

  v5 = [v2 lastObject];
  [v2 removeLastObject];
  return v5;
}

- (id)peekCollectedChanges
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  result = [v2 count];
  if (result)
  {
    v4 = [objc_msgSend(v2 "lastObject")];

    return v4;
  }

  return result;
}

- (void)registerChange:(int)a3 details:(id)a4 forChangeSource:(id)a5
{
  v7 = *&a3;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] currentThread];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) registerChange:v7 details:a4 forChangeSource:a5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end