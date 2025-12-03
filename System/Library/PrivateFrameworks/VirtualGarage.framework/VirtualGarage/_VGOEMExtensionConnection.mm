@interface _VGOEMExtensionConnection
- (_VGOEMExtensionConnection)initWithConnection:(id)connection;
- (void)_complete;
- (void)addConnectionErrorHandler:(id)handler;
- (void)addConnectionTimeoutHandler:(id)handler;
- (void)addIntentCompletionHandler:(id)handler;
- (void)dealloc;
- (void)resumeWithCompletion:(id)completion;
@end

@implementation _VGOEMExtensionConnection

- (void)_complete
{
  os_unfair_lock_lock(&self->_completionLock);
  (*(self->_completion + 2))();

  os_unfair_lock_unlock(&self->_completionLock);
}

- (void)addIntentCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VGGetVGOEMExtensionConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x2743B8310](handlerCopy);
    v10 = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding intent completion handler: %@", &v10, 0x16u);
  }

  os_unfair_lock_lock(&self->_handlersLock);
  intentCompletionHandlers = self->_intentCompletionHandlers;
  v8 = MEMORY[0x2743B8310](handlerCopy);
  [(NSMutableArray *)intentCompletionHandlers addObject:v8];

  os_unfair_lock_unlock(&self->_handlersLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addConnectionErrorHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VGGetVGOEMExtensionConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x2743B8310](handlerCopy);
    v10 = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding connection error handler: %@", &v10, 0x16u);
  }

  os_unfair_lock_lock(&self->_handlersLock);
  connectionErrorHandlers = self->_connectionErrorHandlers;
  v8 = MEMORY[0x2743B8310](handlerCopy);
  [(NSMutableArray *)connectionErrorHandlers addObject:v8];

  os_unfair_lock_unlock(&self->_handlersLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addConnectionTimeoutHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VGGetVGOEMExtensionConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x2743B8310](handlerCopy);
    v10 = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding connection timeout handler: %@", &v10, 0x16u);
  }

  os_unfair_lock_lock(&self->_handlersLock);
  connectionTimeoutHandlers = self->_connectionTimeoutHandlers;
  v8 = MEMORY[0x2743B8310](handlerCopy);
  [(NSMutableArray *)connectionTimeoutHandlers addObject:v8];

  os_unfair_lock_unlock(&self->_handlersLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = VGGetVGOEMExtensionConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] Resuming connection", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_completionLock);
  if (self->_completion)
  {
    os_unfair_lock_unlock(&self->_completionLock);
    v6 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      selfCopy2 = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

      *buf = 138543362;
      selfCopy = selfCopy2;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Connection has already been resumed", buf, 0xCu);
    }
  }

  else
  {
    v10 = MEMORY[0x2743B8310](completionCopy);
    completion = self->_completion;
    self->_completion = v10;

    os_unfair_lock_unlock(&self->_completionLock);
    objc_initWeak(buf, self);
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke;
    v14[3] = &unk_279E26CF8;
    objc_copyWeak(&v15, buf);
    [(INCExtensionConnection *)connection resumeWithCompletionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VGGetVGOEMExtensionConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _VGOEMExtensionConnection;
  [(_VGOEMExtensionConnection *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (_VGOEMExtensionConnection)initWithConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = _VGOEMExtensionConnection;
  v6 = [(_VGOEMExtensionConnection *)&v18 init];
  if (v6)
  {
    v7 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v20 = v6;
      v21 = 2112;
      v22 = connectionCopy;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with connection: %@", buf, 0x16u);
    }

    *&v6->_handlersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_connection, connection);
    objc_initWeak(buf, v6);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48___VGOEMExtensionConnection_initWithConnection___block_invoke;
    v16[3] = &unk_279E26BB8;
    objc_copyWeak(&v17, buf);
    [(INCExtensionConnection *)v6->_connection setTimeoutHandler:v16];
    array = [MEMORY[0x277CBEB18] array];
    connectionTimeoutHandlers = v6->_connectionTimeoutHandlers;
    v6->_connectionTimeoutHandlers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    connectionErrorHandlers = v6->_connectionErrorHandlers;
    v6->_connectionErrorHandlers = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    intentCompletionHandlers = v6->_intentCompletionHandlers;
    v6->_intentCompletionHandlers = array3;

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

@end