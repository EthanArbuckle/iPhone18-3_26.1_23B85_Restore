@interface PRSMLManager
+ (id)createPathToSpotlightPrefFile;
+ (id)getSPMLSharedInstance;
- (id)getLastSavedCategoryRankings;
- (id)initManager;
- (unint64_t)getCountForCategory:(id)a3;
- (unint64_t)getTotalResultsUsedCountForDuet;
- (void)dumpPredictionStatsToFlatFiles;
- (void)saveLastRankingForCategories:(id)a3;
@end

@implementation PRSMLManager

+ (id)getSPMLSharedInstance
{
  v2 = SPMLSharedInstance;
  if (!SPMLSharedInstance)
  {
    if (getSPMLSharedInstance_onceToken != -1)
    {
      +[PRSMLManager getSPMLSharedInstance];
    }

    v2 = SPMLSharedInstance;
  }

  v3 = v2;

  return v3;
}

uint64_t __37__PRSMLManager_getSPMLSharedInstance__block_invoke()
{
  SPMLSharedInstance = [[PRSMLManager alloc] initManager];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)createPathToSpotlightPrefFile
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v3];
  [v4 appendString:@"/com.apple.spotlight/"];

  return v4;
}

- (id)initManager
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v20 = 0;
  v4 = +[PRSMLManager createPathToSpotlightPrefFile];
  if ([v3 fileExistsAtPath:v4 isDirectory:&v20] && (v20 & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v19 = 0;
    [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v19];
    v5 = v19;
  }

  v6 = [[PRSCoreDuet alloc] initWithStreamName:@"com.apple.spotlightviewer.events"];
  coreDuet = self->_coreDuet;
  self->_coreDuet = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictCoreDuetInfo = self->_dictCoreDuetInfo;
  self->_dictCoreDuetInfo = v8;

  v10 = [v4 mutableCopy];
  v11 = pathToCoreDuetFlatFile;
  pathToCoreDuetFlatFile = v10;

  v12 = pathToCoreDuetFlatFile;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 appendString:v14];

  if ([v3 fileExistsAtPath:pathToCoreDuetFlatFile])
  {
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v16 = [v15 initWithContentsOfFile:pathToCoreDuetFlatFile];
    v17 = self->_dictCoreDuetInfo;
    self->_dictCoreDuetInfo = v16;
  }

  return self;
}

- (id)getLastSavedCategoryRankings
{
  v3 = self->_dictCoreDuetInfo;
  objc_sync_enter(v3);
  dictCoreDuetInfo = self->_dictCoreDuetInfo;
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  v6 = [v5 stringValue];
  v7 = [(NSMutableDictionary *)dictCoreDuetInfo objectForKey:v6];

  objc_sync_exit(v3);

  return v7;
}

- (unint64_t)getTotalResultsUsedCountForDuet
{
  v3 = self->_dictCoreDuetInfo;
  objc_sync_enter(v3);
  dictCoreDuetInfo = self->_dictCoreDuetInfo;
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v6 = [v5 stringValue];
  v7 = [(NSMutableDictionary *)dictCoreDuetInfo objectForKey:v6];
  v8 = [v7 integerValue];

  objc_sync_exit(v3);
  return v8;
}

- (unint64_t)getCountForCategory:(id)a3
{
  v4 = a3;
  v5 = self->_dictCoreDuetInfo;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_dictCoreDuetInfo objectForKey:v4];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_dictCoreDuetInfo objectForKey:v4];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)saveLastRankingForCategories:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self->_dictCoreDuetInfo;
    objc_sync_enter(v5);
    dictCoreDuetInfo = self->_dictCoreDuetInfo;
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    v8 = [v7 stringValue];
    [(NSMutableDictionary *)dictCoreDuetInfo setObject:v9 forKey:v8];

    objc_sync_exit(v5);
    v4 = v9;
  }
}

- (void)dumpPredictionStatsToFlatFiles
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PRSMLManager_dumpPredictionStatsToFlatFiles__block_invoke;
  block[3] = &unk_1E8595778;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__PRSMLManager_dumpPredictionStatsToFlatFiles__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 32) objectForKey:{v6, v14}];
        v8 = [*(*(a1 + 32) + 24) objectForKey:v6];
        v9 = v8;
        if (v8)
        {
          v10 = v7 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = v8;
          objc_sync_enter(v11);
          [v11 writeToFile:v7 atomically:1];
          objc_sync_exit(v11);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *(*(a1 + 32) + 48);
  objc_sync_enter(v12);
  [*(*(a1 + 32) + 48) writeToFile:pathToCoreDuetFlatFile atomically:1];
  objc_sync_exit(v12);

  v13 = *MEMORY[0x1E69E9840];
}

@end