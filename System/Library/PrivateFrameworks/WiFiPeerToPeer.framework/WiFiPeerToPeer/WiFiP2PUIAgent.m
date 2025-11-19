@interface WiFiP2PUIAgent
- (WiFiP2PUIAgent)init;
- (void)configureNotificationsWithBundleIdentifier:(id)a3;
- (void)showInfrastructureDisconnectOnRetroModeNotificationForService:(id)a3 localization:(id)a4 phoneDisconnected:(BOOL)a5 uuid:(id)a6 completionHandler:(id)a7;
@end

@implementation WiFiP2PUIAgent

- (WiFiP2PUIAgent)init
{
  v11.receiver = self;
  v11.super_class = WiFiP2PUIAgent;
  v2 = [(WiFiP2PUIAgent *)&v11 init];
  v3 = v2;
  if (v2)
  {
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = 0;

    v5 = [WiFiP2PXPCConnection alloc];
    v6 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v7 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiP2PUIAgent", 0, v6);
    v8 = [(WiFiP2PXPCConnection *)v5 initWithEndpointType:0 queue:v7 retryTimeout:-1];
    xpcConnection = v3->_xpcConnection;
    v3->_xpcConnection = v8;

    [(WiFiP2PXPCConnection *)v3->_xpcConnection setDelegate:v3];
  }

  return v3;
}

- (void)configureNotificationsWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CE2030];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5];

  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v6;

  [(UNUserNotificationCenter *)self->_notificationCenter removeAllDeliveredNotifications];
  v8 = self->_notificationCenter;

  [(UNUserNotificationCenter *)v8 removeAllPendingNotificationRequests];
}

- (void)showInfrastructureDisconnectOnRetroModeNotificationForService:(id)a3 localization:(id)a4 phoneDisconnected:(BOOL)a5 uuid:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v46 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x277CE1F58]);
  v17 = MGGetBoolAnswer();
  if (v9)
  {
    v18 = [MEMORY[0x277CE1FA8] iconNamed:@"iPhone"];
    [v16 setIcon:v18];

    v19 = +[WiFiP2PXPCConnection frameworkBundle];
    if (v17)
    {
      v20 = @"iPhone WLAN Disconnected";
      goto LABEL_6;
    }

    v24 = @"iPhone Wi-Fi Disconnected";
  }

  else
  {
    v21 = [MEMORY[0x277CE1FA8] iconNamed:@"iPad"];
    [v16 setIcon:v21];

    v19 = +[WiFiP2PXPCConnection frameworkBundle];
    if (v17)
    {
      v20 = @"iPad WLAN Disconnected";
LABEL_6:
      v22 = [v19 localizedStringForKey:v20 value:0 table:0 localization:v13];
      [v16 setTitle:v22];

      if ([v12 isEqualToString:@"RemoteCamera"])
      {
        v23 = @"To optimize Continuity Camera, your iPhone has disconnected from WLAN. Plug it in with a cable to use WLAN.";
      }

      else
      {
        if (([v12 isEqualToString:@"sidecar"] & 1) == 0)
        {
          goto LABEL_17;
        }

        v23 = @"To optimize Sidecar, your iPad has disconnected from WLAN. Plug it in with a cable to use WLAN.";
      }

      goto LABEL_16;
    }

    v24 = @"iPad Wi-Fi Disconnected";
  }

  v25 = [v19 localizedStringForKey:v24 value:0 table:0 localization:v13];
  [v16 setTitle:v25];

  if ([v12 isEqualToString:@"RemoteCamera"])
  {
    v23 = @"To optimize Continuity Camera, your iPhone has disconnected from Wi-Fi. Plug it in with a cable to use Wi-Fi.";
  }

  else
  {
    if (![v12 isEqualToString:@"sidecar"])
    {
      goto LABEL_17;
    }

    v23 = @"To optimize Sidecar, your iPad has disconnected from Wi-Fi. Plug it in with a cable to use Wi-Fi.";
  }

LABEL_16:
  v26 = +[WiFiP2PXPCConnection frameworkBundle];
  v27 = [v26 localizedStringForKey:v23 value:0 table:0 localization:v13];
  [v16 setBody:v27];

LABEL_17:
  if ([v12 isEqualToString:@"TVRemoteCamera"])
  {
    v28 = +[WiFiP2PXPCConnection frameworkBundle];
    v29 = [v28 localizedStringForKey:@"Optimizing Continuity Camera connection." value:0 table:0 localization:v13];
    [v16 setBody:v29];
  }

  if ([v12 isEqualToString:@"RemoteScreen"])
  {
    v30 = +[WiFiP2PXPCConnection frameworkBundle];
    v31 = [v30 localizedStringForKey:@"Optimizing iPhone Mirroring connection." value:0 table:0 localization:v13];
    [v16 setBody:v31];
  }

  if ([v12 isEqualToString:@"spatialStreaming"])
  {
    v32 = +[WiFiP2PXPCConnection frameworkBundle];
    v33 = [v32 localizedStringForKey:@"Optimizing macOS Spatial Rendering connection." value:0 table:0 localization:v13];
    [v16 setBody:v33];
  }

  if ([v12 isEqualToString:@"MacVirtualDisplay"])
  {
    v34 = +[WiFiP2PXPCConnection frameworkBundle];
    v35 = [v34 localizedStringForKey:@"Optimizing Mac Virtual Display connection." value:0 table:0 localization:v13];
    [v16 setBody:v35];
  }

  v36 = [v16 title];
  if (v36 && (v37 = v36, [v16 body], v38 = objc_claimAutoreleasedReturnValue(), v38, v37, v38))
  {
    v39 = [MEMORY[0x277CE1FD8] defaultSound];
    [v16 setSound:v39];

    [v16 setShouldIgnoreDoNotDisturb:1];
    [v16 setShouldIgnoreDowntime:1];
    [v16 setShouldHideDate:1];
    [v16 setShouldHideTime:1];
    v40 = MEMORY[0x277CE1FB8];
    v41 = [v14 UUIDString];
    v42 = [v40 requestWithIdentifier:v41 content:v16 trigger:0];
    [(WiFiP2PUIAgent *)self addNotificationRequest:v42 completionHandler:v15];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v44 = 138543362;
    v45 = v12;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Skipping WiFi disconnect notification for %{public}@", &v44, 0xCu);
  }

  v43 = *MEMORY[0x277D85DE8];
}

@end