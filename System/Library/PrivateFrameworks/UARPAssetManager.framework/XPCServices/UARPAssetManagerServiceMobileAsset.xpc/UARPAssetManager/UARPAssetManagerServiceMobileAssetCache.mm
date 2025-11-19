@interface UARPAssetManagerServiceMobileAssetCache
- (double)assetExpirationTime;
- (id)assetCacheFileURLForAsset:(id)a3 withSubscription:(id)a4;
- (id)assetCacheRootDirectory;
- (id)createCacheRecordForAsset:(id)a3 withSubscription:(id)a4 withPath:(id)a5;
@end

@implementation UARPAssetManagerServiceMobileAssetCache

- (id)assetCacheRootDirectory
{
  v2 = AssetManagerDirectoryPath();
  v6[0] = v2;
  v6[1] = @"assetcache";
  v6[2] = @"mobileasset";
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

- (id)assetCacheFileURLForAsset:(id)a3 withSubscription:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v10 = @"legacy";
      v8 = 0;
      goto LABEL_8;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_19;
  }

  v8 = v6;
  v9 = v7;
  v10 = @"legacy";
  if (v8)
  {
    if ([v9 softwareUpdateAsset])
    {
      getSoftwareUpdateAssetVersionForMAAsset(v8);
    }

    else
    {
      getAssetVersionForMAAsset(v8);
    }
    v12 = ;
    goto LABEL_12;
  }

LABEL_8:
  v12 = 0;
LABEL_12:
  v14 = [v7 assetAudience];

  if (v14)
  {
    v15 = [v7 internalAsset];
    v16 = &kUARPAssetManagerServicePallasInternalCacheDirectory;
    if (!v15)
    {
      v16 = &kUARPAssetManagerServicePallasCacheDirectory;
    }

    v17 = *v16;

    v10 = v17;
  }

  v18 = [(UARPAssetManagerServiceMobileAssetCache *)self assetCacheRootDirectory];
  v19 = [v7 identifier];
  v20 = [NSMutableArray arrayWithObjects:v18, v10, v19, v12, 0];

  if (([v7 softwareUpdateAsset] & 1) == 0)
  {
    v21 = [v7 hwFusing];
    [v20 addObject:v21];
  }

  v13 = [NSURL fileURLWithPathComponents:v20];

LABEL_19:

  return v13;
}

- (double)assetExpirationTime
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"mobileAssetCacheDuration", @"com.apple.mobileaccessoryupdater", &keyExistsAndHasValidFormat);
  v3 = AppIntegerValue > -1 && keyExistsAndHasValidFormat == 1;
  result = (3600 * AppIntegerValue);
  if (!v3)
  {
    return 2592000.0;
  }

  return result;
}

- (id)createCacheRecordForAsset:(id)a3 withSubscription:(id)a4 withPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v9;
    v10 = v7;
    v11 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v29 = v9;
    v11 = [[UARPAssetVersionBase alloc] initWithAssetVersion:v7];
    v10 = 0;
  }

  v12 = v8;
  v13 = [v12 softwareUpdateAsset];
  if (v10 && v13)
  {
    v14 = getRestoreVersionForMAAsset(v10);
    getOSVersionForMAAsset(v10);
    v15 = v28 = v8;
    v16 = getBuildVersionForMAAsset(v10);
    v27 = [[UARPAssetVersionSoftwareUpdate alloc] initWithRestoreVersion:v14 osVersion:v15 buildVersion:v16 internalAsset:{objc_msgSend(v12, "internalAsset")}];

    v17 = getMinOSVersionForMAAsset(v10);
    v18 = getMaxOSVersionForMAAsset(v10);
    v30[0] = @"minOSVersion";
    v30[1] = @"maxOSVersion";
    v31[0] = v17;
    v31[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v20 = objc_opt_new();
    [v20 addObject:v19];

    v8 = v28;
    v11 = v27;
  }

  else if (v10)
  {
    v21 = getAssetVersionForMAAsset(v10);
    v22 = [[UARPAssetVersionBase alloc] initWithAssetVersion:v21];

    v20 = 0;
    v11 = v22;
  }

  else
  {
    v20 = 0;
  }

  v9 = v29;
  v24 = [UARPAssetCacheRecord alloc];
  v25 = [NSURL fileURLWithPath:v29];
  v23 = [(UARPAssetCacheRecord *)v24 initWithAssetVersion:v11 assetURL:v25 deploymentRules:v20];

LABEL_13:

  return v23;
}

@end