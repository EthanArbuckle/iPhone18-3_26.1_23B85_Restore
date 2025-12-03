@interface MADAutoTargetLookupResults
- (MADAutoTargetLookupResults)initWithCoder:(id)coder;
- (id)initForTargetOSVersion:(id)version forTargetBuild:(id)build forTargetTrainName:(id)name forTargetRestoreVersion:(id)restoreVersion targetingGroupNames:(id)names;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (int64_t)lookupResultsAssetCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoTargetLookupResults

- (id)initForTargetOSVersion:(id)version forTargetBuild:(id)build forTargetTrainName:(id)name forTargetRestoreVersion:(id)restoreVersion targetingGroupNames:(id)names
{
  versionCopy = version;
  buildCopy = build;
  nameCopy = name;
  restoreVersionCopy = restoreVersion;
  namesCopy = names;
  v23.receiver = self;
  v23.super_class = MADAutoTargetLookupResults;
  v17 = [(MADAutoTargetLookupResults *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_targetOSVersion, version);
    objc_storeStrong(&v18->_targetBuild, build);
    objc_storeStrong(&v18->_targetTrainName, name);
    objc_storeStrong(&v18->_targetRestoreVersion, restoreVersion);
    objc_storeStrong(&v18->_targetGroupNames, names);
    v19 = objc_alloc_init(NSMutableDictionary);
    setLookupResults = v18->_setLookupResults;
    v18->_setLookupResults = v19;
  }

  return v18;
}

- (MADAutoTargetLookupResults)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetOSVersion"];
    targetOSVersion = v5->_targetOSVersion;
    v5->_targetOSVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetBuild"];
    targetBuild = v5->_targetBuild;
    v5->_targetBuild = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetTrainName"];
    targetTrainName = v5->_targetTrainName;
    v5->_targetTrainName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v16;

    v18 = [coderCopy decodeObjectOfClasses:v9 forKey:@"targetGroupNames"];
    targetGroupNames = v5->_targetGroupNames;
    v5->_targetGroupNames = v18;

    v20 = [coderCopy decodeObjectOfClasses:v7 forKey:@"setLookupResults"];
    setLookupResults = v5->_setLookupResults;
    v5->_setLookupResults = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  targetOSVersion = [(MADAutoTargetLookupResults *)self targetOSVersion];
  [coderCopy encodeObject:targetOSVersion forKey:@"targetOSVersion"];

  targetBuild = [(MADAutoTargetLookupResults *)self targetBuild];
  [coderCopy encodeObject:targetBuild forKey:@"targetBuild"];

  targetTrainName = [(MADAutoTargetLookupResults *)self targetTrainName];
  [coderCopy encodeObject:targetTrainName forKey:@"targetTrainName"];

  targetRestoreVersion = [(MADAutoTargetLookupResults *)self targetRestoreVersion];
  [coderCopy encodeObject:targetRestoreVersion forKey:@"targetRestoreVersion"];

  targetGroupNames = [(MADAutoTargetLookupResults *)self targetGroupNames];
  [coderCopy encodeObject:targetGroupNames forKey:@"targetGroupNames"];

  setLookupResults = [(MADAutoTargetLookupResults *)self setLookupResults];
  [coderCopy encodeObject:setLookupResults forKey:@"setLookupResults"];
}

- (id)summary
{
  targetTrainName = [(MADAutoTargetLookupResults *)self targetTrainName];
  targetRestoreVersion = [(MADAutoTargetLookupResults *)self targetRestoreVersion];
  newSummaryWithoutEntryID = [(MADAutoTargetLookupResults *)self newSummaryWithoutEntryID];
  v6 = [NSString stringWithFormat:@"TARGET[trainName:%@|restoreVersion:%@]%@", targetTrainName, targetRestoreVersion, newSummaryWithoutEntryID];

  return v6;
}

- (id)newSummaryWithoutEntryID
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  targetGroupNames = [(MADAutoTargetLookupResults *)self targetGroupNames];
  v5 = [targetGroupNames countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(targetGroupNames);
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

      v6 = [targetGroupNames countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v18 = [NSString alloc];
  targetOSVersion = [(MADAutoTargetLookupResults *)self targetOSVersion];
  if (targetOSVersion)
  {
    targetOSVersion2 = [(MADAutoTargetLookupResults *)self targetOSVersion];
  }

  else
  {
    targetOSVersion2 = @"N";
  }

  targetBuild = [(MADAutoTargetLookupResults *)self targetBuild];
  v12 = @"N";
  if (targetBuild)
  {
    targetBuild2 = [(MADAutoTargetLookupResults *)self targetBuild];
  }

  else
  {
    targetBuild2 = @"N";
  }

  if (v7)
  {
    v12 = v7;
  }

  setLookupResults = [(MADAutoTargetLookupResults *)self setLookupResults];
  if (setLookupResults)
  {
    i = [(MADAutoTargetLookupResults *)self setLookupResults];
    v15 = [i count];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v18 initWithFormat:@"[OSVersion:%@|Build:%@|GroupNames:%@|LookupResults:%ld|Assets:%ld]", targetOSVersion2, targetBuild2, v12, v15, -[MADAutoTargetLookupResults lookupResultsAssetCount](self, "lookupResultsAssetCount")];
  if (setLookupResults)
  {
  }

  if (targetBuild)
  {
  }

  if (targetOSVersion)
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
  setLookupResults = [(MADAutoTargetLookupResults *)self setLookupResults];
  v4 = [setLookupResults countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(setLookupResults);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        setLookupResults2 = [(MADAutoTargetLookupResults *)self setLookupResults];
        v11 = [setLookupResults2 safeObjectForKey:v9 ofClass:objc_opt_class()];

        if (v11)
        {
          autoAssetSetCatalog = [v11 autoAssetSetCatalog];
          v13 = [autoAssetSetCatalog safeObjectForKey:@"Assets" ofClass:objc_opt_class()];

          v6 += [v13 count];
        }
      }

      v5 = [setLookupResults countByEnumeratingWithState:&v15 objects:v19 count:16];
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