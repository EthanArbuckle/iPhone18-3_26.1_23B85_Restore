@interface MADAutoAssetStagerParam
- (MADAutoAssetStagerParam)initWithCoder:(id)a3;
- (MADAutoAssetStagerParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withStagingClientRequest:(id)a5 withBaseForStagingDescriptors:(id)a6 withJobInformation:(id)a7 withAutoAssetCatalog:(id)a8 withOperationError:(id)a9 withAssetType:(id)a10 withAssetSelector:(id)a11 withSetIdentifierConfiguration:(id)a12 withEntriesWhenTargeting:(id)a13 withTimerUUID:(id)a14 withAlreadyDownloaded:(id)a15 withSetConfigurations:(id)a16 withSetTargets:(id)a17 withScheduledJobs:(id)a18 withDownloadedDescriptor:(id)a19;
- (id)_summary;
- (void)encodeWithCoder:(id)a3;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetStagerParam

- (MADAutoAssetStagerParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withStagingClientRequest:(id)a5 withBaseForStagingDescriptors:(id)a6 withJobInformation:(id)a7 withAutoAssetCatalog:(id)a8 withOperationError:(id)a9 withAssetType:(id)a10 withAssetSelector:(id)a11 withSetIdentifierConfiguration:(id)a12 withEntriesWhenTargeting:(id)a13 withTimerUUID:(id)a14 withAlreadyDownloaded:(id)a15 withSetConfigurations:(id)a16 withSetTargets:(id)a17 withScheduledJobs:(id)a18 withDownloadedDescriptor:(id)a19
{
  v50 = a4;
  v34 = a5;
  v49 = a5;
  v48 = a6;
  v35 = a7;
  v47 = a7;
  v46 = a8;
  v45 = a9;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v41 = a13;
  v40 = a14;
  v39 = a15;
  v38 = a16;
  v37 = a17;
  v23 = a18;
  v24 = a19;
  v51.receiver = self;
  v51.super_class = MADAutoAssetStagerParam;
  v25 = [(MADAutoAssetStagerParam *)&v51 init];
  v26 = v25;
  if (v25)
  {
    v25->_paramType = a3;
    objc_storeStrong(&v25->_stagingClientRequest, v34);
    objc_storeStrong(&v26->_baseForStagingDescriptors, a6);
    objc_storeStrong(&v26->_jobInformation, v35);
    objc_storeStrong(&v26->_autoAssetCatalog, a8);
    objc_storeStrong(&v26->_operationError, a9);
    objc_storeStrong(&v26->_assetType, a10);
    objc_storeStrong(&v26->_assetSelector, a11);
    objc_storeStrong(&v26->_setIdentifierConfiguration, a12);
    objc_storeStrong(&v26->_alreadyDownloaded, a15);
    objc_storeStrong(&v26->_setConfigurations, a16);
    objc_storeStrong(&v26->_entriesWhenTargeting, a13);
    objc_storeStrong(&v26->_timerUUID, a14);
    objc_storeStrong(&v26->_setTargets, a17);
    objc_storeStrong(&v26->_scheduledJobs, a18);
    objc_storeStrong(&v26->_downloadedDescriptor, a19);
    v27 = [(MADAutoAssetStagerParam *)v26 _summary];
    v28 = v27;
    if (v50)
    {
      if (v27)
      {
        v29 = [[NSString alloc] initWithFormat:@"%@+++%@", v50, v27];
      }

      else
      {
        v29 = v50;
      }

      paramSafeSummary = v26->_paramSafeSummary;
      v26->_paramSafeSummary = v29;

      goto LABEL_9;
    }

    v30 = v26->_paramSafeSummary;
    v26->_paramSafeSummary = v27;

    v28 = v26->_paramSafeSummary;
    if (!v28)
    {
      v26->_paramSafeSummary = &stru_4BD3F0;
LABEL_9:
    }
  }

  return v26;
}

- (MADAutoAssetStagerParam)initWithCoder:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = MADAutoAssetStagerParam;
  v5 = [(MADAutoAssetStagerParam *)&v60 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [v4 decodeInt64ForKey:@"paramType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientRequest"];
    stagingClientRequest = v5->_stagingClientRequest;
    v5->_stagingClientRequest = v8;

    v10 = [NSSet alloc];
    v67[0] = objc_opt_class();
    v67[1] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v67 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"baseForStagingDescriptors"];
    baseForStagingDescriptors = v5->_baseForStagingDescriptors;
    v5->_baseForStagingDescriptors = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jobInformation"];
    jobInformation = v5->_jobInformation;
    v5->_jobInformation = v15;

    v17 = [NSSet alloc];
    v66[0] = objc_opt_class();
    v66[1] = objc_opt_class();
    v66[2] = objc_opt_class();
    v66[3] = objc_opt_class();
    v66[4] = objc_opt_class();
    v66[5] = objc_opt_class();
    v66[6] = objc_opt_class();
    v66[7] = objc_opt_class();
    v66[8] = objc_opt_class();
    v66[9] = objc_opt_class();
    v66[10] = objc_opt_class();
    v66[11] = objc_opt_class();
    v66[12] = objc_opt_class();
    v18 = [NSArray arrayWithObjects:v66 count:13];
    v19 = [v17 initWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationError"];
    operationError = v5->_operationError;
    v5->_operationError = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setIdentifierConfiguration"];
    setIdentifierConfiguration = v5->_setIdentifierConfiguration;
    v5->_setIdentifierConfiguration = v28;

    v30 = [NSSet alloc];
    v65[0] = objc_opt_class();
    v65[1] = objc_opt_class();
    v31 = [NSArray arrayWithObjects:v65 count:2];
    v32 = [v30 initWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"alreadyDownloaded"];
    alreadyDownloaded = v5->_alreadyDownloaded;
    v5->_alreadyDownloaded = v33;

    v35 = [NSSet alloc];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v36 = [NSArray arrayWithObjects:v64 count:2];
    v37 = [v35 initWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"setConfigurations"];
    setConfigurations = v5->_setConfigurations;
    v5->_setConfigurations = v38;

    v40 = [NSSet alloc];
    v63[0] = objc_opt_class();
    v63[1] = objc_opt_class();
    v41 = [NSArray arrayWithObjects:v63 count:2];
    v42 = [v40 initWithArray:v41];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerUUID"];
    timerUUID = v5->_timerUUID;
    v5->_timerUUID = v45;

    v47 = [NSSet alloc];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v48 = [NSArray arrayWithObjects:v62 count:2];
    v49 = [v47 initWithArray:v48];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"setTargets"];
    setTargets = v5->_setTargets;
    v5->_setTargets = v50;

    v52 = [NSSet alloc];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v53 = [NSArray arrayWithObjects:v61 count:2];
    v54 = [v52 initWithArray:v53];
    v55 = [v4 decodeObjectOfClasses:v54 forKey:@"scheduledJobs"];
    scheduledJobs = v5->_scheduledJobs;
    v5->_scheduledJobs = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedDescriptor"];
    downloadedDescriptor = v5->_downloadedDescriptor;
    v5->_downloadedDescriptor = v57;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetStagerParam *)self paramSafeSummary];
  [v4 encodeObject:v5 forKey:@"paramSafeSummary"];

  [v4 encodeInt64:-[MADAutoAssetStagerParam paramType](self forKey:{"paramType"), @"paramType"}];
  v6 = [(MADAutoAssetStagerParam *)self stagingClientRequest];
  [v4 encodeObject:v6 forKey:@"stagingClientRequest"];

  v7 = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
  [v4 encodeObject:v7 forKey:@"baseForStagingDescriptors"];

  v8 = [(MADAutoAssetStagerParam *)self jobInformation];
  [v4 encodeObject:v8 forKey:@"jobInformation"];

  v9 = [(MADAutoAssetStagerParam *)self autoAssetCatalog];
  [v4 encodeObject:v9 forKey:@"autoAssetCatalog"];

  v10 = [(MADAutoAssetStagerParam *)self operationError];
  [v4 encodeObject:v10 forKey:@"operationError"];

  v11 = [(MADAutoAssetStagerParam *)self assetType];
  [v4 encodeObject:v11 forKey:@"assetType"];

  v12 = [(MADAutoAssetStagerParam *)self assetSelector];
  [v4 encodeObject:v12 forKey:@"assetSelector"];

  v13 = [(MADAutoAssetStagerParam *)self setIdentifierConfiguration];
  [v4 encodeObject:v13 forKey:@"setIdentifierConfiguration"];

  v14 = [(MADAutoAssetStagerParam *)self alreadyDownloaded];
  [v4 encodeObject:v14 forKey:@"alreadyDownloaded"];

  v15 = [(MADAutoAssetStagerParam *)self setConfigurations];
  [v4 encodeObject:v15 forKey:@"entriesWhenTargeting"];

  v16 = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
  [v4 encodeObject:v16 forKey:@"setConfigurations"];

  v17 = [(MADAutoAssetStagerParam *)self timerUUID];
  [v4 encodeObject:v17 forKey:@"timerUUID"];

  v18 = [(MADAutoAssetStagerParam *)self setTargets];
  [v4 encodeObject:v18 forKey:@"setTargets"];

  v19 = [(MADAutoAssetStagerParam *)self scheduledJobs];
  [v4 encodeObject:v19 forKey:@"scheduledJobs"];

  v20 = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
  [v4 encodeObject:v20 forKey:@"downloadedDescriptor"];
}

- (id)_summary
{
  v4 = [(MADAutoAssetStagerParam *)self paramType];
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v12 = 0;
        goto LABEL_42;
      }

      if (v4 == 1)
      {
        v13 = [NSString alloc];
        v6 = [(MADAutoAssetStagerParam *)self stagingClientRequest];
        v10 = [v6 summary];
        v14 = [v13 initWithFormat:@"STAGING_CLIENT_REQUEST|stagingClientRequest:%@", v10];
LABEL_25:
        v12 = v14;
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    if (v4 == 2)
    {
      v30 = [NSString alloc];
      v17 = [(MADAutoAssetStagerParam *)self jobInformation];
      v18 = [v17 summary];
      v19 = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
      if (v19)
      {
        v41 = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
        v31 = [v41 summary];
      }

      else
      {
        v31 = @"N";
      }

      v35 = [(MADAutoAssetStagerParam *)self operationError];
      if (v35)
      {
        v36 = [NSString alloc];
        v37 = [(MADAutoAssetStagerParam *)self operationError];
        v38 = [MADAutoAssetClientRequest responseErrorSummary:v37];
        v39 = [v36 initWithFormat:@"operationError:%@", v38];
        v12 = [v30 initWithFormat:@"STAGING_JOB_INFORMATION|jobInformation:%@|downloadedDescriptor:%@[%@]", v18, v31, v39];
      }

      else
      {
        v12 = [v30 initWithFormat:@"STAGING_JOB_INFORMATION|jobInformation:%@|downloadedDescriptor:%@[%@]", v18, v31, @"SUCCESS"];
      }

      if (v19)
      {
      }
    }

    else
    {
      if (v4 != 3)
      {
        v8 = [NSString alloc];
        v6 = [(MADAutoAssetStagerParam *)self assetType];
        v7 = [v8 initWithFormat:@"STAGING_ASSET_TYPE|assetType:%@", v6];
        goto LABEL_28;
      }

      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v16 = [NSString alloc];
      v17 = [(MADAutoAssetStagerParam *)self autoAssetCatalog];
      v18 = [v17 safeSummary];
      v19 = [(MADAutoAssetStagerParam *)self operationError];
      if (v19)
      {
        v20 = [NSString alloc];
        p_weak_ivar_lyt = [(MADAutoAssetStagerParam *)self operationError];
        v2 = [MADAutoAssetClientRequest responseErrorSummary:p_weak_ivar_lyt];
        v21 = [v20 initWithFormat:@"operationError:%@", v2];
      }

      else
      {
        v21 = @"SUCCESS";
      }

      v34 = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
      v12 = [v16 initWithFormat:@"STAGING_AUTO_ASSET_CATALOG|autoAssetCatalog:%@[%@]|baseForStaging:%ld", v18, v21, objc_msgSend(v34, "count")];

      if (v19)
      {
      }
    }
  }

  else
  {
    if (v4 <= 7)
    {
      if (v4 == 5)
      {
        v32 = [NSString alloc];
        v6 = [(MADAutoAssetStagerParam *)self assetSelector];
        v10 = [v6 summary];
        v14 = [v32 initWithFormat:@"STAGING_ASSET_SELECTOR|assetSelector:%@", v10];
      }

      else
      {
        if (v4 != 6)
        {
          v5 = [NSString alloc];
          v6 = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
          v7 = [v5 initWithFormat:@"STAGING_SET_TARGETS|entriesWhenTargeting:%ld", objc_msgSend(v6, "count")];
LABEL_28:
          v12 = v7;
          goto LABEL_29;
        }

        v22 = [NSString alloc];
        v6 = [(MADAutoAssetStagerParam *)self setIdentifierConfiguration];
        v10 = [v6 summary];
        v14 = [v22 initWithFormat:@"SET_CONFIGURATION|setConfiguration:%@", v10];
      }

      goto LABEL_25;
    }

    if (v4 == 8)
    {
      v33 = [NSString alloc];
      v6 = [(MADAutoAssetStagerParam *)self timerUUID];
      v7 = [v33 initWithFormat:@"TIMER_UUID|timerUUID:%@", v6];
      goto LABEL_28;
    }

    if (v4 != 9)
    {
      if (v4 == 10)
      {
        v9 = [NSString alloc];
        v6 = [(MADAutoAssetStagerParam *)self stagingClientRequest];
        v10 = [v6 summary];
        v11 = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
        v12 = [v9 initWithFormat:@"STAGING_CLIENT_DOWNLOAD_REQUEST|stagingClientRequest:%@|baseForStaging:%ld", v10, objc_msgSend(v11, "count")];

LABEL_26:
LABEL_29:

        goto LABEL_42;
      }

LABEL_30:
      v12 = @"UNKNOWN_TYPE";
      goto LABEL_42;
    }

    v42 = [NSString alloc];
    v17 = [(MADAutoAssetStagerParam *)self alreadyDownloaded];
    v23 = [v17 count];
    v18 = [(MADAutoAssetStagerParam *)self setConfigurations];
    v24 = [v18 count];
    v25 = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
    v26 = [v25 count];
    v27 = [(MADAutoAssetStagerParam *)self setTargets];
    v28 = [v27 count];
    v29 = [(MADAutoAssetStagerParam *)self scheduledJobs];
    v12 = [v42 initWithFormat:@"STAGING_ALREADY_DOWNLOADED|alreadyDownloaded:%ld|setConfigurations:%ld|entriesWhenTargeting:%ld|setTargets:%ld|scheduledJobs:%ld", v23, v24, v26, v28, objc_msgSend(v29, "count")];
  }

LABEL_42:

  return v12;
}

- (void)updateSafeSummary
{
  v3 = [(MADAutoAssetStagerParam *)self _summary];
  [(MADAutoAssetStagerParam *)self setParamSafeSummary:v3];

  v4 = [(MADAutoAssetStagerParam *)self paramSafeSummary];

  if (!v4)
  {

    [(MADAutoAssetStagerParam *)self setParamSafeSummary:&stru_4BD3F0];
  }
}

@end