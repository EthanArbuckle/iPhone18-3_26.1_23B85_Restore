@interface WLLocalDataSource
+ (BOOL)localDataExists;
+ (id)_localSourceDataPath;
+ (id)_relativePathForAccount:(id)account migrator:(id)migrator;
+ (id)_relativePathForSummary:(id)summary migrator:(id)migrator;
+ (void)deleteLocalData;
+ (void)stashData:(id)data forSummary:(id)summary migrator:(id)migrator;
+ (void)stashFileForSummary:(id)summary migrator:(id)migrator;
- (void)accountsDataForMigrator:(id)migrator completion:(id)completion;
- (void)dataForSummary:(id)summary migrator:(id)migrator completion:(id)completion;
- (void)dataSegmentForSummary:(id)summary byteRange:(_NSRange)range migrator:(id)migrator completion:(id)completion;
- (void)fileForSummary:(id)summary migrator:(id)migrator fileAccessor:(id)accessor completion:(id)completion;
- (void)itemSizeForSummary:(id)summary migrator:(id)migrator completion:(id)completion;
- (void)summariesDataForAccount:(id)account migrator:(id)migrator completion:(id)completion;
@end

@implementation WLLocalDataSource

+ (id)_localSourceDataPath
{
  if (_localSourceDataPath_onceToken != -1)
  {
    +[WLLocalDataSource _localSourceDataPath];
  }

  v3 = _localSourceDataPath_localSourceDataPath;

  return v3;
}

void __41__WLLocalDataSource__localSourceDataPath__block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 stringByAppendingString:@"/Library/WelcomeKit/LocalSourceData/"];
  v1 = _localSourceDataPath_localSourceDataPath;
  _localSourceDataPath_localSourceDataPath = v0;
}

+ (BOOL)localDataExists
{
  v7 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _localSourceDataPath = [self _localSourceDataPath];
  v5 = [defaultManager fileExistsAtPath:_localSourceDataPath isDirectory:&v7];

  return v5 & v7;
}

- (void)accountsDataForMigrator:(id)migrator completion:(id)completion
{
  v37[1] = *MEMORY[0x277D85DE8];
  migratorCopy = migrator;
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = +[WLLocalDataSource _localSourceDataPath];
  v8 = MEMORY[0x277CCACA8];
  v30 = migratorCopy;
  contentType = [migratorCopy contentType];
  v10 = [v8 stringWithFormat:@"%@/accounts", contentType];
  v11 = [v7 stringByAppendingPathComponent:v10];

  v28 = v11;
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE868];
  v37[0] = *MEMORY[0x277CBE868];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v27 = v12;
  v16 = [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v15 options:1 errorHandler:0];

  nextObject = [v16 nextObject];
  if (nextObject)
  {
    v18 = nextObject;
    do
    {
      v31 = 0;
      v32 = 0;
      [v18 getResourceValue:&v32 forKey:v14 error:{&v31, v26}];
      v19 = v32;
      v20 = v31;
      if (v20)
      {
        v26 = v20;
        _WLLog();
      }

      else if ([v19 BOOLValue])
      {
        v35 = @"itemID";
        lastPathComponent = [v18 lastPathComponent];
        v36 = lastPathComponent;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v6 addObject:v22];
      }

      nextObject2 = [v16 nextObject];

      v18 = nextObject2;
    }

    while (nextObject2);
  }

  if (completionCopy)
  {
    v33 = @"dataItemSummaries";
    v34 = v6;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    (*(completionCopy + 2))(completionCopy, v24, 0, 0, 0.0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)summariesDataForAccount:(id)account migrator:(id)migrator completion:(id)completion
{
  v53[2] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  migratorCopy = migrator;
  completionCopy = completion;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = migratorCopy;
  v41 = accountCopy;
  v9 = [WLLocalDataSource _relativePathForAccount:accountCopy migrator:migratorCopy];
  v10 = +[WLLocalDataSource _localSourceDataPath];
  v43 = v9;
  v11 = [v10 stringByAppendingPathComponent:v9];

  v38 = v11;
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE868];
  v15 = *MEMORY[0x277CBE838];
  v53[0] = *MEMORY[0x277CBE868];
  v53[1] = v15;
  v42 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v37 = v12;
  v17 = [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v16 options:0 errorHandler:0];

  nextObject = [v17 nextObject];
  if (nextObject)
  {
    v19 = nextObject;
    do
    {
      v47 = 0;
      v48 = 0;
      [v19 getResourceValue:&v48 forKey:v14 error:&v47];
      v20 = v48;
      v21 = v47;
      if (v21)
      {
        unsignedIntegerValue = v21;
        _WLLog();
      }

      if ([v20 BOOLValue])
      {
        v22 = v21;
      }

      else
      {
        path = [v19 path];
        v24 = [path rangeOfString:v43];
        v26 = v25;

        path2 = [v19 path];
        v28 = [path2 substringFromIndex:v26 + v24 + 1];

        v45 = 0;
        v46 = 0;
        [v19 getResourceValue:&v46 forKey:v42 error:&v45];
        v29 = v46;
        v22 = v45;

        if (v22)
        {
          unsignedIntegerValue = v22;
          _WLLog();
        }

        v30 = MEMORY[0x277CCACA8];
        unsignedIntegerValue = [v29 unsignedIntegerValue];
        v31 = [v30 stringWithFormat:@"%lu"];
        v51[0] = @"itemID";
        v51[1] = @"itemSize";
        v52[0] = v28;
        v52[1] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
        [v44 addObject:v32];
      }

      nextObject2 = [v17 nextObject];

      v19 = nextObject2;
    }

    while (nextObject2);
  }

  if (completionCopy)
  {
    v49 = @"dataItemSummaries";
    v50 = v44;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    (*(completionCopy + 2))(completionCopy, v34, 0, 0, 0.0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)fileForSummary:(id)summary migrator:(id)migrator fileAccessor:(id)accessor completion:(id)completion
{
  completionCopy = completion;
  accessorCopy = accessor;
  v15 = [WLLocalDataSource _relativePathForSummary:summary migrator:migrator];
  v11 = +[WLLocalDataSource _localSourceDataPath];
  v12 = [v11 stringByAppendingPathComponent:v15];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:0];
  v14 = accessorCopy[2](accessorCopy, v13);

  completionCopy[2](completionCopy, v14);
}

- (void)dataForSummary:(id)summary migrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  v8 = [WLLocalDataSource _relativePathForSummary:summary migrator:migrator];
  v9 = +[WLLocalDataSource _localSourceDataPath];
  v10 = [v9 stringByAppendingPathComponent:v8];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:0];
  v14 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:1 error:&v14];
  v13 = v14;
  if (v13 || !v12)
  {
    _WLLog();
  }

  completionCopy[2](completionCopy, v12, v13);
}

- (void)dataSegmentForSummary:(id)summary byteRange:(_NSRange)range migrator:(id)migrator completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WLLocalDataSource_dataSegmentForSummary_byteRange_migrator_completion___block_invoke;
  v13[3] = &unk_279EB5788;
  v15 = location;
  v16 = length;
  v14 = completionCopy;
  v12 = completionCopy;
  [(WLLocalDataSource *)self dataForSummary:summary migrator:migrator completion:v13];
}

void __73__WLLocalDataSource_dataSegmentForSummary_byteRange_migrator_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v9;
  v7 = v5;
  if (v9 && !v5)
  {
    v8 = [v9 subdataWithRange:{a1[5], a1[6]}];

    v6 = v8;
  }

  v10 = v6;
  (*(a1[4] + 16))();
}

- (void)itemSizeForSummary:(id)summary migrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [summary itemSize], 0);
}

+ (void)deleteLocalData
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[WLLocalDataSource _localSourceDataPath];
  v5 = 0;
  [defaultManager removeItemAtPath:v3 error:&v5];
  v4 = v5;

  if (v4)
  {
    _WLLog();
  }
}

+ (id)_relativePathForAccount:(id)account migrator:(id)migrator
{
  accountCopy = account;
  migratorCopy = migrator;
  if ([migratorCopy accountBased])
  {
    identifier = [accountCopy identifier];
    uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    contentType2 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v10 = MEMORY[0x277CCACA8];
    contentType = [migratorCopy contentType];
    v12 = [v10 stringWithFormat:@"%@/accounts/%@", contentType, contentType2];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    contentType2 = [migratorCopy contentType];
    v12 = [v13 stringWithFormat:@"%@", contentType2];
  }

  return v12;
}

+ (id)_relativePathForSummary:(id)summary migrator:(id)migrator
{
  summaryCopy = summary;
  migratorCopy = migrator;
  identifier = [summaryCopy identifier];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v9 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  if ([migratorCopy accountBased])
  {
    account = [summaryCopy account];
    identifier2 = [account identifier];
    uRLPathAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    contentType2 = [identifier2 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];

    v14 = MEMORY[0x277CCACA8];
    contentType = [migratorCopy contentType];
    v16 = [v14 stringWithFormat:@"%@/accounts/%@/%@", contentType, contentType2, v9];
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    contentType2 = [migratorCopy contentType];
    v16 = [v17 stringWithFormat:@"%@/%@", contentType2, v9];
  }

  return v16;
}

+ (void)stashFileForSummary:(id)summary migrator:(id)migrator
{
  v6 = MEMORY[0x277CBEBC0];
  migratorCopy = migrator;
  summaryCopy = summary;
  dataFilePath = [summaryCopy dataFilePath];
  v10 = [v6 fileURLWithPath:dataFilePath isDirectory:0];

  v11 = [self _relativePathForSummary:summaryCopy migrator:migratorCopy];

  v12 = +[WLLocalDataSource _localSourceDataPath];
  v13 = [v12 stringByAppendingPathComponent:v11];

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v14 URLByDeletingLastPathComponent];
  v21 = 0;
  v17 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v21];
  v18 = v21;

  if (v17 && !v18)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [defaultManager2 copyItemAtURL:v10 toURL:v14 error:&v20];
    v18 = v20;
  }

  _WLLog();
}

+ (void)stashData:(id)data forSummary:(id)summary migrator:(id)migrator
{
  dataCopy = data;
  v9 = [self _relativePathForSummary:summary migrator:migrator];
  v10 = +[WLLocalDataSource _localSourceDataPath];
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v12 URLByDeletingLastPathComponent];
  v20 = 0;
  v15 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v20];
  v16 = v20;

  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v19 = 0;
    [dataCopy writeToURL:v12 options:1 error:&v19];
    v16 = v19;
  }

  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
    _WLLog();
  }

  else
  {
    _WLLog();
  }
}

@end