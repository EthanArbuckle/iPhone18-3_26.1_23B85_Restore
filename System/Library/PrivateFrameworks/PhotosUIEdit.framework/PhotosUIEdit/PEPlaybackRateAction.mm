@interface PEPlaybackRateAction
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PEPlaybackRateAction

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  completionCopy = completion;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    asset = [resultCopy asset];
    [asset uuid];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    v40 = v10;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEPlaybackRateAction: applyToLoadResult on asset: %{public}@", buf, 0xCu);
  }

  compositionController = [resultCopy compositionController];
  [(PEPlaybackRateAction *)self playbackRate];
  v13 = v12;
  editSource = [resultCopy editSource];
  v15 = [PEPlaybackRateOption playbackRateOptionsForEditSource:editSource];

  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __53__PEPlaybackRateAction_applyToLoadResult_completion___block_invoke;
  v37 = &__block_descriptor_36_e30_B16__0__PEPlaybackRateOption_8l;
  v38 = v13;
  if (PFExists())
  {
    originalComposition = [resultCopy originalComposition];
    v17 = *MEMORY[0x277D3ABA8];
    v18 = [originalComposition objectForKeyedSubscript:*MEMORY[0x277D3ABA8]];
    v19 = v18 != 0;

    asset2 = [resultCopy asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      asset3 = [resultCopy asset];
      v23 = [asset3 isMediaSubtype:0x20000];
      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = v23;
      }
    }

    if (v13 != 1.0 || v19)
    {
      contentEditingInput = [resultCopy contentEditingInput];
      audiovisualAsset = [contentEditingInput audiovisualAsset];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__PEPlaybackRateAction_applyToLoadResult_completion___block_invoke_484;
      v31[3] = &unk_279A31190;
      v33 = v13;
      v32 = audiovisualAsset;
      v30 = audiovisualAsset;
      [compositionController modifyAdjustmentWithKey:v17 modificationBlock:v31];
    }

    else
    {
      [compositionController removeAdjustmentWithKey:v17];
    }

    v27 = 1;
  }

  else
  {
    v24 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      asset4 = [resultCopy asset];
      uuid = [asset4 uuid];
      *buf = 134218242;
      v40 = v13;
      v41 = 2114;
      v42 = uuid;
      _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_ERROR, "PEPlaybackRateAction: playback rate: %f is not supported on asset: %{public}@", buf, 0x16u);
    }

    v27 = 0;
  }

  completionCopy[2](completionCopy, v27);
}

void __53__PEPlaybackRateAction_applyToLoadResult_completion___block_invoke_484(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRate:*(a1 + 40)];
  if (v3)
  {
    [v3 startTime];
    if ((v11 & 0x100000000) != 0)
    {
      [v3 endTime];
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = [MEMORY[0x277D3B518] defaultSlowMotionAdjustmentsForAsset:*(a1 + 32)];
  v5 = v4;
  memset(&v8, 0, sizeof(v8));
  if (v4)
  {
    [v4 slowMotionTimeRange];
  }

  *&v6.start.value = *&v8.start.value;
  v6.start.epoch = v8.start.epoch;
  [v3 setStartTime:&v6];
  v6 = v8;
  CMTimeRangeGetEnd(&v7, &v6);
  v6.start = v7;
  [v3 setEndTime:&v6];

LABEL_9:
}

@end