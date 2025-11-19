@interface SSRemoteAlertHandleProvider
- (SSRemoteAlertHandleProvider)init;
- (SSRemoteAlertHandleProviderDelegate)delegate;
- (id)_screenshotServicesServiceAlertDefinition;
- (id)screenshotServicesAlertHandle;
- (void)_callDelegate:(id)a3;
- (void)_cleanupCurrentHandleNotifyDelegate:(BOOL)a3;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)preheat;
- (void)prepare;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SSRemoteAlertHandleProvider

- (SSRemoteAlertHandleProvider)init
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SSRemoteAlertHandleProvider;
  v2 = [(SSRemoteAlertHandleProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SSRemoteAlertHandleProvider *)v2 screenshotServicesAlertHandle];
    handle = v3->_handle;
    v3->_handle = v4;

    v6 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3->_handle;
      *buf = 134218240;
      v11 = v3;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_1D9E04000, v6, OS_LOG_TYPE_DEFAULT, "init - remote alert handle provider: %p, handle: %p", buf, 0x16u);
    }
  }

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    *buf = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = handle;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "dealloc - remote alert handle provider: %p, handle: %p", buf, 0x16u);
  }

  [(SSRemoteAlertHandleProvider *)self _cleanupCurrentHandleNotifyDelegate:0];
  v5.receiver = self;
  v5.super_class = SSRemoteAlertHandleProvider;
  [(SSRemoteAlertHandleProvider *)&v5 dealloc];
}

- (void)activate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    v6 = 134217984;
    v7 = handle;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "activate remote alert handle: %p", &v6, 0xCu);
  }

  v5 = self->_handle;
  if (!v5 || ([(SBSRemoteAlertHandle *)v5 isValid]& 1) == 0)
  {
    [(SSRemoteAlertHandleProvider *)self prepare];
  }

  [(SBSRemoteAlertHandle *)self->_handle activateWithContext:0];
}

- (void)preheat
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    v6 = 134217984;
    v7 = handle;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "preheat remote alert handle: %p", &v6, 0xCu);
  }

  v5 = self->_handle;
  if (!v5 || ([(SBSRemoteAlertHandle *)v5 isValid]& 1) == 0)
  {
    [(SSRemoteAlertHandleProvider *)self prepare];
  }
}

- (void)prepare
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    v7 = 134217984;
    v8 = handle;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Preparing remote alert handle: %p", &v7, 0xCu);
  }

  [(SSRemoteAlertHandleProvider *)self _cleanupCurrentHandleNotifyDelegate:1];
  v5 = [(SSRemoteAlertHandleProvider *)self screenshotServicesAlertHandle];
  v6 = self->_handle;
  self->_handle = v5;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    v5 = 134217984;
    v6 = handle;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating remote alert handle: %p", &v5, 0xCu);
  }

  if (self->_handle)
  {
    [(SSRemoteAlertHandleProvider *)self _cleanupCurrentHandleNotifyDelegate:1];
  }
}

- (void)_cleanupCurrentHandleNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    v10 = 134217984;
    v11 = handle;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_DEFAULT, "clean up remote alert handle: %p", &v10, 0xCu);
  }

  v7 = self->_handle;
  if (v7)
  {
    [(SBSRemoteAlertHandle *)v7 unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_handle invalidate];
    v8 = self->_handle;
    self->_handle = 0;

    if (v3)
    {
      v9 = [(SSRemoteAlertHandleProvider *)self delegate];
      [v9 remoteAlertHandleProvider:self didInvalidateWithError:0];
    }
  }
}

- (void)_callDelegate:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSRemoteAlertHandleProvider__callDelegate___block_invoke;
  block[3] = &unk_1E8590228;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    *buf = 134217984;
    v8 = handle;
    _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_DEFAULT, "Remote alert handle did activate, handle: %p", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SSRemoteAlertHandleProvider_remoteAlertHandleDidActivate___block_invoke;
  v6[3] = &unk_1E8590600;
  v6[4] = self;
  [(SSRemoteAlertHandleProvider *)self _callDelegate:v6];
}

void __60__SSRemoteAlertHandleProvider_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteAlertHandleProviderDidActivate:*(a1 + 32)];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    *buf = 134217984;
    v8 = handle;
    _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_DEFAULT, "Remote alert handle did deactivate, handle: %p", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SSRemoteAlertHandleProvider_remoteAlertHandleDidDeactivate___block_invoke;
  v6[3] = &unk_1E8590600;
  v6[4] = self;
  [(SSRemoteAlertHandleProvider *)self _callDelegate:v6];
}

void __62__SSRemoteAlertHandleProvider_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteAlertHandleProviderDidDeactivate:*(a1 + 32)];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(SSRemoteAlertHandleProvider *)v6 remoteAlertHandle:v8 didInvalidateWithError:?];
  }

  handle = self->_handle;
  if (handle == v7)
  {
    [(SBSRemoteAlertHandle *)handle unregisterObserver:self];
    v10 = self->_handle;
    self->_handle = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__SSRemoteAlertHandleProvider_remoteAlertHandle_didInvalidateWithError___block_invoke;
  v12[3] = &unk_1E85903B8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(SSRemoteAlertHandleProvider *)self _callDelegate:v12];
}

void __72__SSRemoteAlertHandleProvider_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteAlertHandleProvider:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

- (id)_screenshotServicesServiceAlertDefinition
{
  v2 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.ScreenshotServicesService" viewControllerClassName:@"SSSDittoRemoteAlertViewController"];
  [v2 setPrefersEmbeddedDisplayPresentation:1];

  return v2;
}

- (id)screenshotServicesAlertHandle
{
  v3 = MEMORY[0x1E69D42B8];
  v4 = [(SSRemoteAlertHandleProvider *)self _screenshotServicesServiceAlertDefinition];
  v5 = [v3 lookupHandlesForDefinition:v4 creatingIfNone:1];
  v6 = [v5 firstObject];

  [v6 registerObserver:self];

  return v6;
}

- (SSRemoteAlertHandleProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteAlertHandle:(os_log_t)log didInvalidateWithError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_1D9E04000, log, OS_LOG_TYPE_ERROR, "Remote alert handle did invalidate with error %@, handle: %p", &v4, 0x16u);
}

@end