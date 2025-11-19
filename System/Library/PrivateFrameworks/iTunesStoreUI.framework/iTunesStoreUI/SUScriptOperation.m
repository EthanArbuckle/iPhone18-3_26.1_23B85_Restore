@interface SUScriptOperation
+ (Class)postOperationClassForType:(id)a3;
+ (void)registerPostOperationClass:(Class)a3 forType:(id)a4;
- (SUScriptOperation)initWithOperation:(id)a3 callback:(id)a4;
- (SUScriptOperation)initWithOperation:(id)a3 options:(id)a4;
- (SUScriptOperation)initWithPostType:(id)a3 options:(id)a4;
- (id)_scriptOptions;
- (void)_sendCompletionCallback;
- (void)dealloc;
- (void)run;
- (void)setScriptOptions:(id)a3;
@end

@implementation SUScriptOperation

- (SUScriptOperation)initWithOperation:(id)a3 options:(id)a4
{
  v6 = [(SUScriptOperation *)self init];
  if (v6)
  {
    v6->_options = a4;
    v7 = a3;
    v6->_wrappedOperation = v7;
    [(ISOperation *)v7 setScriptOptions:v6->_options];
  }

  return v6;
}

- (SUScriptOperation)initWithOperation:(id)a3 callback:(id)a4
{
  v5 = [(SUScriptOperation *)self initWithOperation:a3 options:0];
  if (v5)
  {
    v5->_callbackFunction = a4;
  }

  return v5;
}

- (SUScriptOperation)initWithPostType:(id)a3 options:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() postOperationClassForType:a3];
  if (v7)
  {
    v8 = objc_alloc_init(v7);
    v9 = [(SUScriptOperation *)self initWithOperation:v8 options:a4];

    return v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69D4938] sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = a3;
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

+ (Class)postOperationClassForType:(id)a3
{
  _os_nospin_lock_lock();
  v4 = [__OperationClasses objectForKey:a3];
  _os_nospin_lock_unlock();
  return v4;
}

+ (void)registerPostOperationClass:(Class)a3 forType:(id)a4
{
  _os_nospin_lock_lock();
  v6 = __OperationClasses;
  if (__OperationClasses)
  {
    if (a3)
    {
LABEL_3:
      [v6 setObject:a3 forKey:a4];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __OperationClasses = v6;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [v6 removeObjectForKey:a4];
LABEL_6:

  _os_nospin_lock_unlock();
}

- (void)run
{
  v26 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
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
    v11 = [MEMORY[0x1E69D4938] sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)setScriptOptions:(id)a3
{
  [(SUScriptOperation *)self lock];
  options = self->_options;
  if (options != a3)
  {

    self->_options = a3;
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
  v3 = [(SUScriptOperation *)self _scriptOptions];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!self->_callbackFunction)
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

      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
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

      self->_callbackFunction = [v3 safeValueForKey:{@"completionCallback", v26}];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = [MEMORY[0x1E69D4938] sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (isKindOfClass)
    {
      if (v13)
      {
        v14 = objc_opt_class();
        v15 = [(SUScriptOperation *)self success];
        *v28 = 138412546;
        *&v28[4] = v14;
        *&v28[12] = 1024;
        *&v28[14] = v15;
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

  v21 = [MEMORY[0x1E69D4938] sharedConfig];
  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEBUG))
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