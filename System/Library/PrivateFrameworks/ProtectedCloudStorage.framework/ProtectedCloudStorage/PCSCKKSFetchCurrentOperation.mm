@interface PCSCKKSFetchCurrentOperation
- (PCSCKKSFetchCurrentOperation)initWithItemModifyContext:(id)a3;
- (void)fetchComplete:(id)a3 currentItemData:(id)a4 point:(id)a5 error:(id)a6;
- (void)fetchCurrentItem:(id)a3 viewhint:(id)a4 complete:(id)a5;
- (void)fetchPersistentRef:(id)a3 persistentRef:(id)a4;
- (void)start;
@end

@implementation PCSCKKSFetchCurrentOperation

- (PCSCKKSFetchCurrentOperation)initWithItemModifyContext:(id)a3
{
  v5 = a3;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([v5 set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 serviceContexts];
  v7 = [v6 count];

  if (!v7 || (v18.receiver = self, v18.super_class = PCSCKKSFetchCurrentOperation, v8 = [(PCSCKKSFetchCurrentOperation *)&v18 init], (self = v8) == 0))
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v8->_context, a3);
  v9 = [v5 serviceContexts];
  v10 = [v9 count];

  v11 = MEMORY[0x1E696AEC0];
  if (v10 == 1)
  {
    v12 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    v13 = [v12 allKeys];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v11 stringWithFormat:@"FetchCurrentOperation service: %@", v14];
    [(PCSCKKSFetchCurrentOperation *)self setName:v15];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FetchCurrentOperation service: %@", @"bulk-service-identity-creation-identifier"];
    [(PCSCKKSFetchCurrentOperation *)self setName:v12];
  }

  self = self;
  v16 = self;
LABEL_10:

  return v16;
}

- (void)start
{
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSFetchCurrentOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    v3 = [(PCSCKKSFetchCurrentOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([v3 set]);

    if (v4)
    {
      v5 = [(PCSCKKSFetchCurrentOperation *)self context];
      v6 = [v5 mtt];
      v7 = [v6 measurePoint:@"CKKSFetchCurrent"];

      v8 = [(PCSCKKSFetchCurrentOperation *)self context];
      v9 = [v8 serviceContexts];
      v10 = [v9 allKeys];

      v11 = dispatch_group_create();
      if ([v10 count])
      {
        v12 = 0;
        do
        {
          dispatch_group_enter(v11);
          v13 = [v10 objectAtIndexedSubscript:v12];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __37__PCSCKKSFetchCurrentOperation_start__block_invoke;
          v15[3] = &unk_1E7B1A208;
          v15[4] = self;
          v16 = v13;
          v17 = v7;
          v18 = v11;
          v14 = v13;
          [(PCSCKKSFetchCurrentOperation *)self fetchCurrentItem:v14 viewhint:0 complete:v15];

          ++v12;
        }

        while ([v10 count] > v12);
      }

      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      [(PCSCKKSOperation *)self completeOperation];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }
  }
}

void __37__PCSCKKSFetchCurrentOperation_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) fetchComplete:*(a1 + 40) currentItemData:a2 point:*(a1 + 48) error:a3];
  v4 = *(a1 + 56);

  dispatch_group_leave(v4);
}

- (void)fetchComplete:(id)a3 currentItemData:(id)a4 point:(id)a5 error:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PCSCKKSFetchCurrentOperation *)self context];
  v15 = PCSCurrentPersonaMatchesDSIDFromSet([v14 set]);

  if (v15)
  {
    v16 = [v11 persistentRef];

    if (v13 || !v16)
    {
      v17 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v10;
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS current service %@: %@", buf, 0x16u);
      }
    }

    v18 = [v11 persistentRef];

    if (v18)
    {
      v19 = [v11 persistentRef];
      [(PCSCKKSFetchCurrentOperation *)self fetchPersistentRef:v10 persistentRef:v19];
    }

    else if ([v13 code] != -25300)
    {
      if (v13)
      {
        [(PCSCKKSOperation *)self setError:v13];
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v28 = kPCSErrorDomain;
        v32 = *MEMORY[0x1E696A578];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch current identity failed for service %@", v10];
        v33 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v31 = [v27 errorWithDomain:v28 code:104 userInfo:v30];
        [(PCSCKKSOperation *)self setError:v31];
      }

      v24 = v12;
      v25 = 0;
      goto LABEL_14;
    }

    v24 = v12;
    v25 = 1;
LABEL_14:
    [v24 complete:v25];
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
  }

  v20 = MEMORY[0x1E696ABC0];
  v21 = kPCSErrorDomain;
  v38 = *MEMORY[0x1E696A578];
  v39[0] = @"dsid does not match current persona's account dsid";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v23 = [v20 errorWithDomain:v21 code:146 userInfo:v22];
  [(PCSCKKSOperation *)self setError:v23];

LABEL_15:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentItem:(id)a3 viewhint:(id)a4 complete:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PCSCKKSFetchCurrentOperation *)self context];
  v12 = PCSCurrentPersonaMatchesDSIDFromSet([v11 set]);

  if (v12)
  {
    if (v9 || (PCSServiceItemGetCKKSViewByName(v8), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Server fetching service %@ from view %@", v8, v9);
      v13 = off_1ED6F2388;
      AccessGroupByName = PCSServiceItemGetAccessGroupByName(v8);
      (v13)(AccessGroupByName, v8, v9, 0, v10);
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = kPCSErrorDomain;
      v25 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No view hint for %@", v8];
      v26 = v9;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v23 = [v20 errorWithDomain:v21 code:102 userInfo:v22];
      v10[2](v10, 0, v23);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = kPCSErrorDomain;
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"dsid does not match current persona's account dsid";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v18 = [v15 errorWithDomain:v16 code:146 userInfo:v17];

    v10[2](v10, 0, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchPersistentRef:(id)a3 persistentRef:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PCSCKKSFetchCurrentOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([v8 set]);

  if (v9)
  {
    v10 = [(PCSCKKSFetchCurrentOperation *)self context];
    v11 = [v10 serviceContexts];
    v12 = [v11 objectForKeyedSubscript:v6];

    [v12 setExistingItemReference:0];
    [v12 setExistingItemSHA1:0];
    [v12 setCurrentIdentity:0 persistentReference:0];
    v13 = [(PCSCKKSFetchCurrentOperation *)self context];
    v14 = [v13 dsid];
    v17 = 0;
    SHA1 = PCSIdentityCreateFromPersistentReferenceAndGetSHA1(v7, v14, &v17);
    v16 = v17;

    [v12 setExistingItemReference:v7];
    [v12 setExistingItemSHA1:v16];
    if (SHA1)
    {
      [v12 setCurrentIdentity:SHA1 persistentReference:v7];
      CFRelease(SHA1);
    }

    else
    {
      PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Failed to create identity from persistent ref: %@", v7);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
  }
}

@end