@interface MANAutoAssetStatus
+ (id)newCurrentLockUsageSummary:(id)a3;
- (MANAutoAssetStatus)initWithAssetSelector:(id)a3 withNotifications:(id)a4 withAvailableForUseAttributes:(id)a5 withNewerVersionAttributes:(id)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadProgress:(id)a9 withDownloadedNetworkBytes:(int64_t)a10 withDownloadedFilesystemBytes:(int64_t)a11 withDownloadedAsPatch:(BOOL)a12 withPatchedFromBaseSelector:(id)a13 withPatchedFromBaseFilesystemBytes:(int64_t)a14 withPatchingAttempted:(BOOL)a15 withStagedPriorToAvailable:(BOOL)a16 withStagedFromOSVersion:(id)a17 withStagedFromBuildVersion:(id)a18 withCurrentLockUsage:(id)a19 withAvailableForUseError:(id)a20 withPatchingAttemptError:(id)a21 withNewerVersionError:(id)a22;
- (MANAutoAssetStatus)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)getAvailableForUseAttributesAssetFormat:(id *)a3 assetBuild:(id *)a4 minOSVersion:(id *)a5 maxOSVersion:(id *)a6 prerequisiteBuilds:(id *)a7;
@end

@implementation MANAutoAssetStatus

- (MANAutoAssetStatus)initWithAssetSelector:(id)a3 withNotifications:(id)a4 withAvailableForUseAttributes:(id)a5 withNewerVersionAttributes:(id)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadProgress:(id)a9 withDownloadedNetworkBytes:(int64_t)a10 withDownloadedFilesystemBytes:(int64_t)a11 withDownloadedAsPatch:(BOOL)a12 withPatchedFromBaseSelector:(id)a13 withPatchedFromBaseFilesystemBytes:(int64_t)a14 withPatchingAttempted:(BOOL)a15 withStagedPriorToAvailable:(BOOL)a16 withStagedFromOSVersion:(id)a17 withStagedFromBuildVersion:(id)a18 withCurrentLockUsage:(id)a19 withAvailableForUseError:(id)a20 withPatchingAttemptError:(id)a21 withNewerVersionError:(id)a22
{
  v42 = a3;
  v45 = a4;
  v35 = a5;
  v44 = a5;
  v36 = a6;
  v40 = a6;
  v25 = a9;
  v43 = a13;
  v41 = a17;
  v26 = a18;
  v27 = a19;
  v28 = a20;
  v29 = a21;
  v30 = a22;
  v46.receiver = self;
  v46.super_class = MANAutoAssetStatus;
  v31 = [(MANAutoAssetStatus *)&v46 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_assetSelector, a3);
    objc_storeStrong(&v32->_notifications, a4);
    objc_storeStrong(&v32->_availableForUseAttributes, v35);
    objc_storeStrong(&v32->_newerVersionAttributes, v36);
    v32->_neverBeenLocked = a7;
    v32->_downloadUserInitiated = a8;
    objc_storeStrong(&v32->_downloadProgress, a9);
    v32->_downloadedNetworkBytes = a10;
    v32->_downloadedFilesystemBytes = a11;
    v32->_downloadedAsPatch = a12;
    objc_storeStrong(&v32->_patchedFromBaseSelector, a13);
    v32->_patchedFromBaseFilesystemBytes = a14;
    v32->_patchingAttempted = a15;
    v32->_stagedPriorToAvailable = a16;
    objc_storeStrong(&v32->_stagedFromOSVersion, a17);
    objc_storeStrong(&v32->_stagedFromBuildVersion, a18);
    objc_storeStrong(&v32->_currentLockUsage, a19);
    objc_storeStrong(&v32->_availableForUseError, a20);
    objc_storeStrong(&v32->_patchingAttemptError, a21);
    objc_storeStrong(&v32->_newerVersionError, a22);
  }

  return v32;
}

- (MANAutoAssetStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = MANAutoAssetStatus;
  v5 = [(MANAutoAssetStatus *)&v35 init];
  if (v5)
  {
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v37[3] = objc_opt_class();
    v37[4] = objc_opt_class();
    v37[5] = objc_opt_class();
    v37[6] = objc_opt_class();
    v37[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v37 count:8];
    v7 = [NSSet setWithArray:v6];

    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v36[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v36 count:3];
    v9 = [NSSet setWithArray:v8];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v12;

    v14 = [v4 decodeObjectOfClasses:v7 forKey:@"availableForUseAttributes"];
    availableForUseAttributes = v5->_availableForUseAttributes;
    v5->_availableForUseAttributes = v14;

    v16 = [v4 decodeObjectOfClasses:v7 forKey:@"newerVersionAttributes"];
    newerVersionAttributes = v5->_newerVersionAttributes;
    v5->_newerVersionAttributes = v16;

    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v18;

    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_downloadedAsPatch = [v4 decodeBoolForKey:@"downloadedAsPatch"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v20;

    v5->_patchedFromBaseFilesystemBytes = [v4 decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [v4 decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v24;

    if (__isPlatformVersionAtLeast(2, 16, 4, 0))
    {
      v26 = [v4 decodeObjectOfClasses:v9 forKey:@"currentLockUsage"];
    }

    else
    {
      v26 = 0;
    }

    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(MANAutoAssetStatus *)self assetSelector];
  [v16 encodeObject:v4 forKey:@"assetSelector"];

  v5 = [(MANAutoAssetStatus *)self notifications];
  [v16 encodeObject:v5 forKey:@"notifications"];

  v6 = [(MANAutoAssetStatus *)self availableForUseAttributes];
  [v16 encodeObject:v6 forKey:@"availableForUseAttributes"];

  v7 = [(MANAutoAssetStatus *)self newerVersionAttributes];
  [v16 encodeObject:v7 forKey:@"newerVersionAttributes"];

  [v16 encodeBool:-[MANAutoAssetStatus neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v16 encodeBool:-[MANAutoAssetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  v8 = [(MANAutoAssetStatus *)self downloadProgress];
  [v16 encodeObject:v8 forKey:@"downloadProgress"];

  [v16 encodeInteger:-[MANAutoAssetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v16 encodeInteger:-[MANAutoAssetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [v16 encodeBool:-[MANAutoAssetStatus downloadedAsPatch](self forKey:{"downloadedAsPatch"), @"downloadedAsPatch"}];
  v9 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  [v16 encodeObject:v9 forKey:@"patchedFromBaseSelector"];

  [v16 encodeInteger:-[MANAutoAssetStatus patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [v16 encodeBool:-[MANAutoAssetStatus patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [v16 encodeBool:-[MANAutoAssetStatus stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  v10 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  [v16 encodeObject:v10 forKey:@"stagedFromOSVersion"];

  v11 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  [v16 encodeObject:v11 forKey:@"stagedFromBuildVersion"];

  if (__isPlatformVersionAtLeast(2, 16, 4, 0))
  {
    v12 = [(MANAutoAssetStatus *)self currentLockUsage];
    [v16 encodeObject:v12 forKey:@"currentLockUsage"];
  }

  v13 = [(MANAutoAssetStatus *)self availableForUseError];
  [v16 encodeObject:v13 forKey:@"availableForUseError"];

  v14 = [(MANAutoAssetStatus *)self patchingAttemptError];
  [v16 encodeObject:v14 forKey:@"patchingAttemptError"];

  v15 = [(MANAutoAssetStatus *)self newerVersionError];
  [v16 encodeObject:v15 forKey:@"newerVersionError"];
}

- (id)copy
{
  v27 = [MANAutoAssetStatus alloc];
  v31 = [(MANAutoAssetStatus *)self assetSelector];
  v26 = [v31 copy];
  v30 = [(MANAutoAssetStatus *)self notifications];
  v25 = [v30 copy];
  v24 = [(MANAutoAssetStatus *)self availableForUseAttributes];
  v23 = [(MANAutoAssetStatus *)self newerVersionAttributes];
  v21 = [(MANAutoAssetStatus *)self neverBeenLocked];
  v20 = [(MANAutoAssetStatus *)self downloadUserInitiated];
  v29 = [(MANAutoAssetStatus *)self downloadProgress];
  v32 = [v29 copy];
  v19 = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  v18 = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  v17 = [(MANAutoAssetStatus *)self downloadedAsPatch];
  v22 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  v15 = [v22 copy];
  v16 = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  v3 = [(MANAutoAssetStatus *)self patchingAttempted];
  v4 = [(MANAutoAssetStatus *)self stagedPriorToAvailable];
  v14 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  v5 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  v6 = [(MANAutoAssetStatus *)self currentLockUsage];
  v7 = [v6 copy];
  v8 = [(MANAutoAssetStatus *)self availableForUseError];
  v9 = [(MANAutoAssetStatus *)self patchingAttemptError];
  v10 = [(MANAutoAssetStatus *)self newerVersionError];
  BYTE1(v13) = v4;
  LOBYTE(v13) = v3;
  LOBYTE(v12) = v17;
  v28 = [(MANAutoAssetStatus *)v27 initWithAssetSelector:v26 withNotifications:v25 withAvailableForUseAttributes:v24 withNewerVersionAttributes:v23 withNeverBeenLocked:v21 withDownloadUserInitiated:v20 withDownloadProgress:v32 withDownloadedNetworkBytes:v19 withDownloadedFilesystemBytes:v18 withDownloadedAsPatch:v12 withPatchedFromBaseSelector:v15 withPatchedFromBaseFilesystemBytes:v16 withPatchingAttempted:v13 withStagedPriorToAvailable:v14 withStagedFromOSVersion:v5 withStagedFromBuildVersion:v7 withCurrentLockUsage:v8 withAvailableForUseError:v9 withPatchingAttemptError:v10 withNewerVersionError:?];

  return v28;
}

- (id)description
{
  v3 = [(MANAutoAssetStatus *)self assetSelector];
  v67 = [v3 summary];
  v4 = [(MANAutoAssetStatus *)self notifications];
  v66 = [v4 summary];
  v5 = [(MANAutoAssetStatus *)self availableForUseAttributes];
  v6 = @"N";
  if (v5)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  v8 = [(MANAutoAssetStatus *)self newerVersionAttributes];
  if (v8)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v56 = v9;
  if ([(MANAutoAssetStatus *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v54 = v10;
  if ([(MANAutoAssetStatus *)self downloadUserInitiated])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v53 = v11;
  v12 = [(MANAutoAssetStatus *)self downloadProgress];
  if (v12)
  {
    v43 = [(MANAutoAssetStatus *)self downloadProgress];
    v64 = [v43 summary];
  }

  else
  {
    v64 = @"N";
  }

  v51 = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  v50 = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  v14 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  if (v14)
  {
    v41 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
    v63 = [v41 summary];
  }

  else
  {
    v63 = @"N";
  }

  v48 = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  if ([(MANAutoAssetStatus *)self patchingAttempted])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v46 = v15;
  if ([(MANAutoAssetStatus *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v45 = v16;
  v17 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  if (v17)
  {
    v6 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  }

  v18 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  if (v18)
  {
    v62 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    v62 = @"N";
  }

  v65 = [(MANAutoAssetStatus *)self currentLockUsage];
  if (v65)
  {
    v61 = [MANAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v61 = @"N";
  }

  v47 = [(MANAutoAssetStatus *)self availableForUseError];
  v52 = v18;
  if (v47)
  {
    v40 = [(MANAutoAssetStatus *)self availableForUseError];
    v60 = [v40 checkedSummary];
  }

  else
  {
    v60 = @"N";
  }

  v19 = [(MANAutoAssetStatus *)self patchingAttemptError];
  v55 = v17;
  if (v19)
  {
    v39 = [(MANAutoAssetStatus *)self patchingAttemptError];
    v59 = [v39 checkedSummary];
  }

  else
  {
    v59 = @"N";
  }

  v20 = [(MANAutoAssetStatus *)self newerVersionError];
  if (v20)
  {
    [(MANAutoAssetStatus *)self newerVersionError];
    v44 = v12;
    v42 = v8;
    v21 = v5;
    v22 = v4;
    v24 = v23 = v3;
    [v24 checkedSummary];
    v26 = v25 = v14;
    v58 = [NSMutableString stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", v67, v66, v57, v56, v54, v53, v64, v51, v50, v49, v63, v48, v46, v45, v6, v62, v61, v60, v59, v26];

    v14 = v25;
    v3 = v23;
    v4 = v22;
    v5 = v21;
    v8 = v42;
    v12 = v44;
  }

  else
  {
    v58 = [NSMutableString stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", v67, v66, v57, v56, v54, v53, v64, v51, v50, v49, v63, v48, v46, v45, v6, v62, v61, v60, v59, @"N"];
  }

  if (v19)
  {
  }

  if (v47)
  {
  }

  if (v65)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }

  v27 = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (v27)
  {
    v71 = 0;
    v72[0] = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    [(MANAutoAssetStatus *)self getAvailableForUseAttributesAssetFormat:v72 assetBuild:&v71 minOSVersion:&v70 maxOSVersion:&v69 prerequisiteBuilds:&v68];
    v28 = v72[0];
    v29 = v71;
    v30 = v70;
    v31 = v69;
    v32 = v68;
    v33 = v32;
    v34 = @"Missing";
    if (v29)
    {
      v34 = v29;
    }

    v35 = @"N";
    if (v30)
    {
      v36 = v30;
    }

    else
    {
      v36 = @"N";
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = @"N";
    }

    if (v32)
    {
      v35 = v32;
    }

    [v58 appendFormat:@"                     assetFormat: %@\n                      assetBuild: %@\n                    minOSVersion: %@\n                    maxOSVersion: %@\n         prerequisiteAssetBuilds: %@\n", v28, v34, v36, v37, v35];
  }

  return v58;
}

- (id)summary
{
  v3 = [(MANAutoAssetStatus *)self assetSelector];
  v67 = [v3 summary];
  v4 = [(MANAutoAssetStatus *)self notifications];
  v66 = [v4 summary];
  v5 = [(MANAutoAssetStatus *)self availableForUseAttributes];
  v6 = @"N";
  if (v5)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  v8 = [(MANAutoAssetStatus *)self newerVersionAttributes];
  if (v8)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v56 = v9;
  if ([(MANAutoAssetStatus *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v54 = v10;
  if ([(MANAutoAssetStatus *)self downloadUserInitiated])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v53 = v11;
  v12 = [(MANAutoAssetStatus *)self downloadProgress];
  if (v12)
  {
    v43 = [(MANAutoAssetStatus *)self downloadProgress];
    v64 = [v43 summary];
  }

  else
  {
    v64 = @"N";
  }

  v51 = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  v50 = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  v14 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  if (v14)
  {
    v41 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
    v63 = [v41 summary];
  }

  else
  {
    v63 = @"N";
  }

  v48 = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  if ([(MANAutoAssetStatus *)self patchingAttempted])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v46 = v15;
  if ([(MANAutoAssetStatus *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v45 = v16;
  v17 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  if (v17)
  {
    v6 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  }

  v18 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  if (v18)
  {
    v62 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    v62 = @"N";
  }

  v65 = [(MANAutoAssetStatus *)self currentLockUsage];
  if (v65)
  {
    v61 = [MANAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v61 = @"N";
  }

  v47 = [(MANAutoAssetStatus *)self availableForUseError];
  v55 = v17;
  if (v47)
  {
    v40 = [(MANAutoAssetStatus *)self availableForUseError];
    v60 = [v40 checkedSummary];
  }

  else
  {
    v60 = @"N";
  }

  v19 = [(MANAutoAssetStatus *)self patchingAttemptError];
  v52 = v18;
  if (v19)
  {
    v39 = [(MANAutoAssetStatus *)self patchingAttemptError];
    v59 = [v39 checkedSummary];
  }

  else
  {
    v59 = @"N";
  }

  v20 = [(MANAutoAssetStatus *)self newerVersionError];
  if (v20)
  {
    [(MANAutoAssetStatus *)self newerVersionError];
    v21 = v42 = v14;
    [v21 checkedSummary];
    v44 = v12;
    v22 = v8;
    v23 = v5;
    v24 = v4;
    v26 = v25 = v3;
    v58 = [NSMutableString stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", v67, v66, v57, v56, v54, v53, v64, v51, v50, v49, v63, v48, v46, v45, v6, v62, v61, v60, v59, v26];

    v3 = v25;
    v4 = v24;
    v5 = v23;
    v8 = v22;
    v12 = v44;

    v14 = v42;
  }

  else
  {
    v58 = [NSMutableString stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", v67, v66, v57, v56, v54, v53, v64, v51, v50, v49, v63, v48, v46, v45, v6, v62, v61, v60, v59, @"N"];
  }

  if (v19)
  {
  }

  if (v47)
  {
  }

  if (v65)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }

  v27 = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (v27)
  {
    v71 = 0;
    v72[0] = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    [(MANAutoAssetStatus *)self getAvailableForUseAttributesAssetFormat:v72 assetBuild:&v71 minOSVersion:&v70 maxOSVersion:&v69 prerequisiteBuilds:&v68];
    v28 = v72[0];
    v29 = v71;
    v30 = v70;
    v31 = v69;
    v32 = v68;
    v33 = v32;
    v34 = @"Missing";
    if (v29)
    {
      v34 = v29;
    }

    v35 = @"N";
    if (v30)
    {
      v36 = v30;
    }

    else
    {
      v36 = @"N";
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = @"N";
    }

    if (v32)
    {
      v35 = v32;
    }

    [v58 appendFormat:@"|assetFormat:%@|assetBuild:%@|minOSVersion:%@|maxOSVersion:%@|prerequisiteAssetBuilds:%@", v28, v34, v36, v37, v35];
  }

  [v58 appendString:@"]"];

  return v58;
}

- (void)getAvailableForUseAttributesAssetFormat:(id *)a3 assetBuild:(id *)a4 minOSVersion:(id *)a5 maxOSVersion:(id *)a6 prerequisiteBuilds:(id *)a7
{
  v13 = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (v13)
  {
    if (a3)
    {
      v14 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *a3 = [v14 safeStringForKey:@"AssetFormat"];

      if (!*a3)
      {
        *a3 = @"StreamingZip";
      }
    }

    if (a4)
    {
      v15 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *a4 = [v15 safeStringForKey:@"Build"];
    }

    if (a5)
    {
      v16 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *a5 = [v16 safeStringForKey:@"_MinOSVersion"];
    }

    if (a6)
    {
      v17 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *a6 = [v17 safeStringForKey:@"_MaxOSVersion"];
    }

    if (a7)
    {
      v18 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      v19 = [v18 safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];

      if (v19)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v28 = v19;
          v23 = 0;
          v24 = *v30;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v29 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v23)
                {
                  [v23 appendFormat:@", %@", v26];
                }

                else
                {
                  v23 = [NSMutableString stringWithFormat:@"%@", v26];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v22);

          if (v23)
          {
            v27 = v23;
          }

          v19 = v28;
        }

        else
        {

          v23 = 0;
        }

        *a7 = v23;
      }

      else
      {
        *a7 = 0;
      }
    }
  }
}

+ (id)newCurrentLockUsageSummary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _MADLog(@"Auto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "{MANAutoAssetStatus-newCurrentLockUsageSummary} WARNING: wrong class provided as autoAssetStatus", buf, 2u);
    }
  }

  v5 = [v3 currentLockUsage];

  if (v5)
  {
    v5 = [[NSMutableString alloc] initWithString:@"{"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v3 currentLockUsage];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = 1;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [v3 currentLockUsage];
          v13 = [v12 safeIntegerForKey:v11];

          if ((v9 & 1) == 0)
          {
            [v5 appendString:{@", "}];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 appendFormat:@"%@:%ld", v11, v13];
          }

          else
          {
            [v5 appendFormat:@"?:%ld", v13, v15];
          }

          v9 = 0;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
        v9 = 0;
      }

      while (v7);
    }

    [v5 appendString:@"}"];
  }

  return v5;
}

@end