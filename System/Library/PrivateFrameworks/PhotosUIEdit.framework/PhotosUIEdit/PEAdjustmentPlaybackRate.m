@interface PEAdjustmentPlaybackRate
- (PEAdjustmentPlaybackRate)initWithPlaybackRate:(float)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentPlaybackRate

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (_os_feature_enabled_impl())
  {
    v45 = v15;
    v17 = [v13 editSource];
    [(PEAdjustmentPlaybackRate *)self playbackRate];
    v19 = v18;
    v44 = v17;
    v20 = [PEPlaybackRateOption playbackRateOptionsForEditSource:v17];
    v21 = [v20 firstObject];
    [v21 playbackRate];
    v23 = v22;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v24 = v20;
    v25 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = vabds_f32(v19, v23);
      v28 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v49 + 1) + 8 * i);
          [v30 playbackRate];
          v32 = vabds_f32(v31, v19);
          if (v32 < v27)
          {
            v33 = v30;

            v27 = v32;
            v21 = v33;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v26);
    }

    if (v21)
    {
      [v21 playbackRate];
      v35 = v34;
      v36 = [v14 isMediaSubtype:0x20000];
      v37 = v44;
      v15 = v45;
      if (v35 != 1.0 || (v36 & 1) != 0)
      {
        v39 = MEMORY[0x277CE63D8];
        v40 = [v44 videoURL];
        v41 = [v39 assetWithURL:v40];

        v42 = *MEMORY[0x277D3ABA8];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __127__PEAdjustmentPlaybackRate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
        v46[3] = &unk_279A31190;
        v48 = v35;
        v47 = v41;
        v43 = v41;
        [v12 modifyAdjustmentWithKey:v42 modificationBlock:v46];
      }

      else
      {
        [v12 removeAdjustmentWithKey:*MEMORY[0x277D3ABA8]];
      }

      v16[2](v16, 1, 0);
    }

    else
    {
      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentPlaybackRateErrorDomain" code:1 userInfo:0];
      (v16)[2](v16, 0, v38);

      v37 = v44;
      v15 = v45;
    }
  }

  else
  {
    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEAdjustmentPlaybackRateErrorDomain" code:0 userInfo:0];
    (v16)[2](v16, 0, v37);
  }
}

void __127__PEAdjustmentPlaybackRate_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(uint64_t a1, void *a2)
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

- (PEAdjustmentPlaybackRate)initWithPlaybackRate:(float)a3
{
  v5.receiver = self;
  v5.super_class = PEAdjustmentPlaybackRate;
  result = [(PEAdjustmentPlaybackRate *)&v5 init];
  if (result)
  {
    result->_playbackRate = a3;
  }

  return result;
}

@end