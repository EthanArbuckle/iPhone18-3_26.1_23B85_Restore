@interface PLManagedObjectContextList
- (PLManagedObjectContextList)init;
- (id)allContexts;
- (id)allContextsNotIdenticalTo:(id)a3;
- (void)addContext:(id)a3;
@end

@implementation PLManagedObjectContextList

- (PLManagedObjectContextList)init
{
  v8.receiver = self;
  v8.super_class = PLManagedObjectContextList;
  v2 = [(PLManagedObjectContextList *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    contexts = v3->_contexts;
    v3->_contexts = v4;

    v6 = v3;
  }

  return v3;
}

- (id)allContexts
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __41__PLManagedObjectContextList_allContexts__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) allObjects];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)allContextsNotIdenticalTo:(id)a3
{
  v3 = a3;
  [MEMORY[0x1E695DF70] array];
  v8 = v7 = v3;
  v4 = v3;
  PLRunWithUnfairLock();
  v5 = v8;

  return v8;
}

void __56__PLManagedObjectContextList_allContextsNotIdenticalTo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 && v8 != *(a1 + 40))
        {
          [*(a1 + 48) addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)addContext:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

void __41__PLManagedObjectContextList_addContext___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

@end