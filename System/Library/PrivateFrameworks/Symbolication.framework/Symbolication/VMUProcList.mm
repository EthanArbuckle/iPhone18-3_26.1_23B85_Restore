@interface VMUProcList
- (BOOL)update;
- (BOOL)updateFromSystem;
- (VMUProcList)init;
- (id)allNames;
- (id)allPIDs;
- (id)allPathNames;
- (id)allProcInfos;
- (id)newestProcInfoWithName:(id)a3;
- (unint64_t)count;
- (void)_populateFromSystem;
- (void)addProcInfo:(id)a3;
- (void)removeProcInfo:(id)a3;
- (void)setProcInfos:(id)a3;
@end

@implementation VMUProcList

- (VMUProcList)init
{
  v10.receiver = self;
  v10.super_class = VMUProcList;
  v2 = [(VMUProcList *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    procLock = v2->procLock;
    v2->procLock = v3;

    v5 = objc_opt_new();
    allProcs = v2->allProcs;
    v2->allProcs = v5;

    v7 = objc_opt_new();
    filteredProcs = v2->filteredProcs;
    v2->filteredProcs = v7;

    [(VMUProcList *)v2 updateFromSystem];
  }

  return v2;
}

- (void)setProcInfos:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSLock *)self->procLock lock];
  [(NSMutableDictionary *)self->allProcs removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        allProcs = self->allProcs;
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "pid", v14)}];
        [(NSMutableDictionary *)allProcs setObject:v10 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->procLock unlock];
  [(VMUProcList *)self update];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addProcInfo:(id)a3
{
  procLock = self->procLock;
  v5 = a3;
  [(NSLock *)procLock lock];
  allProcs = self->allProcs;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "pid")}];
  [(NSMutableDictionary *)allProcs setObject:v5 forKeyedSubscript:v7];

  [(NSLock *)self->procLock unlock];

  [(VMUProcList *)self update];
}

- (void)removeProcInfo:(id)a3
{
  procLock = self->procLock;
  v5 = a3;
  [(NSLock *)procLock lock];
  allProcs = self->allProcs;
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 pid];

  v9 = [v7 numberWithInt:v8];
  [(NSMutableDictionary *)allProcs removeObjectForKey:v9];

  [(NSLock *)self->procLock unlock];

  [(VMUProcList *)self update];
}

- (BOOL)update
{
  [(NSLock *)self->procLock lock];
  v3 = objc_opt_new();
  allProcs = self->allProcs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__VMUProcList_update__block_invoke;
  v9[3] = &unk_1E8278848;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)allProcs enumerateKeysAndObjectsUsingBlock:v9];
  LOBYTE(allProcs) = [(NSMutableDictionary *)v5 isEqualToDictionary:self->filteredProcs];
  filteredProcs = self->filteredProcs;
  self->filteredProcs = v5;
  v7 = v5;

  [(NSLock *)self->procLock unlock];
  return allProcs ^ 1;
}

- (void)_populateFromSystem
{
  v25 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = +[VMUProcInfo getProcessIds];
  v4 = getpid();
  v5 = objc_opt_new();
  [(NSLock *)self->procLock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 unsignedIntValue];
        if (v12)
        {
          v13 = v12 == v4;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = v12;
          v15 = [(NSMutableDictionary *)self->allProcs objectForKeyedSubscript:v11];
          if (!v15)
          {
            v15 = [[VMUProcInfo alloc] initWithPid:v14];
          }

          [(NSMutableDictionary *)v5 setObject:v15 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  allProcs = self->allProcs;
  self->allProcs = v5;
  v17 = v5;

  [(NSLock *)self->procLock unlock];
  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateFromSystem
{
  [(VMUProcList *)self _populateFromSystem];

  return [(VMUProcList *)self update];
}

- (unint64_t)count
{
  [(NSLock *)self->procLock lock];
  v3 = [(NSMutableDictionary *)self->filteredProcs count];
  [(NSLock *)self->procLock unlock];
  return v3;
}

- (id)allProcInfos
{
  [(NSLock *)self->procLock lock];
  v3 = [(NSMutableDictionary *)self->filteredProcs allValues];
  [(NSLock *)self->procLock unlock];

  return v3;
}

- (id)allPIDs
{
  [(NSLock *)self->procLock lock];
  v3 = [(NSMutableDictionary *)self->filteredProcs allKeys];
  [(NSLock *)self->procLock unlock];

  return v3;
}

- (id)allNames
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->procLock lock];
  filteredProcs = self->filteredProcs;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__VMUProcList_allNames__block_invoke;
  v7[3] = &unk_1E8278848;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)filteredProcs enumerateKeysAndObjectsUsingBlock:v7];
  [(NSLock *)self->procLock unlock];

  return v5;
}

void __23__VMUProcList_allNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 name];
  [v3 addObject:v4];
}

- (id)allPathNames
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->procLock lock];
  filteredProcs = self->filteredProcs;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__VMUProcList_allPathNames__block_invoke;
  v7[3] = &unk_1E8278848;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)filteredProcs enumerateKeysAndObjectsUsingBlock:v7];
  [(NSLock *)self->procLock unlock];

  return v5;
}

void __27__VMUProcList_allPathNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 realAppName];
  [v3 addObject:v4];
}

- (id)newestProcInfoWithName:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[4] = 0;
  v18[5] = 0;
  v18[3] = &unk_1C6872315;
  v5 = getpid();
  [(NSLock *)self->procLock lock];
  filteredProcs = self->filteredProcs;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __38__VMUProcList_newestProcInfoWithName___block_invoke;
  v13 = &unk_1E8278870;
  v17 = v5;
  v7 = v4;
  v14 = v7;
  v15 = &v19;
  v16 = v18;
  [(NSMutableDictionary *)filteredProcs enumerateKeysAndObjectsUsingBlock:&v10];
  [(NSLock *)self->procLock unlock:v10];
  v8 = v20[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void __38__VMUProcList_newestProcInfoWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = [v17 startTime];
  v7 = v6;
  if ([v17 pid] != *(a1 + 56))
  {
    v8 = *(a1 + 32);
    if (!v8 || ([v17 name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v10))
    {
      v11 = *(*(a1 + 40) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (!v13 || (v14 = *(*(a1 + 48) + 8), v15 = *(v14 + 32), v5 > v15) || v5 == v15 && *(v14 + 40) < v7)
      {
        objc_storeStrong(v12, a3);
        v16 = *(*(a1 + 48) + 8);
        *(v16 + 32) = v5;
        *(v16 + 40) = v7;
      }
    }
  }
}

@end