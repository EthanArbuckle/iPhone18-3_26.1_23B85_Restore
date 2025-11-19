@interface TRISQLiteMAAutoAsset
- (NSString)description;
- (TRISQLiteMAAutoAsset)initWithAssetId:(id)a3 decryptionKey:(id)a4 error:(id *)a5;
- (id)_sqliteMADatabase;
- (id)currentAssetSizeOnDiskUsingStatus:(id *)a3;
- (id)currentLocksSync:(id *)a3;
- (id)determineIfAvailableSync:(id)a3 withTimeout:(int64_t)a4 discoveredAttributes:(id *)a5 error:(id *)a6;
- (id)endLockUsageSync:(id)a3;
- (id)lockContentSync:(id)a3 withUsagePolicy:(id)a4 withTimeout:(int64_t)a5 lockedAssetSelector:(id *)a6 newerInProgress:(id *)a7 error:(id *)a8;
- (void)lockContent:(id)a3 withUsagePolicy:(id)a4 withTimeout:(int64_t)a5 reportingProgress:(id)a6 completion:(id)a7;
@end

@implementation TRISQLiteMAAutoAsset

- (TRISQLiteMAAutoAsset)initWithAssetId:(id)a3 decryptionKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = TRISQLiteMAAutoAsset;
  v10 = [(TRISQLiteMAAutoAsset *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->assetId, a3);
    v12 = objc_alloc(MEMORY[0x277D289F8]);
    v13 = [v8 type];
    v14 = [v8 specifier];
    v15 = [v8 version];
    v16 = [v12 initForAssetType:v13 withAssetSpecifier:v14 matchingAssetVersion:v15 usingDecryptionKey:v9];
    assetSelector = v11->assetSelector;
    v11->assetSelector = v16;
  }

  return v11;
}

- (void)lockContent:(id)a3 withUsagePolicy:(id)a4 withTimeout:(int64_t)a5 reportingProgress:(id)a6 completion:(id)a7
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v11 = a7;
  v12 = [(TRISQLiteMAAutoAsset *)self lockContentSync:a3 withUsagePolicy:a4 withTimeout:a5 lockedAssetSelector:&v18 newerInProgress:&v17 error:&v16];
  v13 = v18;
  v14 = v17;
  v15 = v16;
  v11[2](v11, self->assetSelector, v12 != 0, v12, v14, v15);
}

- (id)lockContentSync:(id)a3 withUsagePolicy:(id)a4 withTimeout:(int64_t)a5 lockedAssetSelector:(id *)a6 newerInProgress:(id *)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a3;
  v16 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v17 = [v16 lockContentSync:v15 forAssetSelector:self->assetSelector withUsagePolicy:v14 withTimeout:a5 lockedAssetSelector:a6 newerInProgress:a7 error:a8];

  return v17;
}

- (id)determineIfAvailableSync:(id)a3 withTimeout:(int64_t)a4 discoveredAttributes:(id *)a5 error:(id *)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase:a3];
  v9 = [v8 assetSizeForSelector:self->assetSelector];

  if (a5)
  {
    v16 = *MEMORY[0x277D28908];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v12 = v11;
    *a5 = v11;
  }

  assetSelector = self->assetSelector;
  v14 = *MEMORY[0x277D85DE8];

  return assetSelector;
}

- (id)currentLocksSync:(id *)a3
{
  v4 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v5 = [v4 locksForSelector:self->assetSelector];

  return v5;
}

- (id)endLockUsageSync:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
    [v5 endAllPreviousLocksOfReasonSync:v4 forAssetSelector:self->assetSelector];
  }

  return 0;
}

- (id)currentAssetSizeOnDiskUsingStatus:(id *)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v6 = [v4 numberWithLong:{objc_msgSend(v5, "assetSizeForSelector:", self->assetSelector)}];

  return v6;
}

- (id)_sqliteMADatabase
{
  db = self->_db;
  if (!db)
  {
    if (sqliteMADatabasePaths)
    {
      v5 = sqliteMADatabasePaths;
    }

    else
    {
      v5 = [MEMORY[0x277D737E0] sharedPaths];
    }

    v6 = v5;
    v7 = [v5 trialRootDir];
    v8 = [v7 stringByAppendingPathComponent:@"MASQLiteMock"];

    v9 = [v8 stringByAppendingPathComponent:@"Database"];
    v10 = [[TRISQLiteMADatabase alloc] initWithParentDir:v9];
    if (!v10)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"TRIMAProviding.m" lineNumber:177 description:{@"Expression was unexpectedly nil/false: %@", @"[[TRISQLiteMADatabase alloc] initWithParentDir:parentDir]"}];
    }

    v11 = self->_db;
    self->_db = v10;

    db = self->_db;
  }

  return db;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  assetId = self->assetId;
  if (!assetId)
  {
    assetId = @"no asset id";
  }

  v5 = [v3 initWithFormat:@"<TRISQLiteMAAutoAsset | id:%@>", assetId];

  return v5;
}

@end