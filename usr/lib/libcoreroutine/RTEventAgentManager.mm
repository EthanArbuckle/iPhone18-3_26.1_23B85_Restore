@interface RTEventAgentManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RTEventAgentManager)initWithPlatform:(id)platform;
- (void)_launchDaemonWithRestorationIdentifier:(id)identifier withReply:(id)reply;
- (void)_setup;
- (void)checkin;
- (void)dealloc;
- (void)launchDaemonWithRestorationIdentifier:(id)identifier withReply:(id)reply;
- (void)onLaunchDaemonWithRestorationIdentifierFromDefaults;
- (void)setPluginConnection:(id)connection;
- (void)setup;
@end

@implementation RTEventAgentManager

- (RTEventAgentManager)initWithPlatform:(id)platform
{
  platformCopy = platform;
  v9.receiver = self;
  v9.super_class = RTEventAgentManager;
  v6 = [(RTXPCListener *)&v9 initWithMachServiceName:@"com.apple.routined.event"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platform, platform);
    [(RTEventAgentManager *)v7 setup];
  }

  return v7;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = RTEventAgentManager;
  [(RTEventAgentManager *)&v4 dealloc];
}

- (void)_setup
{
  v9 = *MEMORY[0x277D85DE8];
  queue = [(RTXPCListener *)self queue];
  [(RTEventAgentManager *)self _setQueue:queue];

  [(RTEventAgentManager *)self setDelegate:self];
  [(RTEventAgentManager *)self resume];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.routined.event", 0, 0, 1u);
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, self, onLaunchDaemonWithRestorationIdentifierFromDefaults, @"LaunchDaemonWithRestorationIdentifier", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = @"com.apple.routined.event";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "listening on mach port, %@", &v7, 0xCu);
    }
  }
}

- (void)setup
{
  queue = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RTEventAgentManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTXPC executablePathOfConnection:connectionCopy];
      processIdentifier = [connectionCopy processIdentifier];
      v9 = [RTXPC signingIdentifierOfConnection:connectionCopy];
      v11 = 138412802;
      v12 = v7;
      v13 = 1024;
      v14 = processIdentifier;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "incoming connetion from %@(%d), signing identifier, %@", &v11, 0x1Cu);
    }
  }

  [(RTEventAgentManager *)self setPluginConnection:connectionCopy];

  return 1;
}

- (void)setPluginConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_pluginConnection, connection);
  pluginConnection = self->_pluginConnection;
  queue = [(RTXPCListener *)self queue];
  [(NSXPCConnection *)pluginConnection _setQueue:queue];

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28465E4C8];
  [(NSXPCConnection *)self->_pluginConnection setRemoteObjectInterface:v8];

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284603A58];
  [(NSXPCConnection *)self->_pluginConnection setExportedInterface:v9];

  [(NSXPCConnection *)self->_pluginConnection setExportedObject:self];
  [(NSXPCConnection *)self->_pluginConnection setInterruptionHandler:&__block_literal_global_125];
  [(NSXPCConnection *)self->_pluginConnection setInvalidationHandler:&__block_literal_global_56];
  [(NSXPCConnection *)self->_pluginConnection resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "UserEventAgent plugin connected", v11, 2u);
    }
  }
}

void __43__RTEventAgentManager_setPluginConnection___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_2304B3000, v0, OS_LOG_TYPE_INFO, "handle xpc interruption for UserEventAgent plugin", v1, 2u);
    }
  }
}

void __43__RTEventAgentManager_setPluginConnection___block_invoke_54()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_2304B3000, v0, OS_LOG_TYPE_INFO, "handle xpc invalidation for UserEventAgent plugin", v1, 2u);
    }
  }
}

- (void)onLaunchDaemonWithRestorationIdentifierFromDefaults
{
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"LaunchDaemonWithRestorationIdentifier"];

    if (v5)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __74__RTEventAgentManager_onLaunchDaemonWithRestorationIdentifierFromDefaults__block_invoke;
      v6[3] = &unk_2788CFD70;
      v8 = a2;
      v7 = v5;
      [(RTEventAgentManager *)self launchDaemonWithRestorationIdentifier:v7 withReply:v6];
    }
  }
}

void __74__RTEventAgentManager_onLaunchDaemonWithRestorationIdentifierFromDefaults__block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = @"NO";
      v8 = 138412802;
      v9 = v5;
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, restoration identifier, %@, client launched, %@", &v8, 0x20u);
    }
  }
}

- (void)_launchDaemonWithRestorationIdentifier:(id)identifier withReply:(id)reply
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "launch daemon with restoration identifer, %@", &v11, 0xCu);
    }
  }

  pluginConnection = [(RTEventAgentManager *)self pluginConnection];
  remoteObjectProxy = [pluginConnection remoteObjectProxy];
  [remoteObjectProxy launchDaemonWithRestorationIdentifier:identifierCopy reply:replyCopy];
}

- (void)launchDaemonWithRestorationIdentifier:(id)identifier withReply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTEventAgentManager_launchDaemonWithRestorationIdentifier_withReply___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)checkin
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "UserEventAgent plugin %@", &v5, 0xCu);
    }
  }
}

@end