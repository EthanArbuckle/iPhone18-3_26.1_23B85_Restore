@interface MADAutoSetConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)managesAssetSelector:(id)selector;
- (BOOL)refererncesAssetType:(id)type;
- (MADAutoSetConfiguration)initWithCoder:(id)coder;
- (id)assetSetEntryForAssetType:(id)type forAssetSpecifier:(id)specifier;
- (id)copy;
- (id)firstEntryAssetType;
- (id)initForClientDomainName:(id)name forSetClientName:(id)clientName forAssetSetIdentifier:(id)identifier withAutoAssetEntries:(id)entries withDiscoveredInFlightAtomicInstance:(id)instance withNewerAtomicInstanceOncePersonalized:(id)personalized withLatestAtomicInstanceToVend:(id)vend withLatestAtomicInstanceToVendFromPreSUStaging:(BOOL)self0 withPreviouslyVendedLockedAtomicInstances:(id)self1 withTicksUntilPreviousForceUnlocked:(int64_t)self2 withMostRecentlyReceivedCachedAssetSetID:(id)self3 withMostRecentlyReceivedDownloadedFromLive:(id)self4 withMostRecentlyReceivedLastTimeChecked:(id)self5 withMostRecentlyReceivedPostedDate:(id)self6 withLatestToVendCachedAssetSetID:(id)self7 withLatestToVendDownloadedFromLive:(id)self8 withLatestToVendLastTimeChecked:(id)self9 withLatestToVendPostedDate:(id)postedDate withAavailableForUseError:(id)error withNewerVersionError:(id)versionError havingEverProvidedLatestToVend:(BOOL)toVend inhibitingImpliedScheduling:(BOOL)scheduling havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries;
- (id)newSummaryWithoutEntryID;
- (id)persistedEntryID;
- (id)previouslyVendedLockedSummary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetConfiguration

- (id)initForClientDomainName:(id)name forSetClientName:(id)clientName forAssetSetIdentifier:(id)identifier withAutoAssetEntries:(id)entries withDiscoveredInFlightAtomicInstance:(id)instance withNewerAtomicInstanceOncePersonalized:(id)personalized withLatestAtomicInstanceToVend:(id)vend withLatestAtomicInstanceToVendFromPreSUStaging:(BOOL)self0 withPreviouslyVendedLockedAtomicInstances:(id)self1 withTicksUntilPreviousForceUnlocked:(int64_t)self2 withMostRecentlyReceivedCachedAssetSetID:(id)self3 withMostRecentlyReceivedDownloadedFromLive:(id)self4 withMostRecentlyReceivedLastTimeChecked:(id)self5 withMostRecentlyReceivedPostedDate:(id)self6 withLatestToVendCachedAssetSetID:(id)self7 withLatestToVendDownloadedFromLive:(id)self8 withLatestToVendLastTimeChecked:(id)self9 withLatestToVendPostedDate:(id)postedDate withAavailableForUseError:(id)error withNewerVersionError:(id)versionError havingEverProvidedLatestToVend:(BOOL)toVend inhibitingImpliedScheduling:(BOOL)scheduling havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries
{
  nameCopy = name;
  clientNameCopy = clientName;
  clientNameCopy2 = clientName;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  instanceCopy = instance;
  instanceCopy2 = instance;
  personalizedCopy = personalized;
  vendCopy = vend;
  instancesCopy = instances;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  errorCopy = error;
  versionErrorCopy = versionError;
  v60.receiver = self;
  v60.super_class = MADAutoSetConfiguration;
  v37 = [(MADAutoSetConfiguration *)&v60 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_clientDomainName, name);
    objc_storeStrong(&v38->_autoAssetSetClientName, clientNameCopy);
    objc_storeStrong(&v38->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v38->_autoAssetEntries, entriesCopy);
    objc_storeStrong(&v38->_discoveredInFlightAtomicInstance, instanceCopy);
    objc_storeStrong(&v38->_newerAtomicInstanceOncePersonalized, personalized);
    objc_storeStrong(&v38->_latestAtomicInstanceToVend, vend);
    v38->_latestAtomicInstanceToVendFromPreSUStaging = staging;
    objc_storeStrong(&v38->_previouslyVendedLockedAtomicInstances, instances);
    v38->_ticksUntilPreviousForceUnlocked = unlocked;
    objc_storeStrong(&v38->_mostRecentlyReceivedCachedAssetSetID, d);
    objc_storeStrong(&v38->_mostRecentlyReceivedDownloadedFromLive, live);
    objc_storeStrong(&v38->_mostRecentlyReceivedLastTimeChecked, checked);
    objc_storeStrong(&v38->_mostRecentlyReceivedPostedDate, date);
    objc_storeStrong(&v38->_latestToVendCachedAssetSetID, iD);
    objc_storeStrong(&v38->_latestToVendDownloadedFromLive, fromLive);
    objc_storeStrong(&v38->_latestToVendLastTimeChecked, timeChecked);
    objc_storeStrong(&v38->_latestToVendPostedDate, postedDate);
    objc_storeStrong(&v38->_availableForUseError, error);
    objc_storeStrong(&v38->_newerVersionError, versionError);
    v38->_everProvidedLatestToVend = toVend;
    v38->_inhibitImpliedScheduling = scheduling;
    v38->_haveReceivedLookupResponse = response;
    v38->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v39 = +[NSDate now];
    configurationChangedDate = v38->_configurationChangedDate;
    v38->_configurationChangedDate = v39;
  }

  return v38;
}

- (MADAutoSetConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v55.receiver = self;
  v55.super_class = MADAutoSetConfiguration;
  v5 = [(MADAutoSetConfiguration *)&v55 init];
  if (v5)
  {
    v58[0] = objc_opt_class();
    v58[1] = objc_opt_class();
    v58[2] = objc_opt_class();
    v58[3] = objc_opt_class();
    v58[4] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v58 count:5];
    v7 = [NSSet setWithArray:v6];

    v57[0] = objc_opt_class();
    v57[1] = objc_opt_class();
    v57[2] = objc_opt_class();
    v57[3] = objc_opt_class();
    v57[4] = objc_opt_class();
    v57[5] = objc_opt_class();
    v57[6] = objc_opt_class();
    v57[7] = objc_opt_class();
    v57[8] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v57 count:9];
    v9 = [NSSet setWithArray:v8];

    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v56 count:2];
    v11 = [NSSet setWithArray:v10];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClasses:v7 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveredInFlightAtomicInstance"];
    discoveredInFlightAtomicInstance = v5->_discoveredInFlightAtomicInstance;
    v5->_discoveredInFlightAtomicInstance = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceOncePersonalized"];
    newerAtomicInstanceOncePersonalized = v5->_newerAtomicInstanceOncePersonalized;
    v5->_newerAtomicInstanceOncePersonalized = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestAtomicInstanceToVend"];
    latestAtomicInstanceToVend = v5->_latestAtomicInstanceToVend;
    v5->_latestAtomicInstanceToVend = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestAtomicInstanceToVendFromPreSUStagingKey"];
    v5->_latestAtomicInstanceToVendFromPreSUStaging = [v26 BOOLValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previouslyVendedLockedAtomicInstance"];
    v28 = [coderCopy decodeObjectOfClasses:v11 forKey:@"previouslyVendedLockedAtomicInstances"];
    previouslyVendedLockedAtomicInstances = v5->_previouslyVendedLockedAtomicInstances;
    v5->_previouslyVendedLockedAtomicInstances = v28;

    v5->_ticksUntilPreviousForceUnlocked = [coderCopy decodeIntegerForKey:@"ticksUntilPreviousForceUnlocked"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedCachedAssetSetID"];
    mostRecentlyReceivedCachedAssetSetID = v5->_mostRecentlyReceivedCachedAssetSetID;
    v5->_mostRecentlyReceivedCachedAssetSetID = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedDownloadedFromLive"];
    mostRecentlyReceivedDownloadedFromLive = v5->_mostRecentlyReceivedDownloadedFromLive;
    v5->_mostRecentlyReceivedDownloadedFromLive = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedLastTimeChecked"];
    mostRecentlyReceivedLastTimeChecked = v5->_mostRecentlyReceivedLastTimeChecked;
    v5->_mostRecentlyReceivedLastTimeChecked = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedPostedDate"];
    mostRecentlyReceivedPostedDate = v5->_mostRecentlyReceivedPostedDate;
    v5->_mostRecentlyReceivedPostedDate = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendCachedAssetSetID"];
    latestToVendCachedAssetSetID = v5->_latestToVendCachedAssetSetID;
    v5->_latestToVendCachedAssetSetID = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendDownloadedFromLive"];
    latestToVendDownloadedFromLive = v5->_latestToVendDownloadedFromLive;
    v5->_latestToVendDownloadedFromLive = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendLastTimeChecked"];
    latestToVendLastTimeChecked = v5->_latestToVendLastTimeChecked;
    v5->_latestToVendLastTimeChecked = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendPostedDate"];
    latestToVendPostedDate = v5->_latestToVendPostedDate;
    v5->_latestToVendPostedDate = v44;

    v46 = [coderCopy decodeObjectOfClasses:v9 forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v46;

    v48 = [coderCopy decodeObjectOfClasses:v9 forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v48;

    v5->_everProvidedLatestToVend = [coderCopy decodeBoolForKey:@"everProvidedLatestToVend"];
    v5->_inhibitImpliedScheduling = [coderCopy decodeBoolForKey:@"inhibitImpliedScheduling"];
    v5->_haveReceivedLookupResponse = [coderCopy decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [coderCopy decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationChangedDate"];
    configurationChangedDate = v5->_configurationChangedDate;
    v5->_configurationChangedDate = v50;

    if (v27 && !v5->_previouslyVendedLockedAtomicInstances)
    {
      v52 = objc_alloc_init(NSMutableArray);
      v53 = v5->_previouslyVendedLockedAtomicInstances;
      v5->_previouslyVendedLockedAtomicInstances = v52;

      [(NSMutableArray *)v5->_previouslyVendedLockedAtomicInstances addObject:v27];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MADAutoSetConfiguration *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  autoAssetSetClientName = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  [coderCopy encodeObject:autoAssetSetClientName forKey:@"autoAssetSetClientName"];

  assetSetIdentifier = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];

  discoveredInFlightAtomicInstance = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  [coderCopy encodeObject:discoveredInFlightAtomicInstance forKey:@"discoveredInFlightAtomicInstance"];

  newerAtomicInstanceOncePersonalized = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  [coderCopy encodeObject:newerAtomicInstanceOncePersonalized forKey:@"newerAtomicInstanceOncePersonalized"];

  latestAtomicInstanceToVend = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  [coderCopy encodeObject:latestAtomicInstanceToVend forKey:@"latestAtomicInstanceToVend"];

  v12 = [NSNumber numberWithBool:[(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging]];
  [coderCopy encodeObject:v12 forKey:@"latestAtomicInstanceToVendFromPreSUStagingKey"];

  previouslyVendedLockedAtomicInstances = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  [coderCopy encodeObject:previouslyVendedLockedAtomicInstances forKey:@"previouslyVendedLockedAtomicInstances"];

  [coderCopy encodeInteger:-[MADAutoSetConfiguration ticksUntilPreviousForceUnlocked](self forKey:{"ticksUntilPreviousForceUnlocked"), @"ticksUntilPreviousForceUnlocked"}];
  mostRecentlyReceivedCachedAssetSetID = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  [coderCopy encodeObject:mostRecentlyReceivedCachedAssetSetID forKey:@"mostRecentlyReceivedCachedAssetSetID"];

  mostRecentlyReceivedDownloadedFromLive = [(MADAutoSetConfiguration *)self mostRecentlyReceivedDownloadedFromLive];
  [coderCopy encodeObject:mostRecentlyReceivedDownloadedFromLive forKey:@"mostRecentlyReceivedDownloadedFromLive"];

  mostRecentlyReceivedLastTimeChecked = [(MADAutoSetConfiguration *)self mostRecentlyReceivedLastTimeChecked];
  [coderCopy encodeObject:mostRecentlyReceivedLastTimeChecked forKey:@"mostRecentlyReceivedLastTimeChecked"];

  mostRecentlyReceivedPostedDate = [(MADAutoSetConfiguration *)self mostRecentlyReceivedPostedDate];
  [coderCopy encodeObject:mostRecentlyReceivedPostedDate forKey:@"mostRecentlyReceivedPostedDate"];

  latestToVendCachedAssetSetID = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  [coderCopy encodeObject:latestToVendCachedAssetSetID forKey:@"latestToVendCachedAssetSetID"];

  latestToVendDownloadedFromLive = [(MADAutoSetConfiguration *)self latestToVendDownloadedFromLive];
  [coderCopy encodeObject:latestToVendDownloadedFromLive forKey:@"latestToVendDownloadedFromLive"];

  latestToVendLastTimeChecked = [(MADAutoSetConfiguration *)self latestToVendLastTimeChecked];
  [coderCopy encodeObject:latestToVendLastTimeChecked forKey:@"latestToVendLastTimeChecked"];

  latestToVendPostedDate = [(MADAutoSetConfiguration *)self latestToVendPostedDate];
  [coderCopy encodeObject:latestToVendPostedDate forKey:@"latestToVendPostedDate"];

  availableForUseError = [(MADAutoSetConfiguration *)self availableForUseError];
  [coderCopy encodeObject:availableForUseError forKey:@"availableForUseError"];

  newerVersionError = [(MADAutoSetConfiguration *)self newerVersionError];
  [coderCopy encodeObject:newerVersionError forKey:@"newerVersionError"];

  [coderCopy encodeBool:-[MADAutoSetConfiguration everProvidedLatestToVend](self forKey:{"everProvidedLatestToVend"), @"everProvidedLatestToVend"}];
  [coderCopy encodeBool:-[MADAutoSetConfiguration inhibitImpliedScheduling](self forKey:{"inhibitImpliedScheduling"), @"inhibitImpliedScheduling"}];
  [coderCopy encodeBool:-[MADAutoSetConfiguration haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [coderCopy encodeBool:-[MADAutoSetConfiguration vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  configurationChangedDate = [(MADAutoSetConfiguration *)self configurationChangedDate];
  [coderCopy encodeObject:configurationChangedDate forKey:@"configurationChangedDate"];
}

- (id)assetSetEntryForAssetType:(id)type forAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MADAutoSetConfiguration *)self autoAssetEntries];
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
        assetSelector = [v11 assetSelector];
        assetType = [assetSelector assetType];
        if ([v12 stringIsEqual:assetType to:typeCopy])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 assetSelector];
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

- (BOOL)refererncesAssetType:(id)type
{
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v6 = [autoAssetEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(autoAssetEntries);
        }

        assetSelector = [*(*(&v13 + 1) + 8 * i) assetSelector];
        assetType = [assetSelector assetType];
        v11 = [SUCore stringIsEqual:assetType to:typeCopy];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [autoAssetEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)managesAssetSelector:(id)selector
{
  selectorCopy = selector;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v21 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = p_weak_ivar_lyt[223];
        assetSelector = [v9 assetSelector];
        assetType = [assetSelector assetType];
        assetType2 = [selectorCopy assetType];
        if ([v10 stringIsEqual:assetType to:assetType2])
        {
          v14 = p_weak_ivar_lyt[223];
          assetSelector2 = [v9 assetSelector];
          assetSpecifier = [assetSelector2 assetSpecifier];
          [selectorCopy assetSpecifier];
          v17 = v5;
          v19 = v18 = selectorCopy;
          LOBYTE(v14) = [v14 stringIsEqual:assetSpecifier to:v19];

          selectorCopy = v18;
          v5 = v17;

          v6 = v21;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);

          if (v14)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

LABEL_12:

  return v5;
}

- (id)firstEntryAssetType
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  assetType2 = [autoAssetEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (assetType2)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != assetType2; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(autoAssetEntries);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        assetSelector = [v6 assetSelector];
        assetType = [assetSelector assetType];

        if (assetType)
        {
          assetSelector2 = [v6 assetSelector];
          assetType2 = [assetSelector2 assetType];

          goto LABEL_11;
        }
      }

      assetType2 = [autoAssetEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (assetType2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return assetType2;
}

- (id)copy
{
  v23 = [MADAutoSetConfiguration alloc];
  clientDomainName = [(MADAutoSetConfiguration *)self clientDomainName];
  autoAssetSetClientName = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  assetSetIdentifier = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v28 = [autoAssetEntries copy];
  discoveredInFlightAtomicInstance = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  newerAtomicInstanceOncePersonalized = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  latestAtomicInstanceToVend = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  latestAtomicInstanceToVendFromPreSUStaging = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging];
  previouslyVendedLockedAtomicInstances = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  ticksUntilPreviousForceUnlocked = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  mostRecentlyReceivedCachedAssetSetID = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  mostRecentlyReceivedDownloadedFromLive = [(MADAutoSetConfiguration *)self mostRecentlyReceivedDownloadedFromLive];
  mostRecentlyReceivedLastTimeChecked = [(MADAutoSetConfiguration *)self mostRecentlyReceivedLastTimeChecked];
  mostRecentlyReceivedPostedDate = [(MADAutoSetConfiguration *)self mostRecentlyReceivedPostedDate];
  latestToVendCachedAssetSetID = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  latestToVendDownloadedFromLive = [(MADAutoSetConfiguration *)self latestToVendDownloadedFromLive];
  latestToVendLastTimeChecked = [(MADAutoSetConfiguration *)self latestToVendLastTimeChecked];
  latestToVendPostedDate = [(MADAutoSetConfiguration *)self latestToVendPostedDate];
  availableForUseError = [(MADAutoSetConfiguration *)self availableForUseError];
  newerVersionError = [(MADAutoSetConfiguration *)self newerVersionError];
  everProvidedLatestToVend = [(MADAutoSetConfiguration *)self everProvidedLatestToVend];
  inhibitImpliedScheduling = [(MADAutoSetConfiguration *)self inhibitImpliedScheduling];
  haveReceivedLookupResponse = [(MADAutoSetConfiguration *)self haveReceivedLookupResponse];
  BYTE3(v12) = [(MADAutoSetConfiguration *)self vendingAtomicInstanceForConfiguredEntries];
  BYTE2(v12) = haveReceivedLookupResponse;
  BYTE1(v12) = inhibitImpliedScheduling;
  LOBYTE(v12) = everProvidedLatestToVend;
  LOBYTE(v11) = latestAtomicInstanceToVendFromPreSUStaging;
  v24 = [MADAutoSetConfiguration initForClientDomainName:v23 forSetClientName:"initForClientDomainName:forSetClientName:forAssetSetIdentifier:withAutoAssetEntries:withDiscoveredInFlightAtomicInstance:withNewerAtomicInstanceOncePersonalized:withLatestAtomicInstanceToVend:withLatestAtomicInstanceToVendFromPreSUStaging:withPreviouslyVendedLockedAtomicInstances:withTicksUntilPreviousForceUnlocked:withMostRecentlyReceivedCachedAssetSetID:withMostRecentlyReceivedDownloadedFromLive:withMostRecentlyReceivedLastTimeChecked:withMostRecentlyReceivedPostedDate:withLatestToVendCachedAssetSetID:withLatestToVendDownloadedFromLive:withLatestToVendLastTimeChecked:withLatestToVendPostedDate:withAavailableForUseError:withNewerVersionError:havingEverProvidedLatestToVend:inhibitingImpliedScheduling:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:" forAssetSetIdentifier:clientDomainName withAutoAssetEntries:autoAssetSetClientName withDiscoveredInFlightAtomicInstance:assetSetIdentifier withNewerAtomicInstanceOncePersonalized:v28 withLatestAtomicInstanceToVend:discoveredInFlightAtomicInstance withLatestAtomicInstanceToVendFromPreSUStaging:newerAtomicInstanceOncePersonalized withPreviouslyVendedLockedAtomicInstances:latestAtomicInstanceToVend withTicksUntilPreviousForceUnlocked:v11 withMostRecentlyReceivedCachedAssetSetID:previouslyVendedLockedAtomicInstances withMostRecentlyReceivedDownloadedFromLive:ticksUntilPreviousForceUnlocked withMostRecentlyReceivedLastTimeChecked:mostRecentlyReceivedCachedAssetSetID withMostRecentlyReceivedPostedDate:mostRecentlyReceivedDownloadedFromLive withLatestToVendCachedAssetSetID:mostRecentlyReceivedLastTimeChecked withLatestToVendDownloadedFromLive:mostRecentlyReceivedPostedDate withLatestToVendLastTimeChecked:latestToVendCachedAssetSetID withLatestToVendPostedDate:latestToVendDownloadedFromLive withAavailableForUseError:latestToVendLastTimeChecked withNewerVersionError:latestToVendPostedDate havingEverProvidedLatestToVend:availableForUseError inhibitingImpliedScheduling:newerVersionError havingReceivedLookupResponse:v12 vendingAtomicInstanceForConfiguredEntries:?];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clientDomainName = [(MADAutoSetConfiguration *)self clientDomainName];
      clientDomainName2 = [(MADAutoSetConfiguration *)v5 clientDomainName];
      if (([SUCore stringIsEqual:clientDomainName to:clientDomainName2]& 1) != 0)
      {
        assetSetIdentifier = [(MADAutoSetConfiguration *)self assetSetIdentifier];
        assetSetIdentifier2 = [(MADAutoSetConfiguration *)v5 assetSetIdentifier];
        v10 = [SUCore stringIsEqual:assetSetIdentifier to:assetSetIdentifier2];

        if (v10)
        {
          autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
          v12 = [autoAssetEntries count];

          autoAssetEntries2 = [(MADAutoSetConfiguration *)v5 autoAssetEntries];
          v14 = [autoAssetEntries2 count];

          if (v12 == v14)
          {
            v15 = v12 - 1;
            if (v12 < 1)
            {
              LOBYTE(v23) = 1;
            }

            else
            {
              v16 = 0;
              do
              {
                autoAssetEntries3 = [(MADAutoSetConfiguration *)self autoAssetEntries];
                v18 = [autoAssetEntries3 objectAtIndex:v16];

                autoAssetEntries4 = [(MADAutoSetConfiguration *)v5 autoAssetEntries];
                v20 = [autoAssetEntries4 objectAtIndex:v16];

                assetSelector = [v18 assetSelector];
                assetSelector2 = [v20 assetSelector];
                v23 = [assetSelector isEqual:assetSelector2];

                if (!v23)
                {
                  break;
                }
              }

              while (v15 != v16++);
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
      }

      LOBYTE(v23) = 0;
LABEL_16:

      goto LABEL_17;
    }

    LOBYTE(v23) = 0;
  }

LABEL_17:

  return v23;
}

- (id)summary
{
  clientDomainName = [(MADAutoSetConfiguration *)self clientDomainName];
  autoAssetSetClientName = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  assetSetIdentifier = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v31 = [autoAssetEntries count];
  discoveredInFlightAtomicInstance = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  if (discoveredInFlightAtomicInstance)
  {
    discoveredInFlightAtomicInstance2 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  }

  else
  {
    discoveredInFlightAtomicInstance2 = @"N";
  }

  mostRecentlyReceivedCachedAssetSetID = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  if (mostRecentlyReceivedCachedAssetSetID)
  {
    mostRecentlyReceivedCachedAssetSetID2 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  }

  else
  {
    mostRecentlyReceivedCachedAssetSetID2 = @"N";
  }

  newerAtomicInstanceOncePersonalized = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  if (newerAtomicInstanceOncePersonalized)
  {
    newerAtomicInstanceOncePersonalized2 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  }

  else
  {
    newerAtomicInstanceOncePersonalized2 = @"N";
  }

  latestAtomicInstanceToVend = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  v33 = mostRecentlyReceivedCachedAssetSetID;
  if (latestAtomicInstanceToVend)
  {
    latestAtomicInstanceToVend2 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  }

  else
  {
    latestAtomicInstanceToVend2 = @"N";
  }

  [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  v29 = v10 = @"N";
  v35 = discoveredInFlightAtomicInstance;
  if (v29)
  {
    latestToVendCachedAssetSetID = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  }

  else
  {
    latestToVendCachedAssetSetID = @"N";
  }

  latestAtomicInstanceToVendFromPreSUStaging = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging];
  v12 = @"Y";
  if (!latestAtomicInstanceToVendFromPreSUStaging)
  {
    v12 = @"N";
  }

  v28 = v12;
  previouslyVendedLockedSummary = [(MADAutoSetConfiguration *)self previouslyVendedLockedSummary];
  ticksUntilPreviousForceUnlocked = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  availableForUseError = [(MADAutoSetConfiguration *)self availableForUseError];
  v30 = latestAtomicInstanceToVend;
  if (availableForUseError)
  {
    v14 = [NSString alloc];
    availableForUseError2 = [(MADAutoSetConfiguration *)self availableForUseError];
    v10 = [v14 initWithFormat:@"%ld", objc_msgSend(availableForUseError2, "code")];
  }

  v32 = newerAtomicInstanceOncePersonalized;
  newerVersionError = [(MADAutoSetConfiguration *)self newerVersionError];
  v38 = autoAssetSetClientName;
  v27 = mostRecentlyReceivedCachedAssetSetID2;
  if (newerVersionError)
  {
    v16 = [NSString alloc];
    newerVersionError2 = [(MADAutoSetConfiguration *)self newerVersionError];
    v17 = [v16 initWithFormat:@"%ld", objc_msgSend(newerVersionError2, "code")];
  }

  else
  {
    v17 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self everProvidedLatestToVend])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self inhibitImpliedScheduling])
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self haveReceivedLookupResponse])
  {
    v20 = @"Y";
  }

  else
  {
    v20 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v21 = @"Y";
  }

  else
  {
    v21 = @"N";
  }

  v22 = [NSString stringWithFormat:@"[(client)Domain:%@, Name:%@|(set)Identifier:%@, Entries:%ld|inFlightAI:%@(setID:%@)|oncePersonalized:%@|latestToVend:%@(setID:%@)(fromPSUS:%@)|previousAI:%@(ticks:%ld)|(error)available:%@, newer:%@|everVended:%@|inhibitScheduling:%@|lookupRsp:%@|vendingForConfig:%@]", clientDomainName, v38, assetSetIdentifier, v31, discoveredInFlightAtomicInstance2, v27, newerAtomicInstanceOncePersonalized2, latestAtomicInstanceToVend2, latestToVendCachedAssetSetID, v28, previouslyVendedLockedSummary, ticksUntilPreviousForceUnlocked, v10, v17, v18, v19, v20, v21];
  if (newerVersionError)
  {
  }

  if (availableForUseError)
  {
  }

  if (v29)
  {
  }

  if (v30)
  {
  }

  if (v32)
  {
  }

  if (v33)
  {
  }

  if (v35)
  {
  }

  return v22;
}

- (id)newSummaryWithoutEntryID
{
  autoAssetSetClientName = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  autoAssetEntries = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v28 = [autoAssetEntries count];
  discoveredInFlightAtomicInstance = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  if (discoveredInFlightAtomicInstance)
  {
    discoveredInFlightAtomicInstance2 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  }

  else
  {
    discoveredInFlightAtomicInstance2 = @"N";
  }

  mostRecentlyReceivedCachedAssetSetID = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  if (mostRecentlyReceivedCachedAssetSetID)
  {
    mostRecentlyReceivedCachedAssetSetID2 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  }

  else
  {
    mostRecentlyReceivedCachedAssetSetID2 = @"N";
  }

  newerAtomicInstanceOncePersonalized = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  if (newerAtomicInstanceOncePersonalized)
  {
    newerAtomicInstanceOncePersonalized2 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  }

  else
  {
    newerAtomicInstanceOncePersonalized2 = @"N";
  }

  latestAtomicInstanceToVend = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  if (latestAtomicInstanceToVend)
  {
    latestAtomicInstanceToVend2 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  }

  else
  {
    latestAtomicInstanceToVend2 = @"N";
  }

  [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  v25 = v27 = latestAtomicInstanceToVend;
  if (v25)
  {
    latestToVendCachedAssetSetID = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  }

  else
  {
    latestToVendCachedAssetSetID = @"N";
  }

  v33 = discoveredInFlightAtomicInstance;
  previouslyVendedLockedSummary = [(MADAutoSetConfiguration *)self previouslyVendedLockedSummary];
  ticksUntilPreviousForceUnlocked = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  availableForUseError = [(MADAutoSetConfiguration *)self availableForUseError];
  if (availableForUseError)
  {
    v11 = [NSString alloc];
    availableForUseError2 = [(MADAutoSetConfiguration *)self availableForUseError];
    v35 = [v11 initWithFormat:@"%ld", objc_msgSend(availableForUseError2, "code")];
  }

  else
  {
    v35 = @"N";
  }

  v31 = mostRecentlyReceivedCachedAssetSetID;
  newerVersionError = [(MADAutoSetConfiguration *)self newerVersionError];
  v30 = autoAssetSetClientName;
  v26 = mostRecentlyReceivedCachedAssetSetID2;
  v13 = latestAtomicInstanceToVend2;
  if (newerVersionError)
  {
    v14 = [NSString alloc];
    newerVersionError2 = [(MADAutoSetConfiguration *)self newerVersionError];
    v15 = [v14 initWithFormat:@"%ld", objc_msgSend(newerVersionError2, "code")];
  }

  else
  {
    v15 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self everProvidedLatestToVend])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self inhibitImpliedScheduling])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self haveReceivedLookupResponse])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  if ([(MADAutoSetConfiguration *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  v20 = [NSString stringWithFormat:@"[clientName:%@|setEntries:%ld|inFlightAI:%@(setID:%@)|oncePersonalized:%@|latestToVend:%@(setID:%@)|previousAI:%@(ticks:%ld)|(error)available:%@, newer:%@|everVended:%@|inhibitScheduling:%@|lookupRsp:%@|vendingForConfig:%@]", v30, v28, discoveredInFlightAtomicInstance2, v26, newerAtomicInstanceOncePersonalized2, v13, latestToVendCachedAssetSetID, previouslyVendedLockedSummary, ticksUntilPreviousForceUnlocked, v35, v15, v16, v17, v18, v19];
  if (newerVersionError)
  {
  }

  if (availableForUseError)
  {
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  if (newerAtomicInstanceOncePersonalized)
  {
  }

  if (v31)
  {
  }

  if (v33)
  {
  }

  return v20;
}

- (id)previouslyVendedLockedSummary
{
  v3 = [[NSMutableString alloc] initWithString:@"N"];
  previouslyVendedLockedAtomicInstances = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  v5 = [previouslyVendedLockedAtomicInstances count];

  if (v5 >= 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    previouslyVendedLockedAtomicInstances2 = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
    v7 = [previouslyVendedLockedAtomicInstances2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(previouslyVendedLockedAtomicInstances2);
          }

          if (v10)
          {
            v12 = [[NSMutableString alloc] initWithFormat:@"Y(%ld)[%@", v5, *(*(&v14 + 1) + 8 * i)];

            v3 = v12;
          }

          else
          {
            [v3 appendFormat:@", %@", *(*(&v14 + 1) + 8 * i)];
          }

          v10 = 0;
        }

        v8 = [previouslyVendedLockedAtomicInstances2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v10 = 0;
      }

      while (v8);
    }

    [v3 appendString:@"]"];
  }

  return v3;
}

- (id)persistedEntryID
{
  v3 = [NSString alloc];
  clientDomainName = [(MADAutoSetConfiguration *)self clientDomainName];
  assetSetIdentifier = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  v6 = [v3 initWithFormat:@"%@_%@", clientDomainName, assetSetIdentifier];

  return v6;
}

@end