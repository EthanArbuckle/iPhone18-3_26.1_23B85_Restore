@interface PUTabbedLibrarySettings
+ (PUTabbedLibrarySettings)sharedInstance;
+ (id)settingsControllerModule;
+ (id)transientProperties;
- (BOOL)wantsSplitViewController;
- (void)setDefaultValues;
@end

@implementation PUTabbedLibrarySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUTabbedLibrarySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUTabbedLibrarySettings *)self setSidebarImplementation:1];
  [(PUTabbedLibrarySettings *)self setSidebarAnimateSelectionUpdates:1];
  [(PUTabbedLibrarySettings *)self setSidebarScrollSelectedItemToCenter:1];
  [(PUTabbedLibrarySettings *)self setSidebarOnlyScrollOffscreenItemOnScreen:1];
  [(PUTabbedLibrarySettings *)self setSidebarAnimateDataSourceUpdates:1];
  [(PUTabbedLibrarySettings *)self setSidebarEditAutoExpandToEditableItem:1];
  [(PUTabbedLibrarySettings *)self setSidebarHideNavBackButtonForSelectedItem:1];
  [(PUTabbedLibrarySettings *)self setSidebarLaunchLoadMode:3];
  [(PUTabbedLibrarySettings *)self setSidebarLaunchAnimateLoad:1];
  [(PUTabbedLibrarySettings *)self setSidebarSymbolImagesOnly:0];
  [(PUTabbedLibrarySettings *)self setSidebarSimulateNonIncrementalChanges:0];
  [(PUTabbedLibrarySettings *)self setSidebarPauseChangeProcessingWhenHidden:1];
  [(PUTabbedLibrarySettings *)self setSidebarPausedChangeDetailsBufferLength:5];
}

+ (PUTabbedLibrarySettings)sharedInstance
{
  if (sharedInstance_onceToken_84812 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_84812, &__block_literal_global_84813);
  }

  v3 = sharedInstance_sharedInstance_84814;

  return v3;
}

void __41__PUTabbedLibrarySettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 tabbedLibrarySettings];
  v1 = sharedInstance_sharedInstance_84814;
  sharedInstance_sharedInstance_84814 = v0;
}

- (BOOL)wantsSplitViewController
{
  if ([(PUTabbedLibrarySettings *)self sidebarImplementation])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

+ (id)transientProperties
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___PUTabbedLibrarySettings;
  v2 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v3 = [v2 setByAddingObjectsFromArray:&unk_1F2B7D7A8];

  return v3;
}

+ (id)settingsControllerModule
{
  v69[13] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"wantsSplitViewController == YES"];
  v51 = MEMORY[0x1E69C6638];
  v66 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Sidebar Implementation" valueKeyPath:@"sidebarImplementation"];
  v65 = [v66 possibleValues:&unk_1F2B7D7C0 titles:&unk_1F2B7D7D8];
  v69[0] = v65;
  v3 = MEMORY[0x1E69C66A8];
  v64 = NSStringFromSelector(sel_sidebarAnimateSelectionUpdates);
  v63 = [v3 rowWithTitle:@"Animate sidebar selection updates" valueKeyPath:v64];
  v62 = [v63 condition:v2];
  v69[1] = v62;
  v4 = MEMORY[0x1E69C66A8];
  v61 = NSStringFromSelector(sel_sidebarScrollSelectedItemToCenter);
  v60 = [v4 rowWithTitle:@"Scroll selected item to center" valueKeyPath:v61];
  v59 = [v60 condition:v2];
  v69[2] = v59;
  v5 = MEMORY[0x1E69C66A8];
  v58 = NSStringFromSelector(sel_sidebarOnlyScrollOffscreenItemOnScreen);
  v56 = [v5 rowWithTitle:@"Only scroll offscreen items onto screen" valueKeyPath:v58];
  v6 = MEMORY[0x1E696AB28];
  v68[0] = v2;
  v57 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sidebarScrollSelectedItemToCenter == YES"];
  v68[1] = v57;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v54 = [v6 andPredicateWithSubpredicates:v55];
  v53 = [v56 condition:v54];
  v69[3] = v53;
  v7 = MEMORY[0x1E69C66A8];
  v50 = NSStringFromSelector(sel_sidebarAnimateDataSourceUpdates);
  v49 = [v7 rowWithTitle:@"Animate data source updates" valueKeyPath:v50];
  v48 = [v49 condition:v2];
  v69[4] = v48;
  v8 = MEMORY[0x1E69C66A8];
  v47 = NSStringFromSelector(sel_sidebarEditAutoExpandToEditableItem);
  v46 = [v8 rowWithTitle:@"Edit reveals editable item" valueKeyPath:v47];
  v45 = [v46 condition:v2];
  v69[5] = v45;
  v9 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_sidebarHideNavBackButtonForSelectedItem);
  v43 = [v9 rowWithTitle:@"Hide Nav Back button for selected item" valueKeyPath:v44];
  v42 = [v43 condition:v2];
  v69[6] = v42;
  v10 = MEMORY[0x1E69C65F8];
  v41 = NSStringFromSelector(sel_sidebarLaunchLoadMode);
  v40 = [v10 rowWithTitle:@"Photos App Sidebar Launch: Load Mode" valueKeyPath:v41];
  v39 = [v40 possibleValues:&unk_1F2B7D7F0 titles:&unk_1F2B7D808];
  v38 = [v39 condition:v2];
  v69[7] = v38;
  v11 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_sidebarLaunchAnimateLoad);
  v36 = [v11 rowWithTitle:@"Sidebar Launch: Animate update" valueKeyPath:v37];
  v35 = [v36 condition:v2];
  v69[8] = v35;
  v12 = MEMORY[0x1E69C66A8];
  v34 = NSStringFromSelector(sel_sidebarSymbolImagesOnly);
  v33 = [v12 rowWithTitle:@"Sidebar symbol images only" valueKeyPath:v34];
  v32 = [v33 condition:v2];
  v69[9] = v32;
  v13 = MEMORY[0x1E69C66A8];
  v31 = NSStringFromSelector(sel_sidebarSimulateNonIncrementalChanges);
  v30 = [v13 rowWithTitle:@"Simulate Non-Incremental Changes" valueKeyPath:v31];
  v14 = [v30 condition:v2];
  v69[10] = v14;
  v15 = MEMORY[0x1E69C66A8];
  v16 = NSStringFromSelector(sel_sidebarPauseChangeProcessingWhenHidden);
  v17 = [v15 rowWithTitle:@"Pause Changes When hidden" valueKeyPath:v16];
  v18 = [v17 condition:v2];
  v69[11] = v18;
  v19 = MEMORY[0x1E69C66A0];
  v20 = NSStringFromSelector(sel_sidebarPausedChangeDetailsBufferLength);
  v21 = [v19 rowWithTitle:@"Paused Change Details Buffer" valueKeyPath:v20];
  v22 = [v21 minValue:0.0 maxValue:20.0];
  v23 = [v22 condition:v2];
  v69[12] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:13];
  v52 = [v51 sectionWithRows:v24 title:@"Sidebar"];

  v25 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v26 = MEMORY[0x1E69C6638];
  v67[0] = v52;
  v67[1] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v28 = [v26 moduleWithTitle:@"Tab Settings" contents:v27];

  return v28;
}

@end