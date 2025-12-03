@interface TRISQLiteMAAutoAsset
- (NSString)description;
- (TRISQLiteMAAutoAsset)initWithAssetId:(id)id decryptionKey:(id)key error:(id *)error;
- (id)_sqliteMADatabase;
- (id)currentAssetSizeOnDiskUsingStatus:(id *)status;
- (id)currentLocksSync:(id *)sync;
- (id)determineIfAvailableSync:(id)sync withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error;
- (id)endLockUsageSync:(id)sync;
- (id)lockContentSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout lockedAssetSelector:(id *)selector newerInProgress:(id *)progress error:(id *)error;
- (void)lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion;
@end

@implementation TRISQLiteMAAutoAsset

- (TRISQLiteMAAutoAsset)initWithAssetId:(id)id decryptionKey:(id)key error:(id *)error
{
  idCopy = id;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = TRISQLiteMAAutoAsset;
  v10 = [(TRISQLiteMAAutoAsset *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->assetId, id);
    v12 = objc_alloc(MEMORY[0x277D289F8]);
    type = [idCopy type];
    specifier = [idCopy specifier];
    version = [idCopy version];
    v16 = [v12 initForAssetType:type withAssetSpecifier:specifier matchingAssetVersion:version usingDecryptionKey:keyCopy];
    assetSelector = v11->assetSelector;
    v11->assetSelector = v16;
  }

  return v11;
}

- (void)lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  completionCopy = completion;
  v12 = [(TRISQLiteMAAutoAsset *)self lockContentSync:content withUsagePolicy:policy withTimeout:timeout lockedAssetSelector:&v18 newerInProgress:&v17 error:&v16];
  v13 = v18;
  v14 = v17;
  v15 = v16;
  completionCopy[2](completionCopy, self->assetSelector, v12 != 0, v12, v14, v15);
}

- (id)lockContentSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout lockedAssetSelector:(id *)selector newerInProgress:(id *)progress error:(id *)error
{
  policyCopy = policy;
  syncCopy = sync;
  _sqliteMADatabase = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v17 = [_sqliteMADatabase lockContentSync:syncCopy forAssetSelector:self->assetSelector withUsagePolicy:policyCopy withTimeout:timeout lockedAssetSelector:selector newerInProgress:progress error:error];

  return v17;
}

- (id)determineIfAvailableSync:(id)sync withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase:sync];
  v9 = [v8 assetSizeForSelector:self->assetSelector];

  if (attributes)
  {
    v16 = *MEMORY[0x277D28908];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v12 = v11;
    *attributes = v11;
  }

  assetSelector = self->assetSelector;
  v14 = *MEMORY[0x277D85DE8];

  return assetSelector;
}

- (id)currentLocksSync:(id *)sync
{
  _sqliteMADatabase = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v5 = [_sqliteMADatabase locksForSelector:self->assetSelector];

  return v5;
}

- (id)endLockUsageSync:(id)sync
{
  if (sync)
  {
    syncCopy = sync;
    _sqliteMADatabase = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
    [_sqliteMADatabase endAllPreviousLocksOfReasonSync:syncCopy forAssetSelector:self->assetSelector];
  }

  return 0;
}

- (id)currentAssetSizeOnDiskUsingStatus:(id *)status
{
  v4 = MEMORY[0x277CCABB0];
  _sqliteMADatabase = [(TRISQLiteMAAutoAsset *)self _sqliteMADatabase];
  v6 = [v4 numberWithLong:{objc_msgSend(_sqliteMADatabase, "assetSizeForSelector:", self->assetSelector)}];

  return v6;
}

- (id)_sqliteMADatabase
{
  db = self->_db;
  if (!db)
  {
    if (sqliteMADatabasePaths)
    {
      mEMORY[0x277D737E0] = sqliteMADatabasePaths;
    }

    else
    {
      mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
    }

    v6 = mEMORY[0x277D737E0];
    trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
    v8 = [trialRootDir stringByAppendingPathComponent:@"MASQLiteMock"];

    v9 = [v8 stringByAppendingPathComponent:@"Database"];
    v10 = [[TRISQLiteMADatabase alloc] initWithParentDir:v9];
    if (!v10)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIMAProviding.m" lineNumber:177 description:{@"Expression was unexpectedly nil/false: %@", @"[[TRISQLiteMADatabase alloc] initWithParentDir:parentDir]"}];
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

  assetId = [v3 initWithFormat:@"<TRISQLiteMAAutoAsset | id:%@>", assetId];

  return assetId;
}

@end