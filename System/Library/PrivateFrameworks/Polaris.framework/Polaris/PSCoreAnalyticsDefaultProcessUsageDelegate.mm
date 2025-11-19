@interface PSCoreAnalyticsDefaultProcessUsageDelegate
- (BOOL)readProcessUsage;
- (PSCoreAnalyticsDefaultProcessUsageDelegate)init;
- (void)didCheckIfOKToSendCAEventsWithResult:(BOOL)a3;
- (void)reportUsageToCA;
@end

@implementation PSCoreAnalyticsDefaultProcessUsageDelegate

- (PSCoreAnalyticsDefaultProcessUsageDelegate)init
{
  v6.receiver = self;
  v6.super_class = PSCoreAnalyticsDefaultProcessUsageDelegate;
  v2 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)v2 setSkipCount:0];
    *&v3->_usage.ri_reserved[8] = 0u;
    *&v3->_usage.ri_reserved[10] = 0u;
    *&v3->_usage.ri_reserved[4] = 0u;
    *&v3->_usage.ri_reserved[6] = 0u;
    *v3->_usage.ri_reserved = 0u;
    *&v3->_usage.ri_reserved[2] = 0u;
    *&v3->_usage.ri_pinstructions = 0u;
    *&v3->_usage.ri_energy_nj = 0u;
    *&v3->_usage.ri_runnable_time = 0u;
    *&v3->_usage.ri_user_ptime = 0u;
    *&v3->_usage.ri_cycles = 0u;
    *&v3->_usage.ri_serviced_energy = 0u;
    *&v3->_usage.ri_serviced_system_time = 0u;
    *&v3->_usage.ri_lifetime_max_phys_footprint = 0u;
    *&v3->_usage.ri_cpu_time_qos_legacy = 0u;
    *&v3->_usage.ri_cpu_time_qos_user_interactive = 0u;
    *&v3->_usage.ri_cpu_time_qos_default = 0u;
    *&v3->_usage.ri_cpu_time_qos_background = 0u;
    *&v3->_usage.ri_child_pageins = 0u;
    *&v3->_usage.ri_diskio_bytesread = 0u;
    *&v3->_usage.ri_child_user_time = 0u;
    *&v3->_usage.ri_child_pkg_idle_wkups = 0u;
    *&v3->_usage.ri_resident_size = 0u;
    *&v3->_usage.ri_proc_start_abstime = 0u;
    *&v3->_usage.ri_pkg_idle_wkups = 0u;
    *&v3->_usage.ri_pageins = 0u;
    *v3->_usage.ri_uuid = 0u;
    *&v3->_usage.ri_user_time = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[10] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[12] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[6] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[8] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[2] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_reserved[4] = 0u;
    *&v3->_usageAsOfLastCAReport.ri_energy_nj = 0u;
    *v3->_usageAsOfLastCAReport.ri_reserved = 0u;
    *&v3->_usageAsOfLastCAReport.ri_user_ptime = 0u;
    *&v3->_usageAsOfLastCAReport.ri_pinstructions = 0u;
    *&v3->_usageAsOfLastCAReport.ri_serviced_energy = 0u;
    *&v3->_usageAsOfLastCAReport.ri_runnable_time = 0u;
    *&v3->_usageAsOfLastCAReport.ri_lifetime_max_phys_footprint = 0u;
    *&v3->_usageAsOfLastCAReport.ri_cycles = 0u;
    *&v3->_usageAsOfLastCAReport.ri_cpu_time_qos_user_interactive = 0u;
    *&v3->_usageAsOfLastCAReport.ri_serviced_system_time = 0u;
    *&v3->_usageAsOfLastCAReport.ri_cpu_time_qos_background = 0u;
    *&v3->_usageAsOfLastCAReport.ri_cpu_time_qos_legacy = 0u;
    *&v3->_usageAsOfLastCAReport.ri_diskio_bytesread = 0u;
    *&v3->_usageAsOfLastCAReport.ri_cpu_time_qos_default = 0u;
    *&v3->_usageAsOfLastCAReport.ri_child_pkg_idle_wkups = 0u;
    *&v3->_usageAsOfLastCAReport.ri_child_pageins = 0u;
    *&v3->_usageAsOfLastCAReport.ri_proc_start_abstime = 0u;
    *&v3->_usageAsOfLastCAReport.ri_child_user_time = 0u;
    *&v3->_usageAsOfLastCAReport.ri_pageins = 0u;
    *&v3->_usageAsOfLastCAReport.ri_resident_size = 0u;
    *&v3->_usageAsOfLastCAReport.ri_user_time = 0u;
    *&v3->_usageAsOfLastCAReport.ri_pkg_idle_wkups = 0u;
    *&v3->_usage.ri_reserved[12] = 0u;
    *v3->_usageAsOfLastCAReport.ri_uuid = 0u;
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)v3 setPhysicalFootprint:0];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)v3 setPhysicalFootprintMB:0];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)v3 setLifetimeMaxPhysicalFootprintMB:0];
    v4 = os_log_create("com.apple.polaris", "ProcessUsageTracker");
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)v3 setLog_handle:v4];
  }

  return v3;
}

- (BOOL)readProcessUsage
{
  v3 = getpid();
  v4 = proc_pid_rusage(v3, 6, &self->_usage);
  if (v4)
  {
    v5 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self log_handle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100017458(v5);
    }
  }

  else
  {
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setMachAbsoluteTime:mach_absolute_time()];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setPhysicalFootprint:v8];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setPhysicalFootprintMB:[(PSCoreAnalyticsDefaultProcessUsageDelegate *)self physicalFootprint]>> 20];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setLifetimeMaxPhysicalFootprintMB:v7 >> 20];
  }

  return v4 == 0;
}

- (void)didCheckIfOKToSendCAEventsWithResult:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self log_handle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v10 = v3;
    *&v10[4] = 2048;
    *&v10[6] = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self physicalFootprintMB];
    v11 = 2048;
    v12 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self lifetimeMaxPhysicalFootprintMB];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "okToSendCAEvents: %d footprint (MB): %llu lifetime max footprint (MB): %llu", buf, 0x1Cu);
  }

  v6 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self skipCount];
  if (v3)
  {
    if (v6)
    {
      v7 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self log_handle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self skipCount];
        *buf = 134217984;
        *v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resuming after skip count: %llu", buf, 0xCu);
      }

      AnalyticsSendEventLazy();
      [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setSkipCount:0];
    }

    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self reportUsageToCA];
  }

  else
  {
    [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setSkipCount:v6 + 1];
  }
}

- (void)reportUsageToCA
{
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
  v3 = v10;
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usageAsOfLastCAReport];
  sub_10000AC10(v3 - v9);
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
  v4 = v8;
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usageAsOfLastCAReport];
  sub_10000AC10(v4 - v7);
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usageAsOfLastCAReport];
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usageAsOfLastCAReport];
  sub_10000AC10([(PSCoreAnalyticsDefaultProcessUsageDelegate *)self machAbsoluteTime]- [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self machAbsoluteTimeAsOfLastCAReport]);
  AnalyticsSendEventLazy();
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self usage];
  memcpy(__dst, __src, sizeof(__dst));
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setUsageAsOfLastCAReport:__dst];
  [(PSCoreAnalyticsDefaultProcessUsageDelegate *)self setMachAbsoluteTimeAsOfLastCAReport:[(PSCoreAnalyticsDefaultProcessUsageDelegate *)self machAbsoluteTime]];
}

@end