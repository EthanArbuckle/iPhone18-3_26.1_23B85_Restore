@interface MAClientLog
@end

@implementation MAClientLog

void ___MAClientLog_block_invoke()
{
  v16[11] = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDC6C78] sharedCore];
  [v0 useDomain:@"com.apple.MobileAsset"];

  v15[0] = @"DEFAULT";
  v14 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v16[0] = v14;
  v15[1] = @"V2";
  v1 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v16[1] = v1;
  v15[2] = @"Brain";
  v2 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v16[2] = v2;
  v15[3] = @"SSO";
  v3 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v16[3] = v3;
  v15[4] = @"PushNotification";
  v4 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v16[4] = v4;
  v15[5] = @"SecureMA";
  v5 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v16[5] = v5;
  v15[6] = @"Manifest";
  v6 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v16[6] = v6;
  v15[7] = @"KeyManager";
  v7 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v16[7] = v7;
  v15[8] = @"Auto";
  v8 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v16[8] = v8;
  v15[9] = @"AutoSet";
  v9 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v16[9] = v9;
  v15[10] = @"AutoStager";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v16[10] = v10;
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:v15 count:11];
  v12 = _MAClientLog_clientLoggers;
  _MAClientLog_clientLoggers = v11;

  v13 = *MEMORY[0x29EDCA608];
}

@end