@interface PXImportSettings(UI)
+ (id)settingsControllerModule;
@end

@implementation PXImportSettings(UI)

+ (id)settingsControllerModule
{
  v112[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69C6670];
  v1 = MEMORY[0x1E69C6688];
  v2 = NSStringFromSelector(sel_importSourceSimulationViaDiagnosticsEnabled);
  v3 = [v1 rowWithTitle:@"Simulate Import Source via Diagnostics" valueKeyPath:v2];
  v112[0] = v3;
  v4 = MEMORY[0x1E69C6688];
  v5 = NSStringFromSelector(sel_simulateEmptyImportSource);
  v6 = [v4 rowWithTitle:@"Simulate Empty Source" valueKeyPath:v5];
  v112[1] = v6;
  v7 = MEMORY[0x1E69C6688];
  v8 = NSStringFromSelector(sel_showImportItemFilenames);
  v9 = [v7 rowWithTitle:@"Show Filenames" valueKeyPath:v8];
  v112[2] = v9;
  v10 = MEMORY[0x1E69C6688];
  v11 = NSStringFromSelector(sel_loadActualThumbnails);
  v12 = [v10 rowWithTitle:@"Load Actual Thumbnails" valueKeyPath:v11];
  v112[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];
  v104 = [v0 sectionWithRows:v13 title:@"General"];

  v102 = MEMORY[0x1E69C6670];
  v14 = MEMORY[0x1E69C6688];
  v100 = NSStringFromSelector(sel_lazyLoadAllAssets);
  v97 = [v14 rowWithTitle:@"Lazy Load Thumbnails" valueKeyPath:v100];
  v111[0] = v97;
  v15 = MEMORY[0x1E69C6688];
  v95 = NSStringFromSelector(sel_groupItemsByEXIFDate);
  v93 = [v15 rowWithTitle:@"Group Items by EXIF Date" valueKeyPath:v95];
  v111[1] = v93;
  v16 = MEMORY[0x1E69C6688];
  v91 = NSStringFromSelector(sel_showNewestItemsInGridUntilScrolled);
  v89 = [v16 rowWithTitle:@"Show Newest Items First" valueKeyPath:v91];
  v111[2] = v89;
  v17 = MEMORY[0x1E69C65F8];
  v87 = NSStringFromSelector(sel_alreadyImportedTruncationMode);
  v85 = [v17 rowWithTitle:@"Already-Imported Truncation Mode" valueKeyPath:v87];
  v84 = [v85 possibleValues:&unk_1F2B7D8E0 titles:&unk_1F2B7D8F8];
  v111[3] = v84;
  v18 = MEMORY[0x1E69C65F8];
  v19 = NSStringFromSelector(sel_assetEnumerationBehavior);
  v20 = [v18 rowWithTitle:@"Asset Load Behavior (Default: Interval)" valueKeyPath:v19];
  v21 = [v20 possibleValues:&unk_1F2B7D910 titles:&unk_1F2B7D928];
  v111[4] = v21;
  v22 = MEMORY[0x1E69C66A0];
  v23 = NSStringFromSelector(sel_assetEnumerationBatchInterval);
  v24 = [v22 rowWithTitle:@"Load Interval (Default: 0.25)" valueKeyPath:v23];
  v25 = [v24 minValue:0.1 maxValue:3.0];
  v111[5] = v25;
  v26 = MEMORY[0x1E69C66A0];
  v27 = NSStringFromSelector(sel_assetEnumerationBatchSize);
  v28 = [v26 rowWithTitle:@"Load Size (Integer) (Default: 10)" valueKeyPath:v27];
  v29 = [v28 minValue:1.0 maxValue:50.0];
  v111[6] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:7];
  v103 = [v102 sectionWithRows:v30 title:@"Import Grid"];

  v31 = MEMORY[0x1E69C6670];
  v32 = MEMORY[0x1E69C6688];
  v33 = NSStringFromSelector(sel_usePhotosOneUp);
  v34 = [v32 rowWithTitle:@"Use Main Photos 1-Up" valueKeyPath:v33];
  v110[0] = v34;
  v35 = MEMORY[0x1E69C6688];
  v36 = NSStringFromSelector(sel_hide1UpToolbarAndMarginsForCollapsedAlreadyImportedItem);
  v37 = [v35 rowWithTitle:@"Remove 1-up toolbar & margins for single valueKeyPath:{unselectable imported item", v36}];
  v110[1] = v37;
  v38 = MEMORY[0x1E69C6688];
  v39 = NSStringFromSelector(sel_useThumbnailSizesAsImageSizeHints);
  v40 = [v38 rowWithTitle:@"Use thumbnail images as 1-up image size hints" valueKeyPath:v39];
  v110[2] = v40;
  v41 = MEMORY[0x1E69C6688];
  v42 = NSStringFromSelector(sel_loadRetinaThumbnails);
  v43 = [v41 rowWithTitle:@"Load retina thumbnails" valueKeyPath:v42];
  v110[3] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:4];
  v101 = [v31 sectionWithRows:v44 title:@"Import 1-UP"];

  v98 = MEMORY[0x1E69C6670];
  v45 = MEMORY[0x1E69C6688];
  v96 = NSStringFromSelector(sel_disableAssetDeletion);
  v94 = [v45 rowWithTitle:@"Simulate Asset Deletions" valueKeyPath:v96];
  v109[0] = v94;
  v46 = MEMORY[0x1E69C65F8];
  v92 = NSStringFromSelector(sel_simulatedBatteryLevel);
  v90 = [v46 rowWithTitle:@"Simulated Battery Level for Import" valueKeyPath:v92];
  v88 = [v90 possibleValues:&unk_1F2B7D940 titles:&unk_1F2B7D958];
  v109[1] = v88;
  v47 = MEMORY[0x1E69C6680];
  v86 = NSStringFromSelector(sel_delayBeforeShowingPreparationAlert);
  v48 = [v47 rowWithTitle:@"Delay before preparation alert" valueKeyPath:v86];
  v49 = [v48 minValue:0.0 maxValue:5.0];
  v109[2] = v49;
  v50 = MEMORY[0x1E69C6688];
  v51 = NSStringFromSelector(sel_simulateLongDiskSpacePreparation);
  v52 = [v50 rowWithTitle:@"Always show import preparation spinner" valueKeyPath:v51];
  v109[3] = v52;
  v53 = MEMORY[0x1E69C65F8];
  v54 = NSStringFromSelector(sel_simulatedDiskSpace);
  v55 = [v53 rowWithTitle:@"Simulated Disk Space Availability" valueKeyPath:v54];
  v56 = [v55 possibleValues:&unk_1F2B7D970 titles:&unk_1F2B7D988];
  v109[4] = v56;
  v57 = MEMORY[0x1E69C6688];
  v58 = NSStringFromSelector(sel_showProgressTitles);
  v59 = [v57 rowWithTitle:@"Show Progress In Titles" valueKeyPath:v58];
  v109[5] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:6];
  v99 = [v98 sectionWithRows:v60 title:@"Actions"];

  v61 = MEMORY[0x1E69C6670];
  v62 = MEMORY[0x1E69C6688];
  v63 = NSStringFromSelector(sel_externalOneUpForceEnable);
  v64 = [v62 rowWithTitle:@"Force Enable" valueKeyPath:v63];
  v108[0] = v64;
  v65 = MEMORY[0x1E69C6688];
  v66 = NSStringFromSelector(sel_externalOneUpSimulateDeletionFailure);
  v67 = [v65 rowWithTitle:@"Simulate Deletion Failure" valueKeyPath:v66];
  v108[1] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:2];
  v69 = [v61 sectionWithRows:v68 title:@"Camera External 1-Up"];

  v70 = MEMORY[0x1E69C6638];
  v71 = [MEMORY[0x1E69C6610] px_rowWithTitle:@"Show Debug Import History Grid" protoViewControllerFactoryClassName:@"PXProtoImportDebugViewControllerFactory" presentationStyle:0];
  v107 = v71;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v73 = [v70 sectionWithRows:v72 title:@"Import History"];

  v74 = MEMORY[0x1E69C6638];
  v75 = MEMORY[0x1E69C65E8];
  v76 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v77 = [v75 rowWithTitle:@"Restore Defaults" action:v76];
  v106 = v77;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v79 = [v74 sectionWithRows:v78];

  v80 = MEMORY[0x1E69C6638];
  v105[0] = v104;
  v105[1] = v103;
  v105[2] = v101;
  v105[3] = v99;
  v105[4] = v73;
  v105[5] = v69;
  v105[6] = v79;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:7];
  v82 = [v80 moduleWithTitle:@"Import" contents:v81];

  return v82;
}

@end