@interface SKLogAnalyticsSink
- (void)sendEventWithName:(id)a3 eventPayloadBuilder:(id)a4;
@end

@implementation SKLogAnalyticsSink

- (void)sendEventWithName:(id)a3 eventPayloadBuilder:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v6[2](v6);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_INFO, "Sending event %@ with payload %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end