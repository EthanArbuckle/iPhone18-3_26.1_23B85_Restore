@interface VGOEMExtensionConnectionBroker
+ (VGOEMExtensionConnectionBroker)sharedInstance;
- (VGOEMExtensionConnectionBroker)init;
- (id)_connectionWithIntent:(id)intent;
- (void)resumeConnectionWithIntent:(id)intent connectionTimeoutHandler:(id)handler connectionErrorHandler:(id)errorHandler intentCompletionHandler:(id)completionHandler;
@end

@implementation VGOEMExtensionConnectionBroker

- (id)_connectionWithIntent:(id)intent
{
  v23 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  GEOConfigGetDouble();
  v6 = v5;
  v7 = *MEMORY[0x277D0EA90];
  v8 = *(MEMORY[0x277D0EA90] + 8);
  if (GEOConfigGetBOOL())
  {
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    v10 = [mEMORY[0x277D0EC70] isInternalInstall] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = VGGetVGOEMExtensionConnectionBrokerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 134349826;
    selfCopy = self;
    v17 = 2112;
    v18 = intentCopy;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "[%{public}p] Creating intent connection for intent (%@) with timeout (%.2f) trust check: (%ld)", &v15, 0x2Au);
  }

  v12 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:intentCopy];
  [v12 setRequiresTCC:0];
  [v12 setRequiresTrustCheck:v10];
  [v12 setRequestTimeoutInterval:v6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)resumeConnectionWithIntent:(id)intent connectionTimeoutHandler:(id)handler connectionErrorHandler:(id)errorHandler intentCompletionHandler:(id)completionHandler
{
  v30 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  completionHandlerCopy = completionHandler;
  v14 = [[_VGOEMExtensionConnectionKey alloc] initWithIntent:intentCopy];
  os_unfair_lock_lock(&self->_lock);
  v15 = [(NSMapTable *)self->_extensionMap objectForKey:v14];
  v16 = VGGetVGOEMExtensionConnectionBrokerLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v17)
    {
      *buf = 134349314;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_INFO, "[%{public}p] Coalescing duplicate connection request: %@", buf, 0x16u);
    }

    v18 = v15;
  }

  else
  {
    if (v17)
    {
      *buf = 134349314;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_INFO, "[%{public}p] Received new connection request: %@", buf, 0x16u);
    }

    v19 = [_VGOEMExtensionConnection alloc];
    v16 = [(VGOEMExtensionConnectionBroker *)self _connectionWithIntent:intentCopy];
    v18 = [(_VGOEMExtensionConnection *)v19 initWithConnection:v16];
  }

  if (handlerCopy)
  {
    [(_VGOEMExtensionConnection *)v18 addConnectionTimeoutHandler:handlerCopy];
  }

  if (errorHandlerCopy)
  {
    [(_VGOEMExtensionConnection *)v18 addConnectionErrorHandler:errorHandlerCopy];
  }

  [(_VGOEMExtensionConnection *)v18 addIntentCompletionHandler:completionHandlerCopy];
  if (!v15)
  {
    [(NSMapTable *)self->_extensionMap setObject:v18 forKey:v14];
    v20 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      extensionMap = self->_extensionMap;
      *buf = 134349314;
      selfCopy3 = self;
      v28 = 2112;
      v29 = extensionMap;
      _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_INFO, "[%{public}p] Added new request to extension map: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __133__VGOEMExtensionConnectionBroker_resumeConnectionWithIntent_connectionTimeoutHandler_connectionErrorHandler_intentCompletionHandler___block_invoke;
    v23[3] = &unk_279E26F20;
    objc_copyWeak(&v25, buf);
    v24 = v14;
    [(_VGOEMExtensionConnection *)v18 resumeWithCompletion:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  os_unfair_lock_unlock(&self->_lock);

  v22 = *MEMORY[0x277D85DE8];
}

void __133__VGOEMExtensionConnectionBroker_resumeConnectionWithIntent_connectionTimeoutHandler_connectionErrorHandler_intentCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v9 = 134349314;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] Completed connection request: %@", &v9, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObjectForKey:*(a1 + 32)];
    v5 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(WeakRetained + 1);
      v9 = 134349314;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removed request from extension map: %@", &v9, 0x16u);
    }

    os_unfair_lock_unlock(WeakRetained + 4);
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[VGOEMExtensionConnectionBroker resumeConnectionWithIntent:connectionTimeoutHandler:connectionErrorHandler:intentCompletionHandler:]_block_invoke";
      v11 = 1024;
      LODWORD(v12) = 286;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v9, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (VGOEMExtensionConnectionBroker)init
{
  v6.receiver = self;
  v6.super_class = VGOEMExtensionConnectionBroker;
  v2 = [(VGOEMExtensionConnectionBroker *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:512 capacity:0];
    extensionMap = v2->_extensionMap;
    v2->_extensionMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (VGOEMExtensionConnectionBroker)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VGOEMExtensionConnectionBroker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __48__VGOEMExtensionConnectionBroker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end