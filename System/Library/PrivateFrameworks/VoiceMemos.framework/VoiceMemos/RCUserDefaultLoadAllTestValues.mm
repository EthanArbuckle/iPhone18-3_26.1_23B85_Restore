@interface RCUserDefaultLoadAllTestValues
@end

@implementation RCUserDefaultLoadAllTestValues

void ___RCUserDefaultLoadAllTestValues_block_invoke()
{
  v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v24 objectForKey:@"RCTestSlowMessageServiceSleepAmount"];

  if (v0)
  {
    v1 = [v24 objectForKey:@"RCTestSlowMessageServiceSleepAmount"];
    [v1 doubleValue];
    _RCTestSlowMessageServiceSleepAmount = v2;
  }

  v3 = [v24 objectForKey:@"RCTestSlowMessageExportSeconds"];

  if (v3)
  {
    v4 = [v24 objectForKey:@"RCTestSlowMessageExportSeconds"];
    [v4 doubleValue];
    _RCTestSlowMessageExportSeconds = v5;
  }

  v6 = [v24 objectForKey:@"RCTestResetSyncs"];

  if (v6)
  {
    v7 = [v24 objectForKey:@"RCTestResetSyncs"];
    _RCTestResetSyncs = [v7 BOOLValue];
  }

  v8 = [v24 objectForKey:@"RCTestResetSyncsAlwaysResetSync"];

  if (v8)
  {
    v9 = [v24 objectForKey:@"RCTestResetSyncsAlwaysResetSync"];
    _RCTestResetSyncsAlwaysResetSync = [v9 BOOLValue];
  }

  v10 = [v24 objectForKey:@"RCTestBeginPreviewDelay"];

  if (v10)
  {
    v11 = [v24 objectForKey:@"RCTestBeginPreviewDelay"];
    [v11 doubleValue];
    _RCTestBeginPreviewDelay = v12;
  }

  v13 = [v24 objectForKey:@"RCTestAutoSelectedRecordingIndex"];

  if (v13)
  {
    v14 = [v24 objectForKey:@"RCTestAutoSelectedRecordingIndex"];
    _RCTestAutoSelectedRecordingIndex = [v14 integerValue];
  }

  v15 = [v24 objectForKey:@"RCTestDebugAutolayout"];

  if (v15)
  {
    v16 = [v24 objectForKey:@"RCTestDebugAutolayout"];
    _RCTestDebugAutolayout = [v16 BOOLValue];
  }

  v17 = [v24 objectForKey:@"RCTestDebugAutolayout_Show"];

  if (v17)
  {
    v18 = [v24 objectForKey:@"RCTestDebugAutolayout_Show"];
    _RCTestDebugAutolayout_Show = [v18 BOOLValue];
  }

  v19 = [v24 objectForKey:@"RCTestDebugAutolayout_Logging"];

  if (v19)
  {
    v20 = [v24 objectForKey:@"RCTestDebugAutolayout_Logging"];
    _RCTestDebugAutolayout_Logging = [v20 BOOLValue];
  }

  v21 = [v24 objectForKey:@"RCTestResetNavigationStateThresholdSeconds"];

  if (v21)
  {
    v22 = [v24 objectForKey:@"RCTestResetNavigationStateThresholdSeconds"];
    [v22 doubleValue];
    _RCTestResetNavigationStateThresholdSeconds = v23;
  }

  _RCTestDebugAutolayout_Show = (_RCTestDebugAutolayout_Show | _RCTestDebugAutolayout) & 1;
  _RCTestDebugAutolayout_Logging = (_RCTestDebugAutolayout_Logging | _RCTestDebugAutolayout) & 1;
}

@end