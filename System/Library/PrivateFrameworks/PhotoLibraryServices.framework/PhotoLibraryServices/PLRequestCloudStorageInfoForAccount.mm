@interface PLRequestCloudStorageInfoForAccount
@end

@implementation PLRequestCloudStorageInfoForAccount

void ___PLRequestCloudStorageInfoForAccount_block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 responseDictionary];
  v5 = [v4 objectForKeyedSubscript:@"storage_data"];
  v6 = [v5 objectForKeyedSubscript:@"quota_info_in_bytes"];

  v7 = PLPreferencesGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "iCloud quota response received: status: %@", buf, 0xCu);
  }

  v8 = [v3 error];
  if (v8)
  {
    v9 = PLPreferencesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error requesting iCloud quota information: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"total_available"];

    valuePtr = 0;
    CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
    v12 = [v6 objectForKeyedSubscript:@"total_used"];

    v39 = 0;
    CFNumberGetValue(v12, kCFNumberSInt64Type, &v39);
    v13 = [v6 objectForKeyedSubscript:@"total_quota"];

    v38 = 0;
    CFNumberGetValue(v13, kCFNumberSInt64Type, &v38);
    v14 = PLPreferencesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Getting CameraRoll backup size...", buf, 2u);
    }

    v15 = objc_alloc_init(MEMORY[0x1E69B1968]);
    v16 = [v15 domainInfoForName:@"CameraRollDomain"];
    v17 = [v16 remoteSize];
    v18 = PLPreferencesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v43 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "CameraRoll backup size: %lld bytes", buf, 0xCu);
    }

    v19 = [v4 objectForKey:@"storage_usage_by_media"];
    objc_opt_class();
    v33 = v19;
    if (objc_opt_isKindOfClass())
    {
      v32 = v16;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v21)
      {
        v29 = v15;
        v30 = a1;
        v31 = v4;
        v22 = *v35;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            v25 = [v24 objectForKeyedSubscript:@"media_key"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 isEqualToString:@"photos"])
            {
              v26 = [v24 objectForKeyedSubscript:@"usage_in_bytes"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [v26 longLongValue];

                goto LABEL_26;
              }
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v34 objects:v41 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_26:
        v4 = v31;
        a1 = v30;
        v15 = v29;
        v8 = 0;
      }

      v16 = v32;
    }

    else
    {
      v21 = 0;
    }

    v10 = [PLCloudStorageInfo storageInfoWithTotal:v38 available:valuePtr used:v39 cameraRollBackupBytes:v17 iCloudPhotosSize:v21 hasMaxQuotaTier:0];
    v27 = PLPreferencesGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v10;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "Cloud storage info: %@", buf, 0xCu);
    }
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    (*(v28 + 16))(v28, v10, v8);
  }
}

uint64_t ___PLRequestCloudStorageInfoForAccount_block_invoke_390()
{
  v0 = objc_opt_new();
  v1 = _WorkQueue;
  _WorkQueue = v0;

  [_WorkQueue setMaxConcurrentOperationCount:1];
  v2 = _WorkQueue;

  return [v2 setQualityOfService:9];
}

@end