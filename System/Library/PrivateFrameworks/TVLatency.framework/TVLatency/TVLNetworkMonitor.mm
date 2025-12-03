@interface TVLNetworkMonitor
- (TVLNetworkMonitor)init;
- (void)dealloc;
- (void)startMonitoringForInterfaceTypes:(unint64_t)types updateHandler:(id)handler;
- (void)stopMonitoring;
@end

@implementation TVLNetworkMonitor

- (TVLNetworkMonitor)init
{
  v6.receiver = self;
  v6.super_class = TVLNetworkMonitor;
  v2 = [(TVLNetworkMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(TVLNetworkMonitorQueueLabel, MEMORY[0x277D85CD8]);
    monitorQueue = v2->_monitorQueue;
    v2->_monitorQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(TVLNetworkMonitor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = TVLNetworkMonitor;
  [(TVLNetworkMonitor *)&v3 dealloc];
}

- (void)startMonitoringForInterfaceTypes:(unint64_t)types updateHandler:(id)handler
{
  handlerCopy = handler;
  if (_TVLLogDefault_onceToken_5 != -1)
  {
    [TVLNetworkMonitor startMonitoringForInterfaceTypes:updateHandler:];
  }

  v7 = _TVLLogDefault_log_5;
  if (os_log_type_enabled(_TVLLogDefault_log_5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CD78000, v7, OS_LOG_TYPE_DEFAULT, "TVLNetworkMonitor:startMonitoringForInterfaceTypes", buf, 2u);
  }

  if (![(TVLNetworkMonitor *)self isMonitoring])
  {
    self->_monitoringOptions = types;
    v8 = MEMORY[0x26D6AEC20](handlerCopy);
    updateHandler = self->_updateHandler;
    self->_updateHandler = v8;

    objc_initWeak(buf, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke;
    v35[3] = &unk_279D6C1F8;
    objc_copyWeak(&v36, buf);
    v10 = MEMORY[0x26D6AEC20](v35);
    if ((types & 4) != 0 && !self->_awdl_monitor)
    {
      v15 = objc_alloc_init(MEMORY[0x277CCAB80]);
      awdlServiceBrowser = self->_awdlServiceBrowser;
      self->_awdlServiceBrowser = v15;

      [(NSNetServiceBrowser *)self->_awdlServiceBrowser setIncludesPeerToPeer:1];
      [(NSNetServiceBrowser *)self->_awdlServiceBrowser setDelegate:self];
      v17 = MEMORY[0x26D6AE9A0]([(NSNetServiceBrowser *)self->_awdlServiceBrowser searchForServicesOfType:@"_tvlatency._udp" inDomain:@"local."]);
      nw_parameters_set_required_interface_subtype();
      nw_parameters_set_include_peer_to_peer(v17, 1);
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      awdl_monitor = self->_awdl_monitor;
      self->_awdl_monitor = evaluator_for_endpoint;

      nw_path_monitor_set_queue(self->_awdl_monitor, self->_monitorQueue);
      nw_path_monitor_set_update_handler(self->_awdl_monitor, v10);
      objc_initWeak(&location, self);
      v20 = self->_awdl_monitor;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_2_14;
      v31[3] = &unk_279D6C220;
      objc_copyWeak(&v33, &location);
      v32 = v10;
      nw_path_monitor_set_update_handler(v20, v31);
      nw_path_monitor_start(self->_awdl_monitor);
      self->_monitoring = 1;

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);

      if ((types & 2) != 0)
      {
LABEL_9:
        if (!self->_wifi_monitor)
        {
          v11 = MEMORY[0x26D6AE9A0]();
          nw_parameters_set_required_interface_type(v11, nw_interface_type_wifi);
          nw_parameters_set_required_interface_subtype();
          v12 = nw_path_create_evaluator_for_endpoint();
          wifi_monitor = self->_wifi_monitor;
          self->_wifi_monitor = v12;

          nw_path_monitor_set_queue(self->_wifi_monitor, self->_monitorQueue);
          objc_initWeak(&location, self);
          v14 = self->_wifi_monitor;
          update_handler[0] = MEMORY[0x277D85DD0];
          update_handler[1] = 3221225472;
          update_handler[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_3;
          update_handler[3] = &unk_279D6C220;
          objc_copyWeak(&v30, &location);
          v29 = v10;
          nw_path_monitor_set_update_handler(v14, update_handler);
          nw_path_monitor_start(self->_wifi_monitor);
          self->_monitoring = 1;

          objc_destroyWeak(&v30);
          objc_destroyWeak(&location);
        }
      }
    }

    else if ((types & 2) != 0)
    {
      goto LABEL_9;
    }

    if ((types & 1) != 0 && !self->_ethernet_monitor)
    {
      v21 = MEMORY[0x26D6AE9A0]();
      nw_parameters_set_required_interface_type(v21, nw_interface_type_wired);
      v22 = nw_path_create_evaluator_for_endpoint();
      ethernet_monitor = self->_ethernet_monitor;
      self->_ethernet_monitor = v22;

      nw_path_monitor_set_queue(self->_ethernet_monitor, self->_monitorQueue);
      objc_initWeak(&location, self);
      v24 = self->_ethernet_monitor;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_4;
      v25[3] = &unk_279D6C220;
      objc_copyWeak(&v27, &location);
      v26 = v10;
      nw_path_monitor_set_update_handler(v24, v25);
      nw_path_monitor_start(self->_ethernet_monitor);
      self->_monitoring = 1;

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }
}

void __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_2;
    enumerate_block[3] = &unk_279D6C1D0;
    objc_copyWeak(&v20, (a1 + 32));
    v19 = v3;
    nw_path_enumerate_interfaces(v19, enumerate_block);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [WeakRetained awdl_monitor];
    if (v6)
    {
      v7 = [WeakRetained awdl];

      if (v7)
      {
        v8 = [WeakRetained awdl];
        [v5 addObject:v8];
      }
    }

    v9 = [WeakRetained wifi_monitor];
    if (v9)
    {
      v10 = [WeakRetained wifi];

      if (v10)
      {
        v11 = [WeakRetained wifi];
        [v5 addObject:v11];
      }
    }

    v12 = [WeakRetained ethernet_monitor];
    if (v12)
    {
      v13 = [WeakRetained ethernet];

      if (v13)
      {
        v14 = [WeakRetained ethernet];
        [v5 addObject:v14];
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_10;
    v16[3] = &unk_279D6C158;
    v16[4] = WeakRetained;
    v17 = v5;
    v15 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v16);

    objc_destroyWeak(&v20);
  }
}

BOOL __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_get_name(v3)];
    if (v5)
    {
      if (nw_interface_get_subtype() == 1002)
      {
        if (_TVLLogDefault_onceToken_5 != -1)
        {
          [TVLNetworkMonitor startMonitoringForInterfaceTypes:updateHandler:];
        }

        v6 = _TVLLogDefault_log_5;
        if (os_log_type_enabled(_TVLLogDefault_log_5, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          _os_log_impl(&dword_26CD78000, v6, OS_LOG_TYPE_INFO, "TVLNetworkMonitor found AWDL %{public}@", &v12, 0xCu);
        }

        v7 = [[TVLNetworkInterface alloc] initWithInterfaceType:3 interfaceName:v5];
        [WeakRetained setAwdl:v7];
      }

      else if (nw_interface_get_type(v3) == nw_interface_type_wifi)
      {
        if (nw_path_get_status(*(a1 + 32)) != nw_path_status_satisfied)
        {
          goto LABEL_10;
        }

        if (_TVLLogDefault_onceToken_5 != -1)
        {
          [TVLNetworkMonitor startMonitoringForInterfaceTypes:updateHandler:];
        }

        v10 = _TVLLogDefault_log_5;
        if (os_log_type_enabled(_TVLLogDefault_log_5, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          _os_log_impl(&dword_26CD78000, v10, OS_LOG_TYPE_INFO, "TVLNetworkMonitor found WIFI %{public}@", &v12, 0xCu);
        }

        v7 = [[TVLNetworkInterface alloc] initWithInterfaceType:2 interfaceName:v5];
        [WeakRetained setWifi:v7];
      }

      else
      {
        if (nw_interface_get_type(v3) != nw_interface_type_wired || nw_path_get_status(*(a1 + 32)) != nw_path_status_satisfied)
        {
          goto LABEL_10;
        }

        if (_TVLLogDefault_onceToken_5 != -1)
        {
          [TVLNetworkMonitor startMonitoringForInterfaceTypes:updateHandler:];
        }

        v11 = _TVLLogDefault_log_5;
        if (os_log_type_enabled(_TVLLogDefault_log_5, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          _os_log_impl(&dword_26CD78000, v11, OS_LOG_TYPE_INFO, "TVLNetworkMonitor found ETHERNET %{public}@", &v12, 0xCu);
        }

        v7 = [[TVLNetworkInterface alloc] initWithInterfaceType:1 interfaceName:v5];
        [WeakRetained setEthernet:v7];
      }
    }

LABEL_10:
  }

  v8 = *MEMORY[0x277D85DE8];
  return WeakRetained != 0;
}

void __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_10(uint64_t a1)
{
  v3 = [*(a1 + 32) updateHandler];
  v2 = [*(a1 + 40) copy];
  v3[2](v3, v2);
}

void __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_2_14(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAwdl:0];

  (*(*(a1 + 32) + 16))();
}

void __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWifi:0];

  (*(*(a1 + 32) + 16))();
}

void __68__TVLNetworkMonitor_startMonitoringForInterfaceTypes_updateHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEthernet:0];

  (*(*(a1 + 32) + 16))();
}

- (void)stopMonitoring
{
  if (_TVLLogDefault_onceToken_5 != -1)
  {
    [TVLNetworkMonitor startMonitoringForInterfaceTypes:updateHandler:];
  }

  v3 = _TVLLogDefault_log_5;
  if (os_log_type_enabled(_TVLLogDefault_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_26CD78000, v3, OS_LOG_TYPE_DEFAULT, "TVLNetworkMonitor:stopMonitoring", v14, 2u);
  }

  awdl_monitor = self->_awdl_monitor;
  if (awdl_monitor)
  {
    nw_path_monitor_cancel(awdl_monitor);
    v5 = self->_awdl_monitor;
    self->_awdl_monitor = 0;

    [(NSNetServiceBrowser *)self->_awdlServiceBrowser stop];
    awdlServiceBrowser = self->_awdlServiceBrowser;
    self->_awdlServiceBrowser = 0;

    awdl = self->_awdl;
    self->_awdl = 0;
  }

  wifi_monitor = self->_wifi_monitor;
  if (wifi_monitor)
  {
    nw_path_monitor_cancel(wifi_monitor);
    v9 = self->_wifi_monitor;
    self->_wifi_monitor = 0;

    wifi = self->_wifi;
    self->_wifi = 0;
  }

  ethernet_monitor = self->_ethernet_monitor;
  if (ethernet_monitor)
  {
    nw_path_monitor_cancel(ethernet_monitor);
    v12 = self->_ethernet_monitor;
    self->_ethernet_monitor = 0;

    ethernet = self->_ethernet;
    self->_ethernet = 0;
  }

  self->_monitoringOptions = 0;
  self->_monitoring = 0;
}

@end