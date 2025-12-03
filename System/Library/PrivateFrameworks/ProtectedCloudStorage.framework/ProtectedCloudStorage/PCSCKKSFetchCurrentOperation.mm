@interface PCSCKKSFetchCurrentOperation
- (PCSCKKSFetchCurrentOperation)initWithItemModifyContext:(id)context;
- (void)fetchComplete:(id)complete currentItemData:(id)data point:(id)point error:(id)error;
- (void)fetchCurrentItem:(id)item viewhint:(id)viewhint complete:(id)complete;
- (void)fetchPersistentRef:(id)ref persistentRef:(id)persistentRef;
- (void)start;
@end

@implementation PCSCKKSFetchCurrentOperation

- (PCSCKKSFetchCurrentOperation)initWithItemModifyContext:(id)context
{
  contextCopy = context;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([contextCopy set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!contextCopy)
  {
    goto LABEL_9;
  }

  serviceContexts = [contextCopy serviceContexts];
  v7 = [serviceContexts count];

  if (!v7 || (v18.receiver = self, v18.super_class = PCSCKKSFetchCurrentOperation, v8 = [(PCSCKKSFetchCurrentOperation *)&v18 init], (self = v8) == 0))
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v8->_context, context);
  serviceContexts2 = [contextCopy serviceContexts];
  v10 = [serviceContexts2 count];

  v11 = MEMORY[0x1E696AEC0];
  if (v10 == 1)
  {
    serviceContexts3 = [(PCSCKKSItemModifyContext *)self->_context serviceContexts];
    allKeys = [serviceContexts3 allKeys];
    v14 = [allKeys objectAtIndexedSubscript:0];
    v15 = [v11 stringWithFormat:@"FetchCurrentOperation service: %@", v14];
    [(PCSCKKSFetchCurrentOperation *)self setName:v15];
  }

  else
  {
    serviceContexts3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FetchCurrentOperation service: %@", @"bulk-service-identity-creation-identifier"];
    [(PCSCKKSFetchCurrentOperation *)self setName:serviceContexts3];
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)start
{
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSFetchCurrentOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    context = [(PCSCKKSFetchCurrentOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

    if (v4)
    {
      context2 = [(PCSCKKSFetchCurrentOperation *)self context];
      v6 = [context2 mtt];
      v7 = [v6 measurePoint:@"CKKSFetchCurrent"];

      context3 = [(PCSCKKSFetchCurrentOperation *)self context];
      serviceContexts = [context3 serviceContexts];
      allKeys = [serviceContexts allKeys];

      v11 = dispatch_group_create();
      if ([allKeys count])
      {
        v12 = 0;
        do
        {
          dispatch_group_enter(v11);
          v13 = [allKeys objectAtIndexedSubscript:v12];
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

        while ([allKeys count] > v12);
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

- (void)fetchComplete:(id)complete currentItemData:(id)data point:(id)point error:(id)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  dataCopy = data;
  pointCopy = point;
  errorCopy = error;
  context = [(PCSCKKSFetchCurrentOperation *)self context];
  v15 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v15)
  {
    persistentRef = [dataCopy persistentRef];

    if (errorCopy || !persistentRef)
    {
      v17 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = completeCopy;
        v36 = 2112;
        v37 = errorCopy;
        _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS current service %@: %@", buf, 0x16u);
      }
    }

    persistentRef2 = [dataCopy persistentRef];

    if (persistentRef2)
    {
      persistentRef3 = [dataCopy persistentRef];
      [(PCSCKKSFetchCurrentOperation *)self fetchPersistentRef:completeCopy persistentRef:persistentRef3];
    }

    else if ([errorCopy code] != -25300)
    {
      if (errorCopy)
      {
        [(PCSCKKSOperation *)self setError:errorCopy];
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v28 = kPCSErrorDomain;
        v32 = *MEMORY[0x1E696A578];
        completeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch current identity failed for service %@", completeCopy];
        v33 = completeCopy;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v31 = [v27 errorWithDomain:v28 code:104 userInfo:v30];
        [(PCSCKKSOperation *)self setError:v31];
      }

      v24 = pointCopy;
      v25 = 0;
      goto LABEL_14;
    }

    v24 = pointCopy;
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

- (void)fetchCurrentItem:(id)item viewhint:(id)viewhint complete:(id)complete
{
  v28[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  viewhintCopy = viewhint;
  completeCopy = complete;
  context = [(PCSCKKSFetchCurrentOperation *)self context];
  v12 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v12)
  {
    if (viewhintCopy || (PCSServiceItemGetCKKSViewByName(itemCopy), (viewhintCopy = objc_claimAutoreleasedReturnValue()) != 0))
    {
      PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Server fetching service %@ from view %@", itemCopy, viewhintCopy);
      v13 = off_1ED6F2388;
      AccessGroupByName = PCSServiceItemGetAccessGroupByName(itemCopy);
      (v13)(AccessGroupByName, itemCopy, viewhintCopy, 0, completeCopy);
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = kPCSErrorDomain;
      v25 = *MEMORY[0x1E696A578];
      viewhintCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No view hint for %@", itemCopy];
      v26 = viewhintCopy;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v23 = [v20 errorWithDomain:v21 code:102 userInfo:v22];
      completeCopy[2](completeCopy, 0, v23);
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

    completeCopy[2](completeCopy, 0, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchPersistentRef:(id)ref persistentRef:(id)persistentRef
{
  refCopy = ref;
  persistentRefCopy = persistentRef;
  context = [(PCSCKKSFetchCurrentOperation *)self context];
  v9 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if (v9)
  {
    context2 = [(PCSCKKSFetchCurrentOperation *)self context];
    serviceContexts = [context2 serviceContexts];
    v12 = [serviceContexts objectForKeyedSubscript:refCopy];

    [v12 setExistingItemReference:0];
    [v12 setExistingItemSHA1:0];
    [v12 setCurrentIdentity:0 persistentReference:0];
    context3 = [(PCSCKKSFetchCurrentOperation *)self context];
    dsid = [context3 dsid];
    v17 = 0;
    SHA1 = PCSIdentityCreateFromPersistentReferenceAndGetSHA1(persistentRefCopy, dsid, &v17);
    v16 = v17;

    [v12 setExistingItemReference:persistentRefCopy];
    [v12 setExistingItemSHA1:v16];
    if (SHA1)
    {
      [v12 setCurrentIdentity:SHA1 persistentReference:persistentRefCopy];
      CFRelease(SHA1);
    }

    else
    {
      PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Failed to create identity from persistent ref: %@", persistentRefCopy);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
  }
}

@end