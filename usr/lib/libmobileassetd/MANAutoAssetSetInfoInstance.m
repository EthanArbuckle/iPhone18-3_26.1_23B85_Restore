@interface MANAutoAssetSetInfoInstance
- (MANAutoAssetSetInfoInstance)initWithCoder:(id)a3;
- (id)description;
- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 withProcessName:(id)a5 withProcessID:(int64_t)a6 forAssetSetIdentifier:(id)a7 forAtomicInstance:(id)a8 comprisedOfEntries:(id)a9 asEntriesWhenTargeting:(id)a10 associatingFrameworkUUID:(id)a11;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetInfoInstance

- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 withProcessName:(id)a5 withProcessID:(int64_t)a6 forAssetSetIdentifier:(id)a7 forAtomicInstance:(id)a8 comprisedOfEntries:(id)a9 asEntriesWhenTargeting:(id)a10 associatingFrameworkUUID:(id)a11
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = MANAutoAssetSetInfoInstance;
  v19 = [(MANAutoAssetSetInfoInstance *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_clientDomainName, a3);
    objc_storeStrong(&v20->_autoAssetSetClientName, a4);
    objc_storeStrong(&v20->_clientProcessName, a5);
    v20->_clientProcessID = a6;
    objc_storeStrong(&v20->_assetSetIdentifier, a7);
    objc_storeStrong(&v20->_atomicInstance, a8);
    objc_storeStrong(&v20->_autoAssetEntries, a9);
    objc_storeStrong(&v20->_entriesWhenTargeting, a10);
    objc_storeStrong(&v20->_frameworkInstanceUUID, a11);
  }

  return v20;
}

- (MANAutoAssetSetInfoInstance)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MANAutoAssetSetInfoInstance;
  v5 = [(MANAutoAssetSetInfoInstance *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [v4 decodeIntegerForKey:@"clientProcessID"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstance"];
    atomicInstance = v5->_atomicInstance;
    v5->_atomicInstance = v14;

    v16 = [NSSet alloc];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v17 = [NSArray arrayWithObjects:v31 count:3];
    v18 = [v16 initWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v19;

    v21 = [NSSet alloc];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v22 = [NSArray arrayWithObjects:v30 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetInfoInstance *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MANAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  [v4 encodeObject:v6 forKey:@"autoAssetSetClientName"];

  v7 = [(MANAutoAssetSetInfoInstance *)self clientProcessName];
  [v4 encodeObject:v7 forKey:@"clientProcessName"];

  [v4 encodeInteger:-[MANAutoAssetSetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  v8 = [(MANAutoAssetSetInfoInstance *)self assetSetIdentifier];
  [v4 encodeObject:v8 forKey:@"assetSetIdentifier"];

  v9 = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  [v4 encodeObject:v9 forKey:@"atomicInstance"];

  v10 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
  [v4 encodeObject:v10 forKey:@"autoAssetEntries"];

  v11 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  [v4 encodeObject:v11 forKey:@"entriesWhenTargeting"];

  v12 = [(MANAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  [v4 encodeObject:v12 forKey:@"frameworkInstanceUUID"];
}

- (id)description
{
  v3 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];

  v4 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];

  v5 = [(MANAutoAssetSetInfoInstance *)self summary];
  v6 = [(MANAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  v7 = v6;
  if (v3)
  {
    v8 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [v8 description];
    v10 = v9;
    if (v4)
    {
      v11 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
      v12 = [v11 description];
      v13 = [NSString stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@\nentriesWhenTargeting:\n%@", v5, v7, v10, v12];
    }

    else
    {
      v13 = [NSString stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@", v5, v7, v9];
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v8 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v14 = [v8 description];
    v13 = [NSString stringWithFormat:@"%@|%@\nentriesWhenTargeting:\n%@", v5, v7, v14];

LABEL_8:
    goto LABEL_9;
  }

  v13 = [NSString stringWithFormat:@"%@|%@", v5, v6];
LABEL_9:

  return v13;
}

- (id)summary
{
  v20 = [(MANAutoAssetSetInfoInstance *)self clientDomainName];
  v22 = [(MANAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  v21 = [(MANAutoAssetSetInfoInstance *)self clientProcessName];
  v3 = [(MANAutoAssetSetInfoInstance *)self clientProcessID];
  v4 = [(MANAutoAssetSetInfoInstance *)self assetSetIdentifier];
  v5 = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  if (v5)
  {
    v6 = [(MANAutoAssetSetInfoInstance *)self atomicInstance];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
  if (v7)
  {
    v8 = [NSString alloc];
    v19 = [(MANAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [v8 initWithFormat:@"%ld", objc_msgSend(v19, "count")];
  }

  else
  {
    v9 = @"N";
  }

  v10 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  if (v10)
  {
    v11 = [NSString alloc];
    v12 = [(MANAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v13 = [v11 initWithFormat:@"%ld", objc_msgSend(v12, "count")];
    v17 = v3;
    v14 = v20;
    v15 = [NSString stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", v20, v22, v21, v17, v4, v6, v9, v13];
  }

  else
  {
    v18 = v3;
    v14 = v20;
    v15 = [NSString stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", v20, v22, v21, v18, v4, v6, v9, @"N"];
  }

  if (v7)
  {
  }

  if (v5)
  {
  }

  return v15;
}

@end