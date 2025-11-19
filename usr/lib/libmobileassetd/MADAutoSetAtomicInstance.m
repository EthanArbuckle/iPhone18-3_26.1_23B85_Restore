@interface MADAutoSetAtomicInstance
- (MADAutoSetAtomicInstance)initWithCoder:(id)a3;
- (id)description;
- (id)initForClientDomainName:(id)a3 forSetClientName:(id)a4 forAssetSetIdentifier:(id)a5 withAtomicInstanceUUID:(id)a6 asSubAtomicFrom:(id)a7 forCreationReason:(id)a8 originallyCreatedOnDate:(id)a9 withCreationIndex:(int64_t)a10 representingInstanceEntries:(id)a11 inUseBySetJob:(id)a12;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetAtomicInstance

- (id)initForClientDomainName:(id)a3 forSetClientName:(id)a4 forAssetSetIdentifier:(id)a5 withAtomicInstanceUUID:(id)a6 asSubAtomicFrom:(id)a7 forCreationReason:(id)a8 originallyCreatedOnDate:(id)a9 withCreationIndex:(int64_t)a10 representingInstanceEntries:(id)a11 inUseBySetJob:(id)a12
{
  v31 = a3;
  v30 = a4;
  obj = a5;
  v19 = a5;
  v29 = a6;
  v20 = a6;
  v33 = a7;
  v32 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v34.receiver = self;
  v34.super_class = MADAutoSetAtomicInstance;
  v24 = [(MADAutoSetAtomicInstance *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_clientDomainName, a3);
    objc_storeStrong(&v25->_autoAssetSetClientName, a4);
    objc_storeStrong(&v25->_assetSetIdentifier, obj);
    objc_storeStrong(&v25->_atomicInstanceUUID, v29);
    objc_storeStrong(&v25->_subAtomicFromAtomicInstanceUUID, a7);
    objc_storeStrong(&v25->_instanceCreationDate, a9);
    v25->_instanceCreationIndex = a10;
    objc_storeStrong(&v25->_instanceEntries, a11);
    objc_storeStrong(&v25->_activeSetJobUUID, a12);
    objc_storeStrong(&v25->_creationReason, a8);
    usageStatus = v25->_usageStatus;
    v25->_usageStatus = @"UNTRACKED";

    v25->_awaitingLastReferenceAltered = 0;
    *&v25->_catalogLookupNewerAvailable = 0;
  }

  return v25;
}

- (MADAutoSetAtomicInstance)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MADAutoSetAtomicInstance;
  v5 = [(MADAutoSetAtomicInstance *)&v29 init];
  if (v5)
  {
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v30[4] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v30 count:5];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstanceUUID"];
    atomicInstanceUUID = v5->_atomicInstanceUUID;
    v5->_atomicInstanceUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subAtomicFromAtomicInstanceUUID"];
    subAtomicFromAtomicInstanceUUID = v5->_subAtomicFromAtomicInstanceUUID;
    v5->_subAtomicFromAtomicInstanceUUID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceCreationDate"];
    instanceCreationDate = v5->_instanceCreationDate;
    v5->_instanceCreationDate = v18;

    v5->_instanceCreationIndex = [v4 decodeIntegerForKey:@"instanceCreationIndex"];
    v20 = [v4 decodeObjectOfClasses:v7 forKey:@"instanceEntries"];
    instanceEntries = v5->_instanceEntries;
    v5->_instanceEntries = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeSetJobUUID"];
    activeSetJobUUID = v5->_activeSetJobUUID;
    v5->_activeSetJobUUID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationReason"];
    creationReason = v5->_creationReason;
    v5->_creationReason = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageStatus"];
    usageStatus = v5->_usageStatus;
    v5->_usageStatus = v26;

    v5->_catalogLookupNewerAvailable = [v4 decodeBoolForKey:@"catalogLookupNewerAvailable"];
    v5->_allContentDownloaded = [v4 decodeBoolForKey:@"allContentDownloaded"];
    v5->_lockedSupportingShortTermLocking = [v4 decodeBoolForKey:@"lockedSupportingShortTermLocking"];
    v5->_awaitingLastReferenceNewerFound = [v4 decodeBoolForKey:@"awaitingLastReferenceNewerFound"];
    v5->_awaitingLastReferenceAltered = [v4 decodeBoolForKey:@"awaitingLastReferenceAltered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(MADAutoSetAtomicInstance *)self clientDomainName];
  [v14 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  [v14 encodeObject:v5 forKey:@"autoAssetSetClientName"];

  v6 = [(MADAutoSetAtomicInstance *)self assetSetIdentifier];
  [v14 encodeObject:v6 forKey:@"assetSetIdentifier"];

  v7 = [(MADAutoSetAtomicInstance *)self atomicInstanceUUID];
  [v14 encodeObject:v7 forKey:@"atomicInstanceUUID"];

  v8 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  [v14 encodeObject:v8 forKey:@"subAtomicFromAtomicInstanceUUID"];

  v9 = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  [v14 encodeObject:v9 forKey:@"instanceCreationDate"];

  [v14 encodeInteger:-[MADAutoSetAtomicInstance instanceCreationIndex](self forKey:{"instanceCreationIndex"), @"instanceCreationIndex"}];
  v10 = [(MADAutoSetAtomicInstance *)self instanceEntries];
  [v14 encodeObject:v10 forKey:@"instanceEntries"];

  v11 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  [v14 encodeObject:v11 forKey:@"activeSetJobUUID"];

  v12 = [(MADAutoSetAtomicInstance *)self creationReason];
  [v14 encodeObject:v12 forKey:@"creationReason"];

  v13 = [(MADAutoSetAtomicInstance *)self usageStatus];
  [v14 encodeObject:v13 forKey:@"usageStatus"];

  [v14 encodeBool:-[MADAutoSetAtomicInstance catalogLookupNewerAvailable](self forKey:{"catalogLookupNewerAvailable"), @"catalogLookupNewerAvailable"}];
  [v14 encodeBool:-[MADAutoSetAtomicInstance allContentDownloaded](self forKey:{"allContentDownloaded"), @"allContentDownloaded"}];
  [v14 encodeBool:-[MADAutoSetAtomicInstance lockedSupportingShortTermLocking](self forKey:{"lockedSupportingShortTermLocking"), @"lockedSupportingShortTermLocking"}];
  [v14 encodeBool:-[MADAutoSetAtomicInstance awaitingLastReferenceNewerFound](self forKey:{"awaitingLastReferenceNewerFound"), @"awaitingLastReferenceNewerFound"}];
  [v14 encodeBool:-[MADAutoSetAtomicInstance awaitingLastReferenceAltered](self forKey:{"awaitingLastReferenceAltered"), @"awaitingLastReferenceAltered"}];
}

- (id)description
{
  v3 = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v4 = [v3 count];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(MADAutoSetAtomicInstance *)self instanceEntries];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = @"[\n";
      do
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * v10);
          v13 = [NSString alloc];
          v14 = [v12 summary];
          v9 = [v13 initWithFormat:@"%@%@\n", v11, v14];

          v10 = v10 + 1;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = @"[\n";
    }

    v15 = [[NSString alloc] initWithFormat:@"%@]", v9];
  }

  else
  {
    v15 = @"[EMPTY]";
  }

  v16 = [(MADAutoSetAtomicInstance *)self summary];
  v17 = [NSString stringWithFormat:@"%@instanceEntries:%@", v16, v15];

  return v17;
}

- (id)summary
{
  v3 = [(MADAutoSetAtomicInstance *)self clientDomainName];
  v4 = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  v5 = [(MADAutoSetAtomicInstance *)self assetSetIdentifier];
  v6 = [(MADAutoSetAtomicInstance *)self atomicInstanceUUID];
  v7 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  if (v7)
  {
    v8 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  }

  else
  {
    v8 = @"N";
  }

  v23 = [(MADAutoSetAtomicInstance *)self creationReason];
  if (v23)
  {
    v22 = [(MADAutoSetAtomicInstance *)self creationReason];
  }

  else
  {
    v22 = @"N";
  }

  v21 = [(MADAutoSetAtomicInstance *)self usageStatus];
  v24 = v8;
  v25 = v7;
  if (v21)
  {
    v30 = [(MADAutoSetAtomicInstance *)self usageStatus];
  }

  else
  {
    v30 = @"N";
  }

  v31 = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  v20 = [(MADAutoSetAtomicInstance *)self instanceCreationIndex];
  v9 = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v19 = [v9 count];
  v10 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  v28 = v4;
  v29 = v3;
  v26 = v6;
  v27 = v5;
  if (v10)
  {
    v11 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  }

  else
  {
    v11 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self catalogLookupNewerAvailable])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self allContentDownloaded])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self lockedSupportingShortTermLocking])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self awaitingLastReferenceNewerFound])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self awaitingLastReferenceAltered])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [NSString stringWithFormat:@"[(client)Domain:%@, Name:%@|(set)Identifier:%@, UUID:%@, Sub:%@(creation)[%@(%@)]Date:%@, Index:%ld|entries:%ld|setJob:%@|(status)newerAvailable:%@, allDownloaded:%@|shortTerm:%@|(awiating)NewerFound:%@, Altered:%@]", v29, v28, v27, v26, v24, v22, v30, v31, v20, v19, v11, v12, v13, v14, v15, v16];
  if (v10)
  {
  }

  if (v21)
  {
  }

  if (v23)
  {
  }

  if (v25)
  {
  }

  return v17;
}

- (id)newSummaryWithoutEntryID
{
  v3 = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  v4 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  if (v4)
  {
    v5 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  }

  else
  {
    v5 = @"N";
  }

  v22 = [(MADAutoSetAtomicInstance *)self creationReason];
  if (v22)
  {
    v6 = [(MADAutoSetAtomicInstance *)self creationReason];
  }

  else
  {
    v6 = @"N";
  }

  v21 = [(MADAutoSetAtomicInstance *)self usageStatus];
  v23 = v5;
  if (v21)
  {
    v20 = [(MADAutoSetAtomicInstance *)self usageStatus];
  }

  else
  {
    v20 = @"N";
  }

  v24 = v4;
  v7 = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  v18 = [(MADAutoSetAtomicInstance *)self instanceCreationIndex];
  v19 = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v17 = [v19 count];
  v8 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  v25 = v3;
  if (v8)
  {
    v9 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  }

  else
  {
    v9 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self catalogLookupNewerAvailable])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self allContentDownloaded])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self lockedSupportingShortTermLocking])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self awaitingLastReferenceNewerFound])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  if ([(MADAutoSetAtomicInstance *)self awaitingLastReferenceAltered])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v15 = [NSString stringWithFormat:@"[clientName:%@|SubAtomic:%@|(creation)[%@(%@)]Date:%@, Index:%ld|entries:%ld|setJob:%@|(status)newerAvailable:%@, allDownloaded:%@|shortTerm:%@|(awiating)NewerFound:%@, Altered:%@]", v25, v23, v6, v20, v7, v18, v17, v9, v10, v11, v12, v13, v14];
  if (v8)
  {
  }

  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v24)
  {
  }

  return v15;
}

@end