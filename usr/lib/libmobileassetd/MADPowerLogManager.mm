@interface MADPowerLogManager
+ (PPSTelemetryIdentifier)_retrieveSpecificIdentifier:(id)identifier andCategory:(id)category;
+ (id)sharedManager;
+ (void)sendTelemetry:(id)telemetry forCategory:(id)category withPayload:(id)payload;
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

+ (void)sendTelemetry:(id)telemetry forCategory:(id)category withPayload:(id)payload
{
  payloadCopy = payload;
  if (&_PPSSendTelemetry)
  {
    categoryCopy = category;
    telemetryCopy = telemetry;
    v11 = _MADLog(@"PowerLog");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = payloadCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[MADPowerLogManager] sending power log telemetry: %{public}@", &v13, 0xCu);
    }

    [self _retrieveSpecificIdentifier:telemetryCopy andCategory:categoryCopy];
    convertPayloadToDict = [payloadCopy convertPayloadToDict];
    PPSSendTelemetry();
  }
}

+ (PPSTelemetryIdentifier)_retrieveSpecificIdentifier:(id)identifier andCategory:(id)category
{
  categoryCopy = category;
  identifierCopy = identifier;
  v7 = +[MADPowerLogManager sharedManager];
  v8 = [SUCore stringIsEqual:identifierCopy to:@"DownloadMetrics"];

  if (v8)
  {
    if ([SUCore stringIsEqual:categoryCopy to:@"AutoAssetDownloads"])
    {
      autoDownloads = [v7 autoDownloads];
LABEL_10:
      v13 = autoDownloads;
      goto LABEL_11;
    }

    if ([SUCore stringIsEqual:categoryCopy to:@"v2AssetDownloads"])
    {
      autoDownloads = [v7 v2Downloads];
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