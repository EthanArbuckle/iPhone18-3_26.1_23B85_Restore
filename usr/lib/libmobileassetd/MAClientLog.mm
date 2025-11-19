@interface MAClientLog
@end

@implementation MAClientLog

void ___MAClientLog_block_invoke(id a1)
{
  v1 = +[SUCore sharedCore];
  [v1 useDomain:@"com.apple.MobileAsset"];

  v15[0] = @"DEFAULT";
  v14 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v16[0] = v14;
  v15[1] = @"V2";
  v2 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v16[1] = v2;
  v15[2] = @"Brain";
  v3 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v16[2] = v3;
  v15[3] = @"SSO";
  v4 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v16[3] = v4;
  v15[4] = @"PushNotification";
  v5 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v16[4] = v5;
  v15[5] = @"SecureMA";
  v6 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v16[5] = v6;
  v15[6] = @"Manifest";
  v7 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v16[6] = v7;
  v15[7] = @"KeyManager";
  v8 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v16[7] = v8;
  v15[8] = @"Auto";
  v9 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v16[8] = v9;
  v15[9] = @"AutoSet";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v16[9] = v10;
  v15[10] = @"AutoStager";
  v11 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v16[10] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];
  v13 = _MAClientLog_clientLoggers;
  _MAClientLog_clientLoggers = v12;
}

@end