@interface PISegmentationContextInfo
+ (id)currentContextInfo;
@end

@implementation PISegmentationContextInfo

+ (id)currentContextInfo
{
  if (currentContextInfo_onceToken != -1)
  {
    dispatch_once(&currentContextInfo_onceToken, &__block_literal_global_830);
  }

  v3 = objc_alloc_init(self);
  [v3 setVersion:65];
  [v3 setSystemName:currentContextInfo_systemName];
  [v3 setSystemVersion:currentContextInfo_systemVersion];
  [v3 setSystemBuildVersion:currentContextInfo_systemBuildVersion];
  [v3 setSourceMode:0];
  [v3 setSegmentationDisabled:0];
  v4 = +[PIGlobalSettings globalSettings];
  [v3 setInfillAlgorithm:{objc_msgSend(v4, "segmentationInfillAlgorithm")}];

  deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
  [v3 setLayoutConfiguration:deviceConfiguration];

  return v3;
}

uint64_t __47__PISegmentationContextInfo_currentContextInfo__block_invoke()
{
  v0 = _CFCopySystemVersionDictionaryValue();
  v1 = currentContextInfo_systemName;
  currentContextInfo_systemName = v0;

  v2 = _CFCopySystemVersionDictionaryValue();
  v3 = currentContextInfo_systemVersion;
  currentContextInfo_systemVersion = v2;

  v4 = _CFCopySystemVersionDictionaryValue();
  v5 = currentContextInfo_systemBuildVersion;
  currentContextInfo_systemBuildVersion = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

@end