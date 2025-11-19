@interface PXImportSettings
+ (PXImportSettings)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXImportSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXImportSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXImportSettings *)self setUsePhotosOneUp:0];
  [(PXImportSettings *)self setImportSourceSimulationViaDiagnosticsEnabled:0];
  [(PXImportSettings *)self setSimulatedBatteryLevel:0];
  [(PXImportSettings *)self setSimulateEmptyImportSource:0];
  [(PXImportSettings *)self setDelayBeforeShowingPreparationAlert:1.0];
  [(PXImportSettings *)self setSimulateLongDiskSpacePreparation:0];
  [(PXImportSettings *)self setSimulatedDiskSpace:0];
  [(PXImportSettings *)self setShowImportItemFilenames:0];
  [(PXImportSettings *)self setDisableAssetDeletion:0];
  [(PXImportSettings *)self setLoadActualThumbnails:1];
  [(PXImportSettings *)self setLazyLoadAllAssets:1];
  [(PXImportSettings *)self setGroupItemsByEXIFDate:0];
  [(PXImportSettings *)self setShowNewestItemsInGridUntilScrolled:0];
  [(PXImportSettings *)self setAlreadyImportedTruncationMode:2];
  [(PXImportSettings *)self setHide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem:1];
  [(PXImportSettings *)self setUseThumbnailSizesAsImageSizeHints:1];
  [(PXImportSettings *)self setLoadRetinaThumbnails:0];
  [(PXImportSettings *)self setAlwaysShowCPLOptimizedMessage:0];
  [(PXImportSettings *)self setAssetEnumerationBehavior:0];
  [(PXImportSettings *)self setAssetEnumerationBatchInterval:0.25];
  [(PXImportSettings *)self setAssetEnumerationBatchSize:10];
  [(PXImportSettings *)self setShowProgressTitles:1];
  [(PXImportSettings *)self setExternalOneUpSimulateDeletionFailure:0];
  [(PXImportSettings *)self setExternalOneUpForceEnable:0];
}

+ (PXImportSettings)sharedInstance
{
  if (sharedInstance_onceToken_208651 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_208651, &__block_literal_global_208652);
  }

  v3 = sharedInstance_sharedInstance_208653;

  return v3;
}

void __34__PXImportSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 importSettings];
  v1 = sharedInstance_sharedInstance_208653;
  sharedInstance_sharedInstance_208653 = v0;
}

@end