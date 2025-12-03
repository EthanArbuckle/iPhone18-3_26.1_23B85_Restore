@interface _PLClientTransaction
+ (id)_fdIsolationQueue;
+ (id)_fdResourceSemaphore;
- (OS_dispatch_semaphore)fdResourceSemaphore;
- (_PLClientTransaction)initWithPathManager:(id)manager;
- (_PLClientTransaction)initWithPathManager:(id)manager identifier:(const char *)identifier;
- (id)description;
- (id)generateChangeScopesDescription;
- (void)abortTransaction;
- (void)addChangeScopes:(id)scopes;
- (void)completeTransaction;
- (void)dealloc;
- (void)persistTransactionScopes:(id)scopes;
- (void)popChangeScopesBatch;
- (void)pushChangeScopesBatch;
@end

@implementation _PLClientTransaction

+ (id)_fdIsolationQueue
{
  pl_dispatch_once();
  v2 = _fdIsolationQueue_sQueue;

  return v2;
}

- (void)completeTransaction
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "%@ : %@", buf, 0x16u);
  }

  v6 = +[_PLClientTransaction _fdIsolationQueue];
  pl_dispatch_sync();
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "%@ : %@", buf, 0x16u);
  }

  v6 = +[_PLClientTransaction _fdIsolationQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __31___PLClientTransaction_dealloc__block_invoke;
  v11 = &unk_1E75781E8;
  selfCopy2 = self;
  pl_dispatch_sync();

  v7.receiver = self;
  v7.super_class = _PLClientTransaction;
  [(_PLClientTransaction *)&v7 dealloc];
}

+ (id)_fdResourceSemaphore
{
  pl_dispatch_once();
  v2 = _fdResourceSemaphore_fdResourceSem;

  return v2;
}

- (OS_dispatch_semaphore)fdResourceSemaphore
{
  WeakRetained = objc_loadWeakRetained(&self->_fdResourceSemaphore);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _PLClientTransaction;
  v4 = [(_PLClientTransaction *)&v11 description];
  transactionToken = [(PLClientServerTransaction *)self transactionToken];
  fileDescriptor = [(_PLClientTransaction *)self fileDescriptor];
  processAssertion = self->_processAssertion;
  changeScopesDescriptionSnapshot = [(_PLClientTransaction *)self changeScopesDescriptionSnapshot];
  v9 = [v3 stringWithFormat:@"%@ %@, fd %d, %@ %@", v4, transactionToken, fileDescriptor, processAssertion, changeScopesDescriptionSnapshot];

  return v9;
}

- (id)generateChangeScopesDescription
{
  changeScopes = [(_PLClientTransaction *)self changeScopes];
  v3 = [changeScopes description];

  return v3;
}

- (void)abortTransaction
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", &v7, 0x16u);
  }

  if (([(_PLClientTransaction *)self fileDescriptor]& 0x80000000) == 0)
  {
    path = [(_PLClientTransaction *)self path];
    unlink([path fileSystemRepresentation]);
  }
}

- (void)popChangeScopesBatch
{
  v3 = self->_addChangeScopesBatch - 1;
  self->_addChangeScopesBatch = v3;
  if (!v3)
  {
    if (self->_changeScopes && ![(NSSet *)self->_batchScopes isEqualToSet:?])
    {
      [(_PLClientTransaction *)self persistTransactionScopes:self->_changeScopes];
    }

    batchScopes = self->_batchScopes;
    self->_batchScopes = 0;
  }
}

- (void)pushChangeScopesBatch
{
  ++self->_addChangeScopesBatch;
  if (!self->_batchScopes)
  {
    changeScopes = self->_changeScopes;
    if (changeScopes)
    {
      v4 = [(NSSet *)changeScopes copy];
    }

    else
    {
      v4 = [MEMORY[0x1E695DFD8] set];
    }

    batchScopes = self->_batchScopes;
    self->_batchScopes = v4;
  }
}

- (void)addChangeScopes:(id)scopes
{
  scopesCopy = scopes;
  if ([scopesCopy count])
  {
    changeScopes = [(_PLClientTransaction *)self changeScopes];
    if (![changeScopes count] || (objc_msgSend(scopesCopy, "isSubsetOfSet:", changeScopes) & 1) == 0)
    {
      if (changeScopes)
      {
        v5 = [changeScopes setByAddingObjectsFromSet:scopesCopy];
        v6 = [v5 copy];
        changeScopes = self->_changeScopes;
        self->_changeScopes = v6;

        [(_PLClientTransaction *)self _updateChangeScopesDescriptionSnapshot];
      }

      else
      {
        v8 = [scopesCopy copy];
        v9 = self->_changeScopes;
        self->_changeScopes = v8;

        [(_PLClientTransaction *)self _updateChangeScopesDescriptionSnapshot];
      }

      if (!self->_addChangeScopesBatch)
      {
        [(_PLClientTransaction *)self persistTransactionScopes:self->_changeScopes];
      }
    }
  }
}

- (void)persistTransactionScopes:(id)scopes
{
  [PLClientServerTransaction scopeValuesFromScopes:scopes];
  v3 = +[_PLClientTransaction _fdIsolationQueue];
  pl_dispatch_sync();
}

- (_PLClientTransaction)initWithPathManager:(id)manager identifier:(const char *)identifier
{
  v10.receiver = self;
  v10.super_class = _PLClientTransaction;
  v5 = [(PLClientServerTransaction *)&v10 initWithPathManager:manager];
  v6 = v5;
  if (v5)
  {
    v5->_fileDescriptor = -1;
    if (PLIsAssetsd())
    {
      v7 = [MEMORY[0x1E69BF360] transaction:identifier];
    }

    else
    {
      v7 = [[PLProcessAssertion alloc] initWithIdentifier:@"com.apple.photos.clientServerTransaction"];
    }

    processAssertion = v6->_processAssertion;
    v6->_processAssertion = v7;

    [(_PLClientTransaction *)v6 setChangeScopesDescriptionSnapshot:@"(unavailable)"];
  }

  return v6;
}

- (_PLClientTransaction)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v4 = _PFThrowMethodNotImplemented();
  return [(PLMigrationHistoryJournalEntryPayload *)v4 insertMigrationHistoryFromDataInManagedObjectContext:v5, v6];
}

@end