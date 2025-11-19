@interface NSDictionary(BYSeedProgramManager)
- (id)bySeedProgramManager_valueForAssetAudienceKey;
- (id)bySeedProgramManager_valueForProgramIDKey;
- (id)bySeedProgramManager_valueForProgramKey;
@end

@implementation NSDictionary(BYSeedProgramManager)

- (id)bySeedProgramManager_valueForProgramKey
{
  if (objc_opt_class())
  {
    v2 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69CA668]];
  }

  else
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    v2 = 0;
  }

  return v2;
}

- (id)bySeedProgramManager_valueForAssetAudienceKey
{
  if (objc_opt_class())
  {
    v2 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69CA660]];
  }

  else
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    v2 = 0;
  }

  return v2;
}

- (id)bySeedProgramManager_valueForProgramIDKey
{
  if (objc_opt_class())
  {
    v2 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69CA670]];
  }

  else
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    v2 = 0;
  }

  return v2;
}

@end