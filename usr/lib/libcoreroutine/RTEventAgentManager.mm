@interface RTEventAgentManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RTEventAgentManager)initWithPlatform:(id)a3;
- (void)_launchDaemonWithRestorationIdentifier:(id)a3 withReply:(id)a4;
- (void)_setup;
- (void)checkin;
- (void)dealloc;
- (void)launchDaemonWithRestorationIdentifier:(id)a3 withReply:(id)a4;
- (void)onLaunchDaemonWithRestorationIdentifierFromDefaults;
- (void)setPluginConnection:(id)a3;
- (void)setup;
@end

@implementation RTEventAgentManager

- (RTEventAgentManager)initWithPlatform:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTEventAgentManager;
  v6 = [(RTXPCListener *)&v9 initWithMachServiceName:@"com.apple.routined.event"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platform, a3);
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
  v3 = [(RTXPCListener *)self queue];
  [(RTEventAgentManager *)self _setQueue:v3];

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
  v3 = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RTEventAgentManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTXPC executablePathOfConnection:v5];
      v8 = [v5 processIdentifier];
      v9 = [RTXPC signingIdentifierOfConnection:v5];
      v11 = 138412802;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "incoming connetion from %@(%d), signing identifier, %@", &v11, 0x1Cu);
    }
  }

  [(RTEventAgentManager *)self setPluginConnection:v5];

  return 1;
}

- (void)setPluginConnection:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_pluginConnection, a3);
  pluginConnection = self->_pluginConnection;
  v7 = [(RTXPCListener *)self queue];
  [(NSXPCConnection *)pluginConnection _setQueue:v7];

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
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 objectForKey:@"LaunchDaemonWithRestorationIdentifier"];

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

- (void)_launchDaemonWithRestorationIdentifier:(id)a3 withReply:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "launch daemon with restoration identifer, %@", &v11, 0xCu);
    }
  }

  v9 = [(RTEventAgentManager *)self pluginConnection];
  v10 = [v9 remoteObjectProxy];
  [v10 launchDaemonWithRestorationIdentifier:v6 reply:v7];
}

- (void)launchDaemonWithRestorationIdentifier:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTEventAgentManager_launchDaemonWithRestorationIdentifier_withReply___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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