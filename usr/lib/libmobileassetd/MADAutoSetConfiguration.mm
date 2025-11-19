@interface MADAutoSetConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)managesAssetSelector:(id)a3;
- (BOOL)refererncesAssetType:(id)a3;
- (MADAutoSetConfiguration)initWithCoder:(id)a3;
- (id)assetSetEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4;
- (id)copy;
- (id)firstEntryAssetType;
- (id)initForClientDomainName:(id)a3 forSetClientName:(id)a4 forAssetSetIdentifier:(id)a5 withAutoAssetEntries:(id)a6 withDiscoveredInFlightAtomicInstance:(id)a7 withNewerAtomicInstanceOncePersonalized:(id)a8 withLatestAtomicInstanceToVend:(id)a9 withLatestAtomicInstanceToVendFromPreSUStaging:(BOOL)a10 withPreviouslyVendedLockedAtomicInstances:(id)a11 withTicksUntilPreviousForceUnlocked:(int64_t)a12 withMostRecentlyReceivedCachedAssetSetID:(id)a13 withMostRecentlyReceivedDownloadedFromLive:(id)a14 withMostRecentlyReceivedLastTimeChecked:(id)a15 withMostRecentlyReceivedPostedDate:(id)a16 withLatestToVendCachedAssetSetID:(id)a17 withLatestToVendDownloadedFromLive:(id)a18 withLatestToVendLastTimeChecked:(id)a19 withLatestToVendPostedDate:(id)a20 withAavailableForUseError:(id)a21 withNewerVersionError:(id)a22 havingEverProvidedLatestToVend:(BOOL)a23 inhibitingImpliedScheduling:(BOOL)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26;
- (id)newSummaryWithoutEntryID;
- (id)persistedEntryID;
- (id)previouslyVendedLockedSummary;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetConfiguration

- (id)initForClientDomainName:(id)a3 forSetClientName:(id)a4 forAssetSetIdentifier:(id)a5 withAutoAssetEntries:(id)a6 withDiscoveredInFlightAtomicInstance:(id)a7 withNewerAtomicInstanceOncePersonalized:(id)a8 withLatestAtomicInstanceToVend:(id)a9 withLatestAtomicInstanceToVendFromPreSUStaging:(BOOL)a10 withPreviouslyVendedLockedAtomicInstances:(id)a11 withTicksUntilPreviousForceUnlocked:(int64_t)a12 withMostRecentlyReceivedCachedAssetSetID:(id)a13 withMostRecentlyReceivedDownloadedFromLive:(id)a14 withMostRecentlyReceivedLastTimeChecked:(id)a15 withMostRecentlyReceivedPostedDate:(id)a16 withLatestToVendCachedAssetSetID:(id)a17 withLatestToVendDownloadedFromLive:(id)a18 withLatestToVendLastTimeChecked:(id)a19 withLatestToVendPostedDate:(id)a20 withAavailableForUseError:(id)a21 withNewerVersionError:(id)a22 havingEverProvidedLatestToVend:(BOOL)a23 inhibitingImpliedScheduling:(BOOL)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26
{
  v57 = a3;
  v43 = a4;
  v56 = a4;
  v44 = a5;
  v54 = a5;
  v45 = a6;
  v53 = a6;
  v46 = a7;
  v51 = a7;
  v49 = a8;
  v48 = a9;
  v59 = a11;
  v58 = a13;
  v55 = a14;
  v52 = a15;
  v50 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v34 = a20;
  v35 = a21;
  v36 = a22;
  v60.receiver = self;
  v60.super_class = MADAutoSetConfiguration;
  v37 = [(MADAutoSetConfiguration *)&v60 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_clientDomainName, a3);
    objc_storeStrong(&v38->_autoAssetSetClientName, v43);
    objc_storeStrong(&v38->_assetSetIdentifier, v44);
    objc_storeStrong(&v38->_autoAssetEntries, v45);
    objc_storeStrong(&v38->_discoveredInFlightAtomicInstance, v46);
    objc_storeStrong(&v38->_newerAtomicInstanceOncePersonalized, a8);
    objc_storeStrong(&v38->_latestAtomicInstanceToVend, a9);
    v38->_latestAtomicInstanceToVendFromPreSUStaging = a10;
    objc_storeStrong(&v38->_previouslyVendedLockedAtomicInstances, a11);
    v38->_ticksUntilPreviousForceUnlocked = a12;
    objc_storeStrong(&v38->_mostRecentlyReceivedCachedAssetSetID, a13);
    objc_storeStrong(&v38->_mostRecentlyReceivedDownloadedFromLive, a14);
    objc_storeStrong(&v38->_mostRecentlyReceivedLastTimeChecked, a15);
    objc_storeStrong(&v38->_mostRecentlyReceivedPostedDate, a16);
    objc_storeStrong(&v38->_latestToVendCachedAssetSetID, a17);
    objc_storeStrong(&v38->_latestToVendDownloadedFromLive, a18);
    objc_storeStrong(&v38->_latestToVendLastTimeChecked, a19);
    objc_storeStrong(&v38->_latestToVendPostedDate, a20);
    objc_storeStrong(&v38->_availableForUseError, a21);
    objc_storeStrong(&v38->_newerVersionError, a22);
    v38->_everProvidedLatestToVend = a23;
    v38->_inhibitImpliedScheduling = a24;
    v38->_haveReceivedLookupResponse = a25;
    v38->_vendingAtomicInstanceForConfiguredEntries = a26;
    v39 = +[NSDate now];
    configurationChangedDate = v38->_configurationChangedDate;
    v38->_configurationChangedDate = v39;
  }

  return v38;
}

- (MADAutoSetConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v16;

    v18 = [v4 decodeObjectOfClasses:v7 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveredInFlightAtomicInstance"];
    discoveredInFlightAtomicInstance = v5->_discoveredInFlightAtomicInstance;
    v5->_discoveredInFlightAtomicInstance = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceOncePersonalized"];
    newerAtomicInstanceOncePersonalized = v5->_newerAtomicInstanceOncePersonalized;
    v5->_newerAtomicInstanceOncePersonalized = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestAtomicInstanceToVend"];
    latestAtomicInstanceToVend = v5->_latestAtomicInstanceToVend;
    v5->_latestAtomicInstanceToVend = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestAtomicInstanceToVendFromPreSUStagingKey"];
    v5->_latestAtomicInstanceToVendFromPreSUStaging = [v26 BOOLValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previouslyVendedLockedAtomicInstance"];
    v28 = [v4 decodeObjectOfClasses:v11 forKey:@"previouslyVendedLockedAtomicInstances"];
    previouslyVendedLockedAtomicInstances = v5->_previouslyVendedLockedAtomicInstances;
    v5->_previouslyVendedLockedAtomicInstances = v28;

    v5->_ticksUntilPreviousForceUnlocked = [v4 decodeIntegerForKey:@"ticksUntilPreviousForceUnlocked"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedCachedAssetSetID"];
    mostRecentlyReceivedCachedAssetSetID = v5->_mostRecentlyReceivedCachedAssetSetID;
    v5->_mostRecentlyReceivedCachedAssetSetID = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedDownloadedFromLive"];
    mostRecentlyReceivedDownloadedFromLive = v5->_mostRecentlyReceivedDownloadedFromLive;
    v5->_mostRecentlyReceivedDownloadedFromLive = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedLastTimeChecked"];
    mostRecentlyReceivedLastTimeChecked = v5->_mostRecentlyReceivedLastTimeChecked;
    v5->_mostRecentlyReceivedLastTimeChecked = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyReceivedPostedDate"];
    mostRecentlyReceivedPostedDate = v5->_mostRecentlyReceivedPostedDate;
    v5->_mostRecentlyReceivedPostedDate = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendCachedAssetSetID"];
    latestToVendCachedAssetSetID = v5->_latestToVendCachedAssetSetID;
    v5->_latestToVendCachedAssetSetID = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendDownloadedFromLive"];
    latestToVendDownloadedFromLive = v5->_latestToVendDownloadedFromLive;
    v5->_latestToVendDownloadedFromLive = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendLastTimeChecked"];
    latestToVendLastTimeChecked = v5->_latestToVendLastTimeChecked;
    v5->_latestToVendLastTimeChecked = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestToVendPostedDate"];
    latestToVendPostedDate = v5->_latestToVendPostedDate;
    v5->_latestToVendPostedDate = v44;

    v46 = [v4 decodeObjectOfClasses:v9 forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v46;

    v48 = [v4 decodeObjectOfClasses:v9 forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v48;

    v5->_everProvidedLatestToVend = [v4 decodeBoolForKey:@"everProvidedLatestToVend"];
    v5->_inhibitImpliedScheduling = [v4 decodeBoolForKey:@"inhibitImpliedScheduling"];
    v5->_haveReceivedLookupResponse = [v4 decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [v4 decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationChangedDate"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoSetConfiguration *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  [v4 encodeObject:v6 forKey:@"autoAssetSetClientName"];

  v7 = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  [v4 encodeObject:v7 forKey:@"assetSetIdentifier"];

  v8 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  [v4 encodeObject:v8 forKey:@"autoAssetEntries"];

  v9 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  [v4 encodeObject:v9 forKey:@"discoveredInFlightAtomicInstance"];

  v10 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  [v4 encodeObject:v10 forKey:@"newerAtomicInstanceOncePersonalized"];

  v11 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  [v4 encodeObject:v11 forKey:@"latestAtomicInstanceToVend"];

  v12 = [NSNumber numberWithBool:[(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging]];
  [v4 encodeObject:v12 forKey:@"latestAtomicInstanceToVendFromPreSUStagingKey"];

  v13 = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  [v4 encodeObject:v13 forKey:@"previouslyVendedLockedAtomicInstances"];

  [v4 encodeInteger:-[MADAutoSetConfiguration ticksUntilPreviousForceUnlocked](self forKey:{"ticksUntilPreviousForceUnlocked"), @"ticksUntilPreviousForceUnlocked"}];
  v14 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  [v4 encodeObject:v14 forKey:@"mostRecentlyReceivedCachedAssetSetID"];

  v15 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedDownloadedFromLive];
  [v4 encodeObject:v15 forKey:@"mostRecentlyReceivedDownloadedFromLive"];

  v16 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedLastTimeChecked];
  [v4 encodeObject:v16 forKey:@"mostRecentlyReceivedLastTimeChecked"];

  v17 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedPostedDate];
  [v4 encodeObject:v17 forKey:@"mostRecentlyReceivedPostedDate"];

  v18 = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  [v4 encodeObject:v18 forKey:@"latestToVendCachedAssetSetID"];

  v19 = [(MADAutoSetConfiguration *)self latestToVendDownloadedFromLive];
  [v4 encodeObject:v19 forKey:@"latestToVendDownloadedFromLive"];

  v20 = [(MADAutoSetConfiguration *)self latestToVendLastTimeChecked];
  [v4 encodeObject:v20 forKey:@"latestToVendLastTimeChecked"];

  v21 = [(MADAutoSetConfiguration *)self latestToVendPostedDate];
  [v4 encodeObject:v21 forKey:@"latestToVendPostedDate"];

  v22 = [(MADAutoSetConfiguration *)self availableForUseError];
  [v4 encodeObject:v22 forKey:@"availableForUseError"];

  v23 = [(MADAutoSetConfiguration *)self newerVersionError];
  [v4 encodeObject:v23 forKey:@"newerVersionError"];

  [v4 encodeBool:-[MADAutoSetConfiguration everProvidedLatestToVend](self forKey:{"everProvidedLatestToVend"), @"everProvidedLatestToVend"}];
  [v4 encodeBool:-[MADAutoSetConfiguration inhibitImpliedScheduling](self forKey:{"inhibitImpliedScheduling"), @"inhibitImpliedScheduling"}];
  [v4 encodeBool:-[MADAutoSetConfiguration haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [v4 encodeBool:-[MADAutoSetConfiguration vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  v24 = [(MADAutoSetConfiguration *)self configurationChangedDate];
  [v4 encodeObject:v24 forKey:@"configurationChangedDate"];
}

- (id)assetSetEntryForAssetType:(id)a3 forAssetSpecifier:(id)a4
{
  v6 = a3;
  v23 = a4;
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
        v13 = [v11 assetSelector];
        v14 = [v13 assetType];
        if ([v12 stringIsEqual:v14 to:v6])
        {
          v15 = p_weak_ivar_lyt[223];
          [v11 assetSelector];
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

- (BOOL)refererncesAssetType:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) assetSelector];
        v10 = [v9 assetType];
        v11 = [SUCore stringIsEqual:v10 to:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)managesAssetSelector:(id)a3
{
  v4 = a3;
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
        v11 = [v9 assetSelector];
        v12 = [v11 assetType];
        v13 = [v4 assetType];
        if ([v10 stringIsEqual:v12 to:v13])
        {
          v14 = p_weak_ivar_lyt[223];
          v15 = [v9 assetSelector];
          v16 = [v15 assetSpecifier];
          [v4 assetSpecifier];
          v17 = v5;
          v19 = v18 = v4;
          LOBYTE(v14) = [v14 stringIsEqual:v16 to:v19];

          v4 = v18;
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
  v2 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 assetSelector];
        v8 = [v7 assetType];

        if (v8)
        {
          v9 = [v6 assetSelector];
          v3 = [v9 assetType];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)copy
{
  v23 = [MADAutoSetConfiguration alloc];
  v31 = [(MADAutoSetConfiguration *)self clientDomainName];
  v30 = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  v29 = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  v25 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v28 = [v25 copy];
  v22 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  v21 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  v27 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  v20 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging];
  v26 = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  v19 = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  v18 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  v17 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedDownloadedFromLive];
  v14 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedLastTimeChecked];
  v16 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedPostedDate];
  v15 = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  v13 = [(MADAutoSetConfiguration *)self latestToVendDownloadedFromLive];
  v3 = [(MADAutoSetConfiguration *)self latestToVendLastTimeChecked];
  v4 = [(MADAutoSetConfiguration *)self latestToVendPostedDate];
  v5 = [(MADAutoSetConfiguration *)self availableForUseError];
  v6 = [(MADAutoSetConfiguration *)self newerVersionError];
  v7 = [(MADAutoSetConfiguration *)self everProvidedLatestToVend];
  v8 = [(MADAutoSetConfiguration *)self inhibitImpliedScheduling];
  v9 = [(MADAutoSetConfiguration *)self haveReceivedLookupResponse];
  BYTE3(v12) = [(MADAutoSetConfiguration *)self vendingAtomicInstanceForConfiguredEntries];
  BYTE2(v12) = v9;
  BYTE1(v12) = v8;
  LOBYTE(v12) = v7;
  LOBYTE(v11) = v20;
  v24 = [MADAutoSetConfiguration initForClientDomainName:v23 forSetClientName:"initForClientDomainName:forSetClientName:forAssetSetIdentifier:withAutoAssetEntries:withDiscoveredInFlightAtomicInstance:withNewerAtomicInstanceOncePersonalized:withLatestAtomicInstanceToVend:withLatestAtomicInstanceToVendFromPreSUStaging:withPreviouslyVendedLockedAtomicInstances:withTicksUntilPreviousForceUnlocked:withMostRecentlyReceivedCachedAssetSetID:withMostRecentlyReceivedDownloadedFromLive:withMostRecentlyReceivedLastTimeChecked:withMostRecentlyReceivedPostedDate:withLatestToVendCachedAssetSetID:withLatestToVendDownloadedFromLive:withLatestToVendLastTimeChecked:withLatestToVendPostedDate:withAavailableForUseError:withNewerVersionError:havingEverProvidedLatestToVend:inhibitingImpliedScheduling:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:" forAssetSetIdentifier:v31 withAutoAssetEntries:v30 withDiscoveredInFlightAtomicInstance:v29 withNewerAtomicInstanceOncePersonalized:v28 withLatestAtomicInstanceToVend:v22 withLatestAtomicInstanceToVendFromPreSUStaging:v21 withPreviouslyVendedLockedAtomicInstances:v27 withTicksUntilPreviousForceUnlocked:v11 withMostRecentlyReceivedCachedAssetSetID:v26 withMostRecentlyReceivedDownloadedFromLive:v19 withMostRecentlyReceivedLastTimeChecked:v18 withMostRecentlyReceivedPostedDate:v17 withLatestToVendCachedAssetSetID:v14 withLatestToVendDownloadedFromLive:v16 withLatestToVendLastTimeChecked:v15 withLatestToVendPostedDate:v13 withAavailableForUseError:v3 withNewerVersionError:v4 havingEverProvidedLatestToVend:v5 inhibitingImpliedScheduling:v6 havingReceivedLookupResponse:v12 vendingAtomicInstanceForConfiguredEntries:?];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MADAutoSetConfiguration *)self clientDomainName];
      v7 = [(MADAutoSetConfiguration *)v5 clientDomainName];
      if (([SUCore stringIsEqual:v6 to:v7]& 1) != 0)
      {
        v8 = [(MADAutoSetConfiguration *)self assetSetIdentifier];
        v9 = [(MADAutoSetConfiguration *)v5 assetSetIdentifier];
        v10 = [SUCore stringIsEqual:v8 to:v9];

        if (v10)
        {
          v11 = [(MADAutoSetConfiguration *)self autoAssetEntries];
          v12 = [v11 count];

          v13 = [(MADAutoSetConfiguration *)v5 autoAssetEntries];
          v14 = [v13 count];

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
                v17 = [(MADAutoSetConfiguration *)self autoAssetEntries];
                v18 = [v17 objectAtIndex:v16];

                v19 = [(MADAutoSetConfiguration *)v5 autoAssetEntries];
                v20 = [v19 objectAtIndex:v16];

                v21 = [v18 assetSelector];
                v22 = [v20 assetSelector];
                v23 = [v21 isEqual:v22];

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
  v3 = [(MADAutoSetConfiguration *)self clientDomainName];
  v4 = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  v37 = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  v36 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v31 = [v36 count];
  v5 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  if (v5)
  {
    v34 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  }

  else
  {
    v34 = @"N";
  }

  v6 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  if (v6)
  {
    v7 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  if (v8)
  {
    v41 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  }

  else
  {
    v41 = @"N";
  }

  v9 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  v33 = v6;
  if (v9)
  {
    v40 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  }

  else
  {
    v40 = @"N";
  }

  [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  v29 = v10 = @"N";
  v35 = v5;
  if (v29)
  {
    v39 = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  }

  else
  {
    v39 = @"N";
  }

  v11 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVendFromPreSUStaging];
  v12 = @"Y";
  if (!v11)
  {
    v12 = @"N";
  }

  v28 = v12;
  v42 = [(MADAutoSetConfiguration *)self previouslyVendedLockedSummary];
  v26 = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  v13 = [(MADAutoSetConfiguration *)self availableForUseError];
  v30 = v9;
  if (v13)
  {
    v14 = [NSString alloc];
    v25 = [(MADAutoSetConfiguration *)self availableForUseError];
    v10 = [v14 initWithFormat:@"%ld", objc_msgSend(v25, "code")];
  }

  v32 = v8;
  v15 = [(MADAutoSetConfiguration *)self newerVersionError];
  v38 = v4;
  v27 = v7;
  if (v15)
  {
    v16 = [NSString alloc];
    v24 = [(MADAutoSetConfiguration *)self newerVersionError];
    v17 = [v16 initWithFormat:@"%ld", objc_msgSend(v24, "code")];
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

  v22 = [NSString stringWithFormat:@"[(client)Domain:%@, Name:%@|(set)Identifier:%@, Entries:%ld|inFlightAI:%@(setID:%@)|oncePersonalized:%@|latestToVend:%@(setID:%@)(fromPSUS:%@)|previousAI:%@(ticks:%ld)|(error)available:%@, newer:%@|everVended:%@|inhibitScheduling:%@|lookupRsp:%@|vendingForConfig:%@]", v3, v38, v37, v31, v34, v27, v41, v40, v39, v28, v42, v26, v10, v17, v18, v19, v20, v21];
  if (v15)
  {
  }

  if (v13)
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
  v3 = [(MADAutoSetConfiguration *)self autoAssetSetClientName];
  v34 = [(MADAutoSetConfiguration *)self autoAssetEntries];
  v28 = [v34 count];
  v4 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  if (v4)
  {
    v32 = [(MADAutoSetConfiguration *)self discoveredInFlightAtomicInstance];
  }

  else
  {
    v32 = @"N";
  }

  v5 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  if (v5)
  {
    v6 = [(MADAutoSetConfiguration *)self mostRecentlyReceivedCachedAssetSetID];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  if (v7)
  {
    v29 = [(MADAutoSetConfiguration *)self newerAtomicInstanceOncePersonalized];
  }

  else
  {
    v29 = @"N";
  }

  v8 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  if (v8)
  {
    v9 = [(MADAutoSetConfiguration *)self latestAtomicInstanceToVend];
  }

  else
  {
    v9 = @"N";
  }

  [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  v25 = v27 = v8;
  if (v25)
  {
    v36 = [(MADAutoSetConfiguration *)self latestToVendCachedAssetSetID];
  }

  else
  {
    v36 = @"N";
  }

  v33 = v4;
  v37 = [(MADAutoSetConfiguration *)self previouslyVendedLockedSummary];
  v24 = [(MADAutoSetConfiguration *)self ticksUntilPreviousForceUnlocked];
  v10 = [(MADAutoSetConfiguration *)self availableForUseError];
  if (v10)
  {
    v11 = [NSString alloc];
    v23 = [(MADAutoSetConfiguration *)self availableForUseError];
    v35 = [v11 initWithFormat:@"%ld", objc_msgSend(v23, "code")];
  }

  else
  {
    v35 = @"N";
  }

  v31 = v5;
  v12 = [(MADAutoSetConfiguration *)self newerVersionError];
  v30 = v3;
  v26 = v6;
  v13 = v9;
  if (v12)
  {
    v14 = [NSString alloc];
    v22 = [(MADAutoSetConfiguration *)self newerVersionError];
    v15 = [v14 initWithFormat:@"%ld", objc_msgSend(v22, "code")];
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

  v20 = [NSString stringWithFormat:@"[clientName:%@|setEntries:%ld|inFlightAI:%@(setID:%@)|oncePersonalized:%@|latestToVend:%@(setID:%@)|previousAI:%@(ticks:%ld)|(error)available:%@, newer:%@|everVended:%@|inhibitScheduling:%@|lookupRsp:%@|vendingForConfig:%@]", v30, v28, v32, v26, v29, v13, v36, v37, v24, v35, v15, v16, v17, v18, v19];
  if (v12)
  {
  }

  if (v10)
  {
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  if (v7)
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
  v4 = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(MADAutoSetConfiguration *)self previouslyVendedLockedAtomicInstances];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
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

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(MADAutoSetConfiguration *)self clientDomainName];
  v5 = [(MADAutoSetConfiguration *)self assetSetIdentifier];
  v6 = [v3 initWithFormat:@"%@_%@", v4, v5];

  return v6;
}

@end