@interface SUScriptOperationDelegate
- (void)_removeOperation:(id)operation;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)enqueueOperation:(id)operation;
@end

@implementation SUScriptOperationDelegate

- (void)dealloc
{
  self->_lock = 0;
  [(SUScriptOperationDelegate *)self cancelAllOperations];

  self->_operations = 0;
  v3.receiver = self;
  v3.super_class = SUScriptOperationDelegate;
  [(SUScriptOperationDelegate *)&v3 dealloc];
}

- (void)cancelAllOperations
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_operations copy];
  [(NSMutableArray *)self->_operations removeAllObjects];
  [(NSLock *)self->_lock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 setScriptOptions:0];
        [v8 cancel];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)enqueueOperation:(id)operation
{
  [(NSLock *)self->_lock lock];
  operations = self->_operations;
  if (!operations)
  {
    operations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_operations = operations;
  }

  [(NSMutableArray *)operations addObject:operation];
  [(NSLock *)self->_lock unlock];
  [operation setDelegate:self];
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];

  [mainQueue addOperation:operation];
}

- (void)_removeOperation:(id)operation
{
  [operation setDelegate:0];
  [operation setScriptOptions:0];
  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_operations removeObject:operation];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

@end