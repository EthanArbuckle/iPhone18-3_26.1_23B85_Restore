@interface PEPlaybackRateAction
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
@end

@implementation PEPlaybackRateAction

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 asset];
    [v9 uuid];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    v40 = v10;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEPlaybackRateAction: applyToLoadResult on asset: %{public}@", buf, 0xCu);
  }

  v11 = [v6 compositionController];
  [(PEPlaybackRateAction *)self playbackRate];
  v13 = v12;
  v14 = [v6 editSource];
  v15 = [PEPlaybackRateOption playbackRateOptionsForEditSource:v14];

  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __53__PEPlaybackRateAction_applyToLoadResult_completion___block_invoke;
  v37 = &__block_descriptor_36_e30_B16__0__PEPlaybackRateOption_8l;
  v38 = v13;
  if (PFExists())
  {
    v16 = [v6 originalComposition];
    v17 = *MEMORY[0x277D3ABA8];
    v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277D3ABA8]];
    v19 = v18 != 0;

    v20 = [v6 asset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [v6 asset];
      v23 = [v22 isMediaSubtype:0x20000];
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
      v28 = [v6 contentEditingInput];
      v29 = [v28 audiovisualAsset];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__PEPlaybackRateAction_applyToLoadResult_completion___block_invoke_484;
      v31[3] = &unk_279A31190;
      v33 = v13;
      v32 = v29;
      v30 = v29;
      [v11 modifyAdjustmentWithKey:v17 modificationBlock:v31];
    }

    else
    {
      [v11 removeAdjustmentWithKey:v17];
    }

    v27 = 1;
  }

  else
  {
    v24 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v6 asset];
      v26 = [v25 uuid];
      *buf = 134218242;
      v40 = v13;
      v41 = 2114;
      v42 = v26;
      _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_ERROR, "PEPlaybackRateAction: playback rate: %f is not supported on asset: %{public}@", buf, 0x16u);
    }

    v27 = 0;
  }

  v7[2](v7, v27);
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