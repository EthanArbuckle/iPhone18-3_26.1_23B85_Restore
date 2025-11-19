@interface PUEnterEditPerformanceEventBuilder
- (id)buildEvent;
@end

@implementation PUEnterEditPerformanceEventBuilder

- (id)buildEvent
{
  v57[15] = *MEMORY[0x1E69E9840];
  [(PUEnterEditPerformanceEventBuilder *)self enterEditDuration];
  v4 = v3;
  [(PUEnterEditPerformanceEventBuilder *)self resourceCheckingDuration];
  v6 = v5;
  [(PUEnterEditPerformanceEventBuilder *)self resourceDownloadDuration];
  v8 = v6 + v7;
  [(PUEnterEditPerformanceEventBuilder *)self autoCalcDuration];
  v10 = v8 + v9;
  v56[0] = @"assetAge";
  v55 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  v11 = [v55 creationDate];
  v12 = [MEMORY[0x1E695DF00] date];
  v54 = v11;
  [v12 timeIntervalSinceDate:v11];
  if (v13 <= 0.0)
  {
    v14 = @"future";
  }

  else if (v13 >= 3600.0)
  {
    if (v13 >= 86400.0)
    {
      if (v13 >= 604800.0)
      {
        if (v13 >= 2592000.0)
        {
          v14 = @"longer";
        }

        else
        {
          v14 = @"month";
        }
      }

      else
      {
        v14 = @"week";
      }
    }

    else
    {
      v14 = @"day";
    }
  }

  else
  {
    v14 = @"hour";
  }

  v15 = v4 - v10;

  v53 = v14;
  v57[0] = v53;
  v56[1] = @"assetDuration";
  v16 = MEMORY[0x1E696AD98];
  v52 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  [v52 duration];
  v51 = [v16 numberWithDouble:?];
  v57[1] = v51;
  v56[2] = @"assetPixelCount";
  v17 = MEMORY[0x1E696AD98];
  v50 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  v18 = [v50 pixelWidth];
  v49 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  v48 = [v17 numberWithUnsignedInteger:{objc_msgSend(v49, "pixelHeight") * v18}];
  v57[2] = v48;
  v56[3] = @"assetSubtypes";
  v47 = [(PUEnterEditPerformanceEventBuilder *)self isEditingWithRaw];
  if (v47)
  {
    v19 = @"raw";
  }

  else
  {
    v20 = MEMORY[0x1E6978630];
    v40 = [(PUEnterEditPerformanceEventBuilder *)self asset];
    v19 = [v20 descriptionForMediaSubtypes:{objc_msgSend(v40, "mediaSubtypes")}];
  }

  v41 = v19;
  v57[3] = v19;
  v56[4] = @"assetType";
  v21 = MEMORY[0x1E6978630];
  v46 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  v45 = [v21 descriptionForMediaType:{objc_msgSend(v46, "mediaType")}];
  v57[4] = v45;
  v56[5] = @"autoCalcDuration";
  v22 = MEMORY[0x1E696AD98];
  [(PUEnterEditPerformanceEventBuilder *)self autoCalcDuration];
  v44 = [v22 numberWithDouble:?];
  v57[5] = v44;
  v56[6] = @"bundleIdentifier";
  v43 = [MEMORY[0x1E696AAE8] mainBundle];
  v42 = [v43 bundleIdentifier];
  v57[6] = v42;
  v56[7] = @"iCPLEnabled";
  v23 = MEMORY[0x1E696AD98];
  v24 = [(PUEnterEditPerformanceEventBuilder *)self asset];
  v25 = [v23 numberWithBool:{objc_msgSend(v24, "isCloudPhotoLibraryEnabled")}];
  v57[7] = v25;
  v56[8] = @"isFirstSinceBoot";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUEnterEditPerformanceEventBuilder isFirstSinceBoot](self, "isFirstSinceBoot")}];
  v57[8] = v26;
  v56[9] = @"isFirstSinceLaunch";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUEnterEditPerformanceEventBuilder isFirstSinceLaunch](self, "isFirstSinceLaunch")}];
  v57[9] = v27;
  v56[10] = @"neededToDownload";
  v28 = MEMORY[0x1E696AD98];
  [(PUEnterEditPerformanceEventBuilder *)self resourceDownloadDuration];
  v30 = [v28 numberWithInt:v29 > 0.0];
  v57[10] = v30;
  v56[11] = @"otherDuration";
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v57[11] = v31;
  v56[12] = @"resourceCheckingDuration";
  v32 = MEMORY[0x1E696AD98];
  [(PUEnterEditPerformanceEventBuilder *)self resourceCheckingDuration];
  v33 = [v32 numberWithDouble:?];
  v57[12] = v33;
  v56[13] = @"resourceDownloadDuration";
  v34 = MEMORY[0x1E696AD98];
  [(PUEnterEditPerformanceEventBuilder *)self resourceDownloadDuration];
  v35 = [v34 numberWithDouble:?];
  v57[13] = v35;
  v56[14] = @"totalDuration";
  v36 = MEMORY[0x1E696AD98];
  [(PUEnterEditPerformanceEventBuilder *)self enterEditDuration];
  v37 = [v36 numberWithDouble:?];
  v57[14] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:15];

  if (!v47)
  {
  }

  return v38;
}

@end