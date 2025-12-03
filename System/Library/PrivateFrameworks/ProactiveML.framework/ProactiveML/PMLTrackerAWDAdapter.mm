@interface PMLTrackerAWDAdapter
- (void)postMetricId:(unsigned int)id message:(id)message;
@end

@implementation PMLTrackerAWDAdapter

- (void)postMetricId:(unsigned int)id message:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = messageCopy;
    v10 = 1024;
    idCopy = id;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Sending %@ (%d) to AWD.", &v8, 0x12u);
  }

  AWDPostMetric();
  v7 = *MEMORY[0x277D85DE8];
}

@end