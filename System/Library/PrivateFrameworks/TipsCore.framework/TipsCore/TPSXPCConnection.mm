@interface TPSXPCConnection
@end

@implementation TPSXPCConnection

void __27___TPSXPCConnection_resume__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[TPSLogger data];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "%@Connection to %@ interrupted", &v9, 0x16u);
  }

  v6 = [WeakRetained interruptionHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __27___TPSXPCConnection_resume__block_invoke_12(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[TPSLogger data];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "%@Connection to %@ invalidated", &v9, 0x16u);
  }

  v6 = [WeakRetained invalidationHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44___TPSXPCConnection_setInterruptionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained exportedObject];
  if (objc_opt_respondsToSelector())
  {
    [v1 connectionInterrupted];
  }
}

void __44___TPSXPCConnection_setInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained exportedObject];
  [v1 connectionInvalidated];
}

@end