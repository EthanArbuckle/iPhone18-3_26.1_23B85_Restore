@interface PXDuplicatesSettings
+ (PXDuplicatesSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXDuplicatesSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXDuplicatesSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXDuplicatesSettings *)self setShowDuplicateGroupsWithASingleAsset:0];
}

+ (id)settingsControllerModule
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Process Identical Duplicates" action:&__block_literal_global_6042];
  v15[0] = v3;
  v4 = MEMORY[0x1E69C66A8];
  v5 = NSStringFromSelector(sel_showDuplicateGroupsWithASingleAsset);
  v6 = [v4 rowWithTitle:@"Show Groups with a Single Asset" valueKeyPath:v5];
  v15[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v2 sectionWithRows:v7];

  v9 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v10 = MEMORY[0x1E69C6638];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v10 moduleWithTitle:@"Duplicates" contents:v11];

  return v12;
}

void __52__PXDuplicatesSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXAlertController activityAlertControllerWithTitle:@"Processing..." cancelHandler:&__block_literal_global_207];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ProcessDuplicates_block_invoke_2;
  v6[3] = &unk_1E774C620;
  v7 = v3;
  v8 = v2;
  v4 = v3;
  v5 = v2;
  [v5 presentViewController:v4 animated:1 completion:v6];
}

+ (PXDuplicatesSettings)sharedInstance
{
  if (sharedInstance_onceToken_247300 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_247300, &__block_literal_global_247301);
  }

  v3 = sharedInstance_sharedInstance_247302;

  return v3;
}

void __38__PXDuplicatesSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 duplicatesSettings];
  v1 = sharedInstance_sharedInstance_247302;
  sharedInstance_sharedInstance_247302 = v0;
}

@end