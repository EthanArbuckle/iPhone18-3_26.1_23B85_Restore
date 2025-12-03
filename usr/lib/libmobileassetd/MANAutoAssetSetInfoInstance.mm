@interface MANAutoAssetSetInfoInstance
- (MANAutoAssetSetInfoInstance)initWithCoder:(id)coder;
- (id)description;
- (id)initUsingClientDomain:(id)domain forClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d forAssetSetIdentifier:(id)identifier forAtomicInstance:(id)instance comprisedOfEntries:(id)entries asEntriesWhenTargeting:(id)self0 associatingFrameworkUUID:(id)self1;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetInfoInstance

- (id)initUsingClientDomain:(id)domain forClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d forAssetSetIdentifier:(id)identifier forAtomicInstance:(id)instance comprisedOfEntries:(id)entries asEntriesWhenTargeting:(id)self0 associatingFrameworkUUID:(id)self1
{
  domainCopy = domain;
  nameCopy = name;
  processNameCopy = processName;
  identifierCopy = identifier;
  instanceCopy = instance;
  entriesCopy = entries;
  targetingCopy = targeting;
  iDCopy = iD;
  v29.receiver = self;
  v29.super_class = MANAutoAssetSetInfoInstance;
  v19 = [(MANAutoAssetSetInfoInstance *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_clientDomainName, domain);
    objc_storeStrong(&v20->_autoAssetSetClientName, name);
    objc_storeStrong(&v20->_clientProcessName, processName);
    v20->_clientProcessID = d;
    objc_storeStrong(&v20->_assetSetIdentifier, identifier);
    objc_storeStrong(&v20->_atomicInstance, instance);
    objc_storeStrong(&v20->_autoAssetEntries, entries);
    objc_storeStrong(&v20->_entriesWhenTargeting, targeting);
    objc_storeStrong(&v20->_frameworkInstanceUUID, iD);
  }

  return v20;
}

- (MANAutoAssetSetInfoInstance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MANAutoAssetSetInfoInstance;
  v5 = [(MANAutoAssetSetInfoInstance *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [coderCopy decodeIntegerForKey:@"clientProcessID"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstance"];
    atomicInstance = v5->_atomicInstance;
    v5->_atomicInstance = v14;

    v16 = [NSSet alloc];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v17 = [NSArray arrayWithObjects:v31 count:3];
    v18 = [v16 initWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v19;

    v21 = [NSSet alloc];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v22 = [NSArray arrayWithObjects:v30 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MANAutoAssetSetInfoInstance *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  autoAssetSetClientName = [(MANAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  [coderCopy encodeObject:autoAssetSetClientName forKey:@"autoAssetSetClientName"];

  clientProcessName = [(MANAutoAssetSetInfoInstance *)self clientProcessName];
  [coderCopy encodeObject:clientProcessName forKey:@"clientProcessName"];

  [coderCopy encodeInteger:-[MANAutoAssetSetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  assetSetIdentifier = [(MANAutoAssetSetInfoInstance *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  atomicInstance = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  [coderCopy encodeObject:atomicInstance forKey:@"atomicInstance"];

  autoAssetEntries = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];

  entriesWhenTargeting = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  [coderCopy encodeObject:entriesWhenTargeting forKey:@"entriesWhenTargeting"];

  frameworkInstanceUUID = [(MANAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  [coderCopy encodeObject:frameworkInstanceUUID forKey:@"frameworkInstanceUUID"];
}

- (id)description
{
  autoAssetEntries = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];

  entriesWhenTargeting = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];

  summary = [(MANAutoAssetSetInfoInstance *)self summary];
  frameworkInstanceUUID = [(MANAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  v7 = frameworkInstanceUUID;
  if (autoAssetEntries)
  {
    autoAssetEntries2 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [autoAssetEntries2 description];
    v10 = v9;
    if (entriesWhenTargeting)
    {
      entriesWhenTargeting2 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
      v12 = [entriesWhenTargeting2 description];
      v13 = [NSString stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@\nentriesWhenTargeting:\n%@", summary, v7, v10, v12];
    }

    else
    {
      v13 = [NSString stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@", summary, v7, v9];
    }

    goto LABEL_8;
  }

  if (entriesWhenTargeting)
  {
    autoAssetEntries2 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v14 = [autoAssetEntries2 description];
    v13 = [NSString stringWithFormat:@"%@|%@\nentriesWhenTargeting:\n%@", summary, v7, v14];

LABEL_8:
    goto LABEL_9;
  }

  v13 = [NSString stringWithFormat:@"%@|%@", summary, frameworkInstanceUUID];
LABEL_9:

  return v13;
}

- (id)summary
{
  clientDomainName = [(MANAutoAssetSetInfoInstance *)self clientDomainName];
  autoAssetSetClientName = [(MANAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  clientProcessName = [(MANAutoAssetSetInfoInstance *)self clientProcessName];
  clientProcessID = [(MANAutoAssetSetInfoInstance *)self clientProcessID];
  assetSetIdentifier = [(MANAutoAssetSetInfoInstance *)self assetSetIdentifier];
  atomicInstance = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  if (atomicInstance)
  {
    atomicInstance2 = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  }

  else
  {
    atomicInstance2 = @"N";
  }

  autoAssetEntries = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
  if (autoAssetEntries)
  {
    v8 = [NSString alloc];
    autoAssetEntries2 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [v8 initWithFormat:@"%ld", objc_msgSend(autoAssetEntries2, "count")];
  }

  else
  {
    v9 = @"N";
  }

  entriesWhenTargeting = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  if (entriesWhenTargeting)
  {
    v11 = [NSString alloc];
    entriesWhenTargeting2 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v13 = [v11 initWithFormat:@"%ld", objc_msgSend(entriesWhenTargeting2, "count")];
    v17 = clientProcessID;
    v14 = clientDomainName;
    v15 = [NSString stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", clientDomainName, autoAssetSetClientName, clientProcessName, v17, assetSetIdentifier, atomicInstance2, v9, v13];
  }

  else
  {
    v18 = clientProcessID;
    v14 = clientDomainName;
    v15 = [NSString stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", clientDomainName, autoAssetSetClientName, clientProcessName, v18, assetSetIdentifier, atomicInstance2, v9, @"N"];
  }

  if (autoAssetEntries)
  {
  }

  if (atomicInstance)
  {
  }

  return v15;
}

@end