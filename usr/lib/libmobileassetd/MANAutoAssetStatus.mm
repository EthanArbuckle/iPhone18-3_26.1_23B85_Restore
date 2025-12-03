@interface MANAutoAssetStatus
+ (id)newCurrentLockUsageSummary:(id)summary;
- (MANAutoAssetStatus)initWithAssetSelector:(id)selector withNotifications:(id)notifications withAvailableForUseAttributes:(id)attributes withNewerVersionAttributes:(id)versionAttributes withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)self0 withDownloadedFilesystemBytes:(int64_t)self1 withDownloadedAsPatch:(BOOL)self2 withPatchedFromBaseSelector:(id)self3 withPatchedFromBaseFilesystemBytes:(int64_t)self4 withPatchingAttempted:(BOOL)self5 withStagedPriorToAvailable:(BOOL)self6 withStagedFromOSVersion:(id)self7 withStagedFromBuildVersion:(id)self8 withCurrentLockUsage:(id)self9 withAvailableForUseError:(id)error withPatchingAttemptError:(id)attemptError withNewerVersionError:(id)versionError;
- (MANAutoAssetStatus)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)getAvailableForUseAttributesAssetFormat:(id *)format assetBuild:(id *)build minOSVersion:(id *)version maxOSVersion:(id *)sVersion prerequisiteBuilds:(id *)builds;
@end

@implementation MANAutoAssetStatus

- (MANAutoAssetStatus)initWithAssetSelector:(id)selector withNotifications:(id)notifications withAvailableForUseAttributes:(id)attributes withNewerVersionAttributes:(id)versionAttributes withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)self0 withDownloadedFilesystemBytes:(int64_t)self1 withDownloadedAsPatch:(BOOL)self2 withPatchedFromBaseSelector:(id)self3 withPatchedFromBaseFilesystemBytes:(int64_t)self4 withPatchingAttempted:(BOOL)self5 withStagedPriorToAvailable:(BOOL)self6 withStagedFromOSVersion:(id)self7 withStagedFromBuildVersion:(id)self8 withCurrentLockUsage:(id)self9 withAvailableForUseError:(id)error withPatchingAttemptError:(id)attemptError withNewerVersionError:(id)versionError
{
  selectorCopy = selector;
  notificationsCopy = notifications;
  attributesCopy = attributes;
  attributesCopy2 = attributes;
  versionAttributesCopy = versionAttributes;
  versionAttributesCopy2 = versionAttributes;
  progressCopy = progress;
  baseSelectorCopy = baseSelector;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  usageCopy = usage;
  errorCopy = error;
  attemptErrorCopy = attemptError;
  versionErrorCopy = versionError;
  v46.receiver = self;
  v46.super_class = MANAutoAssetStatus;
  v31 = [(MANAutoAssetStatus *)&v46 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_assetSelector, selector);
    objc_storeStrong(&v32->_notifications, notifications);
    objc_storeStrong(&v32->_availableForUseAttributes, attributesCopy);
    objc_storeStrong(&v32->_newerVersionAttributes, versionAttributesCopy);
    v32->_neverBeenLocked = locked;
    v32->_downloadUserInitiated = initiated;
    objc_storeStrong(&v32->_downloadProgress, progress);
    v32->_downloadedNetworkBytes = bytes;
    v32->_downloadedFilesystemBytes = filesystemBytes;
    v32->_downloadedAsPatch = patch;
    objc_storeStrong(&v32->_patchedFromBaseSelector, baseSelector);
    v32->_patchedFromBaseFilesystemBytes = baseFilesystemBytes;
    v32->_patchingAttempted = attempted;
    v32->_stagedPriorToAvailable = available;
    objc_storeStrong(&v32->_stagedFromOSVersion, version);
    objc_storeStrong(&v32->_stagedFromBuildVersion, buildVersion);
    objc_storeStrong(&v32->_currentLockUsage, usage);
    objc_storeStrong(&v32->_availableForUseError, error);
    objc_storeStrong(&v32->_patchingAttemptError, attemptError);
    objc_storeStrong(&v32->_newerVersionError, versionError);
  }

  return v32;
}

- (MANAutoAssetStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v12;

    v14 = [coderCopy decodeObjectOfClasses:v7 forKey:@"availableForUseAttributes"];
    availableForUseAttributes = v5->_availableForUseAttributes;
    v5->_availableForUseAttributes = v14;

    v16 = [coderCopy decodeObjectOfClasses:v7 forKey:@"newerVersionAttributes"];
    newerVersionAttributes = v5->_newerVersionAttributes;
    v5->_newerVersionAttributes = v16;

    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v18;

    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_downloadedAsPatch = [coderCopy decodeBoolForKey:@"downloadedAsPatch"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v20;

    v5->_patchedFromBaseFilesystemBytes = [coderCopy decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [coderCopy decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v24;

    if (__isPlatformVersionAtLeast(2, 16, 4, 0))
    {
      v26 = [coderCopy decodeObjectOfClasses:v9 forKey:@"currentLockUsage"];
    }

    else
    {
      v26 = 0;
    }

    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MANAutoAssetStatus *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  notifications = [(MANAutoAssetStatus *)self notifications];
  [coderCopy encodeObject:notifications forKey:@"notifications"];

  availableForUseAttributes = [(MANAutoAssetStatus *)self availableForUseAttributes];
  [coderCopy encodeObject:availableForUseAttributes forKey:@"availableForUseAttributes"];

  newerVersionAttributes = [(MANAutoAssetStatus *)self newerVersionAttributes];
  [coderCopy encodeObject:newerVersionAttributes forKey:@"newerVersionAttributes"];

  [coderCopy encodeBool:-[MANAutoAssetStatus neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MANAutoAssetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  downloadProgress = [(MANAutoAssetStatus *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  [coderCopy encodeInteger:-[MANAutoAssetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MANAutoAssetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [coderCopy encodeBool:-[MANAutoAssetStatus downloadedAsPatch](self forKey:{"downloadedAsPatch"), @"downloadedAsPatch"}];
  patchedFromBaseSelector = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  [coderCopy encodeObject:patchedFromBaseSelector forKey:@"patchedFromBaseSelector"];

  [coderCopy encodeInteger:-[MANAutoAssetStatus patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [coderCopy encodeBool:-[MANAutoAssetStatus patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [coderCopy encodeBool:-[MANAutoAssetStatus stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  stagedFromOSVersion = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  [coderCopy encodeObject:stagedFromOSVersion forKey:@"stagedFromOSVersion"];

  stagedFromBuildVersion = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  [coderCopy encodeObject:stagedFromBuildVersion forKey:@"stagedFromBuildVersion"];

  if (__isPlatformVersionAtLeast(2, 16, 4, 0))
  {
    currentLockUsage = [(MANAutoAssetStatus *)self currentLockUsage];
    [coderCopy encodeObject:currentLockUsage forKey:@"currentLockUsage"];
  }

  availableForUseError = [(MANAutoAssetStatus *)self availableForUseError];
  [coderCopy encodeObject:availableForUseError forKey:@"availableForUseError"];

  patchingAttemptError = [(MANAutoAssetStatus *)self patchingAttemptError];
  [coderCopy encodeObject:patchingAttemptError forKey:@"patchingAttemptError"];

  newerVersionError = [(MANAutoAssetStatus *)self newerVersionError];
  [coderCopy encodeObject:newerVersionError forKey:@"newerVersionError"];
}

- (id)copy
{
  v27 = [MANAutoAssetStatus alloc];
  assetSelector = [(MANAutoAssetStatus *)self assetSelector];
  v26 = [assetSelector copy];
  notifications = [(MANAutoAssetStatus *)self notifications];
  v25 = [notifications copy];
  availableForUseAttributes = [(MANAutoAssetStatus *)self availableForUseAttributes];
  newerVersionAttributes = [(MANAutoAssetStatus *)self newerVersionAttributes];
  neverBeenLocked = [(MANAutoAssetStatus *)self neverBeenLocked];
  downloadUserInitiated = [(MANAutoAssetStatus *)self downloadUserInitiated];
  downloadProgress = [(MANAutoAssetStatus *)self downloadProgress];
  v32 = [downloadProgress copy];
  downloadedNetworkBytes = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  downloadedAsPatch = [(MANAutoAssetStatus *)self downloadedAsPatch];
  patchedFromBaseSelector = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  v15 = [patchedFromBaseSelector copy];
  patchedFromBaseFilesystemBytes = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  patchingAttempted = [(MANAutoAssetStatus *)self patchingAttempted];
  stagedPriorToAvailable = [(MANAutoAssetStatus *)self stagedPriorToAvailable];
  stagedFromOSVersion = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  stagedFromBuildVersion = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  currentLockUsage = [(MANAutoAssetStatus *)self currentLockUsage];
  v7 = [currentLockUsage copy];
  availableForUseError = [(MANAutoAssetStatus *)self availableForUseError];
  patchingAttemptError = [(MANAutoAssetStatus *)self patchingAttemptError];
  newerVersionError = [(MANAutoAssetStatus *)self newerVersionError];
  BYTE1(v13) = stagedPriorToAvailable;
  LOBYTE(v13) = patchingAttempted;
  LOBYTE(v12) = downloadedAsPatch;
  v28 = [(MANAutoAssetStatus *)v27 initWithAssetSelector:v26 withNotifications:v25 withAvailableForUseAttributes:availableForUseAttributes withNewerVersionAttributes:newerVersionAttributes withNeverBeenLocked:neverBeenLocked withDownloadUserInitiated:downloadUserInitiated withDownloadProgress:v32 withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withDownloadedAsPatch:v12 withPatchedFromBaseSelector:v15 withPatchedFromBaseFilesystemBytes:patchedFromBaseFilesystemBytes withPatchingAttempted:v13 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:v7 withCurrentLockUsage:availableForUseError withAvailableForUseError:patchingAttemptError withPatchingAttemptError:newerVersionError withNewerVersionError:?];

  return v28;
}

- (id)description
{
  assetSelector = [(MANAutoAssetStatus *)self assetSelector];
  summary = [assetSelector summary];
  notifications = [(MANAutoAssetStatus *)self notifications];
  summary2 = [notifications summary];
  availableForUseAttributes = [(MANAutoAssetStatus *)self availableForUseAttributes];
  stagedFromOSVersion2 = @"N";
  if (availableForUseAttributes)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  newerVersionAttributes = [(MANAutoAssetStatus *)self newerVersionAttributes];
  if (newerVersionAttributes)
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
  downloadProgress = [(MANAutoAssetStatus *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MANAutoAssetStatus *)self downloadProgress];
    summary3 = [downloadProgress2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  downloadedNetworkBytes = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  patchedFromBaseSelector = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
    summary4 = [patchedFromBaseSelector2 summary];
  }

  else
  {
    summary4 = @"N";
  }

  patchedFromBaseFilesystemBytes = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
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
  stagedFromOSVersion = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  }

  stagedFromBuildVersion = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    stagedFromBuildVersion2 = @"N";
  }

  currentLockUsage = [(MANAutoAssetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v61 = [MANAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v61 = @"N";
  }

  availableForUseError = [(MANAutoAssetStatus *)self availableForUseError];
  v52 = stagedFromBuildVersion;
  if (availableForUseError)
  {
    availableForUseError2 = [(MANAutoAssetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  patchingAttemptError = [(MANAutoAssetStatus *)self patchingAttemptError];
  v55 = stagedFromOSVersion;
  if (patchingAttemptError)
  {
    patchingAttemptError2 = [(MANAutoAssetStatus *)self patchingAttemptError];
    checkedSummary2 = [patchingAttemptError2 checkedSummary];
  }

  else
  {
    checkedSummary2 = @"N";
  }

  newerVersionError = [(MANAutoAssetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    [(MANAutoAssetStatus *)self newerVersionError];
    v44 = downloadProgress;
    v42 = newerVersionAttributes;
    v21 = availableForUseAttributes;
    v22 = notifications;
    v24 = v23 = assetSelector;
    [v24 checkedSummary];
    v26 = v25 = patchedFromBaseSelector;
    v58 = [NSMutableString stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v61, checkedSummary, checkedSummary2, v26];

    patchedFromBaseSelector = v25;
    assetSelector = v23;
    notifications = v22;
    availableForUseAttributes = v21;
    newerVersionAttributes = v42;
    downloadProgress = v44;
  }

  else
  {
    v58 = [NSMutableString stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v61, checkedSummary, checkedSummary2, @"N"];
  }

  if (patchingAttemptError)
  {
  }

  if (availableForUseError)
  {
  }

  if (currentLockUsage)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (patchedFromBaseSelector)
  {
  }

  if (downloadProgress)
  {
  }

  availableForUseAttributes2 = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes2)
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
  assetSelector = [(MANAutoAssetStatus *)self assetSelector];
  summary = [assetSelector summary];
  notifications = [(MANAutoAssetStatus *)self notifications];
  summary2 = [notifications summary];
  availableForUseAttributes = [(MANAutoAssetStatus *)self availableForUseAttributes];
  stagedFromOSVersion2 = @"N";
  if (availableForUseAttributes)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  newerVersionAttributes = [(MANAutoAssetStatus *)self newerVersionAttributes];
  if (newerVersionAttributes)
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
  downloadProgress = [(MANAutoAssetStatus *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MANAutoAssetStatus *)self downloadProgress];
    summary3 = [downloadProgress2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  downloadedNetworkBytes = [(MANAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  patchedFromBaseSelector = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MANAutoAssetStatus *)self patchedFromBaseSelector];
    summary4 = [patchedFromBaseSelector2 summary];
  }

  else
  {
    summary4 = @"N";
  }

  patchedFromBaseFilesystemBytes = [(MANAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
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
  stagedFromOSVersion = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MANAutoAssetStatus *)self stagedFromOSVersion];
  }

  stagedFromBuildVersion = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MANAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    stagedFromBuildVersion2 = @"N";
  }

  currentLockUsage = [(MANAutoAssetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v61 = [MANAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v61 = @"N";
  }

  availableForUseError = [(MANAutoAssetStatus *)self availableForUseError];
  v55 = stagedFromOSVersion;
  if (availableForUseError)
  {
    availableForUseError2 = [(MANAutoAssetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  patchingAttemptError = [(MANAutoAssetStatus *)self patchingAttemptError];
  v52 = stagedFromBuildVersion;
  if (patchingAttemptError)
  {
    patchingAttemptError2 = [(MANAutoAssetStatus *)self patchingAttemptError];
    checkedSummary2 = [patchingAttemptError2 checkedSummary];
  }

  else
  {
    checkedSummary2 = @"N";
  }

  newerVersionError = [(MANAutoAssetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    [(MANAutoAssetStatus *)self newerVersionError];
    v21 = v42 = patchedFromBaseSelector;
    [v21 checkedSummary];
    v44 = downloadProgress;
    v22 = newerVersionAttributes;
    v23 = availableForUseAttributes;
    v24 = notifications;
    v26 = v25 = assetSelector;
    v58 = [NSMutableString stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v61, checkedSummary, checkedSummary2, v26];

    assetSelector = v25;
    notifications = v24;
    availableForUseAttributes = v23;
    newerVersionAttributes = v22;
    downloadProgress = v44;

    patchedFromBaseSelector = v42;
  }

  else
  {
    v58 = [NSMutableString stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v61, checkedSummary, checkedSummary2, @"N"];
  }

  if (patchingAttemptError)
  {
  }

  if (availableForUseError)
  {
  }

  if (currentLockUsage)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (patchedFromBaseSelector)
  {
  }

  if (downloadProgress)
  {
  }

  availableForUseAttributes2 = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes2)
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

- (void)getAvailableForUseAttributesAssetFormat:(id *)format assetBuild:(id *)build minOSVersion:(id *)version maxOSVersion:(id *)sVersion prerequisiteBuilds:(id *)builds
{
  availableForUseAttributes = [(MANAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes)
  {
    if (format)
    {
      availableForUseAttributes2 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *format = [availableForUseAttributes2 safeStringForKey:@"AssetFormat"];

      if (!*format)
      {
        *format = @"StreamingZip";
      }
    }

    if (build)
    {
      availableForUseAttributes3 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *build = [availableForUseAttributes3 safeStringForKey:@"Build"];
    }

    if (version)
    {
      availableForUseAttributes4 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *version = [availableForUseAttributes4 safeStringForKey:@"_MinOSVersion"];
    }

    if (sVersion)
    {
      availableForUseAttributes5 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      *sVersion = [availableForUseAttributes5 safeStringForKey:@"_MaxOSVersion"];
    }

    if (builds)
    {
      availableForUseAttributes6 = [(MANAutoAssetStatus *)self availableForUseAttributes];
      v19 = [availableForUseAttributes6 safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];

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

        *builds = v23;
      }

      else
      {
        *builds = 0;
      }
    }
  }
}

+ (id)newCurrentLockUsageSummary:(id)summary
{
  summaryCopy = summary;
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

  currentLockUsage = [summaryCopy currentLockUsage];

  if (currentLockUsage)
  {
    currentLockUsage = [[NSMutableString alloc] initWithString:@"{"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [summaryCopy currentLockUsage];
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
          currentLockUsage2 = [summaryCopy currentLockUsage];
          v13 = [currentLockUsage2 safeIntegerForKey:v11];

          if ((v9 & 1) == 0)
          {
            [currentLockUsage appendString:{@", "}];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [currentLockUsage appendFormat:@"%@:%ld", v11, v13];
          }

          else
          {
            [currentLockUsage appendFormat:@"?:%ld", v13, v15];
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

    [currentLockUsage appendString:@"}"];
  }

  return currentLockUsage;
}

@end