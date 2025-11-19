@interface SWErrorManager
- (SWErrorManager)initWithMessageHandlerManager:(id)a3 timeoutManager:(id)a4 logger:(id)a5;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)reportError:(id)a3;
@end

@implementation SWErrorManager

- (SWErrorManager)initWithMessageHandlerManager:(id)a3 timeoutManager:(id)a4 logger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SWErrorManager;
  v11 = [(SWErrorManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_logger, a5);
    v13 = [SWWeakMessageHandler handlerWithMessageHandler:v12];
    [v8 addMessageHandler:v13 name:@"failed"];

    objc_initWeak(&location, v12);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__SWErrorManager_initWithMessageHandlerManager_timeoutManager_logger___block_invoke;
    v15[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v16, &location);
    [v9 onTimeout:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __70__SWErrorManager_initWithMessageHandlerManager_timeoutManager_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:1 userInfo:0];
  [WeakRetained reportError:v1];
}

- (void)reportError:(id)a3
{
  v5 = a3;
  v15 = v5;
  if (v5 && [v5 code] != -999)
  {
    objc_storeStrong(&self->_error, a3);
    v7 = [(SWErrorManager *)self block];

    if (v7)
    {
      v8 = [(SWErrorManager *)self block];
      v9 = [(SWErrorManager *)self error];
      (v8)[2](v8, v9);
    }

    error = [(SWErrorManager *)self logger];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v15 code];
    v12 = [v15 localizedDescription];
    v13 = [v15 underlyingErrors];
    v14 = [v10 stringWithFormat:@"Error with code: %lu description: %@ underlyingErrors: %@", v11, v12, v13];
    [error logError:v14];
  }

  else
  {
    error = self->_error;
    self->_error = 0;
  }
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 body];
  v7 = [v6 objectForKey:@"errorCode"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = -1;
  }

  v9 = [v5 body];
  v10 = [v9 objectForKey:@"error"];

  if (v10)
  {
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:v8 userInfo:v11];
  [(SWErrorManager *)self reportError:v12];

  v13 = *MEMORY[0x1E69E9840];
}

@end