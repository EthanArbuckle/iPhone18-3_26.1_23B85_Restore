@interface PUPhotosGridSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PUPhotosGridSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUPhotosGridSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUPhotosGridSettings *)self setDefaultItemSideSize:132.0];
  [(PUPhotosGridSettings *)self setMaximumSpacing:20.0];
  [(PUPhotosGridSettings *)self setBadgeAllItemsAsFavorites:0];
  [(PUPhotosGridSettings *)self setDisplayAllItemsAsBursts:0];
  [(PUPhotosGridSettings *)self setAllowDynamicDetailsTitles:1];
  [(PUPhotosGridSettings *)self setSimulatedDetailsAttributesLoadingDelay:0.0];
  [(PUPhotosGridSettings *)self setForceJPEGThumbnailsInDefaultGrid:1];
  [(PUPhotosGridSettings *)self setNumberColumnsInDefaultGrid:4];
  [(PUPhotosGridSettings *)self setNumberOfColumnsInWideGrid:5];
  [(PUPhotosGridSettings *)self setFlashDegradedImages:0];
  [(PUPhotosGridSettings *)self setSwipeSelectionEnabled:1];
  [(PUPhotosGridSettings *)self setPreviewRevealProgressToFreezeMagnifier:0.400000006];
  [(PUPhotosGridSettings *)self setMagnifierRevealPreviewScale:1.75];
  [(PUPhotosGridSettings *)self setMinimumDistanceToUnfreeze:20.0];
  [(PUPhotosGridSettings *)self setShouldExitEditingModeAfterDuplication:1];
  [(PUPhotosGridSettings *)self setShowTimelineScrubbers:0];
  [(PUPhotosGridSettings *)self setLeftScrubberRate:10.0];
  [(PUPhotosGridSettings *)self setRightScrubberRate:5.0];
  [(PUPhotosGridSettings *)self setGlobalFooterVisibility:0];
  [(PUPhotosGridSettings *)self setSimulateGlobalFooterImportantInformationUpdates:0];
}

+ (id)settingsControllerModule
{
  v84[12] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v75 = [MEMORY[0x1E696AE18] predicateWithValue:(v3 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  PLPhysicalScreenScale();
  v73 = MEMORY[0x1E69C6638];
  v5 = 1.0 / v4;
  v71 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Swipe Selection" valueKeyPath:@"swipeSelectionEnabled"];
  v84[0] = v71;
  v70 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Fake All Videos" valueKeyPath:@"badgeAllItemsAsFavorites"];
  v84[1] = v70;
  v69 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Fake All Bursts" valueKeyPath:@"displayAllItemsAsBursts"];
  v84[2] = v69;
  v68 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Dynamic Details Titles" valueKeyPath:@"allowDynamicDetailsTitles"];
  v84[3] = v68;
  v67 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Fake Title/Subtitle Delay" valueKeyPath:@"simulatedDetailsAttributesLoadingDelay"];
  v66 = [v67 pu_possibleValues:&unk_1F2B7D460];
  v65 = [v66 conditionFormat:@"allowDynamicDetailsTitles != 0"];
  v84[4] = v65;
  v64 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Flash Degraded Images" valueKeyPath:@"flashDegradedImages"];
  v84[5] = v64;
  v63 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Magnifier Reveal Preview Scale" valueKeyPath:@"magnifierRevealPreviewScale"];
  v62 = [v63 minValue:0.0 maxValue:20.0];
  v61 = [v62 pu_increment:0.00999999978];
  v84[6] = v61;
  v60 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Freeze Magnifier at Reveal Progress" valueKeyPath:@"previewRevealProgressToFreezeMagnifier"];
  v6 = [v60 minValue:0.0 maxValue:1.0];
  v7 = [v6 pu_increment:0.00999999978];
  v84[7] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Unfreeze Minimum Distance" valueKeyPath:@"minimumDistanceToUnfreeze"];
  v9 = [v8 minValue:0.0 maxValue:500.0];
  v10 = [v9 pu_increment:1.0];
  v84[8] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Exit Selection After Duplication" valueKeyPath:@"shouldExitEditingModeAfterDuplication"];
  v84[9] = v11;
  v12 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Footer Visibility" valueKeyPath:@"globalFooterVisibility"];
  v13 = [v12 possibleValues:&unk_1F2B7D478 titles:&unk_1F2B7D490];
  v84[10] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Footer Updates" valueKeyPath:@"simulateGlobalFooterImportantInformationUpdates"];
  v84[11] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:12];
  v74 = [v73 sectionWithRows:v15 title:@"Grid Settings"];

  v16 = MEMORY[0x1E69C6638];
  v17 = [MEMORY[0x1E69C66A8] rowWithTitle:@"JPEG Thumbnails" valueKeyPath:@"forceJPEGThumbnailsInDefaultGrid"];
  v83[0] = v17;
  v18 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Columns" valueKeyPath:@"numberColumnsInDefaultGrid"];
  v19 = [v18 possibleValues:&unk_1F2B7D4A8 titles:&unk_1F2B7D4C0];
  v83[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v21 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v75];
  v72 = [v16 sectionWithRows:v20 title:@"iPhone Grid" condition:v21];

  v22 = MEMORY[0x1E69C6638];
  v23 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Default Side Size" valueKeyPath:@"defaultItemSideSize"];
  v24 = [v23 minValue:50.0 maxValue:200.0];
  v25 = [v24 pu_increment:v5];
  v82[0] = v25;
  v26 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Maximum Spacing" valueKeyPath:@"maximumSpacing"];
  v27 = [v26 minValue:0.0 maxValue:100.0];
  v28 = [v27 pu_increment:v5];
  v82[1] = v28;
  v29 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Columns at half size" valueKeyPath:@"numberOfColumnsInWideGrid"];
  v30 = [v29 possibleValues:&unk_1F2B7D4D8 titles:&unk_1F2B7D4F0];
  v82[2] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
  v32 = [v22 sectionWithRows:v31 title:@"iPad Grid Layout" condition:v75];

  v33 = MEMORY[0x1E69C6638];
  v34 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show scrubbers" valueKeyPath:@"showTimelineScrubbers"];
  v81[0] = v34;
  v35 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Left scrubber rate" valueKeyPath:@"leftScrubberRate"];
  v36 = [v35 minValue:1.0 maxValue:50.0];
  v81[1] = v36;
  v37 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Right scrubber rate" valueKeyPath:@"rightScrubberRate"];
  v38 = [v37 minValue:1.0 maxValue:50.0];
  v81[2] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
  v40 = [v33 sectionWithRows:v39 title:@"Timeline scrubbers"];

  v41 = MEMORY[0x1E69C6638];
  v42 = MEMORY[0x1E69C65E8];
  v43 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v44 = [v42 rowWithTitle:@"Restore Defaults" action:v43];
  v80 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v46 = [v41 sectionWithRows:v45];

  v47 = objc_alloc(MEMORY[0x1E69BE898]);
  v48 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v49 = [v47 initWithPhotoLibrary:v48];

  v50 = MEMORY[0x1E69C6638];
  v51 = MEMORY[0x1E69C65E8];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __48__PUPhotosGridSettings_settingsControllerModule__block_invoke;
  v76[3] = &unk_1E7B7E038;
  v77 = v49;
  v52 = v49;
  v53 = [v51 pu_rowWithTitle:@"Localized Warnings" output:v76];
  v79 = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v55 = [v50 sectionWithRows:v54 title:@"Debug"];

  v56 = MEMORY[0x1E69C6638];
  v78[0] = v74;
  v78[1] = v72;
  v78[2] = v32;
  v78[3] = v40;
  v78[4] = v46;
  v78[5] = v55;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:6];
  v58 = [v56 moduleWithTitle:@"Photos Grid" contents:v57];

  return v58;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_65227 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_65227, &__block_literal_global_65228);
  }

  v3 = sharedInstance_sharedInstance_65229;

  return v3;
}

void __38__PUPhotosGridSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 photosGridSettings];
  v1 = sharedInstance_sharedInstance_65229;
  sharedInstance_sharedInstance_65229 = v0;
}

@end