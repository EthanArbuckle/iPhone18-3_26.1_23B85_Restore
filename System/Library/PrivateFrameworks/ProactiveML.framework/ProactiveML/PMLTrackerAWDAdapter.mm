@interface PMLTrackerAWDAdapter
- (void)postMetricId:(unsigned int)a3 message:(id)a4;
@end

@implementation PMLTrackerAWDAdapter

- (void)postMetricId:(unsigned int)a3 message:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 1024;
    v11 = a3;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Sending %@ (%d) to AWD.", &v8, 0x12u);
  }

  AWDPostMetric();
  v7 = *MEMORY[0x277D85DE8];
}

@end