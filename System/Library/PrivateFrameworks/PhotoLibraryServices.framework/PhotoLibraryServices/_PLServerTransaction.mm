@interface _PLServerTransaction
- (_PLServerTransaction)initWithPathManager:(id)manager identifier:(const char *)identifier;
- (id)changeScopes;
- (void)_enqueueChangeScopes:(id)scopes;
- (void)completeTransactionScope:(id)scope;
- (void)dealloc;
@end

@implementation _PLServerTransaction

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (([(_PLClientTransaction *)self fileDescriptor]& 0x80000000) == 0)
  {
    path = [(_PLClientTransaction *)self path];
    unlink([path fileSystemRepresentation]);
  }

  enqueuedChangeScopes = self->_enqueuedChangeScopes;
  self->_enqueuedChangeScopes = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  pdsaLock_postDelayedSaveActionsReplyBlocks = [(PLClientServerTransaction *)self pdsaLock_postDelayedSaveActionsReplyBlocks];
  v6 = [pdsaLock_postDelayedSaveActionsReplyBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(pdsaLock_postDelayedSaveActionsReplyBlocks);
        }

        (*(*(*(&v12 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [pdsaLock_postDelayedSaveActionsReplyBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  pdsaLock_postDelayedSaveActionsReplyBlocks2 = [(PLClientServerTransaction *)self pdsaLock_postDelayedSaveActionsReplyBlocks];
  [pdsaLock_postDelayedSaveActionsReplyBlocks2 removeAllObjects];

  v11.receiver = self;
  v11.super_class = _PLServerTransaction;
  [(_PLClientTransaction *)&v11 dealloc];
}

- (void)completeTransactionScope:(id)scope
{
  scopeCopy = scope;
  v3 = scopeCopy;
  pl_dispatch_sync();
}

- (id)changeScopes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__100187;
  v8 = __Block_byref_object_dispose__100188;
  v9 = 0;
  pl_dispatch_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_enqueueChangeScopes:(id)scopes
{
  scopesCopy = scopes;
  v3 = scopesCopy;
  pl_dispatch_sync();
}

- (_PLServerTransaction)initWithPathManager:(id)manager identifier:(const char *)identifier
{
  v10.receiver = self;
  v10.super_class = _PLServerTransaction;
  v4 = [(_PLClientTransaction *)&v10 initWithPathManager:manager identifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AB50]) initWithCapacity:8];
    enqueuedChangeScopes = v4->_enqueuedChangeScopes;
    v4->_enqueuedChangeScopes = v5;

    v7 = dispatch_queue_create("PLClientServerTransactionChangeScope", 0);
    changeScopeQueue = v4->_changeScopeQueue;
    v4->_changeScopeQueue = v7;
  }

  return v4;
}

@end