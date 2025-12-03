@interface _TSF_IODConnection
+ (void)daemonClientRefresh;
- (_TSF_IODConnection)init;
- (void)dealloc;
@end

@implementation _TSF_IODConnection

- (_TSF_IODConnection)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_TSF_IODConnection init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (void)dealloc
{
  clientID = self->_clientID;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___TSF_IODConnection_dealloc__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v6 = clientID;
  dispatch_async(_dispatchQueue, block);
  v4.receiver = self;
  v4.super_class = _TSF_IODConnection;
  [(_TSF_IODConnection *)&v4 dealloc];
}

+ (void)daemonClientRefresh
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClientExported:daemonClientRefresh\n", buf, 2u);
  }

  os_unfair_lock_lock(&gClientsLock);
  allValues = [gClients allValues];
  os_unfair_lock_unlock(&gClientsLock);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = allValues;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v10 = v8[4];
        v9 = v8[5];
        v11 = v8[2];
        *buf = 0;
        v17 = buf;
        v18 = 0xA010000000;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
        v19 = &unk_26F0ED113;
        v20 = 1000;
        if (v11)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && v9 != 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41___TSF_IODConnection_daemonClientRefresh__block_invoke;
          block[3] = &unk_279DBD988;
          block[5] = v10;
          block[6] = v9;
          block[4] = buf;
          dispatch_async(v11, block);
        }

        _Block_object_dispose(buf, 8);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end