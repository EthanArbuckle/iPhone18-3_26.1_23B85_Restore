@interface PCSCKKSItemModifyContext
- (PCSCKKSItemModifyContext)init;
- (void)dealloc;
- (void)resetIdentities;
- (void)setCurrentIdentityForService:(id)a3 identity:(_PCSIdentityData *)a4 persistentReference:(id)a5;
@end

@implementation PCSCKKSItemModifyContext

- (PCSCKKSItemModifyContext)init
{
  v11.receiver = self;
  v11.super_class = PCSCKKSItemModifyContext;
  v2 = [(PCSCKKSItemModifyContext *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(PCSMTT);
    mtt = v2->_mtt;
    v2->_mtt = v3;

    v5 = PCSCKKSItemContextTimeout;
    if (!PCSCKKSItemContextTimeout)
    {
      v6 = PCSTestsEnabled();
      v5 = 300;
      if (v6)
      {
        v5 = 5;
      }
    }

    v2->_timeoutValue = v5;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    serviceContexts = v2->_serviceContexts;
    v2->_serviceContexts = v7;

    v9 = v2;
  }

  return v2;
}

- (void)resetIdentities
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(PCSCKKSItemModifyContext *)self serviceContexts];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(PCSCKKSItemModifyContext *)self serviceContexts];
        v11 = [v10 objectForKeyedSubscript:v9];

        [v11 resetIdentity];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentIdentityForService:(id)a3 identity:(_PCSIdentityData *)a4 persistentReference:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(PCSCKKSItemModifyContext *)self serviceContexts];
  v10 = [v11 objectForKeyedSubscript:v9];

  [v10 setCurrentIdentity:a4 persistentReference:v8];
}

- (void)dealloc
{
  [(PCSCKKSItemModifyContext *)self resetIdentities];
  log = self->_log;
  if (log)
  {
    CFRelease(log);
  }

  v4.receiver = self;
  v4.super_class = PCSCKKSItemModifyContext;
  [(PCSCKKSItemModifyContext *)&v4 dealloc];
}

@end