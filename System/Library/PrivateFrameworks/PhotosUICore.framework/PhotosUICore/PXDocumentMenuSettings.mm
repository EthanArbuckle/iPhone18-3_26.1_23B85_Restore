@interface PXDocumentMenuSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXDocumentMenuSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXDocumentMenuSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXDocumentMenuSettings *)self setActionsMenuLocation:1];
  [(PXDocumentMenuSettings *)self setShowAddToSharedAlbumActionInPhotos:0];
  [(PXDocumentMenuSettings *)self setShowAddToSharedAlbumActionInSpotlight:0];
  [(PXDocumentMenuSettings *)self setExcludeActionsFromShareSheet:1];
  [(PXDocumentMenuSettings *)self setEnableActionsMenuOnPad:1];
  [(PXDocumentMenuSettings *)self setEnableActionsMenuOnPhone:1];
}

+ (id)settingsControllerModule
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v25 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Actions Location" valueKeyPath:@"actionsMenuLocation"];
  v24 = [v25 possibleValues:&unk_1F190FFD0 titles:&unk_1F190FFE8];
  v26[0] = v24;
  v3 = MEMORY[0x1E69C66A8];
  v23 = NSStringFromSelector(sel_enableActionsMenuOnPad);
  v22 = [v3 rowWithTitle:@"Enable Actions Menu on iPad" valueKeyPath:v23];
  v26[1] = v22;
  v4 = MEMORY[0x1E69C66A8];
  v21 = NSStringFromSelector(sel_enableActionsMenuOnPhone);
  v20 = [v4 rowWithTitle:@"Enable Actions Menu on iPhone" valueKeyPath:v21];
  v26[2] = v20;
  v5 = MEMORY[0x1E69C66A8];
  v19 = NSStringFromSelector(sel_showAddToSharedAlbumActionInPhotos);
  v6 = [v5 rowWithTitle:@"Photos: Show Add To Shared Album Action" valueKeyPath:v19];
  v26[3] = v6;
  v7 = MEMORY[0x1E69C66A8];
  v8 = NSStringFromSelector(sel_showAddToSharedAlbumActionInSpotlight);
  v9 = [v7 rowWithTitle:@"Spotlight: Show Add To Shared Album Action" valueKeyPath:v8];
  v26[4] = v9;
  v10 = MEMORY[0x1E69C66A8];
  v11 = NSStringFromSelector(sel_excludeActionsFromShareSheet);
  v12 = [v10 rowWithTitle:@"Exclude actions from Share Sheet" valueKeyPath:v11];
  v26[5] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];
  v14 = [v2 sectionWithRows:v13 title:@"Actions Settings"];
  v27[0] = v14;
  v15 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v27[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [v2 moduleWithTitle:@"In-App Actions" contents:v16];

  return v17;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_43556 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_43556, &__block_literal_global_43557);
  }

  v3 = sharedInstance_sharedInstance_43558;

  return v3;
}

void __40__PXDocumentMenuSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 documentMenuSettings];
  v1 = sharedInstance_sharedInstance_43558;
  sharedInstance_sharedInstance_43558 = v0;
}

@end