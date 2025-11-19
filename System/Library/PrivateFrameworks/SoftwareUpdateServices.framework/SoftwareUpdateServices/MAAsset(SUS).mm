@interface MAAsset(SUS)
- (id)isEmergencyUpdate;
- (uint64_t)cancelDownload;
- (uint64_t)cancelDownloadIfNecessary;
- (uint64_t)purge;
- (void)cleanupAsset;
@end

@implementation MAAsset(SUS)

- (id)isEmergencyUpdate
{
  result = +[SUUtility currentProductBuild];
  if (result)
  {
    v3 = result;
    result = +[SUUtility currentProductVersion];
    if (result)
    {
      v4 = result;
      result = [a1 attributes];
      if (result)
      {
        v5 = [objc_msgSend(a1 "attributes")];
        v6 = [objc_msgSend(a1 "attributes")];
        result = 0;
        if (v5)
        {
          if (v6)
          {
            if ([v6 compare:v4 options:64] == -1)
            {
              return 0;
            }

            else
            {
              return ([v5 compare:v3 options:64] != -1);
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)cancelDownloadIfNecessary
{
  result = [a1 isDownloading];
  if (result)
  {

    return [a1 cancelDownload:&__block_literal_global_395];
  }

  return result;
}

- (void)cleanupAsset
{
  v2 = +[SUUtility taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MAAsset_SUS__cleanupAsset__block_invoke;
  block[3] = &unk_279CAAC40;
  block[4] = a1;
  dispatch_async(v2, block);
}

- (uint64_t)cancelDownload
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__MAAsset_SUS__cancelDownload__block_invoke;
  v6[3] = &unk_279CAACB0;
  v6[4] = v2;
  v6[5] = &v7;
  [a1 cancelDownload:v6];
  v3 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v2, v3);
  dispatch_release(v2);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (uint64_t)purge
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  if ([a1 isInstalled])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __21__MAAsset_SUS__purge__block_invoke;
    v13[3] = &unk_279CAACB0;
    v13[4] = v2;
    v13[5] = &v14;
    [a1 purge:v13];
    v10 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v2, v10);
  }

  else
  {
    SULogInfo(@"Failed to purge. Asset not installed", v3, v4, v5, v6, v7, v8, v9, v13[0]);
  }

  dispatch_release(v2);
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

@end