@interface PXLivePhotoTrimScrubberSnapStripController
- (PXLivePhotoTrimScrubberSnapStripControllerSpec)spec;
- (id)_snapIndicatorInfosForTimes:(id)times currentTime:(id *)time style:(unint64_t)style skipSingleIndicatorWithCurrentTime:(BOOL)currentTime skipDefaultTimeIndicator:(BOOL)indicator;
- (id)_snapIndicatorInfosForTimes:(id)times currentTime:(id *)time suggestedTime:(id *)suggestedTime style:(unint64_t)style skipSingleIndicatorWithCurrentTime:(BOOL)currentTime skipDefaultTimeIndicator:(BOOL)indicator;
- (void)setSpec:(id)spec;
- (void)updateSnapStripViewAnimated:(BOOL)animated;
@end

@implementation PXLivePhotoTrimScrubberSnapStripController

- (void)setSpec:(id)spec
{
  objc_storeStrong(&self->_spec, spec);

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

- (void)updateSnapStripViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  trimScrubber = [(PXLivePhotoTrimScrubberSnapStripController *)self trimScrubber];
  array = [MEMORY[0x1E695DF70] array];
  currentlyInteractingElement = [trimScrubber currentlyInteractingElement];
  if ((currentlyInteractingElement - 3) < 2)
  {
    snapKeyTimes = [trimScrubber snapKeyTimes];
    if (trimScrubber)
    {
      [trimScrubber keyTime];
      [trimScrubber suggestedKeyTime];
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

    spec2 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec:v19];
    alwaysShowKeyTime = [spec2 alwaysShowKeyTime];
    spec = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
    v13 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", snapKeyTimes, &v22, &v19, 0, alwaysShowKeyTime ^ 1u, [spec showDefaultKeyTime] ^ 1);
    [array addObjectsFromArray:v13];

    goto LABEL_27;
  }

  if (currentlyInteractingElement == 1)
  {
    if ([(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
    {
      snapKeyTimes = [trimScrubber snapTrimStartTimes];
      if (trimScrubber)
      {
        [trimScrubber trimStartTime];
LABEL_26:
        spec2 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
        spec = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", snapKeyTimes, &v22, 1, 1, [spec2 showDefaultKeyTime] ^ 1);
        [array addObjectsFromArray:spec];
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
    if (currentlyInteractingElement == 2)
    {
      if (![(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
      {
        goto LABEL_28;
      }

LABEL_23:
      snapKeyTimes = [trimScrubber snapTrimEndTimes];
      if (trimScrubber)
      {
        [trimScrubber trimEndTime];
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if ([trimScrubber playheadStyle])
    {
      snapKeyTimes2 = [trimScrubber snapKeyTimes];
      if (trimScrubber)
      {
        [trimScrubber keyTime];
        [trimScrubber suggestedKeyTime];
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
      v15 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:suggestedTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", snapKeyTimes2, &v22, &v19, 0, 0, [v14 showDefaultKeyTime] ^ 1);
      [array addObjectsFromArray:v15];
    }

    if ([(PXLivePhotoTrimScrubberSnapStripController *)self allowStartEndTimeSnapIndicators])
    {
      snapTrimStartTimes = [trimScrubber snapTrimStartTimes];
      if (trimScrubber)
      {
        [trimScrubber trimStartTime];
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      spec3 = [(PXLivePhotoTrimScrubberSnapStripController *)self spec];
      v18 = -[PXLivePhotoTrimScrubberSnapStripController _snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:](self, "_snapIndicatorInfosForTimes:currentTime:style:skipSingleIndicatorWithCurrentTime:skipDefaultTimeIndicator:", snapTrimStartTimes, &v22, 1, 1, [spec3 showDefaultKeyTime] ^ 1);
      [array addObjectsFromArray:v18];

      goto LABEL_23;
    }
  }

LABEL_28:
  [(PXSnapStripView *)self->_snapStripView setIndicatorInfos:array animated:animatedCopy];
}

- (id)_snapIndicatorInfosForTimes:(id)times currentTime:(id *)time suggestedTime:(id *)suggestedTime style:(unint64_t)style skipSingleIndicatorWithCurrentTime:(BOOL)currentTime skipDefaultTimeIndicator:(BOOL)indicator
{
  v56 = *MEMORY[0x1E69E9840];
  timesCopy = times;
  v15 = self->_trimScrubber;
  if ([(PXLivePhotoTrimScrubber *)v15 isAssetDurationLoaded]&& ([(PXLivePhotoTrimScrubber *)v15 bounds], v16 != 0.0))
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([timesCopy count])
    {
      isDisabled = [(PXLivePhotoTrimScrubber *)v15 isDisabled];
      v53 = 0uLL;
      v54 = 0;
      firstObject = [timesCopy firstObject];
      v20 = firstObject;
      if (firstObject)
      {
        [firstObject CMTimeValue];
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
      v48 = *&time->var0;
      var3 = time->var3;
      currentTimeCopy = currentTime;
      v21 = timesCopy;
      indicatorCopy = indicator;
      v41 = v21;
      selfCopy = self;
      v52 = isDisabled;
      v43 = v15;
      styleCopy = style;
      array = array;
      v44 = array;
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

      if (suggestedTime->var2)
      {
        v30 = v22[2];
        v34 = *&suggestedTime->var0;
        v35 = suggestedTime->var3;
        v30(v22, &v34, 1);
      }
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
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

- (id)_snapIndicatorInfosForTimes:(id)times currentTime:(id *)time style:(unint64_t)style skipSingleIndicatorWithCurrentTime:(BOOL)currentTime skipDefaultTimeIndicator:(BOOL)indicator
{
  v11 = *time;
  v9 = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = [(PXLivePhotoTrimScrubberSnapStripController *)self _snapIndicatorInfosForTimes:times currentTime:&v11 suggestedTime:&v9 style:style skipSingleIndicatorWithCurrentTime:currentTime skipDefaultTimeIndicator:indicator];

  return v7;
}

@end