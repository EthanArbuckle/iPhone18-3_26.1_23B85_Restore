@interface WFMobileWiFiStateMonitor
- (WFMobileWiFiStateMonitor)initWithHandler:(id)handler;
- (void)_updateState;
- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment;
- (void)dealloc;
@end

@implementation WFMobileWiFiStateMonitor

- (WFMobileWiFiStateMonitor)initWithHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = WFMobileWiFiStateMonitor;
  v5 = [(WFMobileWiFiStateMonitor *)&v25 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = _Block_copy(handlerCopy);
  handler = v5->_handler;
  v5->_handler = v6;

  v5->_state = 0;
  v8 = *MEMORY[0x277CBECE8];
  v9 = WiFiManagerClientCreate();
  v5->_manager = v9;
  if (!v9)
  {
    [WFMobileWiFiStateMonitor initWithHandler:];
LABEL_20:

    v15 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop getCFRunLoop];
  v11 = *MEMORY[0x277CBF058];
  WiFiManagerClientScheduleWithRunLoop();

  manager = v5->_manager;
  WiFiManagerClientRegisterServerRestartCallback();
  v13 = v5->_manager;
  WiFiManagerClientRegisterDeviceAttachmentCallback();
  v14 = v5->_manager;
  v15 = WiFiManagerClientCopyDevices();
  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
  {
    *buf = 136315394;
    v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s: devices %@", buf, 0x16u);
  }

  if (v15)
  {
    v18 = [v15 objectAtIndex:0];
    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
    {
      *buf = 136315394;
      v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_273ECD000, v19, v20, "%s: device %@", buf, 0x16u);
    }

    [(WFMobileWiFiStateMonitor *)v5 _updateWithDeviceAttachment:v18];
    [(WFMobileWiFiStateMonitor *)v5 _updateState];
  }

  else
  {
    v21 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v21 && os_log_type_enabled(v21, v22))
    {
      *buf = 136315138;
      v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
      _os_log_impl(&dword_273ECD000, v21, v22, "%s: failed to acquire WiFiDeviceClientRef", buf, 0xCu);
    }

    v15 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  device = self->_device;
  if (device)
  {
    CFRelease(device);
    self->_device = 0;
  }

  v5.receiver = self;
  v5.super_class = WFMobileWiFiStateMonitor;
  [(WFMobileWiFiStateMonitor *)&v5 dealloc];
}

- (void)_updateState
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFMobileWiFiStateMonitor__updateState__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__WFMobileWiFiStateMonitor__updateState__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (WiFiManagerClientGetPower())
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = WiFiDeviceClientCopyCurrentNetwork();
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v8 = WFCurrentLogLevel() > 2 && v5 != 0;
    if (v4)
    {
      if (v8 && os_log_type_enabled(v5, v6))
      {
        *buf = 136315138;
        v15 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
        _os_log_impl(&dword_273ECD000, v5, v6, "%s: associated", buf, 0xCu);
      }

      CFRelease(v4);
      v9 = 4;
    }

    else
    {
      if (v8 && os_log_type_enabled(v5, v6))
      {
        *buf = 136315138;
        v15 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
        _os_log_impl(&dword_273ECD000, v5, v6, "%s: powered on", buf, 0xCu);
      }

      v9 = 3;
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315138;
      v15 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: powered off", buf, 0xCu);
    }

    v9 = 1;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__WFMobileWiFiStateMonitor__updateState__block_invoke_3;
  v13[3] = &unk_279EBCFB8;
  v13[4] = *(a1 + 32);
  v13[5] = v9;
  dispatch_async(MEMORY[0x277D85CD0], v13);
  v12 = *MEMORY[0x277D85DE8];
}

void __40__WFMobileWiFiStateMonitor__updateState__block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  [*(a1 + 32) setState:*(a1 + 40)];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v6 = WFWiFiStateMonitorStringForState(v2);
      v7 = WFWiFiStateMonitorStringForState(*(a1 + 40));
      v11 = 136315650;
      v12 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: state changed from %@ to %@", &v11, 0x20u);
    }
  }

  v8 = [*(a1 + 32) handler];

  if (v8)
  {
    v9 = [*(a1 + 32) handler];
    v9[2](v9, v2, *(a1 + 40));
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  self->_device = attachment;
  if (attachment)
  {
    CFRetain(attachment);
  }

  WiFiDeviceClientRegisterPowerCallback();

  MEMORY[0x282187698](attachment, _WiFiDeviceLinkExtendedCallback, self);
}

- (void)initWithHandler:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273ECD000, v0, v1, "failed to create WiFiManagerClientRef", v2, 2u);
  }
}

@end