@interface SFNetworkExtensionSessionMonitor
- (BOOL)_setUpNESessionForConfigurationID:(id)a3 neSessionType:(int)a4 statusChangedCallback:(id)a5;
- (void)dealloc;
@end

@implementation SFNetworkExtensionSessionMonitor

void __95__SFNetworkExtensionSessionMonitor_initWithQueue_configID_neSessionType_statusChangedCallback___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 == 2)
  {
    [WeakRetained session];
    ne_session_cancel();
    [v5 session];
    ne_session_release();
    [v5 setSession:0];
  }

  else if (a2 == 1)
  {
    [WeakRetained session];
    v6 = [v5 queue];
    v7 = v5;
    v8 = *(a1 + 32);
    ne_session_get_status();
  }
}

void __95__SFNetworkExtensionSessionMonitor_initWithQueue_configID_neSessionType_statusChangedCallback___block_invoke_2(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        [v3 setConnected:0];
        v15 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 32);
          v6 = v15;
          v17 = objc_opt_class();
          v8 = NSStringFromClass(v17);
          v18 = *(a1 + 40);
          v36 = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v18;
          v10 = "NEStateRelay: %@ -- NESessionStatusInvalid, Configuration ID: %@";
          goto LABEL_22;
        }

        goto LABEL_23;
      case 1:
        [v3 setConnected:0];
        v27 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 32);
          v6 = v27;
          v29 = objc_opt_class();
          v8 = NSStringFromClass(v29);
          v30 = *(a1 + 40);
          v36 = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v30;
          v10 = "NEStateRelay: %@ -- NESessionStatusDisconnected, Configuration ID: %@";
          goto LABEL_22;
        }

        goto LABEL_23;
      case 2:
        [v3 setConnected:0];
        v4 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v5 = *(a1 + 32);
          v6 = v4;
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = *(a1 + 40);
          v36 = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v9;
          v10 = "NEStateRelay: %@ -- NESessionStatusConnecting, Configuration ID: %@";
LABEL_22:
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, v10, &v36, 0x16u);

          goto LABEL_23;
        }

        goto LABEL_23;
    }

LABEL_16:
    [v3 setConnected:0];
    v23 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v6 = v23;
      v25 = objc_opt_class();
      v8 = NSStringFromClass(v25);
      v26 = *(a1 + 40);
      v36 = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v26;
      v10 = "NEStateRelay: %@ -- Invalid NESessionStatus, Configuration ID: %@";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a2 == 5)
  {
    [v3 setConnected:0];
    v19 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v6 = v19;
      v21 = objc_opt_class();
      v8 = NSStringFromClass(v21);
      v22 = *(a1 + 40);
      v36 = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v22;
      v10 = "NEStateRelay: %@ -- NESessionStatusDisconnecting, Configuration ID: %@";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a2 == 4)
  {
    [v3 setConnected:0];
    v31 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 32);
      v6 = v31;
      v33 = objc_opt_class();
      v8 = NSStringFromClass(v33);
      v34 = *(a1 + 40);
      v36 = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v34;
      v10 = "NEStateRelay: %@ -- NESessionStatusReasserting, Configuration ID: %@";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a2 != 3)
  {
    goto LABEL_16;
  }

  [v3 setConnected:1];
  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v6 = v11;
    v13 = objc_opt_class();
    v8 = NSStringFromClass(v13);
    v14 = *(a1 + 40);
    v36 = 138412546;
    v37 = v8;
    v38 = 2112;
    v39 = v14;
    v10 = "NEStateRelay: %@ -- NESessionStatusConnected, Configuration ID: %@";
    goto LABEL_22;
  }

LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    configurationID = self->_configurationID;
    *buf = 138412290;
    v10 = configurationID;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "NEStateRelay: Deallocating the NESession Object for configuration ID: %@", buf, 0xCu);
  }

  session = self->_session;
  ne_session_cancel();
  v6 = self->_session;
  ne_session_release();
  self->_session = 0;
  v8.receiver = self;
  v8.super_class = SFNetworkExtensionSessionMonitor;
  [(SFNetworkExtensionSessionMonitor *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setUpNESessionForConfigurationID:(id)a3 neSessionType:(int)a4 statusChangedCallback:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v22[0] = 0;
  v22[1] = 0;
  [v7 getUUIDBytes:v22];
  v9 = ne_session_create();
  self->_session = v9;
  if (v9)
  {
    queue = self->_queue;
    ne_session_set_event_handler();
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412546;
      v19 = v7;
      v20 = 2080;
      v21 = v22;
      v12 = "NEStateRelay: Set Event handler for session: ConfigurationID: %@ config_id: %s";
      v13 = v11;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, v12, &v18, v14);
    }
  }

  else
  {
    v15 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v12 = "NEStateRelay: Session returned nil!";
      v13 = v15;
      v14 = 2;
      goto LABEL_6;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

@end