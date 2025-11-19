@interface PSSysHealthClient
- (PSSysHealthClient)initWithName:(id)a3;
- (void)dealloc;
- (void)updateSystemHealth:(pssh_health_state_s *)a3;
- (void)updateSystemHealthWithProfile:(unint64_t)a3 missesAllowed:(id)a4 poll_interval_secs:(unsigned int)a5;
@end

@implementation PSSysHealthClient

- (PSSysHealthClient)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PSSysHealthClient;
  v5 = [(PSSysHealthClient *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PSSysHealthClient *)v5 setName:v4];
    v7 = [[PSSGClient alloc] initWithSessionName:v4 delegate:0];
    [(PSSysHealthClient *)v6 setSystemGraphClient:v7];

    v8 = [(PSSysHealthClient *)v6 systemGraphClient];
    [v8 registerClient];
  }

  return v6;
}

- (void)updateSystemHealth:(pssh_health_state_s *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NSString *)self->_name UTF8String];
    v7 = [(PSSysHealthClient *)self stringifyHealthData:a3];
    v11 = 136315394;
    v12 = v6;
    v13 = 2080;
    v14 = [v7 UTF8String];
    _os_log_impl(&dword_25ECD8000, v5, OS_LOG_TYPE_INFO, "SysHealth req: %s->%s", &v11, 0x16u);
  }

  systemGraphClient = self->_systemGraphClient;
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:16 freeWhenDone:1];
  [(PSSGClient *)systemGraphClient updateSystemHealth:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSystemHealthWithProfile:(unint64_t)a3 missesAllowed:(id)a4 poll_interval_secs:(unsigned int)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v9[1] = 0;
  *v9 = a3;
  if (v8)
  {
    v20 = a5;
    v21 = self;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          v17 = [v16 intValue];
          *(v9 + [v15 intValue] + 8) = v17;
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    self = v21;
    v18 = v20;
  }

  else
  {
    v18 = 0;
  }

  *(v9 + 3) = v18;
  [(PSSysHealthClient *)self updateSystemHealth:v9];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(PSSysHealthClient *)self systemGraphClient];
  [v3 deregisterClient];

  v4.receiver = self;
  v4.super_class = PSSysHealthClient;
  [(PSSysHealthClient *)&v4 dealloc];
}

@end