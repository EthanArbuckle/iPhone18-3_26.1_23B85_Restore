@interface WLLocalDataSource
+ (BOOL)localDataExists;
+ (id)_localSourceDataPath;
+ (id)_relativePathForAccount:(id)a3 migrator:(id)a4;
+ (id)_relativePathForSummary:(id)a3 migrator:(id)a4;
+ (void)deleteLocalData;
+ (void)stashData:(id)a3 forSummary:(id)a4 migrator:(id)a5;
+ (void)stashFileForSummary:(id)a3 migrator:(id)a4;
- (void)accountsDataForMigrator:(id)a3 completion:(id)a4;
- (void)dataForSummary:(id)a3 migrator:(id)a4 completion:(id)a5;
- (void)dataSegmentForSummary:(id)a3 byteRange:(_NSRange)a4 migrator:(id)a5 completion:(id)a6;
- (void)fileForSummary:(id)a3 migrator:(id)a4 fileAccessor:(id)a5 completion:(id)a6;
- (void)itemSizeForSummary:(id)a3 migrator:(id)a4 completion:(id)a5;
- (void)summariesDataForAccount:(id)a3 migrator:(id)a4 completion:(id)a5;
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 _localSourceDataPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (void)accountsDataForMigrator:(id)a3 completion:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = +[WLLocalDataSource _localSourceDataPath];
  v8 = MEMORY[0x277CCACA8];
  v30 = v5;
  v9 = [v5 contentType];
  v10 = [v8 stringWithFormat:@"%@/accounts", v9];
  v11 = [v7 stringByAppendingPathComponent:v10];

  v28 = v11;
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE868];
  v37[0] = *MEMORY[0x277CBE868];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v27 = v12;
  v16 = [v13 enumeratorAtURL:v12 includingPropertiesForKeys:v15 options:1 errorHandler:0];

  v17 = [v16 nextObject];
  if (v17)
  {
    v18 = v17;
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
        v21 = [v18 lastPathComponent];
        v36 = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v6 addObject:v22];
      }

      v23 = [v16 nextObject];

      v18 = v23;
    }

    while (v23);
  }

  if (v29)
  {
    v33 = @"dataItemSummaries";
    v34 = v6;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    (*(v29 + 2))(v29, v24, 0, 0, 0.0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)summariesDataForAccount:(id)a3 migrator:(id)a4 completion:(id)a5
{
  v53[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v39 = a5;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = v8;
  v41 = v7;
  v9 = [WLLocalDataSource _relativePathForAccount:v7 migrator:v8];
  v10 = +[WLLocalDataSource _localSourceDataPath];
  v43 = v9;
  v11 = [v10 stringByAppendingPathComponent:v9];

  v38 = v11;
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE868];
  v15 = *MEMORY[0x277CBE838];
  v53[0] = *MEMORY[0x277CBE868];
  v53[1] = v15;
  v42 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v37 = v12;
  v17 = [v13 enumeratorAtURL:v12 includingPropertiesForKeys:v16 options:0 errorHandler:0];

  v18 = [v17 nextObject];
  if (v18)
  {
    v19 = v18;
    do
    {
      v47 = 0;
      v48 = 0;
      [v19 getResourceValue:&v48 forKey:v14 error:&v47];
      v20 = v48;
      v21 = v47;
      if (v21)
      {
        v36 = v21;
        _WLLog();
      }

      if ([v20 BOOLValue])
      {
        v22 = v21;
      }

      else
      {
        v23 = [v19 path];
        v24 = [v23 rangeOfString:v43];
        v26 = v25;

        v27 = [v19 path];
        v28 = [v27 substringFromIndex:v26 + v24 + 1];

        v45 = 0;
        v46 = 0;
        [v19 getResourceValue:&v46 forKey:v42 error:&v45];
        v29 = v46;
        v22 = v45;

        if (v22)
        {
          v36 = v22;
          _WLLog();
        }

        v30 = MEMORY[0x277CCACA8];
        v36 = [v29 unsignedIntegerValue];
        v31 = [v30 stringWithFormat:@"%lu"];
        v51[0] = @"itemID";
        v51[1] = @"itemSize";
        v52[0] = v28;
        v52[1] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
        [v44 addObject:v32];
      }

      v33 = [v17 nextObject];

      v19 = v33;
    }

    while (v33);
  }

  if (v39)
  {
    v49 = @"dataItemSummaries";
    v50 = v44;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    (*(v39 + 2))(v39, v34, 0, 0, 0.0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)fileForSummary:(id)a3 migrator:(id)a4 fileAccessor:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v15 = [WLLocalDataSource _relativePathForSummary:a3 migrator:a4];
  v11 = +[WLLocalDataSource _localSourceDataPath];
  v12 = [v11 stringByAppendingPathComponent:v15];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:0];
  v14 = v10[2](v10, v13);

  v9[2](v9, v14);
}

- (void)dataForSummary:(id)a3 migrator:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [WLLocalDataSource _relativePathForSummary:a3 migrator:a4];
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

  v7[2](v7, v12, v13);
}

- (void)dataSegmentForSummary:(id)a3 byteRange:(_NSRange)a4 migrator:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WLLocalDataSource_dataSegmentForSummary_byteRange_migrator_completion___block_invoke;
  v13[3] = &unk_279EB5788;
  v15 = location;
  v16 = length;
  v14 = v11;
  v12 = v11;
  [(WLLocalDataSource *)self dataForSummary:a3 migrator:a5 completion:v13];
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

- (void)itemSizeForSummary:(id)a3 migrator:(id)a4 completion:(id)a5
{
  v7 = a5;
  (*(a5 + 2))(v7, [a3 itemSize], 0);
}

+ (void)deleteLocalData
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[WLLocalDataSource _localSourceDataPath];
  v5 = 0;
  [v2 removeItemAtPath:v3 error:&v5];
  v4 = v5;

  if (v4)
  {
    _WLLog();
  }
}

+ (id)_relativePathForAccount:(id)a3 migrator:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 accountBased])
  {
    v7 = [v5 identifier];
    v8 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 contentType];
    v12 = [v10 stringWithFormat:@"%@/accounts/%@", v11, v9];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v9 = [v6 contentType];
    v12 = [v13 stringWithFormat:@"%@", v9];
  }

  return v12;
}

+ (id)_relativePathForSummary:(id)a3 migrator:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  if ([v6 accountBased])
  {
    v10 = [v5 account];
    v11 = [v10 identifier];
    v12 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

    v14 = MEMORY[0x277CCACA8];
    v15 = [v6 contentType];
    v16 = [v14 stringWithFormat:@"%@/accounts/%@/%@", v15, v13, v9];
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v13 = [v6 contentType];
    v16 = [v17 stringWithFormat:@"%@/%@", v13, v9];
  }

  return v16;
}

+ (void)stashFileForSummary:(id)a3 migrator:(id)a4
{
  v6 = MEMORY[0x277CBEBC0];
  v7 = a4;
  v8 = a3;
  v9 = [v8 dataFilePath];
  v10 = [v6 fileURLWithPath:v9 isDirectory:0];

  v11 = [a1 _relativePathForSummary:v8 migrator:v7];

  v12 = +[WLLocalDataSource _localSourceDataPath];
  v13 = [v12 stringByAppendingPathComponent:v11];

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:0];
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v14 URLByDeletingLastPathComponent];
  v21 = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v21];
  v18 = v21;

  if (v17 && !v18)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [v19 copyItemAtURL:v10 toURL:v14 error:&v20];
    v18 = v20;
  }

  _WLLog();
}

+ (void)stashData:(id)a3 forSummary:(id)a4 migrator:(id)a5
{
  v8 = a3;
  v9 = [a1 _relativePathForSummary:a4 migrator:a5];
  v10 = +[WLLocalDataSource _localSourceDataPath];
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:0];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v12 URLByDeletingLastPathComponent];
  v20 = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v20];
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
    [v8 writeToURL:v12 options:1 error:&v19];
    v16 = v19;
  }

  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    _WLLog();
  }

  else
  {
    _WLLog();
  }
}

@end