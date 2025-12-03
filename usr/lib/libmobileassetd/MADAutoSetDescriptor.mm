@interface MADAutoSetDescriptor
- (MADAutoSetDescriptor)initWithCoder:(id)coder;
- (id)copy;
- (id)downloadedEntryForAssetType:(id)type forAssetSpecifier:(id)specifier;
- (id)firstAssetType;
- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withDiscoveredAtomicInstance:(id)instance withDiscoveredAtomicEntries:(id)entries;
- (id)newIdentityName;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetDescriptor

- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withDiscoveredAtomicInstance:(id)instance withDiscoveredAtomicEntries:(id)entries
{
  nameCopy = name;
  identifierCopy = identifier;
  instanceCopy = instance;
  entriesCopy = entries;
  v29.receiver = self;
  v29.super_class = MADAutoSetDescriptor;
  v15 = [(MADAutoSetDescriptor *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientDomainName, name);
    objc_storeStrong(&v16->_assetSetIdentifier, identifier);
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

    objc_storeStrong(&v16->_discoveredAtomicInstance, instance);
    objc_storeStrong(&v16->_discoveredAtomicEntries, entries);
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

- (MADAutoSetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v20;

    v22 = [coderCopy decodeObjectOfClasses:v7 forKey:@"requestedAutoAssetEntries"];
    requestedAutoAssetEntries = v5->_requestedAutoAssetEntries;
    v5->_requestedAutoAssetEntries = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v24;

    v26 = [coderCopy decodeObjectOfClasses:v9 forKey:@"discoveredAtomicEntries"];
    discoveredAtomicEntries = v5->_discoveredAtomicEntries;
    v5->_discoveredAtomicEntries = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v28;

    v30 = [coderCopy decodeObjectOfClasses:v9 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v38;

    v5->_isOnFilesystem = [coderCopy decodeBoolForKey:@"isOnFilesystem"];
    v5->_onFilesystemIncomplete = [coderCopy decodeBoolForKey:@"onFilesystemIncomplete"];
    v5->_isDiscoveredFullyDownloaded = [coderCopy decodeBoolForKey:@"isDiscoveredFullyDownloaded"];
    v5->_atomicInstanceDownloadedNotified = [coderCopy decodeBoolForKey:@"atomicInstanceDownloadedNotified"];
    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_secureOperationInProgress = [coderCopy decodeBoolForKey:@"secureOperationInProgress"];
    v5->_secureOperationEliminating = [coderCopy decodeBoolForKey:@"secureOperationEliminating"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MADAutoSetDescriptor *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"asetSetIdentifier"];

  catalogCachedAssetSetID = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  [coderCopy encodeObject:catalogCachedAssetSetID forKey:@"catalogCachedAssetSetID"];

  catalogDownloadedFromLive = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  [coderCopy encodeObject:catalogDownloadedFromLive forKey:@"catalogDownloadedFromLive"];

  catalogLastTimeChecked = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  [coderCopy encodeObject:catalogLastTimeChecked forKey:@"catalogLastTimeChecked"];

  catalogPostedDate = [(MADAutoSetDescriptor *)self catalogPostedDate];
  [coderCopy encodeObject:catalogPostedDate forKey:@"catalogPostedDate"];

  requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  [coderCopy encodeObject:requestedAutoAssetEntries forKey:@"requestedAutoAssetEntries"];

  discoveredAtomicInstance = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  [coderCopy encodeObject:discoveredAtomicInstance forKey:@"discoveredAtomicInstance"];

  discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  [coderCopy encodeObject:discoveredAtomicEntries forKey:@"discoveredAtomicEntries"];

  latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  [coderCopy encodeObject:latestDownloadedAtomicInstance forKey:@"latestDownloadedAtomicInstance"];

  latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  [coderCopy encodeObject:latestDowloadedAtomicInstanceEntries forKey:@"latestDowloadedAtomicInstanceEntries"];

  downloadedCatalogCachedAssetSetID = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  [coderCopy encodeObject:downloadedCatalogCachedAssetSetID forKey:@"downloadedCatalogCachedAssetSetID"];

  downloadedCatalogDownloadedFromLive = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  [coderCopy encodeObject:downloadedCatalogDownloadedFromLive forKey:@"downloadedCatalogDownloadedFromLive"];

  downloadedCatalogLastTimeChecked = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  [coderCopy encodeObject:downloadedCatalogLastTimeChecked forKey:@"downloadedCatalogLastTimeChecked"];

  downloadedCatalogPostedDate = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  [coderCopy encodeObject:downloadedCatalogPostedDate forKey:@"downloadedCatalogPostedDate"];

  [coderCopy encodeBool:-[MADAutoSetDescriptor isOnFilesystem](self forKey:{"isOnFilesystem"), @"isOnFilesystem"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor onFilesystemIncomplete](self forKey:{"onFilesystemIncomplete"), @"onFilesystemIncomplete"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor isDiscoveredFullyDownloaded](self forKey:{"isDiscoveredFullyDownloaded"), @"isDiscoveredFullyDownloaded"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor atomicInstanceDownloadedNotified](self forKey:{"atomicInstanceDownloadedNotified"), @"atomicInstanceDownloadedNotified"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor secureOperationInProgress](self forKey:{"secureOperationInProgress"), @"secureOperationInProgress"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor secureOperationEliminating](self forKey:{"secureOperationEliminating"), @"secureOperationEliminating"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [coderCopy encodeInteger:-[MADAutoSetDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MADAutoSetDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [coderCopy encodeBool:-[MADAutoSetDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)downloadedEntryForAssetType:(id)type forAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
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
        fullAssetSelector = [v11 fullAssetSelector];
        assetType = [fullAssetSelector assetType];
        if ([v12 stringIsEqual:assetType to:typeCopy])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 fullAssetSelector];
          v16 = v8;
          v17 = p_weak_ivar_lyt;
          v19 = v18 = typeCopy;
          assetSpecifier = [v19 assetSpecifier];
          LODWORD(v15) = [v15 stringIsEqual:assetSpecifier to:specifierCopy];

          typeCopy = v18;
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
  clientDomainName = [(MADAutoSetDescriptor *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  discoveredAtomicInstance = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v8 = [(MADAutoSetDescriptor *)v3 initForClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier withDiscoveredAtomicInstance:discoveredAtomicInstance withDiscoveredAtomicEntries:discoveredAtomicEntries];

  catalogCachedAssetSetID = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  [v8 setCatalogCachedAssetSetID:catalogCachedAssetSetID];

  catalogDownloadedFromLive = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  [v8 setCatalogDownloadedFromLive:catalogDownloadedFromLive];

  catalogLastTimeChecked = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  [v8 setCatalogLastTimeChecked:catalogLastTimeChecked];

  catalogPostedDate = [(MADAutoSetDescriptor *)self catalogPostedDate];
  [v8 setCatalogPostedDate:catalogPostedDate];

  requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v14 = [requestedAutoAssetEntries copy];
  [v8 setRequestedAutoAssetEntries:v14];

  latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  [v8 setLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance];

  latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v17 = [latestDowloadedAtomicInstanceEntries copy];
  [v8 setLatestDowloadedAtomicInstanceEntries:v17];

  downloadedCatalogCachedAssetSetID = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  [v8 setDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID];

  downloadedCatalogDownloadedFromLive = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  [v8 setDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive];

  downloadedCatalogLastTimeChecked = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  [v8 setDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked];

  downloadedCatalogPostedDate = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  [v8 setDownloadedCatalogPostedDate:downloadedCatalogPostedDate];

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
  latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v4 = [latestDowloadedAtomicInstanceEntries count];

  if (v4)
  {
    latestDowloadedAtomicInstanceEntries2 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    v6 = [latestDowloadedAtomicInstanceEntries2 objectAtIndex:0];

    if (v6)
    {
      v7 = [NSString alloc];
      fullAssetSelector = [v6 fullAssetSelector];
      assetSpecifier = [fullAssetSelector assetSpecifier];
      fullAssetSelector2 = [v6 fullAssetSelector];
      assetVersion = [fullAssetSelector2 assetVersion];
      v47 = [v7 initWithFormat:@"{[0]%@:%@}", assetSpecifier, assetVersion];
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

  discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v13 = [discoveredAtomicEntries count];

  if (v13)
  {
    discoveredAtomicEntries2 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
    v15 = [discoveredAtomicEntries2 objectAtIndex:0];

    if (v15)
    {
      v16 = [NSString alloc];
      fullAssetSelector3 = [v15 fullAssetSelector];
      assetSpecifier2 = [fullAssetSelector3 assetSpecifier];
      fullAssetSelector4 = [v15 fullAssetSelector];
      assetVersion2 = [fullAssetSelector4 assetVersion];
      v21 = [v16 initWithFormat:@"{[0]%@:%@}", assetSpecifier2, assetVersion2];
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

  newIdentityName = [(MADAutoSetDescriptor *)self newIdentityName];
  latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    v22 = @"Y";
  }

  else
  {
    v22 = @"N";
  }

  v42 = v22;
  latestDowloadedAtomicInstanceEntries3 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v40 = [latestDowloadedAtomicInstanceEntries3 count];
  discoveredAtomicInstance = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  discoveredAtomicEntries3 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v38 = [discoveredAtomicEntries3 count];
  requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v37 = [requestedAutoAssetEntries count];
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

  v33 = [NSString stringWithFormat:@"[%@ | instance latestDownloaded:%@(entries:%ld)%@, discovered:%@(entries:%ld)%@, requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@]", newIdentityName, v42, v40, v47, discoveredAtomicInstance, v38, v46, v37, v36, v35, v26, v27, v28, v29, v30, v31, v32];

  return v33;
}

- (id)newSummaryWithoutEntryID
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  catalogCachedAssetSetID2 = @"N";
  if (![(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    discoveredAtomicInstance = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];

    v139 = [NSString alloc];
    latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
    if (latestDownloadedAtomicInstance)
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v136 = v18;
    latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    v133 = [latestDowloadedAtomicInstanceEntries count];
    discoveredAtomicInstance2 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
    v137 = v3;
    discoveredAtomicInstance3 = discoveredAtomicInstance2;
    if (discoveredAtomicInstance)
    {
      if (discoveredAtomicInstance2)
      {
        v20 = @"Y";
      }

      else
      {
        v20 = @"N";
      }

      v117 = v20;
      discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
      v114 = [discoveredAtomicEntries count];
      requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
      v108 = [requestedAutoAssetEntries count];
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
      catalogCachedAssetSetID = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      if (catalogCachedAssetSetID)
      {
        catalogCachedAssetSetID2 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      }

      catalogDownloadedFromLive = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      if (catalogDownloadedFromLive)
      {
        catalogDownloadedFromLive2 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      }

      else
      {
        catalogDownloadedFromLive2 = @"N";
      }

      catalogLastTimeChecked = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
      if (catalogLastTimeChecked)
      {
        catalogLastTimeChecked2 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
        v129 = [v3 stringFromDate:?];
      }

      else
      {
        v129 = @"N";
      }

      catalogPostedDate = [(MADAutoSetDescriptor *)self catalogPostedDate];
      if (catalogPostedDate)
      {
        catalogPostedDate2 = [(MADAutoSetDescriptor *)self catalogPostedDate];
        v126 = [v3 stringFromDate:?];
      }

      else
      {
        v126 = @"N";
      }

      downloadedCatalogCachedAssetSetID = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      if (downloadedCatalogCachedAssetSetID)
      {
        downloadedCatalogCachedAssetSetID2 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      }

      else
      {
        downloadedCatalogCachedAssetSetID2 = @"N";
      }

      downloadedCatalogDownloadedFromLive = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      v120 = catalogDownloadedFromLive;
      if (downloadedCatalogDownloadedFromLive)
      {
        downloadedCatalogDownloadedFromLive2 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      }

      else
      {
        downloadedCatalogDownloadedFromLive2 = @"N";
      }

      v142 = catalogCachedAssetSetID;
      downloadedCatalogLastTimeChecked = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
      if (downloadedCatalogLastTimeChecked)
      {
        downloadedCatalogLastTimeChecked2 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
        v61 = [v137 stringFromDate:?];
      }

      else
      {
        v61 = @"N";
      }

      downloadedCatalogPostedDate = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
      if (downloadedCatalogPostedDate)
      {
        downloadedCatalogPostedDate2 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
        v64 = [v137 stringFromDate:downloadedCatalogPostedDate2];
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v117, v114, v108, v105, v102, v99, v96, v93, v90, v87, v84, v82, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v129, v126, downloadedCatalogCachedAssetSetID2, downloadedCatalogDownloadedFromLive2, v61, v64];
      }

      else
      {
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, v117, v114, v108, v105, v102, v99, v96, v93, v90, v87, v84, v82, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v129, v126, downloadedCatalogCachedAssetSetID2, downloadedCatalogDownloadedFromLive2, v61, @"N"];
      }

      v53 = v120;
      if (downloadedCatalogLastTimeChecked)
      {
      }

      if (downloadedCatalogDownloadedFromLive)
      {
      }

      v54 = v142;
      if (downloadedCatalogCachedAssetSetID)
      {
      }

      if (catalogPostedDate)
      {
      }

      v48 = v137;
      v65 = catalogLastTimeChecked;
      if (!catalogLastTimeChecked)
      {
        goto LABEL_195;
      }

      v66 = catalogLastTimeChecked2;
    }

    else
    {
      discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
      v118 = [discoveredAtomicEntries count];
      requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
      v110 = [requestedAutoAssetEntries count];
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
      catalogCachedAssetSetID3 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      if (catalogCachedAssetSetID3)
      {
        catalogCachedAssetSetID2 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
      }

      catalogDownloadedFromLive3 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      if (catalogDownloadedFromLive3)
      {
        catalogDownloadedFromLive2 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
      }

      else
      {
        catalogDownloadedFromLive2 = @"N";
      }

      catalogLastTimeChecked3 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
      if (catalogLastTimeChecked3)
      {
        catalogLastTimeChecked4 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
        v130 = [v3 stringFromDate:?];
      }

      else
      {
        v130 = @"N";
      }

      catalogPostedDate3 = [(MADAutoSetDescriptor *)self catalogPostedDate];
      if (catalogPostedDate3)
      {
        catalogLastTimeChecked2 = [(MADAutoSetDescriptor *)self catalogPostedDate];
        v127 = [v3 stringFromDate:?];
      }

      else
      {
        v127 = @"N";
      }

      downloadedCatalogCachedAssetSetID3 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      if (downloadedCatalogCachedAssetSetID3)
      {
        downloadedCatalogCachedAssetSetID4 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
      }

      else
      {
        downloadedCatalogCachedAssetSetID4 = @"N";
      }

      downloadedCatalogDownloadedFromLive3 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      v121 = catalogDownloadedFromLive3;
      if (downloadedCatalogDownloadedFromLive3)
      {
        downloadedCatalogDownloadedFromLive4 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
      }

      else
      {
        downloadedCatalogDownloadedFromLive4 = @"N";
      }

      v143 = catalogCachedAssetSetID3;
      downloadedCatalogLastTimeChecked3 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
      if (downloadedCatalogLastTimeChecked3)
      {
        catalogPostedDate2 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
        v72 = [v137 stringFromDate:?];
      }

      else
      {
        v72 = @"N";
      }

      downloadedCatalogPostedDate3 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
      if (downloadedCatalogPostedDate3)
      {
        downloadedCatalogPostedDate4 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
        v75 = [v137 stringFromDate:downloadedCatalogPostedDate4];
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, discoveredAtomicInstance3, v118, v110, v109, v106, v103, v100, v97, v94, v91, v88, v85, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v130, v127, downloadedCatalogCachedAssetSetID4, downloadedCatalogDownloadedFromLive4, v72, v75];
      }

      else
      {
        v140 = [v139 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v136, v133, discoveredAtomicInstance3, v118, v110, v109, v106, v103, v100, v97, v94, v91, v88, v85, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v130, v127, downloadedCatalogCachedAssetSetID4, downloadedCatalogDownloadedFromLive4, v72, @"N"];
      }

      v53 = v121;
      if (downloadedCatalogLastTimeChecked3)
      {
      }

      if (downloadedCatalogDownloadedFromLive3)
      {
      }

      v54 = v143;
      if (downloadedCatalogCachedAssetSetID3)
      {
      }

      if (catalogPostedDate3)
      {
      }

      v48 = v137;
      v65 = catalogLastTimeChecked3;
      if (!catalogLastTimeChecked3)
      {
        goto LABEL_195;
      }

      v66 = catalogLastTimeChecked4;
    }

LABEL_195:
    if (!v53)
    {
      goto LABEL_198;
    }

    v55 = catalogDownloadedFromLive2;
    goto LABEL_197;
  }

  v138 = [NSString alloc];
  latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v122 = v5;
  latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v116 = [latestDowloadedAtomicInstanceEntries count];
  discoveredAtomicInstance3 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
  discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v113 = [discoveredAtomicEntries count];
  requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v107 = [requestedAutoAssetEntries count];
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
  catalogCachedAssetSetID4 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  if (catalogCachedAssetSetID4)
  {
    catalogCachedAssetSetID2 = [(MADAutoSetDescriptor *)self catalogCachedAssetSetID];
  }

  catalogDownloadedFromLive4 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  if (catalogDownloadedFromLive4)
  {
    catalogDownloadedFromLive5 = [(MADAutoSetDescriptor *)self catalogDownloadedFromLive];
  }

  else
  {
    catalogDownloadedFromLive5 = @"N";
  }

  catalogLastTimeChecked5 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
  if (catalogLastTimeChecked5)
  {
    catalogLastTimeChecked2 = [(MADAutoSetDescriptor *)self catalogLastTimeChecked];
    v134 = [v3 stringFromDate:?];
  }

  else
  {
    v134 = @"N";
  }

  catalogPostedDate4 = [(MADAutoSetDescriptor *)self catalogPostedDate];
  if (catalogPostedDate4)
  {
    catalogPostedDate2 = [(MADAutoSetDescriptor *)self catalogPostedDate];
    v132 = [v3 stringFromDate:?];
  }

  else
  {
    v132 = @"N";
  }

  downloadedCatalogCachedAssetSetID5 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  v111 = catalogLastTimeChecked5;
  if (downloadedCatalogCachedAssetSetID5)
  {
    downloadedCatalogCachedAssetSetID6 = [(MADAutoSetDescriptor *)self downloadedCatalogCachedAssetSetID];
  }

  else
  {
    downloadedCatalogCachedAssetSetID6 = @"N";
  }

  downloadedCatalogDownloadedFromLive5 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  v119 = catalogDownloadedFromLive4;
  if (downloadedCatalogDownloadedFromLive5)
  {
    downloadedCatalogDownloadedFromLive6 = [(MADAutoSetDescriptor *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    downloadedCatalogDownloadedFromLive6 = @"N";
  }

  v141 = catalogCachedAssetSetID4;
  downloadedCatalogLastTimeChecked4 = [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
  if (downloadedCatalogLastTimeChecked4)
  {
    [(MADAutoSetDescriptor *)self downloadedCatalogLastTimeChecked];
    downloadedCatalogLastTimeChecked2 = v48 = v3;
    v49 = [v3 stringFromDate:?];
  }

  else
  {
    v48 = v3;
    v49 = @"N";
  }

  downloadedCatalogPostedDate5 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
  if (downloadedCatalogPostedDate5)
  {
    downloadedCatalogPostedDate6 = [(MADAutoSetDescriptor *)self downloadedCatalogPostedDate];
    v52 = [v48 stringFromDate:downloadedCatalogPostedDate6];
    v140 = [v138 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v122, v116, discoveredAtomicInstance3, v113, v107, v104, v101, v98, v95, v92, v89, v86, v83, v81, catalogCachedAssetSetID2, catalogDownloadedFromLive5, v134, v132, downloadedCatalogCachedAssetSetID6, downloadedCatalogDownloadedFromLive6, v49, v52];
  }

  else
  {
    v140 = [v138 initWithFormat:@"[instance latestDownloaded:%@(entries:%ld), discovered:%@(entries:%ld), requestedEntries:%ld, fullyDownloaded:%@(notified:%@) | onFilesystem:%@(incomplete:%@), neverBeenLocked:%@ | secureOperation(inProgress:%@), (elimintating:%@) | userInitiated:%@, stagedPrior:%@ | catalog(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@) | downloaded(cachedAssetSetID:%@), (downloadedFromLive:%@), (lastTimeChecked:%@), (postedDate:%@)]", v122, v116, discoveredAtomicInstance3, v113, v107, v104, v101, v98, v95, v92, v89, v86, v83, v81, catalogCachedAssetSetID2, catalogDownloadedFromLive5, v134, v132, downloadedCatalogCachedAssetSetID6, downloadedCatalogDownloadedFromLive6, v49, @"N"];
  }

  v53 = v119;
  if (downloadedCatalogLastTimeChecked4)
  {
  }

  if (downloadedCatalogDownloadedFromLive5)
  {
  }

  v54 = v141;
  if (downloadedCatalogCachedAssetSetID5)
  {
  }

  if (catalogPostedDate4)
  {
  }

  if (v111)
  {
  }

  if (v119)
  {
    v55 = catalogDownloadedFromLive5;
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
  firstAssetType = [(MADAutoSetDescriptor *)self firstAssetType];
  if ([(MADAutoSetDescriptor *)self isDiscoveredFullyDownloaded])
  {
    if ([(MADAutoSetDescriptor *)self isOnFilesystem])
    {
      onFilesystemIncomplete = [(MADAutoSetDescriptor *)self onFilesystemIncomplete];
      v5 = [NSString alloc];
      clientDomainName = [(MADAutoSetDescriptor *)self clientDomainName];
      assetSetIdentifier = [(MADAutoSetDescriptor *)self assetSetIdentifier];
      latestDownloadedAtomicInstance = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
      latestDownloadedAtomicInstance2 = latestDownloadedAtomicInstance;
      if (onFilesystemIncomplete)
      {
        v10 = [v5 initWithFormat:@"SD_INCOMPLETE[%@](domain:%@|setID:%@|atomic:%@)", firstAssetType, clientDomainName, assetSetIdentifier, latestDownloadedAtomicInstance];
      }

      else
      {
        v10 = [v5 initWithFormat:@"SD_DOWNLOADED[%@](domain:%@|setID:%@|atomic:%@)", firstAssetType, clientDomainName, assetSetIdentifier, latestDownloadedAtomicInstance];
      }
    }

    else
    {
      v14 = [NSString alloc];
      clientDomainName = [(MADAutoSetDescriptor *)self clientDomainName];
      assetSetIdentifier = [(MADAutoSetDescriptor *)self assetSetIdentifier];
      latestDownloadedAtomicInstance2 = [(MADAutoSetDescriptor *)self latestDownloadedAtomicInstance];
      v10 = [v14 initWithFormat:@"SD_GONE[%@](domain:%@|setID:%@|atomic:%@)", firstAssetType, clientDomainName, assetSetIdentifier, latestDownloadedAtomicInstance2];
    }

    goto LABEL_10;
  }

  discoveredAtomicInstance = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];

  v12 = [NSString alloc];
  clientDomainName = [(MADAutoSetDescriptor *)self clientDomainName];
  assetSetIdentifier2 = [(MADAutoSetDescriptor *)self assetSetIdentifier];
  assetSetIdentifier = assetSetIdentifier2;
  if (discoveredAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MADAutoSetDescriptor *)self discoveredAtomicInstance];
    v10 = [v12 initWithFormat:@"SD_DISCOVERED[%@](domain:%@|setID:%@|atomic:%@)", firstAssetType, clientDomainName, assetSetIdentifier, latestDownloadedAtomicInstance2];
LABEL_10:
    v15 = v10;

    goto LABEL_11;
  }

  v15 = [v12 initWithFormat:@"SD_LOOKUP[%@](domain:%@|setID:%@)", firstAssetType, clientDomainName, assetSetIdentifier2];
LABEL_11:

  return v15;
}

- (id)firstAssetType
{
  latestDowloadedAtomicInstanceEntries = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
  v4 = [latestDowloadedAtomicInstanceEntries count];

  if (v4)
  {
    latestDowloadedAtomicInstanceEntries2 = [(MADAutoSetDescriptor *)self latestDowloadedAtomicInstanceEntries];
    goto LABEL_5;
  }

  discoveredAtomicEntries = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
  v7 = [discoveredAtomicEntries count];

  if (v7)
  {
    latestDowloadedAtomicInstanceEntries2 = [(MADAutoSetDescriptor *)self discoveredAtomicEntries];
LABEL_5:
    v8 = latestDowloadedAtomicInstanceEntries2;
    v9 = [latestDowloadedAtomicInstanceEntries2 objectAtIndex:0];

    if (v9)
    {
      fullAssetSelector = [v9 fullAssetSelector];
LABEL_7:
      v11 = fullAssetSelector;
      assetType = [fullAssetSelector assetType];

LABEL_12:
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  requestedAutoAssetEntries = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
  v14 = [requestedAutoAssetEntries count];

  if (v14)
  {
    requestedAutoAssetEntries2 = [(MADAutoSetDescriptor *)self requestedAutoAssetEntries];
    v9 = [requestedAutoAssetEntries2 objectAtIndex:0];

    if (v9)
    {
      fullAssetSelector = [v9 assetSelector];
      goto LABEL_7;
    }

LABEL_11:
    assetType = @"EMPTY";
    goto LABEL_12;
  }

  assetType = @"EMPTY";
LABEL_13:

  return assetType;
}

@end