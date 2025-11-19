@interface PLSlalomUtilities
+ (double)durationForBaseDuration:(double)a3 videoAdjustments:(id)a4;
+ (double)durationForManagedAsset:(id)a3 applyVideoAdjustments:(BOOL)a4;
+ (id)synchronouslyFetchVideoAdjustmentsFromManagedAsset:(id)a3;
+ (id)videoAVObjectBuilderForManagedAsset:(id)a3 applyVideoAdjustments:(BOOL)a4;
@end

@implementation PLSlalomUtilities

+ (double)durationForBaseDuration:(double)a3 videoAdjustments:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x1E69C0890];
    v6 = a4;
    [v6 slowMotionRate];
    v8 = v7;
    [v6 slowMotionTimeRange];

    LODWORD(v9) = v8;
    v10 = [v5 timeRangeMapperForSourceDuration:&v15 slowMotionRate:1 slowMotionTimeRange:a3 forExport:v9];
    v12 = v10;
    if (v10)
    {
      *&v11 = a3;
      [v10 scaledTimeForOriginalTime:v11];
      a3 = v13;
    }
  }

  return a3;
}

+ (double)durationForManagedAsset:(id)a3 applyVideoAdjustments:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 duration];
  v8 = v7;
  if (v4 && [v6 isDefaultAdjustedSlomo])
  {
    v9 = [a1 synchronouslyFetchVideoAdjustmentsFromManagedAsset:v6];
    [a1 durationForBaseDuration:v9 videoAdjustments:v8];
    v8 = v10;
  }

  return v8;
}

+ (id)videoAVObjectBuilderForManagedAsset:(id)a3 applyVideoAdjustments:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 pathForFullsizeRenderVideoFile];
  v9 = v8;
  if (v4 && v8 && [v7 fileExistsAtPath:v8])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v11 = 0;
    goto LABEL_14;
  }

  v12 = [v6 pathForOriginalFile];
  if (![v7 fileExistsAtPath:v12] || (objc_msgSend(v6, "isPlayableVideo:", 0) & 1) == 0)
  {
    v13 = [v6 pathForMediumVideoFile];
LABEL_11:
    v11 = 0;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_12:
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
    goto LABEL_13;
  }

  v13 = v12;
  if (!v4)
  {
    goto LABEL_11;
  }

  v11 = [a1 synchronouslyFetchVideoAdjustmentsFromManagedAsset:v6];
  if (v13)
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

+ (id)synchronouslyFetchVideoAdjustmentsFromManagedAsset:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__74740;
  v20 = __Block_byref_object_dispose__74741;
  v21 = 0;
  if ([v3 isDefaultAdjustedSlomo])
  {
    if (PLIsAssetsd())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke;
      v15[3] = &unk_1E75714E0;
      v15[4] = &v16;
      [v3 synchronouslyFetchAdjustmentDataWithCompletionHandler:v15];
    }

    else
    {
      v4 = dispatch_semaphore_create(0);
      v5 = [v3 photoLibrary];
      v6 = [v5 assetsdClient];

      v7 = [v6 resourceClient];
      v8 = [v3 objectID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__PLSlalomUtilities_synchronouslyFetchVideoAdjustmentsFromManagedAsset___block_invoke_2;
      v12[3] = &unk_1E7571508;
      v14 = &v16;
      v9 = v4;
      v13 = v9;
      [v7 adjustmentDataForAsset:v8 networkAccessAllowed:0 trackCPLDownload:0 completionHandler:v12];

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