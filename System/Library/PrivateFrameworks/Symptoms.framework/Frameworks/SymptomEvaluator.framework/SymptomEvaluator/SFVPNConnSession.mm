@interface SFVPNConnSession
- (SFVPNConnSession)initWithQueue:(id)a3 configID:(id)a4;
- (void)dealloc;
@end

@implementation SFVPNConnSession

- (SFVPNConnSession)initWithQueue:(id)a3 configID:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFVPNConnSession;
  return [(SFNetworkExtensionSessionMonitor *)&v5 initWithQueue:a3 configID:a4 neSessionType:1 statusChangedCallback:0];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = [(SFNetworkExtensionSessionMonitor *)self configurationID];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NEStateRelay: Deallocating VPNConnSession for configuration ID: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = SFVPNConnSession;
  [(SFNetworkExtensionSessionMonitor *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

@end