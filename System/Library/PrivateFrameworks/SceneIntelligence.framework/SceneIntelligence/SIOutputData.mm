@interface SIOutputData
+ (id)initWithConfig:(id)config;
- (BOOL)copyDataTo:(id)to;
- (BOOL)saveToDisk:(id)disk identifier:(id)identifier;
- (SIOutputData)initWithConfig:(id)config;
@end

@implementation SIOutputData

+ (id)initWithConfig:(id)config
{
  v14 = *MEMORY[0x277D85DE8];
  configCopy = config;
  algorithmOutputClassName = [configCopy algorithmOutputClassName];
  v5 = algorithmOutputClassName;
  if (algorithmOutputClassName)
  {
    v6 = [objc_alloc(NSClassFromString(algorithmOutputClassName)) initWithConfig:configCopy];
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136380931;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
      v12 = 1025;
      v13 = 19;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** algorithm output class name is not specified in the subclass ***", &v10, 0x12u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SIOutputData)initWithConfig:(id)config
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136380931;
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v9 = 1025;
    v10 = 25;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** init function for output data should be implemented by the subclass ***", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)copyDataTo:(id)to
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v8 = 1025;
    v9 = 31;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Not Supported for output data ***", &v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)saveToDisk:(id)disk identifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136380931;
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v9 = 1025;
    v10 = 38;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** saveToDisk function for output data should be implemented by the subclass ***", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end