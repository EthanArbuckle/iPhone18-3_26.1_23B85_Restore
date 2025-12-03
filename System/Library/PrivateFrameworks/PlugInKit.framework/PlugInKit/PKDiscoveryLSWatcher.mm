@interface PKDiscoveryLSWatcher
- (PKDiscoveryDriver)wdriver;
- (PKDiscoveryLSWatcher)initWithDriver:(id)driver;
- (void)pluginsDidInstall:(id)install;
- (void)pluginsDidUninstall:(id)uninstall;
- (void)stopUpdates;
- (void)updateWithUninstalledProxies:(id)proxies;
@end

@implementation PKDiscoveryLSWatcher

- (PKDiscoveryLSWatcher)initWithDriver:(id)driver
{
  driverCopy = driver;
  v13.receiver = self;
  v13.super_class = PKDiscoveryLSWatcher;
  v5 = [(PKDiscoveryLSWatcher *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(PKDiscoveryLSWatcher *)v5 setWdriver:driverCopy];
    host = [driverCopy host];
    external = [host external];
    v9 = [external ls];
    defaultApplicationWorkspace = [v9 defaultApplicationWorkspace];
    [(PKDiscoveryLSWatcher *)v6 setWorkspace:defaultApplicationWorkspace];

    workspace = [(PKDiscoveryLSWatcher *)v6 workspace];
    [workspace addObserver:v6];
  }

  return v6;
}

- (void)stopUpdates
{
  workspace = [(PKDiscoveryLSWatcher *)self workspace];
  [workspace removeObserver:self];
}

- (void)pluginsDidInstall:(id)install
{
  v12 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v5 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    wdriver = [(PKDiscoveryLSWatcher *)self wdriver];
    v8 = 134218240;
    v9 = wdriver;
    v10 = 2048;
    v11 = [installCopy count];
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> new plugin(s) (count: %lu) installed, re-performing query for continuous discovery", &v8, 0x16u);
  }

  [(PKDiscoveryLSWatcher *)self update];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)pluginsDidUninstall:(id)uninstall
{
  v12 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v5 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    wdriver = [(PKDiscoveryLSWatcher *)self wdriver];
    v8 = 134218240;
    v9 = wdriver;
    v10 = 2048;
    v11 = [uninstallCopy count];
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> plugin(s) (count: %lu) uninstalled", &v8, 0x16u);
  }

  [(PKDiscoveryLSWatcher *)self updateWithUninstalledProxies:uninstallCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithUninstalledProxies:(id)proxies
{
  proxiesCopy = proxies;
  wdriver = [(PKDiscoveryLSWatcher *)self wdriver];
  v6 = wdriver;
  if (wdriver)
  {
    queue = [wdriver queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1C68A0820;
    v8[3] = &unk_1E827F1A0;
    v8[4] = self;
    v9 = proxiesCopy;
    dispatch_async(queue, v8);
  }
}

- (PKDiscoveryDriver)wdriver
{
  WeakRetained = objc_loadWeakRetained(&self->_wdriver);

  return WeakRetained;
}

@end