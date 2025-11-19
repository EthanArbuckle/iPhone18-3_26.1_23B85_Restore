@interface PCSCKKSSyncViewOperation
- (BOOL)ensureControl;
- (PCSCKKSSyncViewOperation)initWithItemModifyContext:(id)a3;
- (void)checkTLKStatus;
- (void)start;
- (void)syncView;
@end

@implementation PCSCKKSSyncViewOperation

- (PCSCKKSSyncViewOperation)initWithItemModifyContext:(id)a3
{
  v5 = a3;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([v5 set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 serviceContexts];
  v7 = [v6 count];

  if (!v7 || (v12.receiver = self, v12.super_class = PCSCKKSSyncViewOperation, v8 = [(PCSCKKSSyncViewOperation *)&v12 init], (self = v8) == 0))
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  objc_storeStrong(&v8->_context, a3);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SyncViewOperation"];
  [(PCSCKKSSyncViewOperation *)self setName:v9];

  self = self;
  v10 = self;
LABEL_9:

  return v10;
}

- (void)start
{
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSSyncViewOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    v3 = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([v3 set]);

    if (v4)
    {
      if ([(PCSCKKSItemModifyContext *)self->_context sync])
      {

        [(PCSCKKSSyncViewOperation *)self checkTLKStatus];
      }

      else
      {

        [(PCSCKKSOperation *)self completeOperation];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      [(PCSCKKSOperation *)self completeOperation];
    }
  }
}

- (BOOL)ensureControl
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PCSCKKSSyncViewOperation *)self context];
  v4 = PCSCurrentPersonaMatchesDSIDFromSet([v3 set]);

  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:46 userInfo:&unk_1F2998368];
    [(PCSCKKSOperation *)self setError:v6];
    goto LABEL_10;
  }

  v13 = 0;
  v5 = [MEMORY[0x1E697AA20] controlObject:&v13];
  v6 = v13;
  [(PCSCKKSSyncViewOperation *)self setCKKSControl:v5];

  v7 = [(PCSCKKSSyncViewOperation *)self CKKSControl];
  v8 = v7 != 0;

  if (!v7)
  {
    if (v6)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:109 userInfo:v9];
    [(PCSCKKSOperation *)self setError:v10];

LABEL_10:
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)checkTLKStatus
{
  v33[1] = *MEMORY[0x1E69E9840];
  if ([(PCSCKKSSyncViewOperation *)self ensureControl])
  {
    v3 = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([v3 set]);

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v6 = [(PCSCKKSSyncViewOperation *)self context];
      v7 = [v6 serviceContexts];

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = PCSServiceItemGetCKKSViewByName(*(*(&v25 + 1) + 8 * i));
            [v5 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v9);
      }

      v13 = [v5 allObjects];
      v14 = [v13 sortedArrayUsingSelector:sel_compare_];
      v15 = [v14 componentsJoinedByString:{@", "}];

      v16 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v15;
        _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "Checking if CKKS reports bad state for active views (%{public}@)", buf, 0xCu);
      }

      v17 = [(PCSCKKSSyncViewOperation *)self CKKSControl];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __42__PCSCKKSSyncViewOperation_checkTLKStatus__block_invoke;
      v24[3] = &unk_1E7B190E8;
      v24[4] = self;
      [v17 rpcKnownBadStateForViews:v13 reply:v24];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = kPCSErrorDomain;
      v32 = *MEMORY[0x1E696A578];
      v33[0] = @"dsid does not match current persona's account dsid";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v22 = [v19 errorWithDomain:v20 code:146 userInfo:v21];
      [(PCSCKKSOperation *)self setError:v22];

      [(PCSCKKSOperation *)self completeOperation];
    }

    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];

    [(PCSCKKSOperation *)self completeOperation];
  }
}

uint64_t __42__PCSCKKSSyncViewOperation_checkTLKStatus__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("ckks");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        if (v5)
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: Needs unlock", v10, 2u);
        }

        v6 = 132;
        goto LABEL_25;
      case 3:
        if (v5)
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: wait for Octagon", v10, 2u);
        }

        v6 = 156;
        goto LABEL_25;
      case 4:
        if (v5)
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: no CloudKit account", v10, 2u);
        }

        v6 = 157;
LABEL_25:

        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:v6 userInfo:0];
        [*(a1 + 32) setError:v8];

        result = [*(a1 + 32) completeOperation];
        goto LABEL_26;
    }

LABEL_22:
    if (v5)
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: unknown but likely fatal error: %d", v10, 8u);
    }

    v6 = 133;
    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (v5)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: TLKs missing", v10, 2u);
      }

      v6 = 108;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: Likely good", v10, 2u);
  }

  result = [*(a1 + 32) syncView];
LABEL_26:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)syncView
{
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(PCSCKKSSyncViewOperation *)self ensureControl])
  {
    v3 = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([v3 set]);

    if (v4)
    {
      v5 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "Syncing ckks views", buf, 2u);
      }

      v6 = [(PCSCKKSSyncViewOperation *)self context];
      v7 = [v6 mtt];
      v8 = [v7 measurePoint:@"CKKSSyncView"];

      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __36__PCSCKKSSyncViewOperation_syncView__block_invoke;
      v24 = &unk_1E7B19110;
      v25 = self;
      v26 = v8;
      v9 = v8;
      v10 = MEMORY[0x1B2745320](&v21);
      v11 = [(PCSCKKSSyncViewOperation *)self context:v21];
      v12 = [v11 forceSync];

      v13 = [(PCSCKKSSyncViewOperation *)self CKKSControl];
      v14 = v13;
      if (v12)
      {
        [v13 rpcFetchAndProcessChanges:0 reply:v10];
      }

      else
      {
        [v13 rpcFetchAndProcessChangesIfNoRecentFetch:0 reply:v10];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      v16 = MEMORY[0x1E696ABC0];
      v17 = kPCSErrorDomain;
      v28 = *MEMORY[0x1E696A578];
      v29[0] = @"dsid does not match current persona's account dsid";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = [v16 errorWithDomain:v17 code:146 userInfo:v18];
      [(PCSCKKSOperation *)self setError:v19];

      [(PCSCKKSOperation *)self completeOperation];
    }

    v20 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];

    [(PCSCKKSOperation *)self completeOperation];
  }
}

void __36__PCSCKKSSyncViewOperation_syncView__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 log];
  if (v5)
  {
    PCSMigrationLog(v4, @"Syncing CKKS views failed with: %@", v5);

    [*(a1 + 32) setError:v5];
  }

  else
  {
    PCSMigrationLog(v4, @"Syncing CKKS views successful");
  }

  [*(a1 + 40) complete:v5 == 0];
  [*(a1 + 32) completeOperation];
}

@end