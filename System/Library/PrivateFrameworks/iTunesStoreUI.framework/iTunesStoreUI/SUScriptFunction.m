@interface SUScriptFunction
- (BOOL)callWithArguments:(id)a3 completionBlock:(id)a4;
- (SUScriptFunction)init;
- (SUScriptFunction)initWithScriptObject:(id)a3;
- (WebScriptObject)scriptObject;
- (id)_copyAdjustedArgumentsForArguments:(id)a3;
- (id)callSynchronouslyWithArguments:(id)a3;
- (id)thisObject;
- (void)dealloc;
- (void)setScriptObject:(id)a3;
- (void)setThisObject:(id)a3;
@end

@implementation SUScriptFunction

- (SUScriptFunction)init
{
  v4.receiver = self;
  v4.super_class = SUScriptFunction;
  v2 = [(SUScriptFunction *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (SUScriptFunction)initWithScriptObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(SUScriptFunction *)self init];
  if (v4)
  {
    if (a3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [MEMORY[0x1E69D4938] sharedConfig];
        v6 = [v5 shouldLog];
        if ([v5 shouldLogToDisk])
        {
          v7 = v6 | 2;
        }

        else
        {
          v7 = v6;
        }

        if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
        {
          v7 &= 2u;
        }

        if (v7)
        {
          v14 = 138543618;
          v15 = objc_opt_class();
          v16 = 2114;
          v17 = objc_opt_class();
          LODWORD(v13) = 22;
          v12 = &v14;
          v8 = _os_log_send_and_compose_impl();
          if (v8)
          {
            v9 = v8;
            v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v14, v13}];
            free(v9);
            v12 = v10;
            SSFileLog();
          }
        }

        [MEMORY[0x1E69E2F88] throwException:{@"Invalid argument", v12}];
        a3 = 0;
      }
    }

    v4->_function = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptFunction;
  [(SUScriptFunction *)&v3 dealloc];
}

- (BOOL)callWithArguments:(id)a3 completionBlock:(id)a4
{
  v6 = [(SUScriptFunction *)self scriptObject];
  if (v6)
  {
    v7 = [(SUScriptFunction *)self _copyAdjustedArgumentsForArguments:a3];
    WebThreadRun();
  }

  return v6 != 0;
}

void __54__SUScriptFunction_callWithArguments_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callWebScriptMethod:@"call" withArguments:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__SUScriptFunction_callWithArguments_completionBlock___block_invoke_2;
    v4[3] = &unk_1E8164C68;
    v4[4] = v2;
    v4[5] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (id)callSynchronouslyWithArguments:(id)a3
{
  result = [(SUScriptFunction *)self scriptObject];
  if (result)
  {
    v6 = result;
    if ((WebThreadIsCurrent() & 1) == 0)
    {
      WebThreadLock();
    }

    v7 = [(SUScriptFunction *)self _copyAdjustedArgumentsForArguments:a3];
    v8 = [v6 callWebScriptMethod:@"call" withArguments:v7];

    return v8;
  }

  return result;
}

- (WebScriptObject)scriptObject
{
  [(SUScriptFunction *)self lock];
  v3 = self->_function;
  [(SUScriptFunction *)self unlock];
  return v3;
}

- (void)setScriptObject:(id)a3
{
  [(SUScriptFunction *)self lock];
  function = self->_function;
  if (function != a3)
  {

    self->_function = a3;
  }

  [(SUScriptFunction *)self unlock];
}

- (void)setThisObject:(id)a3
{
  [(SUScriptFunction *)self lock];
  self->_thisObject = a3;

  [(SUScriptFunction *)self unlock];
}

- (id)thisObject
{
  [(SUScriptFunction *)self lock];
  v3 = self->_thisObject;
  [(SUScriptFunction *)self unlock];
  return v3;
}

- (id)_copyAdjustedArgumentsForArguments:(id)a3
{
  v5 = a3;
  v6 = [(SUScriptFunction *)self thisObject];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = [a3 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v9 = v8;
    [v8 insertObject:v7 atIndex:0];

    return v9;
  }

  return v5;
}

@end