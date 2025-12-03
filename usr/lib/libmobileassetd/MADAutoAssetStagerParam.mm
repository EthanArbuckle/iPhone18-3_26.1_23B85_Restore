@interface MADAutoAssetStagerParam
- (MADAutoAssetStagerParam)initWithCoder:(id)coder;
- (MADAutoAssetStagerParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withStagingClientRequest:(id)request withBaseForStagingDescriptors:(id)descriptors withJobInformation:(id)information withAutoAssetCatalog:(id)catalog withOperationError:(id)error withAssetType:(id)self0 withAssetSelector:(id)self1 withSetIdentifierConfiguration:(id)self2 withEntriesWhenTargeting:(id)self3 withTimerUUID:(id)self4 withAlreadyDownloaded:(id)self5 withSetConfigurations:(id)self6 withSetTargets:(id)self7 withScheduledJobs:(id)self8 withDownloadedDescriptor:(id)self9;
- (id)_summary;
- (void)encodeWithCoder:(id)coder;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetStagerParam

- (MADAutoAssetStagerParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withStagingClientRequest:(id)request withBaseForStagingDescriptors:(id)descriptors withJobInformation:(id)information withAutoAssetCatalog:(id)catalog withOperationError:(id)error withAssetType:(id)self0 withAssetSelector:(id)self1 withSetIdentifierConfiguration:(id)self2 withEntriesWhenTargeting:(id)self3 withTimerUUID:(id)self4 withAlreadyDownloaded:(id)self5 withSetConfigurations:(id)self6 withSetTargets:(id)self7 withScheduledJobs:(id)self8 withDownloadedDescriptor:(id)self9
{
  summaryCopy = summary;
  requestCopy = request;
  requestCopy2 = request;
  descriptorsCopy = descriptors;
  informationCopy = information;
  informationCopy2 = information;
  catalogCopy = catalog;
  errorCopy = error;
  assetTypeCopy = assetType;
  selectorCopy = selector;
  configurationCopy = configuration;
  targetingCopy = targeting;
  dCopy = d;
  downloadedCopy = downloaded;
  configurationsCopy = configurations;
  targetsCopy = targets;
  jobsCopy = jobs;
  descriptorCopy = descriptor;
  v51.receiver = self;
  v51.super_class = MADAutoAssetStagerParam;
  v25 = [(MADAutoAssetStagerParam *)&v51 init];
  v26 = v25;
  if (v25)
  {
    v25->_paramType = type;
    objc_storeStrong(&v25->_stagingClientRequest, requestCopy);
    objc_storeStrong(&v26->_baseForStagingDescriptors, descriptors);
    objc_storeStrong(&v26->_jobInformation, informationCopy);
    objc_storeStrong(&v26->_autoAssetCatalog, catalog);
    objc_storeStrong(&v26->_operationError, error);
    objc_storeStrong(&v26->_assetType, assetType);
    objc_storeStrong(&v26->_assetSelector, selector);
    objc_storeStrong(&v26->_setIdentifierConfiguration, configuration);
    objc_storeStrong(&v26->_alreadyDownloaded, downloaded);
    objc_storeStrong(&v26->_setConfigurations, configurations);
    objc_storeStrong(&v26->_entriesWhenTargeting, targeting);
    objc_storeStrong(&v26->_timerUUID, d);
    objc_storeStrong(&v26->_setTargets, targets);
    objc_storeStrong(&v26->_scheduledJobs, jobs);
    objc_storeStrong(&v26->_downloadedDescriptor, descriptor);
    _summary = [(MADAutoAssetStagerParam *)v26 _summary];
    v28 = _summary;
    if (summaryCopy)
    {
      if (_summary)
      {
        v29 = [[NSString alloc] initWithFormat:@"%@+++%@", summaryCopy, _summary];
      }

      else
      {
        v29 = summaryCopy;
      }

      paramSafeSummary = v26->_paramSafeSummary;
      v26->_paramSafeSummary = v29;

      goto LABEL_9;
    }

    v30 = v26->_paramSafeSummary;
    v26->_paramSafeSummary = _summary;

    v28 = v26->_paramSafeSummary;
    if (!v28)
    {
      v26->_paramSafeSummary = &stru_4BD3F0;
LABEL_9:
    }
  }

  return v26;
}

- (MADAutoAssetStagerParam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v60.receiver = self;
  v60.super_class = MADAutoAssetStagerParam;
  v5 = [(MADAutoAssetStagerParam *)&v60 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [coderCopy decodeInt64ForKey:@"paramType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientRequest"];
    stagingClientRequest = v5->_stagingClientRequest;
    v5->_stagingClientRequest = v8;

    v10 = [NSSet alloc];
    v67[0] = objc_opt_class();
    v67[1] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v67 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"baseForStagingDescriptors"];
    baseForStagingDescriptors = v5->_baseForStagingDescriptors;
    v5->_baseForStagingDescriptors = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jobInformation"];
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
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationError"];
    operationError = v5->_operationError;
    v5->_operationError = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setIdentifierConfiguration"];
    setIdentifierConfiguration = v5->_setIdentifierConfiguration;
    v5->_setIdentifierConfiguration = v28;

    v30 = [NSSet alloc];
    v65[0] = objc_opt_class();
    v65[1] = objc_opt_class();
    v31 = [NSArray arrayWithObjects:v65 count:2];
    v32 = [v30 initWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"alreadyDownloaded"];
    alreadyDownloaded = v5->_alreadyDownloaded;
    v5->_alreadyDownloaded = v33;

    v35 = [NSSet alloc];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v36 = [NSArray arrayWithObjects:v64 count:2];
    v37 = [v35 initWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"setConfigurations"];
    setConfigurations = v5->_setConfigurations;
    v5->_setConfigurations = v38;

    v40 = [NSSet alloc];
    v63[0] = objc_opt_class();
    v63[1] = objc_opt_class();
    v41 = [NSArray arrayWithObjects:v63 count:2];
    v42 = [v40 initWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerUUID"];
    timerUUID = v5->_timerUUID;
    v5->_timerUUID = v45;

    v47 = [NSSet alloc];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v48 = [NSArray arrayWithObjects:v62 count:2];
    v49 = [v47 initWithArray:v48];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"setTargets"];
    setTargets = v5->_setTargets;
    v5->_setTargets = v50;

    v52 = [NSSet alloc];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v53 = [NSArray arrayWithObjects:v61 count:2];
    v54 = [v52 initWithArray:v53];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"scheduledJobs"];
    scheduledJobs = v5->_scheduledJobs;
    v5->_scheduledJobs = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedDescriptor"];
    downloadedDescriptor = v5->_downloadedDescriptor;
    v5->_downloadedDescriptor = v57;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  paramSafeSummary = [(MADAutoAssetStagerParam *)self paramSafeSummary];
  [coderCopy encodeObject:paramSafeSummary forKey:@"paramSafeSummary"];

  [coderCopy encodeInt64:-[MADAutoAssetStagerParam paramType](self forKey:{"paramType"), @"paramType"}];
  stagingClientRequest = [(MADAutoAssetStagerParam *)self stagingClientRequest];
  [coderCopy encodeObject:stagingClientRequest forKey:@"stagingClientRequest"];

  baseForStagingDescriptors = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
  [coderCopy encodeObject:baseForStagingDescriptors forKey:@"baseForStagingDescriptors"];

  jobInformation = [(MADAutoAssetStagerParam *)self jobInformation];
  [coderCopy encodeObject:jobInformation forKey:@"jobInformation"];

  autoAssetCatalog = [(MADAutoAssetStagerParam *)self autoAssetCatalog];
  [coderCopy encodeObject:autoAssetCatalog forKey:@"autoAssetCatalog"];

  operationError = [(MADAutoAssetStagerParam *)self operationError];
  [coderCopy encodeObject:operationError forKey:@"operationError"];

  assetType = [(MADAutoAssetStagerParam *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  assetSelector = [(MADAutoAssetStagerParam *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  setIdentifierConfiguration = [(MADAutoAssetStagerParam *)self setIdentifierConfiguration];
  [coderCopy encodeObject:setIdentifierConfiguration forKey:@"setIdentifierConfiguration"];

  alreadyDownloaded = [(MADAutoAssetStagerParam *)self alreadyDownloaded];
  [coderCopy encodeObject:alreadyDownloaded forKey:@"alreadyDownloaded"];

  setConfigurations = [(MADAutoAssetStagerParam *)self setConfigurations];
  [coderCopy encodeObject:setConfigurations forKey:@"entriesWhenTargeting"];

  entriesWhenTargeting = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
  [coderCopy encodeObject:entriesWhenTargeting forKey:@"setConfigurations"];

  timerUUID = [(MADAutoAssetStagerParam *)self timerUUID];
  [coderCopy encodeObject:timerUUID forKey:@"timerUUID"];

  setTargets = [(MADAutoAssetStagerParam *)self setTargets];
  [coderCopy encodeObject:setTargets forKey:@"setTargets"];

  scheduledJobs = [(MADAutoAssetStagerParam *)self scheduledJobs];
  [coderCopy encodeObject:scheduledJobs forKey:@"scheduledJobs"];

  downloadedDescriptor = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
  [coderCopy encodeObject:downloadedDescriptor forKey:@"downloadedDescriptor"];
}

- (id)_summary
{
  paramType = [(MADAutoAssetStagerParam *)self paramType];
  if (paramType <= 4)
  {
    if (paramType <= 1)
    {
      if (!paramType)
      {
        v12 = 0;
        goto LABEL_42;
      }

      if (paramType == 1)
      {
        v13 = [NSString alloc];
        stagingClientRequest = [(MADAutoAssetStagerParam *)self stagingClientRequest];
        summary = [stagingClientRequest summary];
        v14 = [v13 initWithFormat:@"STAGING_CLIENT_REQUEST|stagingClientRequest:%@", summary];
LABEL_25:
        v12 = v14;
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    if (paramType == 2)
    {
      v30 = [NSString alloc];
      jobInformation = [(MADAutoAssetStagerParam *)self jobInformation];
      summary2 = [jobInformation summary];
      downloadedDescriptor = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
      if (downloadedDescriptor)
      {
        downloadedDescriptor2 = [(MADAutoAssetStagerParam *)self downloadedDescriptor];
        summary3 = [downloadedDescriptor2 summary];
      }

      else
      {
        summary3 = @"N";
      }

      operationError = [(MADAutoAssetStagerParam *)self operationError];
      if (operationError)
      {
        v36 = [NSString alloc];
        operationError2 = [(MADAutoAssetStagerParam *)self operationError];
        v38 = [MADAutoAssetClientRequest responseErrorSummary:operationError2];
        v39 = [v36 initWithFormat:@"operationError:%@", v38];
        v12 = [v30 initWithFormat:@"STAGING_JOB_INFORMATION|jobInformation:%@|downloadedDescriptor:%@[%@]", summary2, summary3, v39];
      }

      else
      {
        v12 = [v30 initWithFormat:@"STAGING_JOB_INFORMATION|jobInformation:%@|downloadedDescriptor:%@[%@]", summary2, summary3, @"SUCCESS"];
      }

      if (downloadedDescriptor)
      {
      }
    }

    else
    {
      if (paramType != 3)
      {
        v8 = [NSString alloc];
        stagingClientRequest = [(MADAutoAssetStagerParam *)self assetType];
        v7 = [v8 initWithFormat:@"STAGING_ASSET_TYPE|assetType:%@", stagingClientRequest];
        goto LABEL_28;
      }

      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v16 = [NSString alloc];
      jobInformation = [(MADAutoAssetStagerParam *)self autoAssetCatalog];
      summary2 = [jobInformation safeSummary];
      downloadedDescriptor = [(MADAutoAssetStagerParam *)self operationError];
      if (downloadedDescriptor)
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

      baseForStagingDescriptors = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
      v12 = [v16 initWithFormat:@"STAGING_AUTO_ASSET_CATALOG|autoAssetCatalog:%@[%@]|baseForStaging:%ld", summary2, v21, objc_msgSend(baseForStagingDescriptors, "count")];

      if (downloadedDescriptor)
      {
      }
    }
  }

  else
  {
    if (paramType <= 7)
    {
      if (paramType == 5)
      {
        v32 = [NSString alloc];
        stagingClientRequest = [(MADAutoAssetStagerParam *)self assetSelector];
        summary = [stagingClientRequest summary];
        v14 = [v32 initWithFormat:@"STAGING_ASSET_SELECTOR|assetSelector:%@", summary];
      }

      else
      {
        if (paramType != 6)
        {
          v5 = [NSString alloc];
          stagingClientRequest = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
          v7 = [v5 initWithFormat:@"STAGING_SET_TARGETS|entriesWhenTargeting:%ld", objc_msgSend(stagingClientRequest, "count")];
LABEL_28:
          v12 = v7;
          goto LABEL_29;
        }

        v22 = [NSString alloc];
        stagingClientRequest = [(MADAutoAssetStagerParam *)self setIdentifierConfiguration];
        summary = [stagingClientRequest summary];
        v14 = [v22 initWithFormat:@"SET_CONFIGURATION|setConfiguration:%@", summary];
      }

      goto LABEL_25;
    }

    if (paramType == 8)
    {
      v33 = [NSString alloc];
      stagingClientRequest = [(MADAutoAssetStagerParam *)self timerUUID];
      v7 = [v33 initWithFormat:@"TIMER_UUID|timerUUID:%@", stagingClientRequest];
      goto LABEL_28;
    }

    if (paramType != 9)
    {
      if (paramType == 10)
      {
        v9 = [NSString alloc];
        stagingClientRequest = [(MADAutoAssetStagerParam *)self stagingClientRequest];
        summary = [stagingClientRequest summary];
        baseForStagingDescriptors2 = [(MADAutoAssetStagerParam *)self baseForStagingDescriptors];
        v12 = [v9 initWithFormat:@"STAGING_CLIENT_DOWNLOAD_REQUEST|stagingClientRequest:%@|baseForStaging:%ld", summary, objc_msgSend(baseForStagingDescriptors2, "count")];

LABEL_26:
LABEL_29:

        goto LABEL_42;
      }

LABEL_30:
      v12 = @"UNKNOWN_TYPE";
      goto LABEL_42;
    }

    v42 = [NSString alloc];
    jobInformation = [(MADAutoAssetStagerParam *)self alreadyDownloaded];
    v23 = [jobInformation count];
    summary2 = [(MADAutoAssetStagerParam *)self setConfigurations];
    v24 = [summary2 count];
    entriesWhenTargeting = [(MADAutoAssetStagerParam *)self entriesWhenTargeting];
    v26 = [entriesWhenTargeting count];
    setTargets = [(MADAutoAssetStagerParam *)self setTargets];
    v28 = [setTargets count];
    scheduledJobs = [(MADAutoAssetStagerParam *)self scheduledJobs];
    v12 = [v42 initWithFormat:@"STAGING_ALREADY_DOWNLOADED|alreadyDownloaded:%ld|setConfigurations:%ld|entriesWhenTargeting:%ld|setTargets:%ld|scheduledJobs:%ld", v23, v24, v26, v28, objc_msgSend(scheduledJobs, "count")];
  }

LABEL_42:

  return v12;
}

- (void)updateSafeSummary
{
  _summary = [(MADAutoAssetStagerParam *)self _summary];
  [(MADAutoAssetStagerParam *)self setParamSafeSummary:_summary];

  paramSafeSummary = [(MADAutoAssetStagerParam *)self paramSafeSummary];

  if (!paramSafeSummary)
  {

    [(MADAutoAssetStagerParam *)self setParamSafeSummary:&stru_4BD3F0];
  }
}

@end