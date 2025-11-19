@interface MADLog
@end

@implementation MADLog

void ___MADLog_block_invoke(id a1)
{
  v1 = +[SUCore sharedCore];
  [v1 useDomain:@"com.apple.mobileassetd"];

  v31[0] = @"DEFAULT";
  v30 = os_log_create("com.apple.mobileassetd", [@"DEFAULT" UTF8String]);
  v32[0] = v30;
  v31[1] = @"V2";
  v29 = os_log_create("com.apple.mobileassetd", [@"V2" UTF8String]);
  v32[1] = v29;
  v31[2] = @"V2Control";
  v28 = os_log_create("com.apple.mobileassetd", [@"V2Control" UTF8String]);
  v32[2] = v28;
  v31[3] = @"Download";
  v27 = os_log_create("com.apple.mobileassetd", [@"Download" UTF8String]);
  v32[3] = v27;
  v31[4] = @"DownloadSession";
  v26 = os_log_create("com.apple.mobileassetd", [@"DownloadSession" UTF8String]);
  v32[4] = v26;
  v31[5] = @"Brain";
  v25 = os_log_create("com.apple.mobileassetd", [@"Brain" UTF8String]);
  v32[5] = v25;
  v31[6] = @"SSO";
  v24 = os_log_create("com.apple.mobileassetd", [@"SSO" UTF8String]);
  v32[6] = v24;
  v31[7] = @"Activity";
  v23 = os_log_create("com.apple.mobileassetd", [@"Activity" UTF8String]);
  v32[7] = v23;
  v31[8] = @"Analytics";
  v22 = os_log_create("com.apple.mobileassetd", [@"Analytics" UTF8String]);
  v32[8] = v22;
  v31[9] = @"PowerLog";
  v21 = os_log_create("com.apple.mobileassetd", [@"PowerLog" UTF8String]);
  v32[9] = v21;
  v31[10] = @"PushNotification";
  v20 = os_log_create("com.apple.mobileassetd", [@"PushNotification" UTF8String]);
  v32[10] = v20;
  v31[11] = @"SecureMA";
  v19 = os_log_create("com.apple.mobileassetd", [@"SecureMA" UTF8String]);
  v32[11] = v19;
  v31[12] = @"Manifest";
  v18 = os_log_create("com.apple.mobileassetd", [@"Manifest" UTF8String]);
  v32[12] = v18;
  v31[13] = @"KeyManager";
  v17 = os_log_create("com.apple.mobileassetd", [@"KeyManager" UTF8String]);
  v32[13] = v17;
  v31[14] = @"CacheDelete";
  v16 = os_log_create("com.apple.mobileassetd", [@"CacheDelete" UTF8String]);
  v32[14] = v16;
  v31[15] = @"Entitlement";
  v15 = os_log_create("com.apple.mobileassetd", [@"Entitlement" UTF8String]);
  v32[15] = v15;
  v31[16] = @"Auto";
  v14 = os_log_create("com.apple.mobileassetd", [@"Auto" UTF8String]);
  v32[16] = v14;
  v31[17] = @"AutoSet";
  v2 = os_log_create("com.apple.mobileassetd", [@"AutoSet" UTF8String]);
  v32[17] = v2;
  v31[18] = @"AutoLocker";
  v3 = os_log_create("com.apple.mobileassetd", [@"AutoLocker" UTF8String]);
  v32[18] = v3;
  v31[19] = @"AutoHistory";
  v4 = os_log_create("com.apple.mobileassetd", [@"AutoHistory" UTF8String]);
  v32[19] = v4;
  v31[20] = @"AutoScheduler";
  v5 = os_log_create("com.apple.mobileassetd", [@"AutoScheduler" UTF8String]);
  v32[20] = v5;
  v31[21] = @"AutoStager";
  v6 = os_log_create("com.apple.mobileassetd", [@"AutoStager" UTF8String]);
  v32[21] = v6;
  v31[22] = @"AutoStagerSituation";
  v7 = os_log_create("com.apple.mobileassetd", [@"AutoStagerSituation" UTF8String]);
  v32[22] = v7;
  v31[23] = @"AutoControl";
  v8 = os_log_create("com.apple.mobileassetd", [@"AutoControl" UTF8String]);
  v32[23] = v8;
  v31[24] = @"AutoJob";
  v9 = os_log_create("com.apple.mobileassetd", [@"AutoJob" UTF8String]);
  v32[24] = v9;
  v31[25] = @"AutoControl-SuspendResume";
  v10 = os_log_create("com.apple.mobileassetd", [@"AutoControl-SuspendResume" UTF8String]);
  v32[25] = v10;
  v31[26] = @"AnalyticsObserver";
  v11 = os_log_create("com.apple.mobileassetd", [@"AnalyticsObserver" UTF8String]);
  v32[26] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:27];
  v13 = _MADLog_daemonLoggers;
  _MADLog_daemonLoggers = v12;
}

@end