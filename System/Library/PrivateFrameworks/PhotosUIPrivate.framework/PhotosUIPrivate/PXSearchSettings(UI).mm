@interface PXSearchSettings(UI)
+ (__CFString)_formatIndexingStatusAlertMessageForRemainingCount:()UI isPaused:elapsedTimeSincePause:;
+ (id)settingsControllerModule;
@end

@implementation PXSearchSettings(UI)

+ (__CFString)_formatIndexingStatusAlertMessageForRemainingCount:()UI isPaused:elapsedTimeSincePause:
{
  if (a4)
  {
    if (a5)
    {
      if (a1 < 1.0)
      {
        a1 = 1.0;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Indexing has been paused for %.0f minute(s).\nRemaining objects count: %ld", *&a1, a4];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Remaining objects count: %ld", a4, v8];
    }
    v6 = ;
  }

  else
  {
    v6 = @"Indexing complete";
  }

  return v6;
}

+ (id)settingsControllerModule
{
  v63[7] = *MEMORY[0x1E69E9840];
  v50 = MEMORY[0x1E69C6638];
  v47 = [MEMORY[0x1E69C6628] rowWithTitle:@"Override Matched Text" valueKeyPath:@"overrideMatchedQueryText"];
  v63[0] = v47;
  v45 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Indexing Footer" valueKeyPath:@"forceIndexingFooter"];
  v63[1] = v45;
  v43 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Indexing Banner Theshold" valueKeyPath:@"indexingBannerPercentageThreshold"];
  v1 = [v43 minValue:1.0 maxValue:100.0];
  v2 = [v1 px_increment:1.0];
  v63[2] = v2;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Indexing Paused Title" valueKeyPath:@"forceIndexingPausedTitle"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"forceIndexingFooter == YES"];
  v5 = [v3 condition:v4];
  v63[3] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Autocorrect" valueKeyPath:@"enableAutoCorrect"];
  v63[4] = v6;
  v7 = [MEMORY[0x1E69C66A8] px_rowWithTitle:@"Disable Top Asset Curation" valueKeyPath:@"disableTopAssetCuration" condition:0];
  v63[5] = v7;
  v8 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Centralized Feedback Mode" valueKeyPath:@"overriddenCentralizedFeedbackMode"];
  v9 = [v8 possibleValues:&unk_1F2B7D688 titles:&unk_1F2B7D6A0];
  v63[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
  v51 = [v50 sectionWithRows:v10 title:0];

  v48 = MEMORY[0x1E69C6638];
  v46 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enabled" valueKeyPath:@"enableBatchedSearchResults"];
  v62[0] = v46;
  v44 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial Size" valueKeyPath:@"batchedSearchResultInitialBatchSize"];
  v11 = [v44 minValue:100.0 maxValue:200000.0];
  v12 = [v11 px_increment:500.0];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"enableBatchedSearchResults == YES"];
  v14 = [v12 condition:v13];
  v62[1] = v14;
  v15 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Batch Size" valueKeyPath:@"batchedSearchResultSubsequentBatchSize"];
  v16 = [v15 minValue:100.0 maxValue:200000.0];
  v17 = [v16 px_increment:500.0];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"enableBatchedSearchResults == YES"];
  v19 = [v17 condition:v18];
  v62[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  v49 = [v48 sectionWithRows:v20 title:@"Batched Search Results"];

  v21 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v22 = [v21 assetsdClient];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke;
  aBlock[3] = &unk_1E7B7E9F8;
  v23 = v22;
  v59 = v23;
  v60 = a1;
  v24 = _Block_copy(aBlock);
  v25 = MEMORY[0x1E69C65E8];
  v26 = MEMORY[0x1E69C6658];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_6;
  v55[3] = &unk_1E7B7DE28;
  v56 = v23;
  v27 = v24;
  v57 = v27;
  v28 = v23;
  v29 = [v26 actionWithHandler:v55];
  v30 = [v25 rowWithTitle:@"Rebuild Search Index" action:v29];

  v31 = MEMORY[0x1E69C65E8];
  v32 = MEMORY[0x1E69C6658];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __48__PXSearchSettings_UI__settingsControllerModule__block_invoke_158;
  v53[3] = &unk_1E7B7DE50;
  v54 = v27;
  v33 = v27;
  v34 = [v32 actionWithHandler:v53];
  v35 = [v31 rowWithTitle:@"Search Index Status" action:v34];

  v36 = MEMORY[0x1E69C6638];
  v61[0] = v30;
  v61[1] = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v38 = [v36 sectionWithRows:v37 title:@"Index"];

  v39 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v40 addObject:v51];
  [v40 addObject:v38];
  [v40 addObject:v49];
  [v40 addObject:v39];
  v41 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Search" contents:v40];

  return v41;
}

@end