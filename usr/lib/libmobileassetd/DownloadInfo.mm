@interface DownloadInfo
- (BOOL)addNewRateDataPoint:(double)a3;
- (DownloadInfo)initWithUrl:(id)a3 forAssetType:(id)a4 withPurpose:(id)a5 clientName:(id)a6 options:(id)a7;
- (double)currentEstimate;
- (id)_taskState;
- (id)description;
- (void)addNewDownloadInfo:(id)a3;
- (void)determineDownloadUrl:(id)a3 callback:(id)a4;
- (void)updateDownloadData:(int64_t)a3;
@end

@implementation DownloadInfo

- (double)currentEstimate
{
  v3 = [(DownloadInfo *)self taskDescriptor];
  v4 = getAssetTypeFromTaskDescriptor(v3);

  if (isSoftwareUpdateType(v4))
  {
    v5 = 10;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(NSMutableArray *)self->_rateHistory count];
  if (v6 < v5 || self->_isStalled)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_rateHistory;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {

LABEL_16:
    v15 = NAN;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v18;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      [*(*(&v17 + 1) + 8 * i) doubleValue];
      v12 = v12 + v14;
    }

    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v10);

  if (v12 == 0.0)
  {
    goto LABEL_16;
  }

  v15 = (self->_totalExpectedBytes - self->_previousTotalDownloaded) / (v12 / v7);
LABEL_17:

  return v15;
}

- (id)description
{
  v3 = [(NSURLSessionTask *)self->_task response];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = [v3 statusCode];
  }

  else
  {
    v24 = -1;
  }

  v4 = [(NSURLSessionTask *)self->_task error];
  taskDescriptor = self->_taskDescriptor;
  task = self->_task;
  v19 = [(DownloadInfo *)self _taskState];
  downloadSize = self->_downloadSize;
  v21 = *&self->_startingAt != 0;
  v25 = v3;
  if (*&self->_startingAt == 0)
  {
    v5 = &stru_4BD3F0;
  }

  else
  {
    v5 = [NSString stringWithFormat:@" (start %@ length %@)", self->_startingAt, self->_lengthOfRange];
  }

  currentTotalWritten = self->_currentTotalWritten;
  totalExpectedBytes = self->_totalExpectedBytes;
  if (self->_isStalled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v18 = *&self->_numStalled;
  backtracks = self->_backtracks;
  v10 = [(NSMutableArray *)self->_callbacks count];
  if (self->_extractor)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_extractorRequired)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_shouldRetry)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = @" error: ";
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v14 = &stru_4BD3F0;
    v15 = &stru_4BD3F0;
  }

  v16 = [NSString stringWithFormat:@"DownloadInfo taskDescriptor: %@ . task: %@ taskState: %@ statusCode: %lld downloadSize: %lld%@ progress: %lld / %lld isStalled: %@ numStalls: %lld numNoLongerStalls: %lld backtracks: %lld callbackCount: %lld hasExtractor: %@ extractorRequired: %@ originalUrl: %@ cacheServerUrl: %@ assetType: %@ purpose: %@ shouldRetry: %@ ifModifiedDate: %@ options: %@%@%@", taskDescriptor, task, v19, v24, downloadSize, v5, currentTotalWritten, totalExpectedBytes, v8, v18, backtracks, v10, v11, v12, *&self->_originalUrl, self->_assetType, self->_purpose, v13, self->_date, self->_options, v14, v15];
  if (v21)
  {
  }

  return v16;
}

- (id)_taskState
{
  task = self->_task;
  if (task)
  {
    v4 = [(NSURLSessionTask *)task state];
    if (v4 >= 4)
    {
      v5 = [NSString stringWithFormat:@"%lld", [(NSURLSessionTask *)self->_task state]];
    }

    else
    {
      v5 = off_4B3D60[v4];
    }
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

- (DownloadInfo)initWithUrl:(id)a3 forAssetType:(id)a4 withPurpose:(id)a5 clientName:(id)a6 options:(id)a7
{
  v13 = a3;
  v14 = a4;
  v44 = a5;
  v15 = a6;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = DownloadInfo;
  v17 = [(DownloadInfo *)&v45 init];
  v18 = v17;
  if (v17)
  {
    v17->_isStalled = 0;
    v19 = objc_opt_new();
    rateHistory = v18->_rateHistory;
    v18->_rateHistory = v19;

    taskDescriptor = v18->_taskDescriptor;
    v18->_taskDescriptor = 0;

    task = v18->_task;
    v18->_task = 0;

    startingAt = v18->_startingAt;
    v18->_startingAt = 0;

    lengthOfRange = v18->_lengthOfRange;
    v18->_lengthOfRange = 0;

    extractor = v18->_extractor;
    v18->_extractor = 0;

    v18->_extractorRequired = 0;
    date = v18->_date;
    v18->_date = 0;

    objc_storeStrong(&v18->_options, a7);
    objc_storeStrong(&v18->_originalUrl, a3);
    v27 = objc_opt_new();
    callbacks = v18->_callbacks;
    v18->_callbacks = v27;

    cacheServerUrl = v18->_cacheServerUrl;
    v18->_cacheServerUrl = 0;

    objc_storeStrong(&v18->_assetType, a4);
    objc_storeStrong(&v18->_purpose, a5);
    objc_storeStrong(&v18->_firstClientName, a6);
    v18->_downloadSize = 0;
    v18->_backtracks = 0;
    v18->_totalBytesThisSlice = 0;
    v18->_previousTotalDownloaded = 0;
    v18->_transferredBytesEst = 0;
    *&v18->_shouldRetry = 1;
    v18->_isAutoDownload = 0;
    v18->_numNoLongerStalled = 0;
    v18->_currentTotalWritten = 0;
    v18->_numStalled = 0;
    baseUrlNoACS = v18->_baseUrlNoACS;
    v18->_baseUrlNoACS = 0;

    relativePath = v18->_relativePath;
    v18->_relativePath = 0;

    if (v13)
    {
      v32 = [v13 host];
      v33 = [v32 copy];
      v34 = v18->_baseUrlNoACS;
      v18->_baseUrlNoACS = v33;

      v35 = [v13 path];
      v36 = [v35 copy];
      v37 = v18->_relativePath;
      v18->_relativePath = v36;
    }

    v18->_isPallas = 0;
    if (v16)
    {
      if ([v16 liveServerCatalogOnly])
      {
        v18->_isPallas = 1;
      }

      v18->_isDiscretionary = 1;
      if (([v16 discretionary] & 1) == 0)
      {
        v18->_isDiscretionary = 0;
      }
    }

    else
    {
      v18->_isDiscretionary = 1;
    }

    analyticsData = v18->_analyticsData;
    v18->_analyticsData = 0;

    downloadStartTime = v18->_downloadStartTime;
    v18->_downloadStartTime = 0;

    downloadFinishTime = v18->_downloadFinishTime;
    v18->_downloadFinishTime = 0;

    nonDiscretionaryUpgradeTime = v18->_nonDiscretionaryUpgradeTime;
    v18->_nonDiscretionaryUpgradeTime = 0;

    v42 = _MADLog(@"Download");
    v18->_signpost = os_signpost_id_generate(v42);
  }

  return v18;
}

- (void)determineDownloadUrl:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!&_ACSLocateCachingServer)
  {
    v11 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(DownloadInfo *)self description];
      originalUrl = self->_originalUrl;
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = originalUrl;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[DOWNLOAD_INFO] {determineDownloadUrl} AssetCacheServices not present in this OS, download from: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  options = self->_options;
  if (!options || ![(MADownloadOptions *)options canUseLocalCacheServer])
  {
    v11 = _MADLog(@"DownloadSession");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(DownloadInfo *)self description];
      v13 = self->_originalUrl;
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n[DOWNLOAD_INFO] {determineDownloadUrl} not allowed to use caching server, download from: %{public}@", buf, 0x16u);
    }

LABEL_11:

    v7[2](v7, self->_originalUrl, *(v18 + 24));
    goto LABEL_12;
  }

  v9 = _MADLog(@"DownloadSession");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(DownloadInfo *)self description];
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n[DOWNLOAD_INFO] {determineDownloadUrl} Attempting to get cache server url", buf, 0xCu);
  }

  v16 = v7;
  ACSLocateCachingServer();

LABEL_12:
  _Block_object_dispose(&v17, 8);
}

void __46__DownloadInfo_determineDownloadUrl_callback___block_invoke(uint64_t a1, void *a2)
{
  if (os_variant_has_internal_content())
  {
    v26 = a2;
    v27 = [NSString stringWithFormat:@"%@-%@", @"ContentCacheURLOverride", *(*(a1 + 32) + 184)];
    [NSArray arrayWithObjects:@"ContentCacheURLOverride", 0];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v31 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = _MAPreferencesCopyValue(v9);
          if (v10)
          {
            v11 = [*(*(a1 + 32) + 168) path];
            v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];

            v13 = [NSURL URLWithString:v12];
            v14 = _MADLog(@"DownloadSession");
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            if (v13)
            {
              if (v15)
              {
                v21 = [*(a1 + 32) description];
                v22 = *(*(a1 + 32) + 184);
                *buf = 138544130;
                v33 = v21;
                v34 = 2112;
                v35 = v9;
                v36 = 2114;
                v37 = v22;
                v38 = 2114;
                v39 = v13;
                _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[DOWNLOAD_INFO] {determineDownloadUrl} Using caching server value from default %@ for %{public}@: %{public}@", buf, 0x2Au);
              }

              v23 = *(a1 + 32);
              v24 = *(v23 + 176);
              *(v23 + 176) = v13;
              v25 = v13;

              (*(*(a1 + 40) + 16))();
              return;
            }

            if (v15)
            {
              v16 = [*(a1 + 32) description];
              v17 = *(*(a1 + 32) + 184);
              *buf = 138543874;
              v33 = v16;
              v34 = 2114;
              v35 = v17;
              v36 = 2114;
              v37 = v10;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@\n[DOWNLOAD_INFO] {determineDownloadUrl} Invalid caching server value set in asset specific default: %{public}@: %{public}@", buf, 0x20u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    a2 = v26;
  }

  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 176), a2);
  }

  v18 = *(a1 + 32);
  if (*(v18 + 176))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v19 = *(a1 + 40);
    v20 = *(*(a1 + 32) + 176);
  }

  else
  {
    v20 = *(v18 + 168);
    v19 = *(a1 + 40);
  }

  (*(v19 + 16))(v19, v20, *(*(*(a1 + 48) + 8) + 24));
}

- (BOOL)addNewRateDataPoint:(double)a3
{
  previousTotalDownloaded = self->_previousTotalDownloaded;
  totalExpectedBytes = self->_totalExpectedBytes;
  rateHistory = self->_rateHistory;
  if (a3 > 0.0 && self->_isStalled)
  {
    [(NSMutableArray *)rateHistory removeAllObjects];
    v8 = self->_rateHistory;
    v9 = [NSNumber numberWithDouble:a3];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = 0;
    v11 = 96;
LABEL_4:
    self->_isStalled = v10;
    ++*(&self->super.isa + v11);
    goto LABEL_17;
  }

  if ([(NSMutableArray *)rateHistory count]>= 0x3C)
  {
    [(NSMutableArray *)self->_rateHistory removeObjectAtIndex:0];
  }

  v12 = self->_rateHistory;
  v13 = [NSNumber numberWithDouble:a3];
  [(NSMutableArray *)v12 addObject:v13];

  self->_isStalled = 0;
  v14 = [(NSMutableArray *)self->_rateHistory count];
  if (v14 >= 0x1E)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = [(NSMutableArray *)self->_rateHistory objectAtIndex:v16];
      [v18 doubleValue];
      v20 = v19;

      if (v20 == 0.0)
      {
        ++v17;
      }

      else
      {
        v17 = 0;
      }

      ++v16;
    }

    while (v15 != v16);
    if (v17 >= 30 && previousTotalDownloaded < totalExpectedBytes)
    {
      v10 = 1;
      v11 = 88;
      goto LABEL_4;
    }
  }

LABEL_17:
  self->_totalBytesThisSlice = 0;
  return self->_isStalled;
}

- (void)updateDownloadData:(int64_t)a3
{
  self->_currentTotalWritten = a3;
  previousTotalDownloaded = self->_previousTotalDownloaded;
  v6 = previousTotalDownloaded - a3;
  if (previousTotalDownloaded <= a3)
  {
    *&self->_transferredBytesEst = vaddq_s64(*&self->_transferredBytesEst, vdupq_n_s64(a3 - previousTotalDownloaded));
    self->_previousTotalDownloaded = a3;
    self->_changingConfig = 0;
  }

  else
  {
    ++self->_backtracks;
    if (!self->_changingConfig && v6 > 0x10000)
    {
      v7 = _MADLog(@"DownloadSession");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(DownloadInfo *)self description];
        v9 = self->_previousTotalDownloaded;
        v10 = [(DownloadInfo *)self taskDescriptor];
        v11 = [(DownloadInfo *)self task];
        v13 = 138544386;
        v14 = v8;
        v15 = 2048;
        v16 = a3;
        v17 = 2048;
        v18 = v9;
        v19 = 2114;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%{public}@\n[DOWNLOAD_INFO] {updateDownloadData} In progress and totalWritten is less than previous total (%lld < %lld), nsurl is backtracking significantly for %{public}@. task %{public}@", &v13, 0x34u);
      }
    }

    if (self->_totalExpectedBytes / 5 <= a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      if (self->_previousTotalDownloaded > self->_totalExpectedBytes / 4 && v6 > 0x10000)
      {
        self->_transferredBytesEst += a3;
        v12 = a3;
      }
    }

    self->_totalBytesThisSlice = v12;
    self->_previousTotalDownloaded = a3;
  }
}

- (void)addNewDownloadInfo:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_callbacks addObject:?];
  }
}

@end