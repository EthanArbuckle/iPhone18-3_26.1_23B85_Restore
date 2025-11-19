@interface DisablePowerMonitoring
@end

@implementation DisablePowerMonitoring

void ___DisablePowerMonitoring_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[PCLog timer];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = [sPowerMonitoringTimers count] - 1;
    _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "Disabling power monitoring for %{public}@ - %lu timers", &v7, 0x16u);
  }

  [sPowerMonitoringTimers removeObject:*(a1 + 32)];
  if (![sPowerMonitoringTimers count])
  {
    v4 = +[PCLog timer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "PCSimpleTimer - no timers left, disabling power monitoring", &v7, 2u);
    }

    v5 = sPowerMonitoringTimers;
    sPowerMonitoringTimers = 0;

    if (sPMConnection)
    {
      IODeregisterForSystemPower(sPMNotifier);
      IONotificationPortDestroy(sPMPort);
      IOServiceClose(sPMConnection);
      sPMConnection = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end