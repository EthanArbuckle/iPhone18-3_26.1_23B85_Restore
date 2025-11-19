@interface WLTelemetry
+ (id)sharedInstance;
- (id)_telemetryDictionaryForContentTypeDidComplete:(id)a3 downloadByteCount:(unint64_t)a4 importRecordCount:(unint64_t)a5 importFailedRecordCount:(unint64_t)a6 downloadDuration:(unint64_t)a7 importDuration:(unint64_t)a8 android:(id)a9 model:(id)a10 version:(id)a11;
- (id)_telemetryDictionaryForPreparatoryDataDidComplete:(id)a3 contentType:(id)a4 duration:(double)a5 android:(id)a6 model:(id)a7 version:(id)a8;
- (void)contentTypeDidComplete:(id)a3 downloadByteCount:(unint64_t)a4 importRecordCount:(unint64_t)a5 importFailedRecordCount:(unint64_t)a6 downloadDuration:(unint64_t)a7 importDuration:(unint64_t)a8 android:(id)a9 model:(id)a10 version:(id)a11;
- (void)daemonDidGetInterrupted;
- (void)deviceDidFailWithAuthenticationError;
- (void)deviceDidFailWithTimeout;
- (void)didLoadAndroidStore:(id)a3 selected:(BOOL)a4 canceled:(BOOL)a5 inAttempts:(unint64_t)a6;
- (void)didResolveTimeEstimate:(unint64_t)a3 forDownloadTask:(id)a4 threshold:(unint64_t)a5 actualTime:(unint64_t)a6;
- (void)importDidFailSilentlyForContentType:(id)a3;
- (void)migratorDidFinish:(id)a3;
- (void)photoLibraryDidFailWithExtension:(id)a3;
- (void)preparatoryDataDidComplete:(id)a3 contentType:(id)a4 duration:(double)a5 android:(id)a6 model:(id)a7 version:(id)a8;
- (void)send:(id)a3 payload:(id)a4;
- (void)wifiDidFail;
@end

@implementation WLTelemetry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WLTelemetry sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __29__WLTelemetry_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(WLTelemetry);

  return MEMORY[0x2821F96F8]();
}

- (void)send:(id)a3 payload:(id)a4
{
  v6 = a4;
  v7 = a3;
  _WLLog(v4, 2, @"WLTelemetry will send an event - %@ with payload %@.", v8, v9, v10, v11, v12, v7);
  v13 = v6;
  AnalyticsSendEventLazy();
}

- (void)wifiDidFail
{
  _WLLog(v7, 2, @"WLTelemetry got wifiDidFail event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"wifi_error"];
  v9 = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:v9];
}

- (void)deviceDidFailWithTimeout
{
  _WLLog(v7, 2, @"WLTelemetry got deviceDidFailWithTimeout event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"device_discovery_error_timeout"];
  v9 = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:v9];
}

- (void)deviceDidFailWithAuthenticationError
{
  _WLLog(v7, 2, @"WLTelemetry got deviceDidFailWithAuthenticationError event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"device_discovery_error_authentication_failed"];
  v9 = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:v9];
}

- (void)migratorDidFinish:(id)a3
{
  v5 = a3;
  _WLLog(v3, 2, @"WLTelemetry got migratorDidFinish event.", v6, v7, v8, v9, v10, v11);
  v12 = [v5 dictionary];

  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:v12];
}

- (id)_telemetryDictionaryForPreparatoryDataDidComplete:(id)a3 contentType:(id)a4 duration:(double)a5 android:(id)a6 model:(id)a7 version:(id)a8
{
  v28[6] = *MEMORY[0x277D85DE8];
  v27[0] = @"contentType";
  v27[1] = @"dataType";
  v28[0] = a4;
  v28[1] = a3;
  v27[2] = @"durationInSeconds";
  v12 = MEMORY[0x277CCABB0];
  v13 = a5;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v12 numberWithInteger:v13];
  v20 = v19;
  v21 = @"(unknown)";
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = @"(unknown)";
  }

  v28[2] = v19;
  v28[3] = v22;
  v27[3] = @"androidOSVersion";
  v27[4] = @"androidDeviceModel";
  v27[5] = @"androidClientVersion";
  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = @"(unknown)";
  }

  if (v14)
  {
    v21 = v14;
  }

  v28[4] = v23;
  v28[5] = v21;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)preparatoryDataDidComplete:(id)a3 contentType:(id)a4 duration:(double)a5 android:(id)a6 model:(id)a7 version:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  _WLLog(v8, 2, @"Telemetry: preparatoryDataDidComplete %@ contentType %@ duration %@", v19, v20, v21, v22, v23, v14);

  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  AnalyticsSendEventLazy();
}

- (id)_telemetryDictionaryForContentTypeDidComplete:(id)a3 downloadByteCount:(unint64_t)a4 importRecordCount:(unint64_t)a5 importFailedRecordCount:(unint64_t)a6 downloadDuration:(unint64_t)a7 importDuration:(unint64_t)a8 android:(id)a9 model:(id)a10 version:(id)a11
{
  v35[9] = *MEMORY[0x277D85DE8];
  LODWORD(v11) = vcvtpd_u64_f64(vcvtd_n_f64_u64(a4, 0x14uLL));
  v35[0] = a3;
  v34[0] = @"contentType";
  v34[1] = @"recordCount";
  v16 = MEMORY[0x277CCABB0];
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a3;
  v21 = [v16 numberWithUnsignedInteger:a5];
  v35[1] = v21;
  v34[2] = @"failedRecordCount";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v35[2] = v22;
  v34[3] = @"downloadSizeInMegabytes";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  v35[3] = v23;
  v34[4] = @"downloadDurationInSeconds";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  v35[4] = v24;
  v34[5] = @"importDurationInSeconds";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
  v26 = v25;
  v27 = @"(unknown)";
  if (v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = @"(unknown)";
  }

  v35[5] = v25;
  v35[6] = v28;
  v34[6] = @"androidOSVersion";
  v34[7] = @"androidDeviceModel";
  v34[8] = @"androidClientVersion";
  if (v18)
  {
    v29 = v18;
  }

  else
  {
    v29 = @"(unknown)";
  }

  if (v17)
  {
    v27 = v17;
  }

  v35[7] = v29;
  v35[8] = v27;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:9];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)contentTypeDidComplete:(id)a3 downloadByteCount:(unint64_t)a4 importRecordCount:(unint64_t)a5 importFailedRecordCount:(unint64_t)a6 downloadDuration:(unint64_t)a7 importDuration:(unint64_t)a8 android:(id)a9 model:(id)a10 version:(id)a11
{
  v12 = a3;
  v13 = a9;
  v14 = a10;
  v15 = a11;
  _WLLog(v11, 2, @"Telemetry: contentTypeDidComplete %@", v16, v17, v18, v19, v20, v12);
  v25 = v12;
  v26 = v15;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  AnalyticsSendEventLazy();
}

- (void)importDidFailSilentlyForContentType:(id)a3
{
  v4 = a3;
  _WLLog(v3, 2, @"Telemetry: recordImportDidFail contentType %@", v5, v6, v7, v8, v9, v4);
  v10 = v4;
  AnalyticsSendEventLazy();
}

id __51__WLTelemetry_importDidFailSilentlyForContentType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"contentType";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)didResolveTimeEstimate:(unint64_t)a3 forDownloadTask:(id)a4 threshold:(unint64_t)a5 actualTime:(unint64_t)a6
{
  v7 = a4;
  _WLLog(v6, 2, @"Telemetry: timeEstimateDidResolve task %@ estimate %lu threshold %lu actual time %lu", v8, v9, v10, v11, v12, v7);
  v13 = v7;
  AnalyticsSendEventLazy();
}

id __75__WLTelemetry_didResolveTimeEstimate_forDownloadTask_threshold_actualTime___block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = a1[7];
  v2 = (100 * a1[5]) / a1[6];
  v9[0] = a1[4];
  v8[0] = @"downloadTask";
  v8[1] = @"magnitude";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
  v9[1] = v3;
  v8[2] = @"accuracy";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __52__WLTelemetry_userDidChooseToInstallMigratableApps___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"install";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __59__WLTelemetry_didLookupAppsWithMatchedApps_mismatchedApps___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"matched_apps";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = @"mismatched_apps";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)photoLibraryDidFailWithExtension:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = &stru_2882C75C0;
  }

  _WLLog(v3, 2, @"Telemetry: photoLibraryDidFailWithExtension:%@", v5, v6, v7, v8, v9, v10);
  v11 = v10;
  AnalyticsSendEventLazy();
}

id __48__WLTelemetry_photoLibraryDidFailWithExtension___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"extension";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __29__WLTelemetry_didLoadQRCode___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"enabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)didLoadAndroidStore:(id)a3 selected:(BOOL)a4 canceled:(BOOL)a5 inAttempts:(unint64_t)a6
{
  v7 = a3;
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_2882C75C0;
  }

  _WLLog(v6, 2, @"Telemetry: didLoadAndroidStore:%@ selected:%d canceled:%d inAttempts:%ld", v8, v9, v10, v11, v12, v13);
  v14 = v13;
  AnalyticsSendEventLazy();
}

id __64__WLTelemetry_didLoadAndroidStore_selected_canceled_inAttempts___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v10[0] = *(a1 + 32);
  v9[0] = @"android_store";
  v9[1] = @"attempts";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v10[1] = v3;
  v9[2] = @"canceled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v10[2] = v4;
  v9[3] = @"selected";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)daemonDidGetInterrupted
{
  _WLLog(v7, 2, @"Telemetry: daemonDidGetInterrupted", v2, v3, v4, v5, v6, vars0);

  AnalyticsSendEventLazy();
}

@end