@interface MADAutoAssetJobParam
- (MADAutoAssetJobParam)initWithCoder:(id)coder;
- (MADAutoAssetJobParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withClientRequest:(id)request withAutoAssetSelector:(id)selector withAutoAssetJobID:(id)d withAutoAssetCatalog:(id)catalog whereCatalogFromLookupCache:(BOOL)cache withFinishedError:(id)self0 withDownloadProgress:(id)self1 withAssetTargetOSVersion:(id)self2 withAssetTargetBuildVersion:(id)self3 withAssetTargetTrainName:(id)self4 withAssetTargetRestoreVersion:(id)self5 withAutoAssetDescriptor:(id)self6 withControlInformation:(id)self7;
- (id)_summary;
- (void)encodeWithCoder:(id)coder;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetJobParam

- (MADAutoAssetJobParam)initWithParamType:(int64_t)type withSafeSummary:(id)summary withClientRequest:(id)request withAutoAssetSelector:(id)selector withAutoAssetJobID:(id)d withAutoAssetCatalog:(id)catalog whereCatalogFromLookupCache:(BOOL)cache withFinishedError:(id)self0 withDownloadProgress:(id)self1 withAssetTargetOSVersion:(id)self2 withAssetTargetBuildVersion:(id)self3 withAssetTargetTrainName:(id)self4 withAssetTargetRestoreVersion:(id)self5 withAutoAssetDescriptor:(id)self6 withControlInformation:(id)self7
{
  summaryCopy = summary;
  requestCopy = request;
  requestCopy2 = request;
  selectorCopy = selector;
  dCopy = d;
  catalogCopy = catalog;
  errorCopy = error;
  progressCopy = progress;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  nameCopy = name;
  restoreVersionCopy = restoreVersion;
  descriptorCopy = descriptor;
  informationCopy = information;
  v45.receiver = self;
  v45.super_class = MADAutoAssetJobParam;
  v23 = [(MADAutoAssetJobParam *)&v45 init];
  v24 = v23;
  if (v23)
  {
    v23->_paramType = type;
    objc_storeStrong(&v23->_clientRequest, requestCopy);
    objc_storeStrong(&v24->_autoAssetSelector, selector);
    objc_storeStrong(&v24->_autoAssetJobID, d);
    objc_storeStrong(&v24->_autoAssetCatalog, catalog);
    v24->_catalogFromLookupCache = cache;
    objc_storeStrong(&v24->_finishedError, error);
    objc_storeStrong(&v24->_downloadProgress, progress);
    objc_storeStrong(&v24->_assetTargetOSVersion, version);
    objc_storeStrong(&v24->_assetTargetBuildVersion, buildVersion);
    objc_storeStrong(&v24->_assetTargetTrainName, name);
    objc_storeStrong(&v24->_assetTargetRestoreVersion, restoreVersion);
    objc_storeStrong(&v24->_autoAssetDescriptor, descriptor);
    objc_storeStrong(&v24->_controlInformation, information);
    _summary = [(MADAutoAssetJobParam *)v24 _summary];
    v26 = _summary;
    if (summaryCopy)
    {
      if (_summary)
      {
        v27 = [[NSString alloc] initWithFormat:@"%@+++%@", summaryCopy, _summary];
      }

      else
      {
        v27 = summaryCopy;
      }

      paramSafeSummary = v24->_paramSafeSummary;
      v24->_paramSafeSummary = v27;

      goto LABEL_9;
    }

    v28 = v24->_paramSafeSummary;
    v24->_paramSafeSummary = _summary;

    v26 = v24->_paramSafeSummary;
    if (!v26)
    {
      v24->_paramSafeSummary = &stru_4BD3F0;
LABEL_9:
    }
  }

  return v24;
}

- (MADAutoAssetJobParam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = MADAutoAssetJobParam;
  v5 = [(MADAutoAssetJobParam *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [coderCopy decodeInt64ForKey:@"paramType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientRequest"];
    clientRequest = v5->_clientRequest;
    v5->_clientRequest = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSelector"];
    autoAssetSelector = v5->_autoAssetSelector;
    v5->_autoAssetSelector = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetJobID"];
    autoAssetJobID = v5->_autoAssetJobID;
    v5->_autoAssetJobID = v12;

    v14 = [NSSet alloc];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v37[3] = objc_opt_class();
    v37[4] = objc_opt_class();
    v37[5] = objc_opt_class();
    v37[6] = objc_opt_class();
    v37[7] = objc_opt_class();
    v37[8] = objc_opt_class();
    v37[9] = objc_opt_class();
    v37[10] = objc_opt_class();
    v37[11] = objc_opt_class();
    v37[12] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v37 count:13];
    v16 = [v14 initWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v17;

    v5->_catalogFromLookupCache = [coderCopy decodeBoolForKey:@"catalogFromLookupCache"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finishedError"];
    finishedError = v5->_finishedError;
    v5->_finishedError = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetDescriptor"];
    autoAssetDescriptor = v5->_autoAssetDescriptor;
    v5->_autoAssetDescriptor = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlInformation"];
    controlInformation = v5->_controlInformation;
    v5->_controlInformation = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  paramSafeSummary = [(MADAutoAssetJobParam *)self paramSafeSummary];
  [coderCopy encodeObject:paramSafeSummary forKey:@"paramSafeSummary"];

  [coderCopy encodeInt64:-[MADAutoAssetJobParam paramType](self forKey:{"paramType"), @"paramType"}];
  clientRequest = [(MADAutoAssetJobParam *)self clientRequest];
  [coderCopy encodeObject:clientRequest forKey:@"clientRequest"];

  autoAssetSelector = [(MADAutoAssetJobParam *)self autoAssetSelector];
  [coderCopy encodeObject:autoAssetSelector forKey:@"autoAssetSelector"];

  autoAssetJobID = [(MADAutoAssetJobParam *)self autoAssetJobID];
  [coderCopy encodeObject:autoAssetJobID forKey:@"autoAssetJobID"];

  autoAssetCatalog = [(MADAutoAssetJobParam *)self autoAssetCatalog];
  [coderCopy encodeObject:autoAssetCatalog forKey:@"autoAssetCatalog"];

  [coderCopy encodeBool:-[MADAutoAssetJobParam catalogFromLookupCache](self forKey:{"catalogFromLookupCache"), @"catalogFromLookupCache"}];
  finishedError = [(MADAutoAssetJobParam *)self finishedError];
  [coderCopy encodeObject:finishedError forKey:@"finishedError"];

  downloadProgress = [(MADAutoAssetJobParam *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  assetTargetOSVersion = [(MADAutoAssetJobParam *)self assetTargetOSVersion];
  [coderCopy encodeObject:assetTargetOSVersion forKey:@"assetTargetOSVersion"];

  assetTargetBuildVersion = [(MADAutoAssetJobParam *)self assetTargetBuildVersion];
  [coderCopy encodeObject:assetTargetBuildVersion forKey:@"assetTargetBuildVersion"];

  assetTargetTrainName = [(MADAutoAssetJobParam *)self assetTargetTrainName];
  [coderCopy encodeObject:assetTargetTrainName forKey:@"assetTargetTrainName"];

  assetTargetRestoreVersion = [(MADAutoAssetJobParam *)self assetTargetRestoreVersion];
  [coderCopy encodeObject:assetTargetRestoreVersion forKey:@"assetTargetRestoreVersion"];

  autoAssetDescriptor = [(MADAutoAssetJobParam *)self autoAssetDescriptor];
  [coderCopy encodeObject:autoAssetDescriptor forKey:@"autoAssetDescriptor"];

  controlInformation = [(MADAutoAssetJobParam *)self controlInformation];
  [coderCopy encodeObject:controlInformation forKey:@"controlInformation"];
}

- (id)_summary
{
  controlInformation = self->_controlInformation;
  if (controlInformation)
  {
    summary = [(MANAutoAssetInfoControl *)controlInformation summary];
  }

  else
  {
    summary = &stru_4BD3F0;
  }

  paramType = self->_paramType;
  if (paramType <= 3)
  {
    if (paramType > 1)
    {
      if (paramType != 2)
      {
        v10 = [NSString alloc];
        autoAssetJobID = self->_autoAssetJobID;
        v12 = [(NSDictionary *)self->_autoAssetCatalog count];
        v13 = v12;
        if (self->_catalogFromLookupCache)
        {
          v14 = @"Y";
        }

        else
        {
          v14 = @"N";
        }

        if (self->_finishedError)
        {
          v15 = [MADAutoAssetClientRequest responseErrorSummary:?];
          v16 = [v10 initWithFormat:@"CATALOG|job:%@|count:%lu|fromLookupCache:%@|finished:%@", autoAssetJobID, v13, v14, v15];

          goto LABEL_39;
        }

        v6 = [v10 initWithFormat:@"CATALOG|job:%@|count:%lu|fromLookupCache:%@|finished:%@", autoAssetJobID, v12, v14, @"SUCCESS", v31];
        goto LABEL_38;
      }

      v19 = [NSString alloc];
      v20 = self->_autoAssetJobID;
      if (!self->_finishedError)
      {
        v6 = [v19 initWithFormat:@"FINISHED|job:%@|finished:%@", self->_autoAssetJobID, @"SUCCESS", v29, v30, v31];
        goto LABEL_38;
      }

      summary2 = [MADAutoAssetClientRequest responseErrorSummary:?];
      v9 = [v19 initWithFormat:@"FINISHED|job:%@|finished:%@", v20, summary2];
    }

    else
    {
      if (!paramType)
      {
        v16 = 0;
        goto LABEL_39;
      }

      if (paramType != 1)
      {
        goto LABEL_34;
      }

      v7 = [NSString alloc];
      summary2 = [(MADAutoAssetClientRequest *)self->_clientRequest summary];
      v9 = [v7 initWithFormat:@"CLIENT_REQUEST|clientRequest:%@|%@", summary2, summary];
    }

LABEL_33:
    v16 = v9;

    goto LABEL_39;
  }

  if (paramType <= 5)
  {
    if (paramType == 4)
    {
      v24 = [NSString alloc];
      v25 = self->_autoAssetJobID;
      summary2 = [(MAAutoAssetProgress *)self->_downloadProgress summary];
      v9 = [v24 initWithFormat:@"PROGRESS|job:%@|progress:%@", v25, summary2];
    }

    else
    {
      v17 = [NSString alloc];
      autoAssetSelector = self->_autoAssetSelector;
      if (!autoAssetSelector)
      {
        v6 = [v17 initWithFormat:@"SCHEDULER|selector:%@|%@", @"N", summary, v29, v30, v31];
        goto LABEL_38;
      }

      summary2 = [(MAAutoAssetSelector *)autoAssetSelector summary];
      v9 = [v17 initWithFormat:@"SCHEDULER|selector:%@|%@", summary2, summary];
    }

    goto LABEL_33;
  }

  if (paramType == 6)
  {
    v21 = [NSString alloc];
    assetTargetRestoreVersion = @"N";
    assetTargetTrainName = self->_assetTargetTrainName;
    if (!assetTargetTrainName)
    {
      assetTargetTrainName = @"N";
    }

    if (self->_assetTargetRestoreVersion)
    {
      assetTargetRestoreVersion = self->_assetTargetRestoreVersion;
    }

    v6 = [v21 initWithFormat:@"STAGER_TARGET|[(assetTarget)OSVersion:%@|BuildVersion:%@|TrainName:%@|RestoreVersion:%@]|%@", self->_assetTargetOSVersion, self->_assetTargetBuildVersion, assetTargetTrainName, assetTargetRestoreVersion, summary];
    goto LABEL_38;
  }

  if (paramType == 7)
  {
    v26 = [NSString alloc];
    summary2 = [(MADAutoAssetDescriptor *)self->_autoAssetDescriptor summary];
    v9 = [v26 initWithFormat:@"IN_FLIGHT_DOWNLOAD|autoAssetDescriptor:%@|%@", summary2, summary];
    goto LABEL_33;
  }

  if (paramType != 8)
  {
LABEL_34:
    v16 = @"UNKNOWN_TYPE";
    goto LABEL_39;
  }

  v6 = [[NSString alloc] initWithFormat:@"CONTROL_INFO|%@", summary, v28, v29, v30, v31];
LABEL_38:
  v16 = v6;
LABEL_39:

  return v16;
}

- (void)updateSafeSummary
{
  _summary = [(MADAutoAssetJobParam *)self _summary];
  [(MADAutoAssetJobParam *)self setParamSafeSummary:_summary];

  paramSafeSummary = [(MADAutoAssetJobParam *)self paramSafeSummary];

  if (!paramSafeSummary)
  {

    [(MADAutoAssetJobParam *)self setParamSafeSummary:&stru_4BD3F0];
  }
}

@end