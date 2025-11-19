@interface PKDiscoveryLSWatcher
- (PKDiscoveryDriver)wdriver;
- (PKDiscoveryLSWatcher)initWithDriver:(id)a3;
- (void)pluginsDidInstall:(id)a3;
- (void)pluginsDidUninstall:(id)a3;
- (void)stopUpdates;
- (void)updateWithUninstalledProxies:(id)a3;
@end

@implementation PKDiscoveryLSWatcher

- (PKDiscoveryLSWatcher)initWithDriver:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKDiscoveryLSWatcher;
  v5 = [(PKDiscoveryLSWatcher *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(PKDiscoveryLSWatcher *)v5 setWdriver:v4];
    v7 = [v4 host];
    v8 = [v7 external];
    v9 = [v8 ls];
    v10 = [v9 defaultApplicationWorkspace];
    [(PKDiscoveryLSWatcher *)v6 setWorkspace:v10];

    v11 = [(PKDiscoveryLSWatcher *)v6 workspace];
    [v11 addObserver:v6];
  }

  return v6;
}

- (void)stopUpdates
{
  v3 = [(PKDiscoveryLSWatcher *)self workspace];
  [v3 removeObserver:self];
}

- (void)pluginsDidInstall:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKDiscoveryLSWatcher *)self wdriver];
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = [v4 count];
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> new plugin(s) (count: %lu) installed, re-performing query for continuous discovery", &v8, 0x16u);
  }

  [(PKDiscoveryLSWatcher *)self update];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)pluginsDidUninstall:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKDiscoveryLSWatcher *)self wdriver];
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = [v4 count];
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> plugin(s) (count: %lu) uninstalled", &v8, 0x16u);
  }

  [(PKDiscoveryLSWatcher *)self updateWithUninstalledProxies:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithUninstalledProxies:(id)a3
{
  v4 = a3;
  v5 = [(PKDiscoveryLSWatcher *)self wdriver];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1C68A0820;
    v8[3] = &unk_1E827F1A0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (PKDiscoveryDriver)wdriver
{
  WeakRetained = objc_loadWeakRetained(&self->_wdriver);

  return WeakRetained;
}

@end