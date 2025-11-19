@interface SBDaemonHandler
+ (BOOL)addRequest:(id)a3 forKey:(id)a4 forDaemonPid:(int)a5;
+ (id)stateDescription;
+ (void)initialize;
+ (void)noteDaemonCanceled:(id)a3;
+ (void)removeRequestForKey:(id)a3 forDaemonPid:(int)a4;
@end

@implementation SBDaemonHandler

+ (void)initialize
{
  if (initialize___once != -1)
  {
    +[SBDaemonHandler initialize];
  }
}

void __29__SBDaemonHandler_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = __daemonsByPid;
  __daemonsByPid = v0;

  Serial = BSDispatchQueueCreateSerial();
  v3 = __queue;
  __queue = Serial;
}

+ (BOOL)addRequest:(id)a3 forKey:(id)a4 forDaemonPid:(int)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v9 = __queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SBDaemonHandler_addRequest_forKey_forDaemonPid___block_invoke;
  v13[3] = &unk_2783B9A20;
  v17 = a5;
  v15 = v8;
  v16 = &v18;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, v13);
  LOBYTE(v9) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v9;
}

void __50__SBDaemonHandler_addRequest_forKey_forDaemonPid___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v2 = [__daemonsByPid objectForKey:?];
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [SBDaemonContext alloc];
  v4 = [(SBDaemonContext *)v3 initWithPid:*(a1 + 56) queue:__queue];
  if (v4)
  {
    v2 = v4;
    [__daemonsByPid setObject:v4 forKey:v5];
LABEL_4:
    [v2 addRequest:*(a1 + 32) forKey:*(a1 + 40)];

    goto LABEL_5;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_5:
}

+ (void)removeRequestForKey:(id)a3 forDaemonPid:(int)a4
{
  v5 = a3;
  v6 = __queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SBDaemonHandler_removeRequestForKey_forDaemonPid___block_invoke;
  v8[3] = &unk_2783AC098;
  v10 = a4;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __52__SBDaemonHandler_removeRequestForKey_forDaemonPid___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v2 = [__daemonsByPid objectForKey:?];
  v3 = v2;
  if (v2)
  {
    [v2 removeRequestForKey:*(a1 + 32)];
  }
}

+ (id)stateDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__74;
  v9 = __Block_byref_object_dispose__74;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBDaemonHandler_stateDescription__block_invoke;
  block[3] = &unk_2783A9718;
  block[4] = &v5;
  dispatch_sync(__queue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__SBDaemonHandler_stateDescription__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [__daemonsByPid allValues];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_6_0];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(__daemonsByPid, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) description];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBDaemonHandler state -> %@", v4];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t __35__SBDaemonHandler_stateDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInt:{objc_msgSend(a2, "pid")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 pid];

  v9 = [v7 numberWithInt:v8];
  v10 = [v6 compare:v9];

  return v10;
}

+ (void)noteDaemonCanceled:(id)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a3, "pid")}];
  [__daemonsByPid removeObjectForKey:v3];
}

@end