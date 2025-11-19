@interface CarrierSettingsStatusIndicator
- (CarrierSettingsStatusIndicator)init;
- (void)carrierBundleChange:(id)a3;
- (void)createConnection;
- (void)preferredDataSimChanged:(id)a3;
@end

@implementation CarrierSettingsStatusIndicator

- (CarrierSettingsStatusIndicator)init
{
  v7.receiver = self;
  v7.super_class = CarrierSettingsStatusIndicator;
  v2 = [(CarrierSettingsStatusIndicator *)&v7 init];
  if (v2)
  {
    v3 = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, v3, v4, "CarrierSettingsStatusIndicator initialized.", v6, 2u);
    }
  }

  return v2;
}

- (void)createConnection
{
  v3 = dispatch_queue_create("Carrier Settings status indicator queue", 0);
  [(CarrierSettingsStatusIndicator *)self setQueue:v3];

  v4 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:self->_queue];
  [(CarrierSettingsStatusIndicator *)self setCoreTelephonyClient:v4];

  v5 = [(CarrierSettingsStatusIndicator *)self coreTelephonyClient];
  [v5 setDelegate:self];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v4, v5, "carrier bundle settings changed", buf, 2u);
  }

  v6 = [(CarrierSettingsStatusIndicator *)self runloop];
  v7 = [(CarrierSettingsStatusIndicator *)self runloopMode];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CarrierSettingsStatusIndicator_carrierBundleChange___block_invoke;
  block[3] = &unk_27A714298;
  block[4] = self;
  CFRunLoopPerformBlock(v6, v7, block);
  CFRunLoopWakeUp([(CarrierSettingsStatusIndicator *)self runloop]);
}

uint64_t __54__CarrierSettingsStatusIndicator_carrierBundleChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callback];

  return v1();
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v4, v5, "user's data subscription preference changed", buf, 2u);
  }

  v6 = [(CarrierSettingsStatusIndicator *)self runloop];
  v7 = [(CarrierSettingsStatusIndicator *)self runloopMode];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CarrierSettingsStatusIndicator_preferredDataSimChanged___block_invoke;
  block[3] = &unk_27A714298;
  block[4] = self;
  CFRunLoopPerformBlock(v6, v7, block);
  CFRunLoopWakeUp([(CarrierSettingsStatusIndicator *)self runloop]);
}

uint64_t __58__CarrierSettingsStatusIndicator_preferredDataSimChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callback];

  return v1();
}

@end