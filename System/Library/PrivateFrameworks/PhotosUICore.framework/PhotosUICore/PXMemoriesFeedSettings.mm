@interface PXMemoriesFeedSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXMemoriesFeedSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXMemoriesFeedSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXMemoriesFeedSettings *)self setUseSlowAnimations:0];
  [(PXMemoriesFeedSettings *)self setAlwaysShowOnboarding:0];
  [(PXMemoriesFeedSettings *)self setForceReloadAfterRefresh:0];
  [(PXMemoriesFeedSettings *)self setDisableRoundedOverlays:0];
  [(PXMemoriesFeedSettings *)self setRankMemoriesByRelevanceScore:0];
  [(PXMemoriesFeedSettings *)self setDataSourceType:[(PXMemoriesFeedSettings *)self _defaultDataSourceType]];
  [(PXMemoriesFeedSettings *)self setDisplayContentDuringGraphRebuild:1];
  [(PXMemoriesFeedSettings *)self setGroupsPerBatch:20];
  [(PXMemoriesFeedSettings *)self setAdditionalContentThreshold:512.0];
  [(PXMemoriesFeedSettings *)self setMemoryGroupingMethod:2];
  [(PXMemoriesFeedSettings *)self setMemoryGroupingInterval:0.0];
  [(PXMemoriesFeedSettings *)self setFavoriteMemoriesSortOrder:1];
  [(PXMemoriesFeedSettings *)self setSharingBehavior:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7104 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7104, &__block_literal_global_7105);
  }

  v3 = sharedInstance_sharedInstance_7106;

  return v3;
}

void __40__PXMemoriesFeedSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 memoryFeed];
  v1 = sharedInstance_sharedInstance_7106;
  sharedInstance_sharedInstance_7106 = v0;
}

uint64_t __52__PXMemoriesFeedSettings_UI___resetRejectedMemories__block_invoke()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = PXMemoriesResetRejected(v0, 1, 0);

  return v1;
}

+ (id)settingsControllerModule
{
  v49[10] = *MEMORY[0x1E69E9840];
  v40 = MEMORY[0x1E69C6638];
  v43 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Slow Animations" valueKeyPath:@"useSlowAnimations"];
  v49[0] = v43;
  v42 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Display Content During Graph Rebuild" valueKeyPath:@"displayContentDuringGraphRebuild"];
  v49[1] = v42;
  v39 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Show Onboarding" valueKeyPath:@"alwaysShowOnboarding"];
  v49[2] = v39;
  v38 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Reset Onboarding" action:&__block_literal_global_225358];
  v49[3] = v38;
  v37 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Memory Grouping Method" valueKeyPath:@"memoryGroupingMethod"];
  v36 = [v37 possibleValues:&unk_1F19118F0 titles:&unk_1F1911908];
  v49[4] = v36;
  v35 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Memory Grouping Interval" valueKeyPath:@"memoryGroupingInterval"];
  v34 = [v35 possibleValues:&unk_1F1911920 titles:&unk_1F1911938];
  v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"memoryGroupingMethod == %@", &unk_1F190DC30];
  v2 = [v34 condition:v33];
  v49[5] = v2;
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Groups Per Batch" valueKeyPath:@"groupsPerBatch"];
  v4 = [v3 minValue:0.0 maxValue:1024.0];
  v5 = [v4 px_increment:1.0];
  v49[6] = v5;
  v6 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Additional Content Threshold" valueKeyPath:@"additionalContentThreshold"];
  v7 = [v6 minValue:0.0 maxValue:1024.0];
  v8 = [v7 px_increment:1.0];
  v49[7] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Rounded Overlay View" valueKeyPath:@"disableRoundedOverlays"];
  v49[8] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Rank Memories By Relevance Score" valueKeyPath:@"rankMemoriesByRelevanceScore"];
  v49[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:10];
  v41 = [v40 sectionWithRows:v11 title:@"Settings"];

  v12 = MEMORY[0x1E69C6638];
  v13 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Reload After Refresh" valueKeyPath:@"forceReloadAfterRefresh"];
  v48 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v15 = [v12 sectionWithRows:v14 title:@"Refreshing"];

  v16 = MEMORY[0x1E69C6638];
  v17 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Delete Memories" action:&__block_literal_global_321];
  v47[0] = v17;
  v18 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Font Diagnostics" output:&__block_literal_global_345];
  v47[1] = v18;
  v19 = MEMORY[0x1E69C65E8];
  _resetRejectedMemories = [self _resetRejectedMemories];
  v21 = [v19 rowWithTitle:@"Reset Rejected Memories" action:_resetRejectedMemories];
  v47[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v23 = [v16 sectionWithRows:v22];

  v24 = MEMORY[0x1E69C6638];
  v25 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Show Single Memory View" action:&__block_literal_global_355];
  v46 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v27 = [v24 sectionWithRows:v26];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v29 = MEMORY[0x1E69C6638];
  v45[0] = v41;
  v45[1] = v15;
  v45[2] = v23;
  v45[3] = v27;
  v45[4] = px_restoreDefaultsSection;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
  v31 = [v29 moduleWithTitle:@"Memories Feed" contents:v30];

  return v31;
}

void __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_SingleMemoryDebugViewController);
  [v2 pushViewController:v3 animated:1];
}

id __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke_4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 librarySpecificFetchOptions];

  [v1 setIncludePendingMemories:1];
  [v1 setIncludeRejectedMemories:1];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v1 setSortDescriptors:v3];

  v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v1];
  v5 = [PXTitleFontDiagnosticsService diagnosticsDescriptionForAssetCollections:v4];

  return v5;
}

void __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke_319(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = a2;
  v6 = [v2 alertControllerWithTitle:0 message:@"Are you sure? This action cannot be undone." preferredStyle:0];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"Delete All Memories" style:2 handler:&__block_literal_global_332];
  [v6 addAction:v4];

  v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v6 addAction:v5];

  [v3 presentViewController:v6 animated:1 completion:0];
}

void __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke_2()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 librarySpecificFetchOptions];

  [v1 setIncludePendingMemories:1];
  v2 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v1];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke_3;
  v5[3] = &unk_1E774C648;
  v6 = v2;
  v4 = v2;
  [v3 performChangesAndWait:v5 error:0];
}

void __54__PXMemoriesFeedSettings_UI__settingsControllerModule__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 removeObjectForKey:@"PXMemoriesHasConfirmedOnboardingDefaultsKey"];

  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 synchronize];
}

@end