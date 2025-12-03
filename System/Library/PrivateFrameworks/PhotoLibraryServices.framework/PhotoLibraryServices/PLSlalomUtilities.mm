@interface PLSlalomUtilities
+ (double)durationForBaseDuration:(double)duration videoAdjustments:(id)adjustments;
+ (double)durationForManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments;
+ (id)synchronouslyFetchVideoAdjustmentsFromManagedAsset:(id)asset;
+ (id)videoAVObjectBuilderForManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments;
@end

@implementation PLSlalomUtilities

+ (double)durationForBaseDuration:(double)duration videoAdjustments:(id)adjustments
{
  if (adjustments)
  {
    v5 = MEMORY[0x1E69C0890];
    adjustmentsCopy = adjustments;
    [adjustmentsCopy slowMotionRate];
    v8 = v7;
    [adjustmentsCopy slowMotionTimeRange];

    LODWORD(v9) = v8;
    v10 = [v5 timeRangeMapperForSourceDuration:&v15 slowMotionRate:1 slowMotionTimeRange:duration forExport:v9];
    v12 = v10;
    if (v10)
    {
      *&v11 = duration;
      [v10 scaledTimeForOriginalTime:v11];
      duration = v13;
    }
  }

  return duration;
}

+ (double)durationForManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  assetCopy = asset;
  [assetCopy duration];
  v8 = v7;
  if (adjustmentsCopy && [assetCopy isDefaultAdjustedSlomo])
  {
    v9 = [self synchronouslyFetchVideoAdjustmentsFromManagedAsset:assetCopy];
    [self durationForBaseDuration:v9 videoAdjustments:v8];
    v8 = v10;
  }

  return v8;
}

+ (id)videoAVObjectBuilderForManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  assetCopy = asset;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
  v9 = pathForFullsizeRenderVideoFile;
  if (adjustmentsCopy && pathForFullsizeRenderVideoFile && [defaultManager fileExistsAtPath:pathForFullsizeRenderVideoFile])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v11 = 0;
    goto LABEL_14;
  }

  pathForOriginalFile = [assetCopy pathForOriginalFile];
  if (![defaultManager fileExistsAtPath:pathForOriginalFile] || (objc_msgSend(assetCopy, "isPlayableVideo:", 0) & 1) == 0)
  {
    pathForMediumVideoFile = [assetCopy pathForMediumVideoFile];
LABEL_11:
    v11 = 0;
    if (!pathForMediumVideoFile)
    {
      goto LABEL_9;
    }

LABEL_12:
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForMediumVideoFile isDirectory:0];
    goto LABEL_13;
  }

  pathForMediumVideoFile = pathForOriginalFile;
  if (!adjustmentsCopy)
  {
    goto LABEL_11;
  }

  v11 = [self synchronouslyFetchVideoAdjustmentsFromManagedAsset:assetCopy];
  if (pathForMediumVideoFile)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = 0;
LABEL_13:

LABEL_14:
  v14 = [MEMORY[0x1E6988168] assetWithURL:v10];
  v15 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v14 videoAdjustments:v11];

  return v15;
}

+ (id)synchronouslyFetchVideoAdjustmentsFromManagedAsset:(id)asset
{
  assetCopy = asset;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__74740;
  v20 = __Block_byref_object_dispose__74741;
  v21 = 0;
  if ([assetCopy isDefaultAdjustedSlomo])
  {
    if (PLIsAssetsd())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke;
      v15[3] = &unk_1E75714E0;
      v15[4] = &v16;
      [assetCopy synchronouslyFetchAdjustmentDataWithCompletionHandler:v15];
    }

    else
    {
      v4 = dispatch_semaphore_create(0);
      photoLibrary = [assetCopy photoLibrary];
      assetsdClient = [photoLibrary assetsdClient];

      resourceClient = [assetsdClient resourceClient];
      objectID = [assetCopy objectID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke_2;
      v12[3] = &unk_1E7571508;
      v14 = &v16;
      v9 = v4;
      v13 = v9;
      [resourceClient adjustmentDataForAsset:objectID networkAccessAllowed:0 trackCPLDownload:0 completionHandler:v12];

      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:a6 isDirectory:0];
  }

  else
  {
    v10 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x1E69C0910]) initWithURL:v10];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

intptr_t __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = a3;
  v12 = a2;
  v13 = [PLManagedAsset pfAdjustmentsBaseVersionFromAdjustmentBaseVersion:a5];
  v14 = [objc_alloc(MEMORY[0x1E69C0910]) initWithFormatIdentifier:v12 formatVersion:v11 data:v10 baseVersion:v13 editorBundleID:0 renderTypes:0];

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(a1 + 32);

  return dispatch_semaphore_signal(v17);
}

@end