@interface MADAutoSetAtomicInstance
- (MADAutoSetAtomicInstance)initWithCoder:(id)coder;
- (id)description;
- (id)initForClientDomainName:(id)name forSetClientName:(id)clientName forAssetSetIdentifier:(id)identifier withAtomicInstanceUUID:(id)d asSubAtomicFrom:(id)from forCreationReason:(id)reason originallyCreatedOnDate:(id)date withCreationIndex:(int64_t)self0 representingInstanceEntries:(id)self1 inUseBySetJob:(id)self2;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetAtomicInstance

- (id)initForClientDomainName:(id)name forSetClientName:(id)clientName forAssetSetIdentifier:(id)identifier withAtomicInstanceUUID:(id)d asSubAtomicFrom:(id)from forCreationReason:(id)reason originallyCreatedOnDate:(id)date withCreationIndex:(int64_t)self0 representingInstanceEntries:(id)self1 inUseBySetJob:(id)self2
{
  nameCopy = name;
  clientNameCopy = clientName;
  obj = identifier;
  identifierCopy = identifier;
  dCopy = d;
  dCopy2 = d;
  fromCopy = from;
  reasonCopy = reason;
  dateCopy = date;
  entriesCopy = entries;
  jobCopy = job;
  v34.receiver = self;
  v34.super_class = MADAutoSetAtomicInstance;
  v24 = [(MADAutoSetAtomicInstance *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_clientDomainName, name);
    objc_storeStrong(&v25->_autoAssetSetClientName, clientName);
    objc_storeStrong(&v25->_assetSetIdentifier, obj);
    objc_storeStrong(&v25->_atomicInstanceUUID, dCopy);
    objc_storeStrong(&v25->_subAtomicFromAtomicInstanceUUID, from);
    objc_storeStrong(&v25->_instanceCreationDate, date);
    v25->_instanceCreationIndex = index;
    objc_storeStrong(&v25->_instanceEntries, entries);
    objc_storeStrong(&v25->_activeSetJobUUID, job);
    objc_storeStrong(&v25->_creationReason, reason);
    usageStatus = v25->_usageStatus;
    v25->_usageStatus = @"UNTRACKED";

    v25->_awaitingLastReferenceAltered = 0;
    *&v25->_catalogLookupNewerAvailable = 0;
  }

  return v25;
}

- (MADAutoSetAtomicInstance)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstanceUUID"];
    atomicInstanceUUID = v5->_atomicInstanceUUID;
    v5->_atomicInstanceUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subAtomicFromAtomicInstanceUUID"];
    subAtomicFromAtomicInstanceUUID = v5->_subAtomicFromAtomicInstanceUUID;
    v5->_subAtomicFromAtomicInstanceUUID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceCreationDate"];
    instanceCreationDate = v5->_instanceCreationDate;
    v5->_instanceCreationDate = v18;

    v5->_instanceCreationIndex = [coderCopy decodeIntegerForKey:@"instanceCreationIndex"];
    v20 = [coderCopy decodeObjectOfClasses:v7 forKey:@"instanceEntries"];
    instanceEntries = v5->_instanceEntries;
    v5->_instanceEntries = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeSetJobUUID"];
    activeSetJobUUID = v5->_activeSetJobUUID;
    v5->_activeSetJobUUID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationReason"];
    creationReason = v5->_creationReason;
    v5->_creationReason = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageStatus"];
    usageStatus = v5->_usageStatus;
    v5->_usageStatus = v26;

    v5->_catalogLookupNewerAvailable = [coderCopy decodeBoolForKey:@"catalogLookupNewerAvailable"];
    v5->_allContentDownloaded = [coderCopy decodeBoolForKey:@"allContentDownloaded"];
    v5->_lockedSupportingShortTermLocking = [coderCopy decodeBoolForKey:@"lockedSupportingShortTermLocking"];
    v5->_awaitingLastReferenceNewerFound = [coderCopy decodeBoolForKey:@"awaitingLastReferenceNewerFound"];
    v5->_awaitingLastReferenceAltered = [coderCopy decodeBoolForKey:@"awaitingLastReferenceAltered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MADAutoSetAtomicInstance *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  autoAssetSetClientName = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  [coderCopy encodeObject:autoAssetSetClientName forKey:@"autoAssetSetClientName"];

  assetSetIdentifier = [(MADAutoSetAtomicInstance *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  atomicInstanceUUID = [(MADAutoSetAtomicInstance *)self atomicInstanceUUID];
  [coderCopy encodeObject:atomicInstanceUUID forKey:@"atomicInstanceUUID"];

  subAtomicFromAtomicInstanceUUID = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  [coderCopy encodeObject:subAtomicFromAtomicInstanceUUID forKey:@"subAtomicFromAtomicInstanceUUID"];

  instanceCreationDate = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  [coderCopy encodeObject:instanceCreationDate forKey:@"instanceCreationDate"];

  [coderCopy encodeInteger:-[MADAutoSetAtomicInstance instanceCreationIndex](self forKey:{"instanceCreationIndex"), @"instanceCreationIndex"}];
  instanceEntries = [(MADAutoSetAtomicInstance *)self instanceEntries];
  [coderCopy encodeObject:instanceEntries forKey:@"instanceEntries"];

  activeSetJobUUID = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  [coderCopy encodeObject:activeSetJobUUID forKey:@"activeSetJobUUID"];

  creationReason = [(MADAutoSetAtomicInstance *)self creationReason];
  [coderCopy encodeObject:creationReason forKey:@"creationReason"];

  usageStatus = [(MADAutoSetAtomicInstance *)self usageStatus];
  [coderCopy encodeObject:usageStatus forKey:@"usageStatus"];

  [coderCopy encodeBool:-[MADAutoSetAtomicInstance catalogLookupNewerAvailable](self forKey:{"catalogLookupNewerAvailable"), @"catalogLookupNewerAvailable"}];
  [coderCopy encodeBool:-[MADAutoSetAtomicInstance allContentDownloaded](self forKey:{"allContentDownloaded"), @"allContentDownloaded"}];
  [coderCopy encodeBool:-[MADAutoSetAtomicInstance lockedSupportingShortTermLocking](self forKey:{"lockedSupportingShortTermLocking"), @"lockedSupportingShortTermLocking"}];
  [coderCopy encodeBool:-[MADAutoSetAtomicInstance awaitingLastReferenceNewerFound](self forKey:{"awaitingLastReferenceNewerFound"), @"awaitingLastReferenceNewerFound"}];
  [coderCopy encodeBool:-[MADAutoSetAtomicInstance awaitingLastReferenceAltered](self forKey:{"awaitingLastReferenceAltered"), @"awaitingLastReferenceAltered"}];
}

- (id)description
{
  instanceEntries = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v4 = [instanceEntries count];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    instanceEntries2 = [(MADAutoSetAtomicInstance *)self instanceEntries];
    v6 = [instanceEntries2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(instanceEntries2);
          }

          v12 = *(*(&v19 + 1) + 8 * v10);
          v13 = [NSString alloc];
          summary = [v12 summary];
          v9 = [v13 initWithFormat:@"%@%@\n", v11, summary];

          v10 = v10 + 1;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [instanceEntries2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  summary2 = [(MADAutoSetAtomicInstance *)self summary];
  v17 = [NSString stringWithFormat:@"%@instanceEntries:%@", summary2, v15];

  return v17;
}

- (id)summary
{
  clientDomainName = [(MADAutoSetAtomicInstance *)self clientDomainName];
  autoAssetSetClientName = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  assetSetIdentifier = [(MADAutoSetAtomicInstance *)self assetSetIdentifier];
  atomicInstanceUUID = [(MADAutoSetAtomicInstance *)self atomicInstanceUUID];
  subAtomicFromAtomicInstanceUUID = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  if (subAtomicFromAtomicInstanceUUID)
  {
    subAtomicFromAtomicInstanceUUID2 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  }

  else
  {
    subAtomicFromAtomicInstanceUUID2 = @"N";
  }

  creationReason = [(MADAutoSetAtomicInstance *)self creationReason];
  if (creationReason)
  {
    creationReason2 = [(MADAutoSetAtomicInstance *)self creationReason];
  }

  else
  {
    creationReason2 = @"N";
  }

  usageStatus = [(MADAutoSetAtomicInstance *)self usageStatus];
  v24 = subAtomicFromAtomicInstanceUUID2;
  v25 = subAtomicFromAtomicInstanceUUID;
  if (usageStatus)
  {
    usageStatus2 = [(MADAutoSetAtomicInstance *)self usageStatus];
  }

  else
  {
    usageStatus2 = @"N";
  }

  instanceCreationDate = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  instanceCreationIndex = [(MADAutoSetAtomicInstance *)self instanceCreationIndex];
  instanceEntries = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v19 = [instanceEntries count];
  activeSetJobUUID = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  v28 = autoAssetSetClientName;
  v29 = clientDomainName;
  v26 = atomicInstanceUUID;
  v27 = assetSetIdentifier;
  if (activeSetJobUUID)
  {
    activeSetJobUUID2 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  }

  else
  {
    activeSetJobUUID2 = @"N";
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

  v17 = [NSString stringWithFormat:@"[(client)Domain:%@, Name:%@|(set)Identifier:%@, UUID:%@, Sub:%@(creation)[%@(%@)]Date:%@, Index:%ld|entries:%ld|setJob:%@|(status)newerAvailable:%@, allDownloaded:%@|shortTerm:%@|(awiating)NewerFound:%@, Altered:%@]", v29, v28, v27, v26, v24, creationReason2, usageStatus2, instanceCreationDate, instanceCreationIndex, v19, activeSetJobUUID2, v12, v13, v14, v15, v16];
  if (activeSetJobUUID)
  {
  }

  if (usageStatus)
  {
  }

  if (creationReason)
  {
  }

  if (v25)
  {
  }

  return v17;
}

- (id)newSummaryWithoutEntryID
{
  autoAssetSetClientName = [(MADAutoSetAtomicInstance *)self autoAssetSetClientName];
  subAtomicFromAtomicInstanceUUID = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  if (subAtomicFromAtomicInstanceUUID)
  {
    subAtomicFromAtomicInstanceUUID2 = [(MADAutoSetAtomicInstance *)self subAtomicFromAtomicInstanceUUID];
  }

  else
  {
    subAtomicFromAtomicInstanceUUID2 = @"N";
  }

  creationReason = [(MADAutoSetAtomicInstance *)self creationReason];
  if (creationReason)
  {
    creationReason2 = [(MADAutoSetAtomicInstance *)self creationReason];
  }

  else
  {
    creationReason2 = @"N";
  }

  usageStatus = [(MADAutoSetAtomicInstance *)self usageStatus];
  v23 = subAtomicFromAtomicInstanceUUID2;
  if (usageStatus)
  {
    usageStatus2 = [(MADAutoSetAtomicInstance *)self usageStatus];
  }

  else
  {
    usageStatus2 = @"N";
  }

  v24 = subAtomicFromAtomicInstanceUUID;
  instanceCreationDate = [(MADAutoSetAtomicInstance *)self instanceCreationDate];
  instanceCreationIndex = [(MADAutoSetAtomicInstance *)self instanceCreationIndex];
  instanceEntries = [(MADAutoSetAtomicInstance *)self instanceEntries];
  v17 = [instanceEntries count];
  activeSetJobUUID = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  v25 = autoAssetSetClientName;
  if (activeSetJobUUID)
  {
    activeSetJobUUID2 = [(MADAutoSetAtomicInstance *)self activeSetJobUUID];
  }

  else
  {
    activeSetJobUUID2 = @"N";
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

  v15 = [NSString stringWithFormat:@"[clientName:%@|SubAtomic:%@|(creation)[%@(%@)]Date:%@, Index:%ld|entries:%ld|setJob:%@|(status)newerAvailable:%@, allDownloaded:%@|shortTerm:%@|(awiating)NewerFound:%@, Altered:%@]", v25, v23, creationReason2, usageStatus2, instanceCreationDate, instanceCreationIndex, v17, activeSetJobUUID2, v10, v11, v12, v13, v14];
  if (activeSetJobUUID)
  {
  }

  if (usageStatus)
  {
  }

  if (creationReason)
  {
  }

  if (v24)
  {
  }

  return v15;
}

@end