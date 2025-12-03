@interface TPSEventsProvider
- (TPSEventsProviderDelegate)delegate;
- (void)deregisterAllEventsForCallback;
- (void)deregisterEventsForCallback:(id)callback;
- (void)queryEvents:(id)events;
- (void)registerEventsForCallback:(id)callback;
- (void)registerEventsForWakingCallback:(id)callback clientIdentifier:(id)identifier;
@end

@implementation TPSEventsProvider

- (void)queryEvents:(id)events
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "queryEvents not supported for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerEventsForCallback:(id)callback
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "registerEventsForCallback not supported for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerEventsForWakingCallback:(id)callback clientIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [TPSLogger default:callback];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C00A7000, v4, OS_LOG_TYPE_DEFAULT, "registerEventsForWakingCallback not supported for %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deregisterEventsForCallback:(id)callback
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "deregisterEventsForCallback not supported for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deregisterAllEventsForCallback
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[TPSLogger default];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C00A7000, v2, OS_LOG_TYPE_DEFAULT, "deregisterEventsForCallback not supported for %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (TPSEventsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end