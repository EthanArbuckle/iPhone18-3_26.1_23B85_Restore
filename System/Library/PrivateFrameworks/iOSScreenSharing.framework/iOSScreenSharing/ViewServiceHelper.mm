@interface ViewServiceHelper
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ViewServiceHelper)init;
- (void)handleStatusBarTap;
- (void)pauseResumeResponse:(id)response;
- (void)pidNotification:(id)notification;
- (void)requestUserInfo;
- (void)run;
- (void)sendSessionInfoToClient;
- (void)termsAndConditionsResponse:(id)response;
@end

@implementation ViewServiceHelper

- (ViewServiceHelper)init
{
  v7.receiver = self;
  v7.super_class = ViewServiceHelper;
  v2 = [(ViewServiceHelper *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(ViewServiceHelper *)v2 setConnections:v3];

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ScreenSharingViewServiceHelper"];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

- (void)run
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ViewServiceHelper_run__block_invoke;
  block[3] = &unk_27A66F660;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v30 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.val[0]) = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "start listener:shouldAcceptNewConnection:", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  token = buf;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  v9 = v8;
  if (v8)
  {
    error = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.private.screensharing.xpcaccepted", &error);
    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to get entitlement (com.apple.private.screensharing.xpcaccepted) for client task. Error: %@", &token, 0xCu);
      }

      CFRelease(error);
      error = 0;
    }

    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 == CFBooleanGetTypeID())
      {
        v12 = CFBooleanGetValue(v10) == 0;
        CFRelease(v10);
        if (!v12)
        {
          CFRelease(v9);
LABEL_24:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(token.val[0]) = 0;
            _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "has entitlement", &token, 2u);
          }

          v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B6798];
          [connectionCopy setExportedInterface:v17];

          [connectionCopy setExportedObject:self];
          v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B6B68];
          [connectionCopy setRemoteObjectInterface:v18];

          selfCopy = self;
          objc_sync_enter(selfCopy);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(token.val[0]) = 0;
            _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "adding connection", &token, 2u);
          }

          connections = [(ViewServiceHelper *)selfCopy connections];
          v27[0] = @"NSXPCConnection";
          v27[1] = @"bundleIdentifier";
          v28[0] = connectionCopy;
          v28[1] = &stru_2884B5B68;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
          [connections addObject:v21];

          objc_sync_exit(selfCopy);
          [connectionCopy resume];
          v22 = 1;
          goto LABEL_33;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "com.apple.springboard.activateawayviewplugins", 0x8000100u);
    v14 = SecTaskCopyValueForEntitlement(v9, v13, &error);
    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412546;
        *&token.val[1] = v13;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = error;
        _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to get entitlement %@ for client task. Error: %@", &token, 0x16u);
      }

      CFRelease(error);
      error = 0;
    }

    CFRelease(v13);
    if (v14)
    {
      v15 = CFGetTypeID(v14);
      if (v15 == CFBooleanGetTypeID())
      {
        v16 = CFBooleanGetValue(v14) == 0;
        CFRelease(v14);
        CFRelease(v9);
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      else
      {
        CFRelease(v14);
        CFRelease(v9);
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ViewServiceHelper listener:shouldAcceptNewConnection:];
  }

  v22 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "does not have entitlement", &token, 2u);
    v22 = 0;
  }

LABEL_33:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)handleStatusBarTap
{
  v25[5] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "status bar tapped", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  delegate = [(ViewServiceHelper *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ViewServiceHelper *)self delegate];
    [delegate2 performSelector:sel_sessionState_ withObject:v3];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sessionState not supported", buf, 2u);
  }

  v7 = [v3 objectForKeyedSubscript:@"viewerName"];
  v8 = [v3 objectForKeyedSubscript:@"paused"];
  if (v8)
  {
    [v3 objectForKeyedSubscript:@"paused"];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithBool:0];
  }
  v9 = ;

  v10 = [v3 objectForKeyedSubscript:@"screenLocked"];
  if (v10)
  {
    [v3 objectForKeyedSubscript:@"screenLocked"];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithBool:0];
  }
  v11 = ;

  v12 = *MEMORY[0x277D671C0];
  v24[0] = *MEMORY[0x277D67208];
  v24[1] = v12;
  v13 = MEMORY[0x277CBEC38];
  v25[0] = @"SSActiveViewController";
  v25[1] = MEMORY[0x277CBEC38];
  v24[2] = *MEMORY[0x277D671E8];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v15 = *MEMORY[0x277D671B8];
  v25[2] = v14;
  v25[3] = v13;
  v16 = *MEMORY[0x277D67200];
  v24[3] = v15;
  v24[4] = v16;
  v22[0] = @"isPaused";
  v22[1] = @"isScreenLocked";
  v23[0] = v9;
  v23[1] = v11;
  v22[2] = @"viewerName";
  v23[2] = v7;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  v19 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  syslog(5, "RemoteAlert: %d", v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)termsAndConditionsResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy description];
  syslog(5, "termsAndConditionsResponse %s", [v4 UTF8String]);

  delegate = [(ViewServiceHelper *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ViewServiceHelper *)self delegate];
    [delegate2 performSelector:sel_termsAndConditionsResult_ withObject:responseCopy];
  }
}

- (void)pauseResumeResponse:(id)response
{
  responseCopy = response;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pauseResumeResponse", buf, 2u);
  }

  delegate = [(ViewServiceHelper *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ViewServiceHelper *)self delegate];
    [delegate2 performSelector:sel_pauseResumeResult_ withObject:responseCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "does not respond", v8, 2u);
  }
}

- (void)pidNotification:(id)notification
{
  notificationCopy = notification;
  delegate = [(ViewServiceHelper *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ViewServiceHelper *)self delegate];
    [delegate2 performSelector:sel_pidNotification_ withObject:notificationCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275BBF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pidNotification not supported", v8, 2u);
  }
}

- (void)requestUserInfo
{
  delegate = [(ViewServiceHelper *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ViewServiceHelper *)self delegate];
    [delegate2 performSelector:sel_requestUserInfo withObject:0];
  }

  [(ViewServiceHelper *)self sendSessionInfoToClient];
}

- (void)sendSessionInfoToClient
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ViewServiceHelper sendSessionInfoToClient];
  }
}

@end