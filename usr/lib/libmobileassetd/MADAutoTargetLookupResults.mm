@interface MADAutoTargetLookupResults
- (MADAutoTargetLookupResults)initWithCoder:(id)a3;
- (id)initForTargetOSVersion:(id)a3 forTargetBuild:(id)a4 forTargetTrainName:(id)a5 forTargetRestoreVersion:(id)a6 targetingGroupNames:(id)a7;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (int64_t)lookupResultsAssetCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoTargetLookupResults

- (id)initForTargetOSVersion:(id)a3 forTargetBuild:(id)a4 forTargetTrainName:(id)a5 forTargetRestoreVersion:(id)a6 targetingGroupNames:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = MADAutoTargetLookupResults;
  v17 = [(MADAutoTargetLookupResults *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_targetOSVersion, a3);
    objc_storeStrong(&v18->_targetBuild, a4);
    objc_storeStrong(&v18->_targetTrainName, a5);
    objc_storeStrong(&v18->_targetRestoreVersion, a6);
    objc_storeStrong(&v18->_targetGroupNames, a7);
    v19 = objc_alloc_init(NSMutableDictionary);
    setLookupResults = v18->_setLookupResults;
    v18->_setLookupResults = v19;
  }

  return v18;
}

- (MADAutoTargetLookupResults)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MADAutoTargetLookupResults;
  v5 = [(MADAutoTargetLookupResults *)&v23 init];
  if (v5)
  {
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v25 count:3];
    v7 = [NSSet setWithArray:v6];

    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v24 count:2];
    v9 = [NSSet setWithArray:v8];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetOSVersion"];
    targetOSVersion = v5->_targetOSVersion;
    v5->_targetOSVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetBuild"];
    targetBuild = v5->_targetBuild;
    v5->_targetBuild = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetTrainName"];
    targetTrainName = v5->_targetTrainName;
    v5->_targetTrainName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v16;

    v18 = [v4 decodeObjectOfClasses:v9 forKey:@"targetGroupNames"];
    targetGroupNames = v5->_targetGroupNames;
    v5->_targetGroupNames = v18;

    v20 = [v4 decodeObjectOfClasses:v7 forKey:@"setLookupResults"];
    setLookupResults = v5->_setLookupResults;
    v5->_setLookupResults = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoTargetLookupResults *)self targetOSVersion];
  [v4 encodeObject:v5 forKey:@"targetOSVersion"];

  v6 = [(MADAutoTargetLookupResults *)self targetBuild];
  [v4 encodeObject:v6 forKey:@"targetBuild"];

  v7 = [(MADAutoTargetLookupResults *)self targetTrainName];
  [v4 encodeObject:v7 forKey:@"targetTrainName"];

  v8 = [(MADAutoTargetLookupResults *)self targetRestoreVersion];
  [v4 encodeObject:v8 forKey:@"targetRestoreVersion"];

  v9 = [(MADAutoTargetLookupResults *)self targetGroupNames];
  [v4 encodeObject:v9 forKey:@"targetGroupNames"];

  v10 = [(MADAutoTargetLookupResults *)self setLookupResults];
  [v4 encodeObject:v10 forKey:@"setLookupResults"];
}

- (id)summary
{
  v3 = [(MADAutoTargetLookupResults *)self targetTrainName];
  v4 = [(MADAutoTargetLookupResults *)self targetRestoreVersion];
  v5 = [(MADAutoTargetLookupResults *)self newSummaryWithoutEntryID];
  v6 = [NSString stringWithFormat:@"TARGET[trainName:%@|restoreVersion:%@]%@", v3, v4, v5];

  return v6;
}

- (id)newSummaryWithoutEntryID
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(MADAutoTargetLookupResults *)self targetGroupNames];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (v7)
        {
          [(__CFString *)v7 appendFormat:@", %@", *(*(&v19 + 1) + 8 * i)];
        }

        else
        {
          v7 = [[NSMutableString alloc] initWithString:*(*(&v19 + 1) + 8 * i)];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v18 = [NSString alloc];
  v9 = [(MADAutoTargetLookupResults *)self targetOSVersion];
  if (v9)
  {
    v10 = [(MADAutoTargetLookupResults *)self targetOSVersion];
  }

  else
  {
    v10 = @"N";
  }

  v11 = [(MADAutoTargetLookupResults *)self targetBuild];
  v12 = @"N";
  if (v11)
  {
    v13 = [(MADAutoTargetLookupResults *)self targetBuild];
  }

  else
  {
    v13 = @"N";
  }

  if (v7)
  {
    v12 = v7;
  }

  v14 = [(MADAutoTargetLookupResults *)self setLookupResults];
  if (v14)
  {
    i = [(MADAutoTargetLookupResults *)self setLookupResults];
    v15 = [i count];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v18 initWithFormat:@"[OSVersion:%@|Build:%@|GroupNames:%@|LookupResults:%ld|Assets:%ld]", v10, v13, v12, v15, -[MADAutoTargetLookupResults lookupResultsAssetCount](self, "lookupResultsAssetCount")];
  if (v14)
  {
  }

  if (v11)
  {
  }

  if (v9)
  {
  }

  return v16;
}

- (int64_t)lookupResultsAssetCount
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MADAutoTargetLookupResults *)self setLookupResults];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(MADAutoTargetLookupResults *)self setLookupResults];
        v11 = [v10 safeObjectForKey:v9 ofClass:objc_opt_class()];

        if (v11)
        {
          v12 = [v11 autoAssetSetCatalog];
          v13 = [v12 safeObjectForKey:@"Assets" ofClass:objc_opt_class()];

          v6 += [v13 count];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end