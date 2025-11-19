@interface PXSearchSettings
+ (id)sharedInstance;
- (unint64_t)maxNumberOfResultColumns;
- (unint64_t)maxNumberOfTopAssetColumns;
- (unint64_t)maxNumberOfTopAssetRows;
- (unint64_t)standardNumberOfTopAssetRows;
- (void)setDefaultValues;
@end

@implementation PXSearchSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXSearchSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXSearchSettings *)self setEnableBatchedSearchResults:0];
  [(PXSearchSettings *)self setBatchedSearchResultInitialBatchSize:5000];
  [(PXSearchSettings *)self setBatchedSearchResultSubsequentBatchSize:5000];
  [(PXSearchSettings *)self setIndexingBannerPercentageThreshold:95];
  [(PXSearchSettings *)self setOverriddenCentralizedFeedbackMode:1];
  [(PXSearchSettings *)self setShouldSplitResults:1];
}

- (unint64_t)maxNumberOfTopAssetRows
{
  if (self->_maxNumberOfTopAssetRows)
  {
    return self->_maxNumberOfTopAssetRows;
  }

  else
  {
    return 3;
  }
}

- (unint64_t)standardNumberOfTopAssetRows
{
  if (self->_standardNumberOfTopAssetRows)
  {
    return self->_standardNumberOfTopAssetRows;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)maxNumberOfResultColumns
{
  if (self->_maxNumberOfResultColumns)
  {
    return self->_maxNumberOfResultColumns;
  }

  else
  {
    return 6;
  }
}

- (unint64_t)maxNumberOfTopAssetColumns
{
  if (self->_maxNumberOfTopAssetColumns)
  {
    return self->_maxNumberOfTopAssetColumns;
  }

  else
  {
    return 6;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12750 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12750, &__block_literal_global_12751);
  }

  v3 = sharedInstance_sharedInstance_12752;

  return v3;
}

void __34__PXSearchSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 searchSettings];
  v1 = sharedInstance_sharedInstance_12752;
  sharedInstance_sharedInstance_12752 = v0;
}

@end