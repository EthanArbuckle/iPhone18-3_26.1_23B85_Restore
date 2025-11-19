@interface PXSharedCollectionsSettings
+ (PXSharedCollectionsSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXSharedCollectionsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXSharedCollectionsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_showCollaborationUIForExistingShares = 1;
  self->_showCollaborationUIToCreateNewShares = 1;
}

+ (id)settingsControllerModule
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = _os_feature_enabled_impl();
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C65E8];
  if (v3)
  {
    v6 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_52_182169];
    v7 = [v5 rowWithTitle:@"✅ SharedCollections FF is ON" action:v6];
    v33[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v9 = [v4 sectionWithRows:v8 title:@"Feature Flag"];
    [v2 addObject:v9];

    v10 = MEMORY[0x1E69C6638];
    v11 = MEMORY[0x1E69C66A8];
    v12 = NSStringFromSelector(sel_showCollaborationUIForExistingShares);
    v13 = [v11 rowWithTitle:@"Existing Shares" valueKeyPath:v12];
    v32[0] = v13;
    v14 = MEMORY[0x1E69C66A8];
    v15 = NSStringFromSelector(sel_showCollaborationUIToCreateNewShares);
    v16 = [v14 rowWithTitle:@"New Shares" valueKeyPath:v15];
    v32[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v18 = [v10 sectionWithRows:v17 title:@"Enable SWY Collaboration for"];

    [v2 addObject:v18];
  }

  else
  {
    v18 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_54_182179];
    v19 = [v5 rowWithTitle:@"⚠️ SharedCollections FF is OFF" action:v18];
    v31 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v21 = [v4 sectionWithRows:v20 title:@"Feature Flag"];
    [v2 addObject:v21];
  }

  v22 = MEMORY[0x1E69C6638];
  v23 = MEMORY[0x1E69C65E8];
  v24 = [MEMORY[0x1E69C6640] action];
  v25 = [v23 rowWithTitle:@"Restore Defaults Settings" action:v24];
  v30 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v27 = [v22 sectionWithRows:v26];
  [v2 addObject:v27];

  v28 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Shared Collections" contents:v2];

  return v28;
}

+ (PXSharedCollectionsSettings)sharedInstance
{
  if (sharedInstance_onceToken_182213 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_182213, &__block_literal_global_182214);
  }

  v3 = sharedInstance_sharedInstance_182215;

  return v3;
}

void __45__PXSharedCollectionsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 sharedCollectionsSettings];
  v1 = sharedInstance_sharedInstance_182215;
  sharedInstance_sharedInstance_182215 = v0;
}

@end