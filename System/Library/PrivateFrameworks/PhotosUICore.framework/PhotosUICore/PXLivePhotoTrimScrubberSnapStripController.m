@interface PXLivePhotoTrimScrubberSnapStripController
- (PXLivePhotoTrimScrubberSnapStripControllerSpec)spec;
- (id)_snapIndicatorInfosForTimes:(id)a3 currentTime:(id *)a4 style:(unint64_t)a5 skipSingleIndicatorWithCurrentTime:(BOOL)a6 skipDefaultTimeIndicator:(BOOL)a7;
- (id)_snapIndicatorInfosForTimes:(id)a3 currentTime:(id *)a4 suggestedTime:(id *)a5 style:(unint64_t)a6 skipSingleIndicatorWithCurrentTime:(BOOL)a7 skipDefaultTimeIndicator:(BOOL)a8;
- (void)setSpec:(id)a3;
- (void)updateSnapStripViewAnimated:(BOOL)a3;
@end

@implementation PXLivePhotoTrimScrubberSnapStripController

- (void)setSpec:(id)a3
{
  objc_storeStrong(&self->_spec, a3);

  [(PXLivePhotoTrimScrubberSnapStripController *)self updateSnapStripView];
}

- (PXLivePhotoTrimScrubberSnapStripControllerSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    v4 = objc_opt_new();
    [(PXLivePhotoTrimScrubberSnapStripController *)self setSpec:v4];

    spec = self->_spec;
  }

  return spec;
}

- (void)updateSnapStripViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXLivePhotoTrimScrubberSnapStripController *)self trimScrubber];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v5 currentlyInteractingElement];
  if ((v7 - 3) < 2)
  {
    v8 = [v5 snapKeyTimes];
    if (v5)
    {
      [v5 keyTime];
      [v5 suggestedKeyTime];
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    v10 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec:v19];
    v11 = [v10 alwaysShowKeyTime];
    v12 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
    v13 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", v8, &v22, &v19, 0, v11 ^ 1u, [v12 showDefaultKeyTime] ^ 1);
    [v6 addObjectsFromArray:v13];

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    if ([(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
    {
      v8 = [v5 snapTrimStartTimes];
      if (v5)
      {
        [v5 trimStartTime];
LABEL_26:
        v10 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
        v12 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", v8, &v22, 1, 1, [v10 showDefaultKeyTime] ^ 1);
        [v6 addObjectsFromArray:v12];
LABEL_27:

        goto LABEL_28;
      }

LABEL_25:
      v22 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    if (v7 == 2)
    {
      if (![(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
      {
        goto LABEL_28;
      }

LABEL_23:
      v8 = [v5 snapTrimEndTimes];
      if (v5)
      {
        [v5 trimEndTime];
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if ([v5 playheadStyle])
    {
      v9 = [v5 snapKeyTimes];
      if (v5)
      {
        [v5 keyTime];
        [v5 suggestedKeyTime];
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      v14 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec:v19];
      v15 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", v9, &v22, &v19, 0, 0, [v14 showDefaultKeyTime] ^ 1);
      [v6 addObjectsFromArray:v15];
    }

    if ([(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
    {
      v16 = [v5 snapTrimStartTimes];
      if (v5)
      {
        [v5 trimStartTime];
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      v17 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
      v18 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", v16, &v22, 1, 1, [v17 showDefaultKeyTime] ^ 1);
      [v6 addObjectsFromArray:v18];

      goto LABEL_23;
    }
  }

LABEL_28:
  [(PXSnapStripView *)self->_snapStripView setIndicatorInfos:v6 animated:v3];
}

- (id)_snapIndicatorInfosForTimes:(id)a3 currentTime:(id *)a4 suggestedTime:(id *)a5 style:(unint64_t)a6 skipSingleIndicatorWithCurrentTime:(BOOL)a7 skipDefaultTimeIndicator:(BOOL)a8
{
  v56 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = self->_trimScrubber;
  if ([(PXLivePhotoTrimScrubber *)v15 isAssetDurationLoaded]&& ([(PXLivePhotoTrimScrubber *)v15 bounds], v16 != 0.0))
  {
    v17 = [MEMORY[0x1E695DF70] array];
    if ([v14 count])
    {
      v31 = [(PXLivePhotoTrimScrubber *)v15 isDisabled];
      v53 = 0uLL;
      v54 = 0;
      v19 = [v14 firstObject];
      v20 = v19;
      if (v19)
      {
        [v19 CMTimeValue];
      }

      else
      {
        v53 = 0uLL;
        v54 = 0;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __166__PXLivePhotoTrimScrubberSnapStripController__snapIndicatorInfosForTimes_currentTime_suggestedTime_style_skipSingleIndicatorWithCurrentTime_skipDefaultTimeIndicator___block_invoke;
      aBlock[3] = &unk_1E772D3C8;
      v46 = v53;
      v47 = v54;
      v48 = *&a4->var0;
      var3 = a4->var3;
      v50 = a7;
      v21 = v14;
      v51 = a8;
      v41 = v21;
      v42 = self;
      v52 = v31;
      v43 = v15;
      v45 = a6;
      v17 = v17;
      v44 = v17;
      v22 = _Block_copy(aBlock);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v55 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v36 + 1) + 8 * i);
            v34 = 0uLL;
            v35 = 0;
            if (v28)
            {
              [v28 CMTimeValue];
            }

            v29 = v22[2];
            v32 = v34;
            v33 = v35;
            v29(v22, &v32, 0);
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v55 count:16];
        }

        while (v25);
      }

      if (a5->var2)
      {
        v30 = v22[2];
        v34 = *&a5->var0;
        v35 = a5->var3;
        v30(v22, &v34, 1);
      }
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

void __166__PXLivePhotoTrimScrubberSnapStripController__snapIndicatorInfosForTimes_currentTime_suggestedTime_style_skipSingleIndicatorWithCurrentTime_skipDefaultTimeIndicator___block_invoke(uint64_t a1, CMTime *a2, char a3)
{
  time1 = *a2;
  v21 = *(a1 + 72);
  v6 = CMTimeCompare(&time1, &v21);
  time1 = *a2;
  v21 = *(a1 + 96);
  v7 = CMTimeCompare(&time1, &v21);
  time1 = *a2;
  v21 = **&MEMORY[0x1E6960CC0];
  v8 = CMTimeCompare(&time1, &v21);
  if ((*(a1 + 120) != 1 || v7 || v6 || [*(a1 + 32) count] != 1) && (*(a1 + 121) != 1 || v8))
  {
    v9 = [*(a1 + 40) spec];
    v10 = v9;
    if (*(a1 + 122) == 1)
    {
      v11 = [v9 disabledColor];
    }

    else if (a3)
    {
      v11 = [v9 suggestedMarkerColor];
    }

    else if ([*(a1 + 32) count] == 1 || v6)
    {
      v11 = [v10 currentPositionMarkerColor];
    }

    else
    {
      v11 = [v10 originalPositionMarkerColor];
    }

    v12 = v11;
    v13 = *(a1 + 48);
    time1 = *a2;
    [v13 horizontalOffsetForTime:&time1];
    [*(*(a1 + 40) + 32) convertPoint:*(a1 + 48) fromView:?];
    v15 = v14;
    v16 = *(a1 + 64);
    v17 = [v10 livePortraitStyle];
    v18 = 2;
    if (v6)
    {
      v18 = v16;
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v20 = [[PXSnapStripViewIndicatorInfo alloc] initWithOffset:v12 color:v19 style:v15];
    [*(a1 + 56) addObject:v20];
  }
}

- (id)_snapIndicatorInfosForTimes:(id)a3 currentTime:(id *)a4 style:(unint64_t)a5 skipSingleIndicatorWithCurrentTime:(BOOL)a6 skipDefaultTimeIndicator:(BOOL)a7
{
  v11 = *a4;
  v9 = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = [(PXLivePhotoTrimScrubberSnapStripController *)self _snapIndicatorInfosForTimes:a3 currentTime:&v11 suggestedTime:&v9 style:a5 skipSingleIndicatorWithCurrentTime:a6 skipDefaultTimeIndicator:a7];

  return v7;
}

@end