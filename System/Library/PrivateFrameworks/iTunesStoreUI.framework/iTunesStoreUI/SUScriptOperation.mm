@interface SUScriptOperation
+ (Class)postOperationClassForType:(id)type;
+ (void)registerPostOperationClass:(Class)class forType:(id)type;
- (SUScriptOperation)initWithOperation:(id)operation callback:(id)callback;
- (SUScriptOperation)initWithOperation:(id)operation options:(id)options;
- (SUScriptOperation)initWithPostType:(id)type options:(id)options;
- (id)_scriptOptions;
- (void)_sendCompletionCallback;
- (void)dealloc;
- (void)run;
- (void)setScriptOptions:(id)options;
@end

@implementation SUScriptOperation

- (SUScriptOperation)initWithOperation:(id)operation options:(id)options
{
  v6 = [(SUScriptOperation *)self init];
  if (v6)
  {
    v6->_options = options;
    operationCopy = operation;
    v6->_wrappedOperation = operationCopy;
    [(ISOperation *)operationCopy setScriptOptions:v6->_options];
  }

  return v6;
}

- (SUScriptOperation)initWithOperation:(id)operation callback:(id)callback
{
  v5 = [(SUScriptOperation *)self initWithOperation:operation options:0];
  if (v5)
  {
    v5->_callbackFunction = callback;
  }

  return v5;
}

- (SUScriptOperation)initWithPostType:(id)type options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() postOperationClassForType:type];
  if (v7)
  {
    v8 = objc_alloc_init(v7);
    v9 = [(SUScriptOperation *)self initWithOperation:v8 options:options];

    return v9;
  }

  else
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      typeCopy = type;
      LODWORD(v16) = 22;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v17, v16}];
        free(v15);
        SSFileLog();
      }
    }

    return 0;
  }
}

- (void)dealloc
{
  self->_options = 0;

  self->_wrappedOperation = 0;
  self->_callbackFunction = 0;
  v3.receiver = self;
  v3.super_class = SUScriptOperation;
  [(SUScriptOperation *)&v3 dealloc];
}

+ (Class)postOperationClassForType:(id)type
{
  _os_nospin_lock_lock();
  v4 = [__OperationClasses objectForKey:type];
  _os_nospin_lock_unlock();
  return v4;
}

+ (void)registerPostOperationClass:(Class)class forType:(id)type
{
  _os_nospin_lock_lock();
  v6 = __OperationClasses;
  if (__OperationClasses)
  {
    if (class)
    {
LABEL_3:
      [v6 setObject:class forKey:type];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __OperationClasses = v6;
    if (class)
    {
      goto LABEL_3;
    }
  }

  [v6 removeObjectForKey:type];
LABEL_6:

  _os_nospin_lock_unlock();
}

- (void)run
{
  v26 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    wrappedOperation = self->_wrappedOperation;
    v22 = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = wrappedOperation;
    LODWORD(v20) = 22;
    v18 = &v22;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v22, v20}];
      free(v9);
      v18 = v10;
      SSFileLog();
    }
  }

  v21 = 0;
  if ([(SUScriptOperation *)self runSubOperation:self->_wrappedOperation returningError:&v21, v18])
  {
    [(SUScriptOperation *)self setSuccess:1];
  }

  else
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v13 = shouldLog2 | 2;
    }

    else
    {
      v13 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v22 = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = v21;
      LODWORD(v20) = 22;
      v19 = &v22;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v22, v20}];
        free(v16);
        v19 = v17;
        SSFileLog();
      }
    }

    [(SUScriptOperation *)self setError:v21, v19];
  }

  [(SUScriptOperation *)self performSelectorOnMainThread:sel__sendCompletionCallback withObject:0 waitUntilDone:1];
}

- (void)setScriptOptions:(id)options
{
  [(SUScriptOperation *)self lock];
  options = self->_options;
  if (options != options)
  {

    self->_options = options;
  }

  [(SUScriptOperation *)self unlock];
}

- (id)_scriptOptions
{
  [(SUScriptOperation *)self lock];
  v3 = self->_options;
  [(SUScriptOperation *)self unlock];
  return v3;
}

- (void)_sendCompletionCallback
{
  v29 = *MEMORY[0x1E69E9840];
  _scriptOptions = [(SUScriptOperation *)self _scriptOptions];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!self->_callbackFunction)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v6 = shouldLog | 2;
      }

      else
      {
        v6 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v6 &= 2u;
      }

      if (v6)
      {
        *v28 = 138412290;
        *&v28[4] = objc_opt_class();
        LODWORD(v27) = 12;
        v26 = v28;
        v7 = _os_log_send_and_compose_impl();
        if (v7)
        {
          v8 = v7;
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, v28, v27}];
          free(v8);
          v26 = v9;
          SSFileLog();
        }
      }

      self->_callbackFunction = [_scriptOptions safeValueForKey:{@"completionCallback", v26}];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v13 = shouldLog2 | 2;
    }

    else
    {
      v13 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (isKindOfClass)
    {
      if (v13)
      {
        v14 = objc_opt_class();
        success = [(SUScriptOperation *)self success];
        *v28 = 138412546;
        *&v28[4] = v14;
        *&v28[12] = 1024;
        *&v28[14] = success;
        LODWORD(v27) = 18;
        v26 = v28;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v28, v27}];
          free(v17);
          v26 = v18;
          SSFileLog();
        }
      }

      wrappedOperation = self->_wrappedOperation;
      if (!wrappedOperation)
      {
        wrappedOperation = self;
      }

      [(ISOperation *)wrappedOperation sendCompletionCallback:self->_callbackFunction, v26];
      return;
    }

    if (!v13)
    {
      return;
    }

    v20 = objc_opt_class();
    *v28 = 138412290;
    *&v28[4] = v20;
    LODWORD(v27) = 12;
    goto LABEL_34;
  }

  mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
  if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
  {
    v23 = shouldLog3 | 2;
  }

  else
  {
    v23 = shouldLog3;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v23 &= 2u;
  }

  if (v23)
  {
    *v28 = 138412290;
    *&v28[4] = objc_opt_class();
    LODWORD(v27) = 12;
LABEL_34:
    v24 = _os_log_send_and_compose_impl();
    if (v24)
    {
      v25 = v24;
      [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, v28, v27, *v28}];
      free(v25);
      SSFileLog();
    }
  }
}

@end