@interface PUAmbientPhotoFrameSettings
+ (PUAmbientPhotoFrameSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)wallpaperShuffleConfigurationViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration;
@end

@implementation PUAmbientPhotoFrameSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUAmbientPhotoFrameSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUAmbientPhotoFrameSettings *)self setFixedAssetDuration:40.0];
  [(PUAmbientPhotoFrameSettings *)self setDisableNUp:1];
  [(PUAmbientPhotoFrameSettings *)self setDisableLetterAndPillarBoxing:1];
  [(PUAmbientPhotoFrameSettings *)self setKenBurnsPanSpeed:4.0];
  [(PUAmbientPhotoFrameSettings *)self setKenBurnsScaleSpeed:4.0];
  [(PUAmbientPhotoFrameSettings *)self setShowFavoriteAlbumAssets:1];
  [(PUAmbientPhotoFrameSettings *)self setShowPeopleCuratedAssets:0];
  [(PUAmbientPhotoFrameSettings *)self setShowPetsCuratedAssets:0];
  [(PUAmbientPhotoFrameSettings *)self setShowNatureCuratedAssets:0];
  [(PUAmbientPhotoFrameSettings *)self setShowCitiesCuratedAssets:0];
  [(PUAmbientPhotoFrameSettings *)self setShowFeaturedCuratedAssets:1];
  [(PUAmbientPhotoFrameSettings *)self setIncludeHighlightAssetsInFeatured:1];
  [(PUAmbientPhotoFrameSettings *)self setIncludeFeaturedPhotosInFeatured:1];
  [(PUAmbientPhotoFrameSettings *)self setForceColdStart:0];
  [(PUAmbientPhotoFrameSettings *)self setPersonLocalIdentifiers:0];
  [(PUAmbientPhotoFrameSettings *)self setShowTapToRadarButton:1];
  [(PUAmbientPhotoFrameSettings *)self setIncludePhotosInRadar:0];
  [(PUAmbientPhotoFrameSettings *)self setWatchType:2];
  [(PUAmbientPhotoFrameSettings *)self setWatchTimeConfig:1];
}

- (void)wallpaperShuffleConfigurationViewController:(id)controller didFinishWithPosterConfiguration:(id)configuration
{
  controllerCopy = controller;
  shuffleConfiguration = [configuration shuffleConfiguration];
  shuffleSmartAlbums = [shuffleConfiguration shuffleSmartAlbums];
  [(PUAmbientPhotoFrameSettings *)self setShowPeopleCuratedAssets:shuffleSmartAlbums & 1];
  [(PUAmbientPhotoFrameSettings *)self setShowPetsCuratedAssets:(shuffleSmartAlbums >> 1) & 1];
  [(PUAmbientPhotoFrameSettings *)self setShowCitiesCuratedAssets:(shuffleSmartAlbums >> 3) & 1];
  [(PUAmbientPhotoFrameSettings *)self setShowNatureCuratedAssets:(shuffleSmartAlbums >> 2) & 1];
  [(PUAmbientPhotoFrameSettings *)self setShowFeaturedCuratedAssets:(shuffleSmartAlbums >> 4) & 1];
  personLocalIdentifiers = [shuffleConfiguration personLocalIdentifiers];
  allObjects = [personLocalIdentifiers allObjects];
  [(PUAmbientPhotoFrameSettings *)self setPersonLocalIdentifiers:allObjects];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

+ (id)settingsControllerModule
{
  v117[1] = *MEMORY[0x1E69E9840];
  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v3 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C65E8];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke;
  v106[3] = &unk_1E7B7E3F0;
  v92 = px_systemPhotoLibrary;
  v107 = v92;
  v5 = [v4 pu_rowWithTitle:@"Play (Long Press then Lift finger To Dismiss)" action:v106];
  v117[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:1];
  v99 = [v3 sectionWithRows:v6];

  v7 = MEMORY[0x1E69C6638];
  v8 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Ambient Category Inspector" protoViewControllerFactoryClassName:@"PXProtoAmbientPhotoFrameDebugViewControllerFactory" options:&unk_1F2B7F0F8];
  v116[0] = v8;
  v9 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Ambient People Inspector" protoViewControllerFactoryClassName:@"PXProtoAmbientPhotoFrameDebugViewControllerFactory" options:&unk_1F2B7F120];
  v116[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v98 = [v7 sectionWithRows:v10 title:@"Ambient Wallpaper Inspector"];

  v11 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C66A0];
  v13 = NSStringFromSelector(sel_fixedAssetDuration);
  v14 = [v12 rowWithTitle:@"Fixed Asset Duration" valueKeyPath:v13];
  v15 = [v14 minValue:1.0 maxValue:120.0];
  v115[0] = v15;
  v16 = MEMORY[0x1E69C66A8];
  v17 = NSStringFromSelector(sel_disableNUp);
  v18 = [v16 rowWithTitle:@"Disable NUp" valueKeyPath:v17];
  v115[1] = v18;
  v19 = MEMORY[0x1E69C66A8];
  v20 = NSStringFromSelector(sel_disableLetterAndPillarBoxing);
  v21 = [v19 rowWithTitle:@"Disable Letterboxing & Pillarboxing" valueKeyPath:v20];
  v115[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
  v97 = [v11 sectionWithRows:v22 title:@"General"];

  v23 = MEMORY[0x1E69C6638];
  v24 = MEMORY[0x1E69C66A0];
  v25 = NSStringFromSelector(sel_kenBurnsPanSpeed);
  v26 = [v24 rowWithTitle:@"Pan Speed (points per second)" valueKeyPath:v25];
  v27 = [v26 minValue:0.0 maxValue:200.0];
  v28 = [v27 px_increment:1.0];
  v114[0] = v28;
  v29 = MEMORY[0x1E69C66A0];
  v30 = NSStringFromSelector(sel_kenBurnsScaleSpeed);
  v31 = [v29 rowWithTitle:@"Scale Speed (points per second at furthest edge)" valueKeyPath:v30];
  v32 = [v31 minValue:0.0 maxValue:200.0];
  v33 = [v32 px_increment:1.0];
  v114[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
  v96 = [v23 sectionWithRows:v34 title:@"Ken Burns"];

  v35 = MEMORY[0x1E69C6638];
  v36 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_showFavoriteAlbumAssets);
  v38 = [v36 rowWithTitle:@"Favorite Album" valueKeyPath:v37];
  v113[0] = v38;
  v39 = MEMORY[0x1E69C66A8];
  v40 = NSStringFromSelector(sel_showCuratedCategories);
  v41 = [v39 rowWithTitle:@"Curated Categories" valueKeyPath:v40];
  v113[1] = v41;
  v42 = MEMORY[0x1E69C65E8];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_2;
  v104[3] = &unk_1E7B7E3F0;
  v43 = v92;
  v105 = v43;
  v44 = [v42 pu_rowWithTitle:@"Configure Curated Categories" action:v104];
  _enabledCurationCategoriesPredicate = [self _enabledCurationCategoriesPredicate];
  v46 = [v44 condition:_enabledCurationCategoriesPredicate];
  v113[2] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
  v95 = [v35 sectionWithRows:v47 title:@"Asset Sources"];

  v90 = MEMORY[0x1E69C6638];
  v48 = MEMORY[0x1E69C66A8];
  v88 = NSStringFromSelector(sel_includeHighlightAssetsInFeatured);
  v49 = [v48 rowWithTitle:@"Highlight Summary Assets" valueKeyPath:v88];
  v112[0] = v49;
  v50 = MEMORY[0x1E69C66A8];
  v51 = NSStringFromSelector(sel_includeFeaturedPhotosInFeatured);
  v52 = [v50 rowWithTitle:@"Featured Photos" valueKeyPath:v51];
  v112[1] = v52;
  v53 = MEMORY[0x1E69C66A8];
  v54 = NSStringFromSelector(sel_forceColdStart);
  v55 = [v53 rowWithTitle:@"Force Cold Start" valueKeyPath:v54];
  v112[2] = v55;
  v56 = MEMORY[0x1E69C65E8];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_3;
  v102[3] = &unk_1E7B7E3F0;
  v57 = v43;
  v103 = v57;
  v58 = [v56 pu_rowWithTitle:@"Highlight Summary Assets" action:v102];
  v112[3] = v58;
  v59 = MEMORY[0x1E69C65E8];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_4;
  v100[3] = &unk_1E7B7E3F0;
  v101 = v57;
  v93 = v57;
  v60 = [v59 pu_rowWithTitle:@"Memory Key Assets" action:v100];
  v112[4] = v60;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:5];
  v91 = [v90 sectionWithRows:v61 title:@"Featured Content"];

  v62 = MEMORY[0x1E69C6638];
  v63 = MEMORY[0x1E69C66A8];
  v64 = NSStringFromSelector(sel_showTapToRadarButton);
  v65 = [v63 rowWithTitle:@"Show Tap To Radar" valueKeyPath:v64];
  v111[0] = v65;
  v66 = MEMORY[0x1E69C66A8];
  v67 = NSStringFromSelector(sel_includePhotosInRadar);
  v68 = [v66 rowWithTitle:@"Include Photos in Radar" valueKeyPath:v67];
  v111[1] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
  v89 = [v62 sectionWithRows:v69 title:@"Tap To Radar"];

  v70 = MEMORY[0x1E69C6638];
  v71 = MEMORY[0x1E69C65E8];
  v72 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v73 = [v71 rowWithTitle:@"Restore Defaults" action:v72];
  v110 = v73;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v87 = [v70 sectionWithRows:v74];

  v75 = MEMORY[0x1E69C6638];
  v76 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Watch Category Inspector" protoViewControllerFactoryClassName:@"PXProtoAmbientPhotoFrameDebugViewControllerFactory" options:&unk_1F2B7F148];
  v109[0] = v76;
  v77 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Model" valueKeyPath:@"watchType"];
  v78 = [v77 possibleValues:&unk_1F2B7CE90 titles:&unk_1F2B7CEA8];
  v109[1] = v78;
  v79 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Time Position" valueKeyPath:@"watchTimeConfig"];
  v80 = [v79 possibleValues:&unk_1F2B7CEC0 titles:&unk_1F2B7CED8];
  v109[2] = v80;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:3];
  v82 = [v75 sectionWithRows:v81 title:@"Watch Face Inspector"];

  v83 = MEMORY[0x1E69C6638];
  v108[0] = v99;
  v108[1] = v98;
  v108[2] = v95;
  v108[3] = v91;
  v108[4] = v97;
  v108[5] = v96;
  v108[6] = v89;
  v108[7] = v82;
  v108[8] = v87;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:9];
  v85 = [v83 moduleWithTitle:@"Ambient Photo Frame" contents:v84];

  return v85;
}

void __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PUAmbientPhotoFramePlayergroundViewController alloc] initWithPhotoLibrary:*(a1 + 32)];
  [(PUAmbientPhotoFramePlayergroundViewController *)v4 setModalPresentationStyle:5];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = +[PUAmbientPhotoFrameSettings sharedInstance];
  v4 = [objc_alloc(MEMORY[0x1E69C0830]) initWithShuffleType:0];
  v5 = 0;
  if ([v12 showPeopleCuratedAssets])
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v12 personLocalIdentifiers];
    v8 = [v6 setWithArray:v7];
    [v4 setPersonLocalIdentifiers:v8];

    v5 = 1;
  }

  if ([v12 showCitiesCuratedAssets])
  {
    v5 |= 8uLL;
  }

  if ([v12 showNatureCuratedAssets])
  {
    v5 |= 4uLL;
  }

  if ([v12 showPetsCuratedAssets])
  {
    v5 |= 2uLL;
  }

  if ([v12 showFeaturedCuratedAssets])
  {
    v9 = v5 | 0x10;
  }

  else
  {
    v9 = v5;
  }

  [v4 setShuffleSmartAlbums:v9];
  v10 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:1];
  [v10 setShuffleConfiguration:v4];
  v11 = [[_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController alloc] initWithPhotoLibrary:*(a1 + 32) style:1 posterConfiguration:v10 centerMedia:0 contentMode:1];
  [(PUWallpaperShuffleConfigurationViewController *)v11 setModalPresentationStyle:2];
  [(PUWallpaperShuffleConfigurationViewController *)v11 setDelegate:v12];
  [v3 presentViewController:v11 animated:1 completion:0];
}

void __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterCurationViewControllerFactoryClass() ambientHighlightAssetReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __59__PUAmbientPhotoFrameSettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterCurationViewControllerFactoryClass() ambientMemoryKeyAssetReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

+ (PUAmbientPhotoFrameSettings)sharedInstance
{
  if (sharedInstance_onceToken_83250 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_83250, &__block_literal_global_83251);
  }

  v3 = sharedInstance_sharedInstance_83252;

  return v3;
}

void __45__PUAmbientPhotoFrameSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 ambientPhotoFrameSettings];
  v1 = sharedInstance_sharedInstance_83252;
  sharedInstance_sharedInstance_83252 = v0;
}

@end