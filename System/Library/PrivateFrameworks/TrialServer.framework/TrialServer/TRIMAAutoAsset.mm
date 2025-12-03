@interface TRIMAAutoAsset
- (NSString)description;
- (TRIMAAutoAsset)initWithAssetId:(id)id decryptionKey:(id)key error:(id *)error;
- (id)currentAssetSizeOnDiskUsingStatus:(id *)status;
- (id)currentLocksSync:(id *)sync;
@end

@implementation TRIMAAutoAsset

- (TRIMAAutoAsset)initWithAssetId:(id)id decryptionKey:(id)key error:(id *)error
{
  idCopy = id;
  keyCopy = key;
  v27.receiver = self;
  v27.super_class = TRIMAAutoAsset;
  v10 = [(TRIMAAutoAsset *)&v27 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  [(TRIMAAutoAsset *)v10 setAssetId:idCopy];
  v12 = objc_alloc(MEMORY[0x277D289F8]);
  type = [idCopy type];
  specifier = [idCopy specifier];
  version = [idCopy version];
  v16 = [v12 initForAssetType:type withAssetSpecifier:specifier matchingAssetVersion:version usingDecryptionKey:keyCopy];
  [(TRIMAAutoAsset *)v11 setAssetSelector:v16];

  v17 = objc_alloc(MEMORY[0x277D289E0]);
  v18 = *MEMORY[0x277D73AB0];
  assetSelector = v11->assetSelector;
  v26 = 0;
  v20 = [v17 initForClientName:v18 selectingAsset:assetSelector error:&v26];
  v21 = v26;
  v22 = v26;
  autoAsset = v11->_autoAsset;
  v11->_autoAsset = v20;

  if (v11->_autoAsset)
  {

LABEL_4:
    v24 = v11;
    goto LABEL_8;
  }

  if (error)
  {
    objc_storeStrong(error, v21);
  }

  v24 = 0;
LABEL_8:

  return v24;
}

- (id)currentLocksSync:(id *)sync
{
  v5 = objc_opt_new();
  v6 = [(MAAutoAsset *)self->_autoAsset currentStatusSync:sync];
  v7 = v6;
  if (v6)
  {
    currentLockUsage = [v6 currentLockUsage];
    v9 = currentLockUsage;
    if (currentLockUsage)
    {
      v10 = currentLockUsage;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (id)currentAssetSizeOnDiskUsingStatus:(id *)status
{
  v3 = [(MAAutoAsset *)self->_autoAsset currentStatusSync:status];
  v4 = v3;
  if (v3)
  {
    availableForUseAttributes = [v3 availableForUseAttributes];
    v6 = [availableForUseAttributes valueForKey:@"_UnarchivedSize"];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  assetSelector = self->assetSelector;
  v5 = [v3 initWithFormat:@"<TRIMAAutoAsset | selector:%@ autoAsset:%@>", assetSelector, self->_autoAsset];

  return v5;
}

@end