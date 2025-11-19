@interface MADAutoSetDescriptor
- (MADAutoSetDescriptor)initWithCoder:(id)a3;
- (id)copy;
- (id)downloadedEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4;
- (id)firstAssetType;
- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withDiscoveredAtomicInstance:(id)a5 withDiscoveredAtomicEntries:(id)a6;
- (id)newIdentityName;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetDescriptor

- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withDiscoveredAtomicInstance:(id)a5 withDiscoveredAtomicEntries:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = MADAutoSetDescriptor;
  v15 = [(MADAutoSetDescriptor *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientDomainName, a3);
    objc_storeStrong(&v16->_assetSetIdentifier, a4);
    catalogCachedAssetSetID = v16->_catalogCachedAssetSetID;
    v16->_catalogCachedAssetSetID = 0;

    catalogDownloadedFromLive = v16->_catalogDownloadedFromLive;
    v16->_catalogDownloadedFromLive = 0;

    catalogLastTimeChecked = v16->_catalogLastTimeChecked;
    v16->_catalogLastTimeChecked = 0;

    catalogPostedDate = v16->_catalogPostedDate;
    v16->_catalogPostedDate = 0;

    requestedAutoAssetEntries = v16->_requestedAutoAssetEntries;
    v16->_requestedAutoAssetEntries = 0;

    objc_storeStrong(&v16->_discoveredAtomicInstance, a5);
    objc_storeStrong(&v16->_discoveredAtomicEntries, a6);
    latestDownloadedAtomicInstance = v16->_latestDownloadedAtomicInstance;
    v16->_latestDownloadedAtomicInstance = 0;

    latestDowloadedAtomicInstanceEntries = v16->_latestDowloadedAtomicInstanceEntries;
    v16->_latestDowloadedAtomicInstanceEntries = 0;

    downloadedCatalogCachedAssetSetID = v16->_downloadedCatalogCachedAssetSetID;
    v16->_downloadedCatalogCachedAssetSetID = 0;

    downloadedCatalogDownloadedFromLive = v16->_downloadedCatalogDownloadedFromLive;
    v16->_downloadedCatalogDownloadedFromLive = 0;

    downloadedCatalogLastTimeChecked = v16->_downloadedCatalogLastTimeChecked;
    v16->_downloadedCatalogLastTimeChecked = 0;

    downloadedCatalogPostedDate = v16->_downloadedCatalogPostedDate;
    v16->_downloadedCatalogPostedDate = 0;

    *&v16->_isOnFilesystem = 0;
    v16->_neverBeenLocked = 1;
    *&v16->_secureOperationInProgress = 0;
    v16->_downloadedNetworkBytes = 0;
    v16->_downloadedFilesystemBytes = 0;
  }

  return v16;
}

- (MADAutoSetDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = MADAutoSetDescriptor;
  v5 = [(MADAutoSetDescriptor *)&v41 init];
  if (v5)
  {
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v43 count:2];
    v7 = [NSSet setWithArray:v6];

    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v42 count:2];
    v9 = [NSSet setWithArray:v8];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v20;

    v22 = [v4 decodeObjectOfClasses:v7 forKey:@"requestedAutoAssetEntries"];
    requestedAutoAssetEntries = v5->_requestedAutoAssetEntries;
    v5->_requestedAutoAssetEntries = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v24;

    v26 = [v4 decodeObjectOfClasses:v9 forKey:@"discoveredAtomicEntries"];
    discoveredAtomicEntries = v5->_discoveredAtomicEntries;
    v5->_discoveredAtomicEntries = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v28;

    v30 = [v4 decodeObjectOfClasses:v9 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v38;

    v5->_isOnFilesystem = [v4 decodeBoolForKey:@"isOnFilesystem"];
    v5->_onFilesystemIncomplete = [v4 decodeBoolForKey:@"onFilesystemIncomplete"];
    v5->_isDiscoveredFullyDownloaded = [v4 decodeBoolForKey:@"isDiscoveredFullyDownloaded"];
    v5->_atomicInstanceDownloadedNotified = [v4 decodeBoolForKey:@"atomicInstanceDownloadedNotified"];
    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_secureOperationInProgress = [v4 decodeBoolForKey:@"secureOperationInProgress"];
    v5->_secureOperationEliminating = [v4 decodeBoolForKey:@"secureOperationEliminating"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(MADAutoSetDescriptor *)self clientDomainName];
  [v19 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  [v19 encodeObject:v5 forKey:@"asetSetIdentifier"];

  v6 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  [v19 encodeObject:v6 forKey:@"catalogCachedAssetSetID"];

  v7 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  [v19 encodeObject:v7 forKey:@"catalogDownloadedFromLive"];

  v8 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  [v19 encodeObject:v8 forKey:@"catalogLastTimeChecked"];

  v9 = [(MADAutoSetDescriptor *)self catalogPostedDate];
  [v19 encodeObject:v9 forKey:@"catalogPostedDate"];

  v10 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  [v19 encodeObject:v10 forKey:@"requestedAutoAssetEntries"];

  v11 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  [v19 encodeObject:v11 forKey:@"discoveredAtomicInstance"];

  v12 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  [v19 encodeObject:v12 forKey:@"discoveredAtomicEntries"];

  v13 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  [v19 encodeObject:v13 forKey:@"latestDownloadedAtomicInstance"];

  v14 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  [v19 encodeObject:v14 forKey:@"latestDowloadedAtomicInstanceEntries"];

  v15 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  [v19 encodeObject:v15 forKey:@"downloadedCatalogCachedAssetSetID"];

  v16 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  [v19 encodeObject:v16 forKey:@"downloadedCatalogDownloadedFromLive"];

  v17 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  [v19 encodeObject:v17 forKey:@"downloadedCatalogLastTimeChecked"];

  v18 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  [v19 encodeObject:v18 forKey:@"downloadedCatalogPostedDate"];

  [v19 encodeBool:-[MADAutoSetDescriptor isOnFilesystem](self forKey:{"isOnFilesystem"), @"isOnFilesystem"}];
  [v19 encodeBool:-[MADAutoSetDescriptor onFilesystemIncomplete](self forKey:{"onFilesystemIncomplete"), @"onFilesystemIncomplete"}];
  [v19 encodeBool:-[MADAutoSetDescriptor isDiscoveredFullyDownloaded](self forKey:{"isDiscoveredFullyDownloaded"), @"isDiscoveredFullyDownloaded"}];
  [v19 encodeBool:-[MADAutoSetDescriptor atomicInstanceDownloadedNotified](self forKey:{"atomicInstanceDownloadedNotified"), @"atomicInstanceDownloadedNotified"}];
  [v19 encodeBool:-[MADAutoSetDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v19 encodeBool:-[MADAutoSetDescriptor secureOperationInProgress](self forKey:{"secureOperationInProgress"), @"secureOperationInProgress"}];
  [v19 encodeBool:-[MADAutoSetDescriptor secureOperationEliminating](self forKey:{"secureOperationEliminating"), @"secureOperationEliminating"}];
  [v19 encodeBool:-[MADAutoSetDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [v19 encodeInteger:-[MADAutoSetDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v19 encodeInteger:-[MADAutoSetDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [v19 encodeBool:-[MADAutoSetDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)downloadedEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4
{
  v6 = a3;
  v23 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      v10 = 0;
      v22 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = p_weak_ivar_lyt[223];
        v13 = [v11 fullAssetSelector];
        v14 = [v13 assetType];
        if ([v12 stringIsEqual:v14 to:v6])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 fullAssetSelector];
          v16 = v8;
          v17 = p_weak_ivar_lyt;
          v19 = v18 = v6;
          v20 = [v19 assetSpecifier];
          LODWORD(v15) = [v15 stringIsEqual:v20 to:v23];

          v6 = v18;
          p_weak_ivar_lyt = v17;
          v8 = v16;
          v7 = v22;

          if (v15)
          {
            v7 = v11;
            goto LABEL_12;
          }
        }

        else
        {
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (id)copy
{
  v3 = [MADAutoSetDescriptor alloc];
  v4 = [(MADAutoSetDescriptor *)self clientDomainName];
  v5 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  v6 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  v7 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v8 = [(MADAutoSetDescriptor *)v3 initForClientDomainName:v4 forAssetSetIdentifier:v5 withDiscoveredAtomicInstance:v6 withDiscoveredAtomicEntries:v7];

  v9 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  [v8 setCatalogCachedAssetSetID:v9];

  v10 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  [v8 setCatalogDownloadedFromLive:v10];

  v11 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  [v8 setCatalogLastTimeChecked:v11];

  v12 = [(MADAutoSetDescriptor *)self catalogPostedDate];
  [v8 setCatalogPostedDate:v12];

  v13 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v14 = [v13 copy];
  [v8 setRequestedAutoAssetEntries:v14];

  v15 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  [v8 setLatestDownloadedAtomicInstance:v15];

  v16 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v17 = [v16 copy];
  [v8 setLatestDowloadedAtomicInstanceEntries:v17];

  v18 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  [v8 setDownloadedCatalogCachedAssetSetID:v18];

  v19 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  [v8 setDownloadedCatalogDownloadedFromLive:v19];

  v20 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  [v8 setDownloadedCatalogLastTimeChecked:v20];

  v21 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  [v8 setDownloadedCatalogPostedDate:v21];

  [v8 setIsOnFilesystem:{-[MADAutoSetDescriptor isOnFilesystem](self, "isOnFilesystem")}];
  [v8 setOnFilesystemIncomplete:{-[MADAutoSetDescriptor onFilesystemIncomplete](self, "onFilesystemIncomplete")}];
  [v8 setIsDiscoveredFullyDownloaded:{-[MADAutoSetDescriptor isDiscoveredFullyDownloaded](self, "isDiscoveredFullyDownloaded")}];
  [v8 setAtomicInstanceDownloadedNotified:{-[MADAutoSetDescriptor atomicInstanceDownloadedNotified](self, "atomicInstanceDownloadedNotified")}];
  [v8 setNeverBeenLocked:{-[MADAutoSetDescriptor neverBeenLocked](self, "neverBeenLocked")}];
  [v8 setSecureOperationInProgress:{-[MADAutoSetDescriptor secureOperationInProgress](self, "secureOperationInProgress")}];
  [v8 setSecureOperationEliminating:{-[MADAutoSetDescriptor secureOperationEliminating](self, "secureOperationEliminating")}];
  [v8 setDownloadUserInitiated:{-[MADAutoSetDescriptor downloadUserInitiated](self, "downloadUserInitiated")}];
  [v8 setDownloadedNetworkBytes:{-[MADAutoSetDescriptor downloadedNetworkBytes](self, "downloadedNetworkBytes")}];
  [v8 setDownloadedFilesystemBytes:{-[MADAutoSetDescriptor downloadedFilesystemBytes](self, "downloadedFilesystemBytes")}];
  [v8 setStagedPriorToAvailable:{-[MADAutoSetDescriptor stagedPriorToAvailable](self, "stagedPriorToAvailable")}];
  return v8;
}

- (id)summary
{
  v3 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    v6 = [v5 objectAtIndex:0];

    if (v6)
    {
      v7 = [NSString alloc];
      v8 = [v6 fullAssetSelector];
      v9 = [v8 assetSpecifier];
      v10 = [v6 fullAssetSelector];
      v11 = [v10 assetVersion];
      v47 = [v7 initWithFormat:@"{[0]%@:%@}", v9, v11];
    }

    else
    {
      v47 = &stru_4BD3F0;
    }
  }

  else
  {
    v47 = &stru_4BD3F0;
  }

  v12 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
    v15 = [v14 objectAtIndex:0];

    if (v15)
    {
      v16 = [NSString alloc];
      v17 = [v15 fullAssetSelector];
      v18 = [v17 assetSpecifier];
      v19 = [v15 fullAssetSelector];
      v20 = [v19 assetVersion];
      v21 = [v16 initWithFormat:@"{[0]%@:%@}", v18, v20];
    }

    else
    {
      v21 = &stru_4BD3F0;
    }

    v46 = v21;
  }

  else
  {
    v46 = &stru_4BD3F0;
  }

  v43 = [(MADAutoSetDescriptor *)self newIdentityName];
  v45 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  if (v45)
  {
    v22 = @"Y";
  }

  else
  {
    v22 = @"N";
  }

  v42 = v22;
  v44 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v40 = [v44 count];
  v39 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  v41 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v38 = [v41 count];
  v23 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v37 = [v23 count];
  if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    v24 = @"Y";
  }

  else
  {
    v24 = @"N";
  }

  v36 = v24;
  if ([(MADAutoSetDescriptor *)self atomicInstanceDownloadedNotified])
  {
    v25 = @"Y";
  }

  else
  {
    v25 = @"N";
  }

  v35 = v25;
  if ([(MADAutoSetDescriptor *)self isOnFilesystem])
  {
    v26 = @"Y";
  }

  else
  {
    v26 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self onFilesystemIncomplete])
  {
    v27 = @"Y";
  }

  else
  {
    v27 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self neverBeenLocked])
  {
    v28 = @"Y";
  }

  else
  {
    v28 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self secureOperationInProgress])
  {
    v29 = @"Y";
  }

  else
  {
    v29 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self secureOperationEliminating])
  {
    v30 = @"Y";
  }

  else
  {
    v30 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self downloadUserInitiated])
  {
    v31 = @"Y";
  }

  else
  {
    v31 = @"N";
  }

  if ([(MADAutoSetDescriptor *)self stagedPriorToAvailable])
  {
    v32 = @"Y";
  }

  else
  {
    v32 = @"N";
  }

  v33 = [NSString stringWithFormat:@"[%@ | instance latestDownloaded:%@(entries:%ld)%@, discovered:%@(entries:%ld)%@, requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@]", v43, v42, v40, v47, v39, v38, v46, v37, v36, v35, v26, v27, v28, v29, v30, v31, v32];

  return v33;
}

- (id)newSummaryWithoutEntryID
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v4 = @"N";
  if (![(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    v17 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];

    v139 = [NSString alloc];
    v147 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
    if (v147)
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v136 = v18;
    v146 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    v133 = [v146 count];
    v19 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
    v137 = v3;
    v148 = v19;
    if (v17)
    {
      if (v19)
      {
        v20 = @"Y";
      }

      else
      {
        v20 = @"N";
      }

      v117 = v20;
      v145 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
      v114 = [v145 count];
      v144 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
      v108 = [v144 count];
      if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
      {
        v21 = @"Y";
      }

      else
      {
        v21 = @"N";
      }

      v105 = v21;
      if ([(MADAutoSetDescriptor *)self atomicInstanceDownloadedNotified])
      {
        v22 = @"Y";
      }

      else
      {
        v22 = @"N";
      }

      v102 = v22;
      if ([(MADAutoSetDescriptor *)self isOnFilesystem])
      {
        v23 = @"Y";
      }

      else
      {
        v23 = @"N";
      }

      v99 = v23;
      if ([(MADAutoSetDescriptor *)self onFilesystemIncomplete])
      {
        v24 = @"Y";
      }

      else
      {
        v24 = @"N";
      }

      v96 = v24;
      if ([(MADAutoSetDescriptor *)self neverBeenLocked])
      {
        v25 = @"Y";
      }

      else
      {
        v25 = @"N";
      }

      v93 = v25;
      if ([(MADAutoSetDescriptor *)self secureOperationInProgress])
      {
        v26 = @"Y";
      }

      else
      {
        v26 = @"N";
      }

      v90 = v26;
      if ([(MADAutoSetDescriptor *)self secureOperationEliminating])
      {
        v27 = @"Y";
      }

      else
      {
        v27 = @"N";
      }

      v87 = v27;
      if ([(MADAutoSetDescriptor *)self downloadUserInitiated])
      {
        v28 = @"Y";
      }

      else
      {
        v28 = @"N";
      }

      v84 = v28;
      if ([(MADAutoSetDescriptor *)self stagedPriorToAvailable])
      {
        v29 = @"Y";
      }

      else
      {
        v29 = @"N";
      }

      v82 = v29;
      v30 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      if (v30)
      {
        v4 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      }

      v31 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      if (v31)
      {
        v131 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      }

      else
      {
        v131 = @"N";
      }

      v112 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
      if (v112)
      {
        v79 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
        v129 = [v3 stringFromDate:?];
      }

      else
      {
        v129 = @"N";
      }

      v56 = [(MADAutoSetDescriptor *)self catalogPostedDate];
      if (v56)
      {
        v78 = [(MADAutoSetDescriptor *)self catalogPostedDate];
        v126 = [v3 stringFromDate:?];
      }

      else
      {
        v126 = @"N";
      }

      v57 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      if (v57)
      {
        v123 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      }

      else
      {
        v123 = @"N";
      }

      v58 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      v120 = v31;
      if (v58)
      {
        v59 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      }

      else
      {
        v59 = @"N";
      }

      v142 = v30;
      v60 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
      if (v60)
      {
        v77 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
        v61 = [v137 stringFromDate:?];
      }

      else
      {
        v61 = @"N";
      }

      v62 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
      if (v62)
      {
        v63 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
        v64 = [v137 stringFromDate:v63];
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v117, v114, v108, v105, v102, v99, v96, v93, v90, v87, v84, v82, v4, v131, v129, v126, v123, v59, v61, v64];
      }

      else
      {
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v117, v114, v108, v105, v102, v99, v96, v93, v90, v87, v84, v82, v4, v131, v129, v126, v123, v59, v61, @"N"];
      }

      v53 = v120;
      if (v60)
      {
      }

      if (v58)
      {
      }

      v54 = v142;
      if (v57)
      {
      }

      if (v56)
      {
      }

      v48 = v137;
      v65 = v112;
      if (!v112)
      {
        goto LABEL_195;
      }

      v66 = v79;
    }

    else
    {
      v145 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
      v118 = [v145 count];
      v144 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
      v110 = [v144 count];
      if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
      {
        v33 = @"Y";
      }

      else
      {
        v33 = @"N";
      }

      v109 = v33;
      if ([(MADAutoSetDescriptor *)self atomicInstanceDownloadedNotified])
      {
        v34 = @"Y";
      }

      else
      {
        v34 = @"N";
      }

      v106 = v34;
      if ([(MADAutoSetDescriptor *)self isOnFilesystem])
      {
        v35 = @"Y";
      }

      else
      {
        v35 = @"N";
      }

      v103 = v35;
      if ([(MADAutoSetDescriptor *)self onFilesystemIncomplete])
      {
        v36 = @"Y";
      }

      else
      {
        v36 = @"N";
      }

      v100 = v36;
      if ([(MADAutoSetDescriptor *)self neverBeenLocked])
      {
        v37 = @"Y";
      }

      else
      {
        v37 = @"N";
      }

      v97 = v37;
      if ([(MADAutoSetDescriptor *)self secureOperationInProgress])
      {
        v38 = @"Y";
      }

      else
      {
        v38 = @"N";
      }

      v94 = v38;
      if ([(MADAutoSetDescriptor *)self secureOperationEliminating])
      {
        v39 = @"Y";
      }

      else
      {
        v39 = @"N";
      }

      v91 = v39;
      if ([(MADAutoSetDescriptor *)self downloadUserInitiated])
      {
        v40 = @"Y";
      }

      else
      {
        v40 = @"N";
      }

      v88 = v40;
      if ([(MADAutoSetDescriptor *)self stagedPriorToAvailable])
      {
        v41 = @"Y";
      }

      else
      {
        v41 = @"N";
      }

      v85 = v41;
      v42 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      if (v42)
      {
        v4 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      }

      v43 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      if (v43)
      {
        v131 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      }

      else
      {
        v131 = @"N";
      }

      v115 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
      if (v115)
      {
        v80 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
        v130 = [v3 stringFromDate:?];
      }

      else
      {
        v130 = @"N";
      }

      v67 = [(MADAutoSetDescriptor *)self catalogPostedDate];
      if (v67)
      {
        v79 = [(MADAutoSetDescriptor *)self catalogPostedDate];
        v127 = [v3 stringFromDate:?];
      }

      else
      {
        v127 = @"N";
      }

      v68 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      if (v68)
      {
        v124 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      }

      else
      {
        v124 = @"N";
      }

      v69 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      v121 = v43;
      if (v69)
      {
        v70 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      }

      else
      {
        v70 = @"N";
      }

      v143 = v42;
      v71 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
      if (v71)
      {
        v78 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
        v72 = [v137 stringFromDate:?];
      }

      else
      {
        v72 = @"N";
      }

      v73 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
      if (v73)
      {
        v74 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
        v75 = [v137 stringFromDate:v74];
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v148, v118, v110, v109, v106, v103, v100, v97, v94, v91, v88, v85, v4, v131, v130, v127, v124, v70, v72, v75];
      }

      else
      {
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v148, v118, v110, v109, v106, v103, v100, v97, v94, v91, v88, v85, v4, v131, v130, v127, v124, v70, v72, @"N"];
      }

      v53 = v121;
      if (v71)
      {
      }

      if (v69)
      {
      }

      v54 = v143;
      if (v68)
      {
      }

      if (v67)
      {
      }

      v48 = v137;
      v65 = v115;
      if (!v115)
      {
        goto LABEL_195;
      }

      v66 = v80;
    }

LABEL_195:
    if (!v53)
    {
      goto LABEL_198;
    }

    v55 = v131;
    goto LABEL_197;
  }

  v138 = [NSString alloc];
  v147 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  if (v147)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v122 = v5;
  v146 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v116 = [v146 count];
  v148 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  v145 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v113 = [v145 count];
  v144 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v107 = [v144 count];
  if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v104 = v6;
  if ([(MADAutoSetDescriptor *)self atomicInstanceDownloadedNotified])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v101 = v7;
  if ([(MADAutoSetDescriptor *)self isOnFilesystem])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v98 = v8;
  if ([(MADAutoSetDescriptor *)self onFilesystemIncomplete])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v95 = v9;
  if ([(MADAutoSetDescriptor *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v92 = v10;
  if ([(MADAutoSetDescriptor *)self secureOperationInProgress])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v89 = v11;
  if ([(MADAutoSetDescriptor *)self secureOperationEliminating])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v86 = v12;
  if ([(MADAutoSetDescriptor *)self downloadUserInitiated])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v83 = v13;
  if ([(MADAutoSetDescriptor *)self stagedPriorToAvailable])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v81 = v14;
  v15 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  if (v15)
  {
    v4 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  }

  v16 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  if (v16)
  {
    v135 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  }

  else
  {
    v135 = @"N";
  }

  v32 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  if (v32)
  {
    v79 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
    v134 = [v3 stringFromDate:?];
  }

  else
  {
    v134 = @"N";
  }

  v44 = [(MADAutoSetDescriptor *)self catalogPostedDate];
  if (v44)
  {
    v78 = [(MADAutoSetDescriptor *)self catalogPostedDate];
    v132 = [v3 stringFromDate:?];
  }

  else
  {
    v132 = @"N";
  }

  v45 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  v111 = v32;
  if (v45)
  {
    v128 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  }

  else
  {
    v128 = @"N";
  }

  v46 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  v119 = v16;
  if (v46)
  {
    v125 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    v125 = @"N";
  }

  v141 = v15;
  v47 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  if (v47)
  {
    [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
    v77 = v48 = v3;
    v49 = [v3 stringFromDate:?];
  }

  else
  {
    v48 = v3;
    v49 = @"N";
  }

  v50 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  if (v50)
  {
    v51 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
    v52 = [v48 stringFromDate:v51];
    v140 = [v138 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v122, v116, v148, v113, v107, v104, v101, v98, v95, v92, v89, v86, v83, v81, v4, v135, v134, v132, v128, v125, v49, v52];
  }

  else
  {
    v140 = [v138 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v122, v116, v148, v113, v107, v104, v101, v98, v95, v92, v89, v86, v83, v81, v4, v135, v134, v132, v128, v125, v49, @"N"];
  }

  v53 = v119;
  if (v47)
  {
  }

  if (v46)
  {
  }

  v54 = v141;
  if (v45)
  {
  }

  if (v44)
  {
  }

  if (v111)
  {
  }

  if (v119)
  {
    v55 = v135;
LABEL_197:
  }

LABEL_198:

  if (v54)
  {
  }

  return v140;
}

- (id)newIdentityName
{
  v3 = [(MADAutoSetDescriptor *)self firstAssetType];
  if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    if ([(MADAutoSetDescriptor *)self isOnFilesystem])
    {
      v4 = [(MADAutoSetDescriptor *)self onFilesystemIncomplete];
      v5 = [NSString alloc];
      v6 = [(MADAutoSetDescriptor *)self clientDomainName];
      v7 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
      v8 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
      v9 = v8;
      if (v4)
      {
        v10 = [v5 initWithFormat:@"SD_INCOMPLETE[%@](domain:%@|setID:%@|atomic:%@)", v3, v6, v7, v8];
      }

      else
      {
        v10 = [v5 initWithFormat:@"SD_DOWNLOADED[%@](domain:%@|setID:%@|atomic:%@)", v3, v6, v7, v8];
      }
    }

    else
    {
      v14 = [NSString alloc];
      v6 = [(MADAutoSetDescriptor *)self clientDomainName];
      v7 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
      v9 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
      v10 = [v14 initWithFormat:@"SD_GONE[%@](domain:%@|setID:%@|atomic:%@)", v3, v6, v7, v9];
    }

    goto LABEL_10;
  }

  v11 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];

  v12 = [NSString alloc];
  v6 = [(MADAutoSetDescriptor *)self clientDomainName];
  v13 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  v7 = v13;
  if (v11)
  {
    v9 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
    v10 = [v12 initWithFormat:@"SD_DISCOVERED[%@](domain:%@|setID:%@|atomic:%@)", v3, v6, v7, v9];
LABEL_10:
    v15 = v10;

    goto LABEL_11;
  }

  v15 = [v12 initWithFormat:@"SD_LOOKUP[%@](domain:%@|setID:%@)", v3, v6, v13];
LABEL_11:

  return v15;
}

- (id)firstAssetType
{
  v3 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    goto LABEL_5;
  }

  v6 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v7 = [v6 count];

  if (v7)
  {
    v5 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
LABEL_5:
    v8 = v5;
    v9 = [v5 objectAtIndex:0];

    if (v9)
    {
      v10 = [v9 fullAssetSelector];
LABEL_7:
      v11 = v10;
      v12 = [v10 assetType];

LABEL_12:
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
    v9 = [v15 objectAtIndex:0];

    if (v9)
    {
      v10 = [v9 assetSelector];
      goto LABEL_7;
    }

LABEL_11:
    v12 = @"EMPTY";
    goto LABEL_12;
  }

  v12 = @"EMPTY";
LABEL_13:

  return v12;
}

@end