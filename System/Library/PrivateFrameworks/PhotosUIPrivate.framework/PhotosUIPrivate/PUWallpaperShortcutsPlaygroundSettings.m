@interface PUWallpaperShortcutsPlaygroundSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (void)_runActionWithModuleController:(id)a3 photoLibrary:(id)a4;
- (void)_handleLoadFileURL:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)setDefaultValues;
@end

@implementation PUWallpaperShortcutsPlaygroundSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUWallpaperShortcutsPlaygroundSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUWallpaperShortcutsPlaygroundSettings *)self setSelectedConfigurationUUID:0];
  [(PUWallpaperShortcutsPlaygroundSettings *)self setSelectedAssetIdentifier:0];
  [(PUWallpaperShortcutsPlaygroundSettings *)self setUseAssetURL:0];
  [(PUWallpaperShortcutsPlaygroundSettings *)self setSmartCropEnabled:1];
  [(PUWallpaperShortcutsPlaygroundSettings *)self setPreviewEnabled:0];
}

- (void)_handleLoadFileURL:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7 conformingToType:*MEMORY[0x1E6982E58]];
  v9 = [v3 fileURLWithPath:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  LODWORD(v6) = [v10 copyItemAtURL:v4 toURL:v9 error:&v12];

  v11 = v12;
  if (v6)
  {
    objc_storeStrong(&sAssetURL, v9);
  }
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 assetIdentifier];
    objc_storeStrong(&sAssetIdentifier, v10);
    v11 = +[PUWallpaperShortcutsPlaygroundSettings sharedInstance];
    [v11 setSelectedAssetIdentifier:v10];

    objc_initWeak(&location, self);
    v12 = [v9 itemProvider];
    v13 = [*MEMORY[0x1E6982E30] identifier];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __70__PUWallpaperShortcutsPlaygroundSettings_UI__picker_didFinishPicking___block_invoke;
    v18 = &unk_1E7B7F7F8;
    objc_copyWeak(&v19, &location);
    v14 = [v12 loadFileRepresentationForTypeIdentifier:v13 completionHandler:&v15];

    [v6 dismissViewControllerAnimated:1 completion:{0, v15, v16, v17, v18}];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __70__PUWallpaperShortcutsPlaygroundSettings_UI__picker_didFinishPicking___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLoadFileURL:v3];
}

+ (void)_runActionWithModuleController:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PUWallpaperShortcutsPlaygroundSettings sharedInstance];
  v8 = [v7 selectedConfigurationUUID];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __90__PUWallpaperShortcutsPlaygroundSettings_UI___runActionWithModuleController_photoLibrary___block_invoke;
  v33 = &unk_1E7B74030;
  v9 = v8;
  v34 = v9;
  v10 = PXFind();
  v11 = MEMORY[0x1E69C07E8];
  v12 = [v10 assetDirectory];
  v13 = [v11 loadFromURL:v12 error:0];

  if (v13)
  {
    [v13 setOptions:8];
    v14 = [_PUPosterOverrideConfiguration alloc];
    v15 = [(_PUPosterOverrideConfiguration *)v14 initWithSettings:v7 assetURL:sAssetURL assetIdentifier:sAssetIdentifier];
    if ([v7 previewEnabled])
    {
      v16 = [PUWallpaperPosterEditDebugViewController alloc];
      v17 = [v10 assetDirectory];
      v18 = [(PUWallpaperPosterEditDebugViewController *)v16 initWithExistingConfiguration:v13 assetDirectory:v17 overrideConfiguration:v15 photoLibrary:v6];

      [(PUWallpaperPosterEditDebugViewController *)v18 setModalPresentationStyle:5];
      [v5 presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      v19 = MEMORY[0x1E695DFF8];
      v20 = NSTemporaryDirectory();
      v21 = [v20 stringByAppendingPathComponent:@"PhotosShortcutsUpdateRendering"];
      v22 = [v19 fileURLWithPath:v21];

      v23 = [[PUWallpaperConfigurationUpdater alloc] initWithPhotoLibrary:v6 sourceConfiguration:v13 targetAssetDirectory:v22 overrideConfiguration:v15];
      v24 = sConfigurationUpdater;
      sConfigurationUpdater = v23;

      v25 = sConfigurationUpdater;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __90__PUWallpaperShortcutsPlaygroundSettings_UI___runActionWithModuleController_photoLibrary___block_invoke_2;
      v26[3] = &unk_1E7B74058;
      v27 = v22;
      v28 = v13;
      v29 = v5;
      v18 = v22;
      [v25 attemptUpdateWithCompletionBlock:v26];
    }
  }
}

uint64_t __90__PUWallpaperShortcutsPlaygroundSettings_UI___runActionWithModuleController_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverUUID];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void __90__PUWallpaperShortcutsPlaygroundSettings_UI___runActionWithModuleController_photoLibrary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = MEMORY[0x1E696AC08];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultManager];
  v13 = *(a1 + 32);
  v31 = 0;
  [v12 removeItemAtURL:v13 error:&v31];
  v14 = v31;

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = *(a1 + 32);
  v30 = v14;
  [v15 createDirectoryAtURL:v16 withIntermediateDirectories:0 attributes:0 error:&v30];
  v17 = v30;

  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v29 = v17;
  [v18 saveToURL:v19 error:&v29];
  v20 = v29;

  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) media];
  v23 = [v22 firstObject];
  v24 = [v23 subpath];
  v25 = [v21 URLByAppendingPathComponent:v24];

  v28 = v20;
  [MEMORY[0x1E69BDF40] saveSegmentationItem:v9 compoundLayerStack:v11 style:v10 toWallpaperURL:v25 error:&v28];

  v26 = v28;
  v27 = [[PUWallpaperPlaygroundViewController alloc] initWithConfiguration:*(a1 + 40) assetDirectory:*(a1 + 32)];
  [(PUWallpaperPlaygroundViewController *)v27 presentPlaygroundWithPresentingViewController:*(a1 + 48)];
}

+ (id)settingsControllerModule
{
  v51[3] = *MEMORY[0x1E69E9840];
  if (settingsControllerModule_onceToken != -1)
  {
    dispatch_once(&settingsControllerModule_onceToken, &__block_literal_global_1402);
  }

  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = sPosterService;
  v4 = *MEMORY[0x1E69C4140];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_2;
  v46[3] = &unk_1E7B7BB90;
  v47 = v2;
  v40 = v2;
  [v3 fetchPosterConfigurationsForExtension:v4 completion:v46];
  dispatch_group_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
  v5 = objc_alloc(MEMORY[0x1E69789A8]);
  v6 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v7 = [v5 initWithPhotoLibraryURL:v6];

  v8 = MEMORY[0x1E696AE18];
  v9 = NSStringFromSelector(sel_selectedAssetIdentifier);
  v10 = [v8 predicateWithFormat:@"%K != nil", v9];

  v11 = MEMORY[0x1E69C6638];
  v28 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C65E8];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_4;
  v44[3] = &unk_1E7B7E3F0;
  v13 = v7;
  v45 = v13;
  v37 = [v12 pu_rowWithTitle:@"Pick Asset" action:v44];
  v50[0] = v37;
  v14 = MEMORY[0x1E69C65F8];
  v36 = NSStringFromSelector(sel_selectedConfigurationUUID);
  v35 = [v14 rowWithTitle:@"Configuration" valueKeyPath:v36];
  v34 = PXMap();
  v33 = [v35 pu_possibleValues:v34];
  v32 = [v33 condition:v10];
  v50[1] = v32;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v30 = [v11 sectionWithRows:v31];
  v51[0] = v30;
  v15 = MEMORY[0x1E69C6638];
  v29 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Asset URL" valueKeyPath:@"useAssetURL"];
  v49[0] = v29;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Smart Crop" valueKeyPath:@"smartCropEnabled"];
  v49[1] = v16;
  v17 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Preview" valueKeyPath:@"previewEnabled"];
  v49[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  v19 = [v15 sectionWithRows:v18 title:@"Options" condition:v10];
  v51[1] = v19;
  v20 = MEMORY[0x1E69C6638];
  v21 = MEMORY[0x1E69C65E8];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_6;
  v41[3] = &unk_1E7B7E3C8;
  v42 = v13;
  v43 = a1;
  v39 = v13;
  v22 = [v21 pu_rowWithTitle:@"Run Action" action:v41];
  v48 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v24 = [v20 sectionWithRows:v23 title:0 condition:v10];
  v51[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  v26 = [v28 moduleWithTitle:@"Shortcuts Playground" contents:v25];

  return v26;
}

void __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1)
{
  v2 = PXFilter();
  v3 = sPosterConfigurations;
  sPosterConfigurations = v2;

  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

void __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69790E0];
  v4 = a2;
  v8 = [[v3 alloc] initWithPhotoLibrary:*(a1 + 32)];
  v5 = [MEMORY[0x1E69790E8] imagesFilter];
  [v8 setFilter:v5];

  v6 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v8];
  v7 = +[PUWallpaperShortcutsPlaygroundSettings sharedInstance];
  [v6 setDelegate:v7];

  [v4 presentViewController:v6 animated:1 completion:0];
}

id __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 serverUUID];
  v3 = [v2 UUIDString];

  return v3;
}

BOOL __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C07E8];
  v3 = [a2 assetDirectory];
  v4 = [v2 loadFromURL:v3 error:0];

  v5 = [v4 configurationType] == 0;
  return v5;
}

void __70__PUWallpaperShortcutsPlaygroundSettings_UI__settingsControllerModule__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getPRSServiceClass_softClass;
  v8 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getPRSServiceClass_block_invoke;
    v4[3] = &unk_1E7B800F0;
    v4[4] = &v5;
    __getPRSServiceClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = sPosterService;
  sPosterService = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_24476 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_24476, &__block_literal_global_24477);
  }

  v3 = sharedInstance_sharedInstance_24478;

  return v3;
}

void __56__PUWallpaperShortcutsPlaygroundSettings_sharedInstance__block_invoke()
{
  v2 = +[PUSuggestionsSettings sharedInstance];
  v0 = [v2 shortcutsPlaygroundSettings];
  v1 = sharedInstance_sharedInstance_24478;
  sharedInstance_sharedInstance_24478 = v0;
}

@end