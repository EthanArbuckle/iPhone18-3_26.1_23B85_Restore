@interface EnablePowerMonitoring
@end

@implementation EnablePowerMonitoring

void ___EnablePowerMonitoring_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!sPowerMonitoringTimers)
  {
    v2 = +[PCLog timer];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "PCSimpleTimer - enabling power monitoring", &v10, 2u);
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = sPowerMonitoringTimers;
    sPowerMonitoringTimers = v3;

    if (!sPMConnection)
    {
      sPMConnection = IORegisterForSystemPower(0, &sPMPort, _powerChangedHandler, sPMNotifier);
      if (sPMConnection)
      {
        v5 = dispatch_queue_create("PCSimpleTimer-IOPowerManagement", 0);
        IONotificationPortSetDispatchQueue(sPMPort, v5);
      }
    }
  }

  [sPowerMonitoringTimers addObject:*(a1 + 32)];
  v6 = +[PCLog timer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [sPowerMonitoringTimers count];
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Enabling power monitoring for %{public}@ - %lu timers", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end