@interface PUExitEditPerformanceEventBuilder
- (id)buildEvent;
@end

@implementation PUExitEditPerformanceEventBuilder

- (id)buildEvent
{
  v95 = *MEMORY[0x1E69E9840];
  v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(PUExitEditPerformanceEventBuilder *)self compositionController];
  v4 = [v3 adjustmentConstants];

  v78 = v4;
  v5 = [v4 allAdjustmentTypes];
  v77 = self;
  v6 = [(PUExitEditPerformanceEventBuilder *)self compositionController];
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v6 compositionKeys];
  v9 = [v7 setWithArray:v8];

  v87 = 0u;
  v88 = 0u;
  memset(lhs, 0, sizeof(lhs));
  v10 = [v6 compositionKeys];
  v11 = [v10 countByEnumeratingWithState:lhs objects:&time count:16];
  if (v11)
  {
    v12 = v11;
    v13 = **&lhs[16];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (**&lhs[16] != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*&lhs[8] + 8 * i);
        v16 = [v6 adjustmentControllerForKey:v15];
        if (![v16 canBeEnabled] || objc_msgSend(v16, "enabled"))
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:lhs objects:&time count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v83;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v83 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v82 + 1) + 8 * j);
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adjustment_%@", v22];
        v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "containsObject:", v22)}];
        [v80 setObject:v24 forKeyedSubscript:v23];
      }

      v19 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v19);
  }

  v25 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  [v25 duration];
  v27 = v26;

  v28 = [(PUExitEditPerformanceEventBuilder *)v77 compositionController];
  v29 = [v28 trimAdjustmentController];

  Seconds = v27;
  if (v29)
  {
    [v29 endTime];
    [v29 startTime];
    CMTimeSubtract(&time, lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
  }

  v31 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  v32 = [v31 pixelWidth];
  v33 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  v34 = [v33 pixelHeight] * v32;

  v35 = [(PUExitEditPerformanceEventBuilder *)v77 compositionController];
  v36 = [v35 cropAdjustmentController];

  v37 = v34;
  if (v36)
  {
    [v36 cropRect];
    v98 = CGRectStandardize(v97);
    x = v98.origin.x;
    y = v98.origin.y;
    width = v98.size.width;
    height = v98.size.height;
    v42 = CGRectGetWidth(v98);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    v37 = (v42 * CGRectGetHeight(v99));
  }

  v91[0] = @"assetInputDuration";
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  v92[0] = v43;
  v91[1] = @"assetInputPixelCount";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
  v92[1] = v44;
  v91[2] = @"assetOutputDuration";
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:Seconds];
  v92[2] = v45;
  v91[3] = @"assetOutputPixelCount";
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
  v92[3] = v46;
  v91[4] = @"assetSubtypes";
  v70 = [(PUExitEditPerformanceEventBuilder *)v77 isEditingWithRaw];
  v75 = v36;
  v76 = v29;
  v73 = v44;
  v74 = v43;
  v71 = v46;
  v72 = v45;
  if (v70)
  {
    v47 = @"raw";
  }

  else
  {
    v48 = MEMORY[0x1E6978630];
    v65 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
    v47 = [v48 descriptionForMediaSubtypes:{objc_msgSend(v65, "mediaSubtypes")}];
  }

  v66 = v47;
  v92[4] = v47;
  v91[5] = @"assetType";
  v49 = MEMORY[0x1E6978630];
  v69 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  v68 = [v49 descriptionForMediaType:{objc_msgSend(v69, "mediaType")}];
  v92[5] = v68;
  v91[6] = @"bundleIdentifier";
  v67 = [MEMORY[0x1E696AAE8] mainBundle];
  v50 = [v67 bundleIdentifier];
  v92[6] = v50;
  v91[7] = @"iCPLEnabled";
  v51 = MEMORY[0x1E696AD98];
  v52 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  v53 = [v51 numberWithBool:{objc_msgSend(v52, "isCloudPhotoLibraryEnabled")}];
  v92[7] = v53;
  v91[8] = @"isFirstSinceLaunch";
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUExitEditPerformanceEventBuilder isFirstSinceLaunch](v77, "isFirstSinceLaunch")}];
  v92[8] = v54;
  v91[9] = @"reason";
  [(PUExitEditPerformanceEventBuilder *)v77 sessionEndReason];
  v55 = PEPhotoEditSessionEndString();
  v92[9] = v55;
  v91[10] = @"totalDuration";
  v56 = MEMORY[0x1E696AD98];
  [(PUExitEditPerformanceEventBuilder *)v77 exitEditDuration];
  v57 = [v56 numberWithDouble:?];
  v92[10] = v57;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:11];
  [v80 addEntriesFromDictionary:v58];

  if (!v70)
  {
  }

  v59 = MEMORY[0x1E69C4258];
  v60 = [(PUExitEditPerformanceEventBuilder *)v77 asset];
  v61 = [v59 semanticStylesIdentifierForItem:v60];

  if (v61 && [v61 length])
  {
    v89 = @"photoedit_asset_semantic_style";
    v90 = v61;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    [v80 addEntriesFromDictionary:v62];
  }

  v63 = [v80 copy];

  return v63;
}

@end