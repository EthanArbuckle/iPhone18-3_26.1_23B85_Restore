@interface PXAlbumsDebugUISettings
+ (PXAlbumsDebugUISettings)sharedInstance;
+ (id)_predicateValidatorUsingInternalPredicate:(BOOL)predicate;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXAlbumsDebugUISettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXAlbumsDebugUISettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXAlbumsDebugUISettings *)self setShowBestKeyFrameDebugAlbum:0];
  [(PXAlbumsDebugUISettings *)self setShowUtilitiesDebugAlbum:0];
  [(PXAlbumsDebugUISettings *)self setShowDreamyDebugAlbum:0];
  [(PXAlbumsDebugUISettings *)self setShowGazeDebugAlbum:0];
  [(PXAlbumsDebugUISettings *)self setShowCustomDebugAlbum:0];
  [(PXAlbumsDebugUISettings *)self setCustomDebugAlbumTitle:@"Custom"];
  [(PXAlbumsDebugUISettings *)self setCustomDebugInternalPredicate:0];
  [(PXAlbumsDebugUISettings *)self setCustomDebugPredicate:0];
}

+ (id)_predicateValidatorUsingInternalPredicate:(BOOL)predicate
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PXAlbumsDebugUISettings_UI___predicateValidatorUsingInternalPredicate___block_invoke;
  aBlock[3] = &__block_descriptor_33_e28___NSString_16__0__NSString_8l;
  predicateCopy = predicate;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);

  return v4;
}

id __73__PXAlbumsDebugUISettings_UI___predicateValidatorUsingInternalPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E6978830];
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v4 fetchOptionsWithPhotoLibrary:v5 orObject:0];

  if (*(a1 + 32) == 1)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:v3];
    [v6 setInternalPredicate:v7];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:v3];
    [v6 setPredicate:v7];
  }

  v8 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
  v9 = v3;

  return v9;
}

+ (id)settingsControllerModule
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C6638];
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Utilities Album" valueKeyPath:@"showUtilitiesDebugAlbum"];
  v30[0] = v4;
  v5 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Best Key Frame Album" valueKeyPath:@"showBestKeyFrameDebugAlbum"];
  v30[1] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Dreamy Album" valueKeyPath:@"showDreamyDebugAlbum"];
  v30[2] = v6;
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Gaze Album" valueKeyPath:@"showGazeDebugAlbum"];
  v30[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v27 = [v3 sectionWithRows:v8 title:@"Internal Albums"];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"showCustomDebugAlbum == YES"];
  v10 = MEMORY[0x1E69C6638];
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Custom Album" valueKeyPath:@"showCustomDebugAlbum"];
  v29[0] = v11;
  v12 = [MEMORY[0x1E69C6628] rowWithTitle:@"Title" valueKeyPath:@"customDebugAlbumTitle"];
  v13 = [v12 condition:v9];
  v29[1] = v13;
  v14 = MEMORY[0x1E69C6628];
  v15 = [self _predicateValidatorUsingInternalPredicate:0];
  v16 = [v14 px_rowWithTitle:@"Predicate" valueKeyPath:@"customDebugPredicate" alertTitle:@"Custom Album" alertMessage:@"Enter a predicate for this album." textPlaceholder:@"Predicate" textValidator:v15 condition:v9];
  v29[2] = v16;
  v17 = MEMORY[0x1E69C6628];
  v18 = [self _predicateValidatorUsingInternalPredicate:1];
  v19 = [v17 px_rowWithTitle:@"Internal Predicate" valueKeyPath:@"customDebugInternalPredicate" alertTitle:@"Custom Album" alertMessage:@"Enter an internal predicate for this album." textPlaceholder:@"Internal Predicate" textValidator:v18 condition:v9];
  v29[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v21 = [v10 sectionWithRows:v20 title:@"Custom Internal Album"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v23 = MEMORY[0x1E69C6638];
  v28[0] = v27;
  v28[1] = v21;
  v28[2] = px_restoreDefaultsSection;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v25 = [v23 moduleWithTitle:@"Albums Debug UI" contents:v24];

  return v25;
}

+ (PXAlbumsDebugUISettings)sharedInstance
{
  if (sharedInstance_onceToken_143143 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_143143, &__block_literal_global_143144);
  }

  v3 = sharedInstance_sharedInstance_143145;

  return v3;
}

void __41__PXAlbumsDebugUISettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 albumsDebugUISettings];
  v1 = sharedInstance_sharedInstance_143145;
  sharedInstance_sharedInstance_143145 = v0;
}

@end