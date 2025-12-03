@interface SKLogAnalyticsSink
- (void)sendEventWithName:(id)name eventPayloadBuilder:(id)builder;
@end

@implementation SKLogAnalyticsSink

- (void)sendEventWithName:(id)name eventPayloadBuilder:(id)builder
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  builderCopy = builder;
  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = builderCopy[2](builderCopy);
    v10 = 138412546;
    v11 = nameCopy;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_INFO, "Sending event %@ with payload %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end