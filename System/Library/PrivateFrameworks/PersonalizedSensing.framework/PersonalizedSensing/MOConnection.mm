@interface MOConnection
- (BOOL)runBlockCompleted:(id)completed;
- (MOConnection)initWithName:(id)name;
- (MOConnectionDelegate)delegate;
- (id)onConnectionInterrupted;
- (id)runBlockStarted:(id)started withConnectionError:(id)error;
- (void)callBlock:(id)block onInterruption:(id)interruption;
@end

@implementation MOConnection

- (MOConnection)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MOConnection;
  v6 = [(MOConnection *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingRequests = v6->_pendingRequests;
    v6->_pendingRequests = v7;

    v6->_pendingRequestCounter = 0;
    objc_storeStrong(&v6->_name, name);
    v6->_interruptActive = 0;
  }

  return v6;
}

- (void)callBlock:(id)block onInterruption:(id)interruption
{
  blockCopy = block;
  interruptionCopy = interruption;
  v8 = [(MOConnection *)self runBlockStarted:blockCopy withConnectionError:interruptionCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  interruptActive = selfCopy->_interruptActive;
  objc_sync_exit(selfCopy);

  if (!interruptActive && v8)
  {
    objc_initWeak(&location, selfCopy);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__MOConnection_callBlock_onInterruption___block_invoke;
    v11[3] = &unk_279A1EF10;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    blockCopy[2](blockCopy, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

uint64_t __41__MOConnection_callBlock_onInterruption___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained runBlockCompleted:*(a1 + 32)];

  return v3;
}

- (id)runBlockStarted:(id)started withConnectionError:(id)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  startedCopy = started;
  errorCopy = error;
  if (startedCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    ++selfCopy->_pendingRequestCounter;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v15[0] = @"requestBlock";
    v10 = MEMORY[0x25F8B4BE0](startedCopy);
    v15[1] = @"interruptionBlock";
    v16[0] = v10;
    v11 = MEMORY[0x25F8B4BE0](errorCopy);
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(NSMutableDictionary *)selfCopy->_pendingRequests setObject:v12 forKeyedSubscript:v9];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)runBlockCompleted:(id)completed
{
  completedCopy = completed;
  if (completedCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_pendingRequests objectForKeyedSubscript:completedCopy];

    [(NSMutableDictionary *)selfCopy->_pendingRequests removeObjectForKey:completedCopy];
    v7 = v6 != 0;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)onConnectionInterrupted
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__MOConnection_onConnectionInterrupted__block_invoke;
  v8[3] = &unk_279A1EF38;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x25F8B4BE0](v8);
  v6 = MEMORY[0x25F8B4BE0](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __39__MOConnection_onConnectionInterrupted__block_invoke(uint64_t a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v32 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    if (*(v2 + 32) == 1)
    {
      objc_sync_exit(v2);
    }

    else
    {
      *(v2 + 32) = 1;
      v3 = [v2[1] copy];
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = v2[1];
      v2[1] = v4;

      objc_sync_exit(v2);
      v6 = [v3 count] == 0;
      v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __39__MOConnection_onConnectionInterrupted__block_invoke_cold_2(v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __39__MOConnection_onConnectionInterrupted__block_invoke_cold_1(v2, v3, v8);
      }

      v9 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48[0] = @"remote process execution was interrupted";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v34 = [v9 errorWithDomain:@"MOErrorDomain" code:4097 userInfo:v10];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        v13 = *v42;
        do
        {
          v14 = 0;
          do
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v41 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v17 = [v11 objectForKeyedSubscript:v15];
            v18 = [v17 objectForKeyedSubscript:@"interruptionBlock"];
            (v18)[2](v18, v34);

            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v12);
      }

      v19 = v2;
      objc_sync_enter(v19);
      v20 = [v2[1] copy];
      if ([v20 count])
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v22 = v2[1];
        v2[1] = v21;
      }

      *(v2 + 32) = 0;
      objc_sync_exit(v19);

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = v20;
      v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v24)
      {
        v25 = *v38;
        do
        {
          v26 = 0;
          do
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v37 + 1) + 8 * v26);
            v28 = objc_autoreleasePoolPush();
            v29 = [v23 objectForKeyedSubscript:v27];
            v30 = [v29 objectForKeyedSubscript:@"requestBlock"];
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __39__MOConnection_onConnectionInterrupted__block_invoke_29;
            v35[3] = &unk_279A1EF10;
            objc_copyWeak(&v36, (a1 + 32));
            v35[4] = v27;
            (v30)[2](v30, v35);
            objc_destroyWeak(&v36);

            objc_autoreleasePoolPop(v28);
            ++v26;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v24);
      }
    }

    WeakRetained = v32;
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __39__MOConnection_onConnectionInterrupted__block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained runBlockCompleted:*(a1 + 32)];

  return v3;
}

- (MOConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__MOConnection_onConnectionInterrupted__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 24) UTF8String];
  v7 = 136315394;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 count];
  _os_log_fault_impl(&dword_25E48F000, a3, OS_LOG_TYPE_FAULT, "[%s] The connection has been interrupted with %lu pending tasks", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__MOConnection_onConnectionInterrupted__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 24) UTF8String];
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_25E48F000, a2, OS_LOG_TYPE_ERROR, "[%s] The connection has been interrupted with zero pending tasks", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end