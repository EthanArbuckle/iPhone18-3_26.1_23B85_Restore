@interface MADAutoAssetJobParam
- (MADAutoAssetJobParam)initWithCoder:(id)a3;
- (MADAutoAssetJobParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withClientRequest:(id)a5 withAutoAssetSelector:(id)a6 withAutoAssetJobID:(id)a7 withAutoAssetCatalog:(id)a8 whereCatalogFromLookupCache:(BOOL)a9 withFinishedError:(id)a10 withDownloadProgress:(id)a11 withAssetTargetOSVersion:(id)a12 withAssetTargetBuildVersion:(id)a13 withAssetTargetTrainName:(id)a14 withAssetTargetRestoreVersion:(id)a15 withAutoAssetDescriptor:(id)a16 withControlInformation:(id)a17;
- (id)_summary;
- (void)encodeWithCoder:(id)a3;
- (void)updateSafeSummary;
@end

@implementation MADAutoAssetJobParam

- (MADAutoAssetJobParam)initWithParamType:(int64_t)a3 withSafeSummary:(id)a4 withClientRequest:(id)a5 withAutoAssetSelector:(id)a6 withAutoAssetJobID:(id)a7 withAutoAssetCatalog:(id)a8 whereCatalogFromLookupCache:(BOOL)a9 withFinishedError:(id)a10 withDownloadProgress:(id)a11 withAssetTargetOSVersion:(id)a12 withAssetTargetBuildVersion:(id)a13 withAssetTargetTrainName:(id)a14 withAssetTargetRestoreVersion:(id)a15 withAutoAssetDescriptor:(id)a16 withControlInformation:(id)a17
{
  v44 = a4;
  v32 = a5;
  v21 = a5;
  v43 = a6;
  v42 = a7;
  v41 = a8;
  v40 = a10;
  v39 = a11;
  v38 = a12;
  v37 = a13;
  v36 = a14;
  v35 = a15;
  v34 = a16;
  v22 = a17;
  v45.receiver = self;
  v45.super_class = MADAutoAssetJobParam;
  v23 = [(MADAutoAssetJobParam *)&v45 init];
  v24 = v23;
  if (v23)
  {
    v23->_paramType = a3;
    objc_storeStrong(&v23->_clientRequest, v32);
    objc_storeStrong(&v24->_autoAssetSelector, a6);
    objc_storeStrong(&v24->_autoAssetJobID, a7);
    objc_storeStrong(&v24->_autoAssetCatalog, a8);
    v24->_catalogFromLookupCache = a9;
    objc_storeStrong(&v24->_finishedError, a10);
    objc_storeStrong(&v24->_downloadProgress, a11);
    objc_storeStrong(&v24->_assetTargetOSVersion, a12);
    objc_storeStrong(&v24->_assetTargetBuildVersion, a13);
    objc_storeStrong(&v24->_assetTargetTrainName, a14);
    objc_storeStrong(&v24->_assetTargetRestoreVersion, a15);
    objc_storeStrong(&v24->_autoAssetDescriptor, a16);
    objc_storeStrong(&v24->_controlInformation, a17);
    v25 = [(MADAutoAssetJobParam *)v24 _summary];
    v26 = v25;
    if (v44)
    {
      if (v25)
      {
        v27 = [[NSString alloc] initWithFormat:@"%@+++%@", v44, v25];
      }

      else
      {
        v27 = v44;
      }

      paramSafeSummary = v24->_paramSafeSummary;
      v24->_paramSafeSummary = v27;

      goto LABEL_9;
    }

    v28 = v24->_paramSafeSummary;
    v24->_paramSafeSummary = v25;

    v26 = v24->_paramSafeSummary;
    if (!v26)
    {
      v24->_paramSafeSummary = &stru_4BD3F0;
LABEL_9:
    }
  }

  return v24;
}

- (MADAutoAssetJobParam)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MADAutoAssetJobParam;
  v5 = [(MADAutoAssetJobParam *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paramSafeSummary"];
    paramSafeSummary = v5->_paramSafeSummary;
    v5->_paramSafeSummary = v6;

    v5->_paramType = [v4 decodeInt64ForKey:@"paramType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientRequest"];
    clientRequest = v5->_clientRequest;
    v5->_clientRequest = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSelector"];
    autoAssetSelector = v5->_autoAssetSelector;
    v5->_autoAssetSelector = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetJobID"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v17;

    v5->_catalogFromLookupCache = [v4 decodeBoolForKey:@"catalogFromLookupCache"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finishedError"];
    finishedError = v5->_finishedError;
    v5->_finishedError = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetDescriptor"];
    autoAssetDescriptor = v5->_autoAssetDescriptor;
    v5->_autoAssetDescriptor = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlInformation"];
    controlInformation = v5->_controlInformation;
    v5->_controlInformation = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJobParam *)self paramSafeSummary];
  [v4 encodeObject:v5 forKey:@"paramSafeSummary"];

  [v4 encodeInt64:-[MADAutoAssetJobParam paramType](self forKey:{"paramType"), @"paramType"}];
  v6 = [(MADAutoAssetJobParam *)self clientRequest];
  [v4 encodeObject:v6 forKey:@"clientRequest"];

  v7 = [(MADAutoAssetJobParam *)self autoAssetSelector];
  [v4 encodeObject:v7 forKey:@"autoAssetSelector"];

  v8 = [(MADAutoAssetJobParam *)self autoAssetJobID];
  [v4 encodeObject:v8 forKey:@"autoAssetJobID"];

  v9 = [(MADAutoAssetJobParam *)self autoAssetCatalog];
  [v4 encodeObject:v9 forKey:@"autoAssetCatalog"];

  [v4 encodeBool:-[MADAutoAssetJobParam catalogFromLookupCache](self forKey:{"catalogFromLookupCache"), @"catalogFromLookupCache"}];
  v10 = [(MADAutoAssetJobParam *)self finishedError];
  [v4 encodeObject:v10 forKey:@"finishedError"];

  v11 = [(MADAutoAssetJobParam *)self downloadProgress];
  [v4 encodeObject:v11 forKey:@"downloadProgress"];

  v12 = [(MADAutoAssetJobParam *)self assetTargetOSVersion];
  [v4 encodeObject:v12 forKey:@"assetTargetOSVersion"];

  v13 = [(MADAutoAssetJobParam *)self assetTargetBuildVersion];
  [v4 encodeObject:v13 forKey:@"assetTargetBuildVersion"];

  v14 = [(MADAutoAssetJobParam *)self assetTargetTrainName];
  [v4 encodeObject:v14 forKey:@"assetTargetTrainName"];

  v15 = [(MADAutoAssetJobParam *)self assetTargetRestoreVersion];
  [v4 encodeObject:v15 forKey:@"assetTargetRestoreVersion"];

  v16 = [(MADAutoAssetJobParam *)self autoAssetDescriptor];
  [v4 encodeObject:v16 forKey:@"autoAssetDescriptor"];

  v17 = [(MADAutoAssetJobParam *)self controlInformation];
  [v4 encodeObject:v17 forKey:@"controlInformation"];
}

- (id)_summary
{
  controlInformation = self->_controlInformation;
  if (controlInformation)
  {
    v4 = [(MANAutoAssetInfoControl *)controlInformation summary];
  }

  else
  {
    v4 = &stru_4BD3F0;
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

      v8 = [MADAutoAssetClientRequest responseErrorSummary:?];
      v9 = [v19 initWithFormat:@"FINISHED|job:%@|finished:%@", v20, v8];
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
      v8 = [(MADAutoAssetClientRequest *)self->_clientRequest summary];
      v9 = [v7 initWithFormat:@"CLIENT_REQUEST|clientRequest:%@|%@", v8, v4];
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
      v8 = [(MAAutoAssetProgress *)self->_downloadProgress summary];
      v9 = [v24 initWithFormat:@"PROGRESS|job:%@|progress:%@", v25, v8];
    }

    else
    {
      v17 = [NSString alloc];
      autoAssetSelector = self->_autoAssetSelector;
      if (!autoAssetSelector)
      {
        v6 = [v17 initWithFormat:@"SCHEDULER|selector:%@|%@", @"N", v4, v29, v30, v31];
        goto LABEL_38;
      }

      v8 = [(MAAutoAssetSelector *)autoAssetSelector summary];
      v9 = [v17 initWithFormat:@"SCHEDULER|selector:%@|%@", v8, v4];
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

    v6 = [v21 initWithFormat:@"STAGER_TARGET|[(assetTarget)OSVersion:%@|BuildVersion:%@|TrainName:%@|RestoreVersion:%@]|%@", self->_assetTargetOSVersion, self->_assetTargetBuildVersion, assetTargetTrainName, assetTargetRestoreVersion, v4];
    goto LABEL_38;
  }

  if (paramType == 7)
  {
    v26 = [NSString alloc];
    v8 = [(MADAutoAssetDescriptor *)self->_autoAssetDescriptor summary];
    v9 = [v26 initWithFormat:@"IN_FLIGHT_DOWNLOAD|autoAssetDescriptor:%@|%@", v8, v4];
    goto LABEL_33;
  }

  if (paramType != 8)
  {
LABEL_34:
    v16 = @"UNKNOWN_TYPE";
    goto LABEL_39;
  }

  v6 = [[NSString alloc] initWithFormat:@"CONTROL_INFO|%@", v4, v28, v29, v30, v31];
LABEL_38:
  v16 = v6;
LABEL_39:

  return v16;
}

- (void)updateSafeSummary
{
  v3 = [(MADAutoAssetJobParam *)self _summary];
  [(MADAutoAssetJobParam *)self setParamSafeSummary:v3];

  v4 = [(MADAutoAssetJobParam *)self paramSafeSummary];

  if (!v4)
  {

    [(MADAutoAssetJobParam *)self setParamSafeSummary:&stru_4BD3F0];
  }
}

@end