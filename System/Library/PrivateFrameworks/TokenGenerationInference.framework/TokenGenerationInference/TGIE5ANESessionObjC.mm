@interface TGIE5ANESessionObjC
+ (void)sendStartSignalForResource:(id)a3 useEnergyEfficientMode:(BOOL)a4 assetIdentifier:(id)a5;
+ (void)sendStopSignalForResource:(id)a3;
- (TGIE5ANESessionObjC)initWithResourceURL:(id)a3 useEnergyEfficientMode:(BOOL)a4 assetIdentifier:(id)a5;
- (void)dealloc;
- (void)resume;
- (void)stop;
@end

@implementation TGIE5ANESessionObjC

- (void)resume
{
  v5 = [(TGIE5ANESessionObjC *)self resourceURL];
  v3 = [(TGIE5ANESessionObjC *)self useEnergyEfficientMode];
  v4 = [(TGIE5ANESessionObjC *)self assetIdentifier];
  [TGIE5ANESessionObjC sendStartSignalForResource:v5 useEnergyEfficientMode:v3 assetIdentifier:v4];
}

- (void)dealloc
{
  v3 = [(TGIE5ANESessionObjC *)self resourceURL];
  [TGIE5ANESessionObjC sendStopSignalForResource:v3];

  v4.receiver = self;
  v4.super_class = TGIE5ANESessionObjC;
  [(TGIE5ANESessionObjC *)&v4 dealloc];
}

- (void)stop
{
  v2 = [(TGIE5ANESessionObjC *)self resourceURL];
  [TGIE5ANESessionObjC sendStopSignalForResource:?];
}

+ (void)sendStartSignalForResource:(id)a3 useEnergyEfficientMode:(BOOL)a4 assetIdentifier:(id)a5
{
  v6 = a4;
  v28[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 path];
    v21 = 136315650;
    v22 = [v10 UTF8String];
    v23 = 1024;
    *v24 = v6;
    *&v24[4] = 2080;
    *&v24[6] = [(cgm::token_generation_inference::common::logging::CGMTGILogger *)v8 UTF8String];
    _os_log_impl(&dword_220940000, v9, OS_LOG_TYPE_INFO, "Sending ANE start session signal for resource at path %s with useEnergyEfficientMode: %i and asset identifier %s", &v21, 0x1Cu);
  }

  v27[0] = @"ANEClientModelAssetPath";
  v11 = [v7 path];
  v27[1] = @"ANEClientEnergyEfficientWorkload";
  v28[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v28[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v14 = sendAneSessionSignal();
  v15 = [v14 objectForKeyedSubscript:@"ANEClientTotalPages"];
  isKindOfClass = [v14 objectForKeyedSubscript:@"ANEClientResidentPages"];
  v17 = isKindOfClass;
  if (v15 && isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0) && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v18 = v15;
    v19 = v17;
    v20 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138544130;
      v22 = v8;
      v23 = 2114;
      *v24 = v7;
      *&v24[8] = 2112;
      *&v24[10] = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_220940000, v20, OS_LOG_TYPE_INFO, "ANE start signal for asset identifier %{public}@ and resource at path %{public}@ yielded %@ total pages and %@ pages already resident.", &v21, 0x2Au);
    }

    [_TtC24TokenGenerationInference16TelemetryHelpers emitFileResidentInfoWithAssetIdentifier:v8 residentPages:[(cgm::token_generation_inference::common::logging::CGMTGILogger *)v19 longValue] totalPages:[v18 longValue]];
  }

  else
  {
    v18 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(isKindOfClass);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543874;
      v22 = v8;
      v23 = 2112;
      *v24 = v15;
      *&v24[8] = 2112;
      *&v24[10] = v17;
      _os_log_error_impl(&dword_220940000, v18, OS_LOG_TYPE_ERROR, "ANE start signal for asset identifier %{public}@ did not return expected metrics back. Received (totalPages: %@, totalPagesAlreadyResident %@)", &v21, 0x20u);
    }
  }
}

+ (void)sendStopSignalForResource:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(cgm::token_generation_inference::common::logging::CGMTGILogger *)v3 path];
    *buf = 136446210;
    v11 = [v5 UTF8String];
    _os_log_impl(&dword_220940000, v4, OS_LOG_TYPE_INFO, "Sending ANE stop session signal for resource at path %{public}s", buf, 0xCu);
  }

  v6 = [(cgm::token_generation_inference::common::logging::CGMTGILogger *)v3 path];
  v9 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  sendAneSignal();
}

- (TGIE5ANESessionObjC)initWithResourceURL:(id)a3 useEnergyEfficientMode:(BOOL)a4 assetIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TGIE5ANESessionObjC;
  v11 = [(TGIE5ANESessionObjC *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_resourceURL, a3);
    v12->_useEnergyEfficientMode = a4;
    objc_storeStrong(&v12->_assetIdentifier, a5);
  }

  return v12;
}

@end