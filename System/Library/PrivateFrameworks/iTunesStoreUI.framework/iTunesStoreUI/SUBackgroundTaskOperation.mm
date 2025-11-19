@interface SUBackgroundTaskOperation
- (ISOperation)operation;
- (NSString)permissionIdentifier;
- (SUBackgroundTaskOperation)initWithOperation:(id)a3 identifier:(id)a4;
- (void)_cancelBackgroundAssertion;
- (void)_removeBackgroundAssertion;
- (void)_takeBackgroundAssertion;
- (void)dealloc;
- (void)run;
@end

@implementation SUBackgroundTaskOperation

- (SUBackgroundTaskOperation)initWithOperation:(id)a3 identifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUBackgroundTaskOperation;
  v6 = [(SUBackgroundTaskOperation *)&v8 init];
  if (v6)
  {
    v6->_operation = a3;
    v6->_permissionIdentifier = a4;
    v6->_taskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUBackgroundTaskOperation;
  [(SUBackgroundTaskOperation *)&v3 dealloc];
}

- (ISOperation)operation
{
  v2 = self->_operation;

  return v2;
}

- (NSString)permissionIdentifier
{
  v2 = self->_permissionIdentifier;

  return v2;
}

- (void)run
{
  [-[SUBackgroundTaskOperation blockingMainThreadProxy](self "blockingMainThreadProxy")];
  v3 = 0;
  [(SUBackgroundTaskOperation *)self setSuccess:[(SUBackgroundTaskOperation *)self runSubOperation:self->_operation returningError:&v3]];
  [(SUBackgroundTaskOperation *)self setError:v3];
  [-[SUBackgroundTaskOperation blockingMainThreadProxy](self "blockingMainThreadProxy")];
}

- (void)_cancelBackgroundAssertion
{
  [(SUBackgroundTaskOperation *)self cancel];

  [(SUBackgroundTaskOperation *)self _removeBackgroundAssertion];
}

- (void)_removeBackgroundAssertion
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DDBE8];
  if (self->_taskIdentifier != *MEMORY[0x1E69DDBE8])
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v7 = objc_opt_class();
      permissionIdentifier = self->_permissionIdentifier;
      operation = self->_operation;
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = permissionIdentifier;
      v19 = 2112;
      v20 = operation;
      LODWORD(v14) = 32;
      v13 = &v15;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v15, v14}];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];
    self->_taskIdentifier = v2;
  }
}

- (void)_takeBackgroundAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    permissionIdentifier = self->_permissionIdentifier;
    operation = self->_operation;
    v16 = 138412802;
    v17 = v6;
    v18 = 2112;
    v19 = permissionIdentifier;
    v20 = 2112;
    v21 = operation;
    LODWORD(v14) = 32;
    v13 = &v16;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v16, v14}];
      free(v10);
      v13 = v11;
      SSFileLog();
    }
  }

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SUBackgroundTaskOperation__takeBackgroundAssertion__block_invoke;
  v15[3] = &unk_1E8164348;
  v15[4] = self;
  self->_taskIdentifier = [v12 beginBackgroundTaskWithExpirationHandler:v15];
}

@end