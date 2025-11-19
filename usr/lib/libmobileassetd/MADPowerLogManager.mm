@interface MADPowerLogManager
+ (PPSTelemetryIdentifier)_retrieveSpecificIdentifier:(id)a3 andCategory:(id)a4;
+ (id)sharedManager;
+ (void)sendTelemetry:(id)a3 forCategory:(id)a4 withPayload:(id)a5;
@end

@implementation MADPowerLogManager

+ (id)sharedManager
{
  if (sharedManager_powerLogManagerOnce != -1)
  {
    +[MADPowerLogManager sharedManager];
  }

  v3 = sharedManager_powerLogManager;

  return v3;
}

void __35__MADPowerLogManager_sharedManager__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = sharedManager_powerLogManager;
  sharedManager_powerLogManager = v1;

  if (&_PPSCreateTelemetryIdentifier && sharedManager_powerLogManager)
  {
    [sharedManager_powerLogManager setAutoDownloads:PPSCreateTelemetryIdentifier()];
    v3 = PPSCreateTelemetryIdentifier();
    v4 = sharedManager_powerLogManager;

    [v4 setV2Downloads:v3];
  }
}

+ (void)sendTelemetry:(id)a3 forCategory:(id)a4 withPayload:(id)a5
{
  v8 = a5;
  if (&_PPSSendTelemetry)
  {
    v9 = a4;
    v10 = a3;
    v11 = _MADLog(@"PowerLog");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[MADPowerLogManager] sending power log telemetry: %{public}@", &v13, 0xCu);
    }

    [a1 _retrieveSpecificIdentifier:v10 andCategory:v9];
    v12 = [v8 convertPayloadToDict];
    PPSSendTelemetry();
  }
}

+ (PPSTelemetryIdentifier)_retrieveSpecificIdentifier:(id)a3 andCategory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MADPowerLogManager sharedManager];
  v8 = [SUCore stringIsEqual:v6 to:@"DownloadMetrics"];

  if (v8)
  {
    if ([SUCore stringIsEqual:v5 to:@"AutoAssetDownloads"])
    {
      v9 = [v7 autoDownloads];
LABEL_10:
      v13 = v9;
      goto LABEL_11;
    }

    if ([SUCore stringIsEqual:v5 to:@"v2AssetDownloads"])
    {
      v9 = [v7 v2Downloads];
      goto LABEL_10;
    }

    v10 = _MADLog(@"PowerLog");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v11 = "[MADPowerLogManager] invalid category";
      v12 = &v15;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = _MADLog(@"PowerLog");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[MADPowerLogManager] invalid subsystem";
      v12 = buf;
LABEL_6:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end