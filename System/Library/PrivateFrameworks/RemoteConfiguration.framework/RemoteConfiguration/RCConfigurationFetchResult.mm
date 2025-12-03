@interface RCConfigurationFetchResult
- (RCConfigurationFetchResult)initWithTaskIdentifier:(id)identifier configurationDataByRequestKey:(id)key treatmentIDs:(id)ds segmentSetIDs:(id)iDs error:(id)error;
@end

@implementation RCConfigurationFetchResult

- (RCConfigurationFetchResult)initWithTaskIdentifier:(id)identifier configurationDataByRequestKey:(id)key treatmentIDs:(id)ds segmentSetIDs:(id)iDs error:(id)error
{
  identifierCopy = identifier;
  keyCopy = key;
  dsCopy = ds;
  iDsCopy = iDs;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = RCConfigurationFetchResult;
  v17 = [(RCConfigurationFetchResult *)&v20 init];
  if (v17)
  {
    if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCConfigurationFetchResult initWithTaskIdentifier:configurationDataByRequestKey:treatmentIDs:segmentSetIDs:error:];
    }

    objc_storeStrong(&v17->_taskIdentifier, identifier);
    objc_storeStrong(&v17->_configurationDataByRequestKey, key);
    objc_storeStrong(&v17->_treatmentIDs, ds);
    objc_storeStrong(&v17->_segmentSetIDs, iDs);
    objc_storeStrong(&v17->_error, error);
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