@interface MDNSNEDNSProxyWatcher
- (void)configurationChanged:(id)changed;
- (void)dnsProxyStatusDidChange:(id)change;
@end

@implementation MDNSNEDNSProxyWatcher

- (void)dnsProxyStatusDidChange:(id)change
{
  v12 = *MEMORY[0x29EDCA608];
  changeCopy = change;
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = changeCopy;
    _os_log_impl(&dword_2990ED000, v4, OS_LOG_TYPE_DEFAULT, "DNS proxy status changed for manager -- address: %p", buf, 0xCu);
  }

  v5 = _mdns_ne_dns_proxy_state_watch_queue();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __49__MDNSNEDNSProxyWatcher_dnsProxyStatusDidChange___block_invoke;
  block[3] = &unk_29EF09B08;
  v9 = changeCopy;
  v6 = changeCopy;
  dispatch_async(v5, block);

  v7 = *MEMORY[0x29EDCA608];
}

- (void)configurationChanged:(id)changed
{
  v3 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2990ED000, v3, OS_LOG_TYPE_DEFAULT, "Configuration changed", v4, 2u);
  }

  if (configurationChanged__s_once != -1)
  {
    dispatch_once(&configurationChanged__s_once, &__block_literal_global_981);
  }

  dispatch_source_merge_data(configurationChanged__s_loader, 1uLL);
}

void __46__MDNSNEDNSProxyWatcher_configurationChanged___block_invoke()
{
  v0 = _mdns_ne_dns_proxy_state_watch_queue();
  v1 = dispatch_source_create(MEMORY[0x29EDCA590], 0, 0, v0);
  v2 = configurationChanged__s_loader;
  configurationChanged__s_loader = v1;

  dispatch_source_set_event_handler(configurationChanged__s_loader, &__block_literal_global_2);
  v3 = configurationChanged__s_loader;

  dispatch_activate(v3);
}

uint64_t __46__MDNSNEDNSProxyWatcher_configurationChanged___block_invoke_2()
{
  v0 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_2990ED000, v0, OS_LOG_TYPE_INFO, "Loading new manager array", v2, 2u);
  }

  return [MEMORY[0x29EDBB878] loadAllFromPreferencesWithCompletionHandler:&__block_literal_global_20];
}

@end