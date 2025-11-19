@interface RCConfigurationFetchResult
- (RCConfigurationFetchResult)initWithTaskIdentifier:(id)a3 configurationDataByRequestKey:(id)a4 treatmentIDs:(id)a5 segmentSetIDs:(id)a6 error:(id)a7;
@end

@implementation RCConfigurationFetchResult

- (RCConfigurationFetchResult)initWithTaskIdentifier:(id)a3 configurationDataByRequestKey:(id)a4 treatmentIDs:(id)a5 segmentSetIDs:(id)a6 error:(id)a7
{
  v13 = a3;
  v19 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = RCConfigurationFetchResult;
  v17 = [(RCConfigurationFetchResult *)&v20 init];
  if (v17)
  {
    if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCConfigurationFetchResult initWithTaskIdentifier:configurationDataByRequestKey:treatmentIDs:segmentSetIDs:error:];
    }

    objc_storeStrong(&v17->_taskIdentifier, a3);
    objc_storeStrong(&v17->_configurationDataByRequestKey, a4);
    objc_storeStrong(&v17->_treatmentIDs, a5);
    objc_storeStrong(&v17->_segmentSetIDs, a6);
    objc_storeStrong(&v17->_error, a7);
  }

  return v17;
}

- (void)initWithTaskIdentifier:configurationDataByRequestKey:treatmentIDs:segmentSetIDs:error:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "taskIdentifier"];
  *buf = 136315906;
  v3 = "[RCConfigurationFetchResult initWithTaskIdentifier:configurationDataByRequestKey:treatmentIDs:segmentSetIDs:error:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCConfigurationFetchResult.m";
  v6 = 1024;
  v7 = 34;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end