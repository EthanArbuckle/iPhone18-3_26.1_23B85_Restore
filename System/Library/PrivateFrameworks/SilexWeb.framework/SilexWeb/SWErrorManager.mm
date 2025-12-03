@interface SWErrorManager
- (SWErrorManager)initWithMessageHandlerManager:(id)manager timeoutManager:(id)timeoutManager logger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)reportError:(id)error;
@end

@implementation SWErrorManager

- (SWErrorManager)initWithMessageHandlerManager:(id)manager timeoutManager:(id)timeoutManager logger:(id)logger
{
  managerCopy = manager;
  timeoutManagerCopy = timeoutManager;
  loggerCopy = logger;
  v18.receiver = self;
  v18.super_class = SWErrorManager;
  v11 = [(SWErrorManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_logger, logger);
    v13 = [SWWeakMessageHandler handlerWithMessageHandler:v12];
    [managerCopy addMessageHandler:v13 name:@"failed"];

    objc_initWeak(&location, v12);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__SWErrorManager_initWithMessageHandlerManager_timeoutManager_logger___block_invoke;
    v15[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v16, &location);
    [timeoutManagerCopy onTimeout:v15];
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

- (void)reportError:(id)error
{
  errorCopy = error;
  v15 = errorCopy;
  if (errorCopy && [errorCopy code] != -999)
  {
    objc_storeStrong(&self->_error, error);
    block = [(SWErrorManager *)self block];

    if (block)
    {
      block2 = [(SWErrorManager *)self block];
      error = [(SWErrorManager *)self error];
      (block2)[2](block2, error);
    }

    error = [(SWErrorManager *)self logger];
    v10 = MEMORY[0x1E696AEC0];
    code = [v15 code];
    localizedDescription = [v15 localizedDescription];
    underlyingErrors = [v15 underlyingErrors];
    v14 = [v10 stringWithFormat:@"Error with code: %lu description: %@ underlyingErrors: %@", code, localizedDescription, underlyingErrors];
    [error logError:v14];
  }

  else
  {
    error = self->_error;
    self->_error = 0;
  }
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  v15[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  body = [messageCopy body];
  v7 = [body objectForKey:@"errorCode"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  body2 = [messageCopy body];
  v10 = [body2 objectForKey:@"error"];

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

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:integerValue userInfo:v11];
  [(SWErrorManager *)self reportError:v12];

  v13 = *MEMORY[0x1E69E9840];
}

@end