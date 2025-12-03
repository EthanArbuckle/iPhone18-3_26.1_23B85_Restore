@interface RCCompositionWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight;
- (BOOL)_synchronouslyAppendSegmentsFromDataSource:(id)source;
- (RCCompositionWaveformDataSource)initWithComposition:(id)composition trackIndex:(unint64_t)index;
- (float)loadingProgress;
- (id)saveableWaveform;
- (id)synchronouslyApproximateWaveformSegmentsByReadingCurrentFileAheadTimeRange:(id)range;
- (void)cancelLoading;
- (void)dealloc;
- (void)startLoading;
- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment;
@end

@implementation RCCompositionWaveformDataSource

- (RCCompositionWaveformDataSource)initWithComposition:(id)composition trackIndex:(unint64_t)index
{
  compositionCopy = composition;
  v8 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:index trackIndex:30.0];
  v9 = [compositionCopy composedWaveformURLForTrackIndex:index];
  v16.receiver = self;
  v16.super_class = RCCompositionWaveformDataSource;
  v10 = [(RCWaveformDataSource *)&v16 initWithWaveformGenerator:v8 generatedWaveformOutputURL:v9 trackIndex:index];

  if (v10)
  {
    objc_storeStrong(&v10->_composition, composition);
    v11 = dispatch_queue_create("RCCompositionWaveformDataSourceQueue", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v11;

    v13 = dispatch_group_create();
    loadingGroup = v10->_loadingGroup;
    v10->_loadingGroup = v13;
  }

  return v10;
}

- (void)cancelLoading
{
  v4.receiver = self;
  v4.super_class = RCCompositionWaveformDataSource;
  [(RCWaveformDataSource *)&v4 cancelLoading];
  activeFragmentDataSource = [(RCCompositionWaveformDataSource *)self activeFragmentDataSource];
  [activeFragmentDataSource cancelLoading];
}

- (void)dealloc
{
  activeFragmentDataSource = [(RCCompositionWaveformDataSource *)self activeFragmentDataSource];
  waveformGenerator = [activeFragmentDataSource waveformGenerator];
  [waveformGenerator setCanceled:1];

  [(RCCompositionWaveformDataSource *)self setActiveFragmentDataSource:0];
  v5.receiver = self;
  v5.super_class = RCCompositionWaveformDataSource;
  [(RCWaveformDataSource *)&v5 dealloc];
}

- (void)startLoading
{
  dispatch_group_enter(self->_loadingGroup);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__11;
  v29[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v30 = selfCopy;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__11;
  v27 = __Block_byref_object_dispose__11;
  v28 = 0;
  composedFragments = [(RCComposition *)selfCopy->_composition composedFragments];
  if ([composedFragments count] || selfCopy->_preferLoadingFragmentWaveforms)
  {
    selfCopy->_progressWeightPerFragment = 1.0 / [composedFragments count];
    activeFragmentDataSource = [(RCCompositionWaveformDataSource *)selfCopy activeFragmentDataSource];
    waveformGenerator = [activeFragmentDataSource waveformGenerator];
    [waveformGenerator setCanceled:1];

    serialQueue = selfCopy->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__RCCompositionWaveformDataSource_startLoading__block_invoke_3;
    block[3] = &unk_279E450E0;
    v20 = v29;
    v21 = a2;
    block[4] = selfCopy;
    v19 = composedFragments;
    dispatch_async(serialQueue, block);
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    composedAVURL = [(RCComposition *)selfCopy->_composition composedAVURL];
    path = [composedAVURL path];
    v12 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if (v12)
    {
      selfCopy->_progressWeightPerFragment = 1.0;
      activeFragmentDataSource2 = [(RCCompositionWaveformDataSource *)selfCopy activeFragmentDataSource];
      [activeFragmentDataSource2 cancelLoading];

      composedAVURL2 = [(RCComposition *)selfCopy->_composition composedAVURL];
      v15 = [(RCCompositionWaveformDataSource *)selfCopy _dataSourceForAVContentURL:composedAVURL2 isDecomposedFragment:0 sourceTimeRange:-1.79769313e308 destinationTime:1.79769313e308, 0.0];
      v16 = v24[5];
      v24[5] = v15;

      [(RCCompositionWaveformDataSource *)selfCopy setActiveFragmentDataSource:v24[5]];
      v17 = selfCopy->_serialQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__RCCompositionWaveformDataSource_startLoading__block_invoke;
      v22[3] = &unk_279E450B8;
      v22[5] = &v23;
      v22[6] = v29;
      v22[4] = selfCopy;
      dispatch_async(v17, v22);
    }

    else
    {
      dispatch_group_leave(self->_loadingGroup);
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);
}

void __47__RCCompositionWaveformDataSource_startLoading__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__RCCompositionWaveformDataSource_startLoading__block_invoke_2;
  v5[3] = &unk_279E45090;
  v6 = *(a1 + 40);
  v2 = MEMORY[0x2743CA3B0](v5);
  if ((v2[2]() & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) _synchronouslyAppendSegmentsFromDataSource:*(*(*(a1 + 40) + 8) + 40)];
    v3 = [*(*(*(a1 + 48) + 8) + 40) activeFragmentDataSource];
    v4 = *(*(*(a1 + 40) + 8) + 40);

    if (v3 == v4)
    {
      [*(*(*(a1 + 48) + 8) + 40) setActiveFragmentDataSource:0];
    }
  }

  if (((v2[2])(v2) & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) finishLoadingWithCompletionTimeout:-1 completionBlock:0];
  }

  dispatch_group_leave(*(*(a1 + 32) + 120));
}

uint64_t __47__RCCompositionWaveformDataSource_startLoading__block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) canceled] & 1) != 0 || (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "canceled"))
  {
    return 1;
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v3 finished];
}

void __47__RCCompositionWaveformDataSource_startLoading__block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 48) + 8) + 40) accumulatorWaveform];
  v3 = [v2 segmentCount];

  if (v3)
  {
    __47__RCCompositionWaveformDataSource_startLoading__block_invoke_3_cold_1(a1);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v10 = [*(*(*(a1 + 48) + 8) + 40) activeFragmentDataSource];
      if ([v10 canceled])
      {

LABEL_24:
        goto LABEL_25;
      }

      v11 = [*(*(*(a1 + 48) + 8) + 40) canceled];

      if (v11)
      {
        goto LABEL_24;
      }

      if ([*(a1 + 32) trackIndex] == -1)
      {
        break;
      }

      if ([*(a1 + 32) trackIndex] != -1)
      {
        v12 = [v9 trackIndex];
        v13 = v12 != [*(a1 + 32) trackIndex];
LABEL_14:
        [v9 contentDuration];
        if (v14 > 0.0 && !v13)
        {
          v15 = *(*(*(a1 + 48) + 8) + 40);
          v16 = [v9 AVOutputURL];
          [v9 timeRangeInContentToUse];
          v18 = v17;
          v20 = v19;
          [v9 timeRangeInComposition];
          v22 = [v15 _dataSourceForAVContentURL:v16 isDecomposedFragment:1 sourceTimeRange:v18 destinationTime:{v20, v21}];

          [*(*(*(a1 + 48) + 8) + 40) setActiveFragmentDataSource:v22];
          [*(*(*(a1 + 48) + 8) + 40) _synchronouslyAppendSegmentsFromDataSource:v22];
          v23 = [*(*(*(a1 + 48) + 8) + 40) activeFragmentDataSource];

          if (v23 == v22)
          {
            [*(*(*(a1 + 48) + 8) + 40) setActiveFragmentDataSource:0];
          }
        }

        goto LABEL_20;
      }

      [v9 contentDuration];
LABEL_20:
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

LABEL_22:

  [*(*(*(a1 + 48) + 8) + 40) finishLoadingWithCompletionTimeout:-1 completionBlock:0];
LABEL_25:
  dispatch_group_leave(*(*(a1 + 32) + 120));
  v24 = *MEMORY[0x277D85DE8];
}

- (float)loadingProgress
{
  activeFragmentDataSource = self->_activeFragmentDataSource;
  if (activeFragmentDataSource)
  {
    [(RCFileInputWaveformDataSource *)activeFragmentDataSource loadingProgress];
  }

  else
  {
    v4 = 0.0;
  }

  return v4 + self->_progressOfFinishedFragments;
}

- (BOOL)_synchronouslyAppendSegmentsFromDataSource:(id)source
{
  sourceCopy = source;
  [sourceCopy beginLoading];
  waitUntilFinished = [sourceCopy waitUntilFinished];

  if (waitUntilFinished)
  {
    self->_progressOfFinishedFragments = self->_progressWeightPerFragment + self->_progressOfFinishedFragments;
  }

  return waitUntilFinished;
}

- (id)synchronouslyApproximateWaveformSegmentsByReadingCurrentFileAheadTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  activeFragmentDataSource = [(RCCompositionWaveformDataSource *)self activeFragmentDataSource];
  waveformGenerator = [activeFragmentDataSource waveformGenerator];
  composedAVURL = [(RCComposition *)self->_composition composedAVURL];
  v9 = [waveformGenerator synchronouslyApproximateWaveformForAVContentURL:composedAVURL byReadingCurrentFileAheadTimeRange:{var0, var1}];

  return v9;
}

- (id)saveableWaveform
{
  if (self->_saveGeneratedWaveform || (RCIsVoiceMemosApplication() & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = RCCompositionWaveformDataSource;
    saveableWaveform = [(RCWaveformDataSource *)&v5 saveableWaveform];
  }

  else
  {
    saveableWaveform = 0;
  }

  return saveableWaveform;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight
{
  if (self->_highlightLastDecomposedFragment && (-[RCComposition decomposedFragments](self->_composition, "decomposedFragments"), v3 = objc_claimAutoreleasedReturnValue(), [v3 lastObject], v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 timeRangeInComposition];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = RCCompositionWaveformDataSource;
    [(RCWaveformDataSource *)&v11 timeRangeToHighlight];
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment
{
  v21[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  segmentCopy = segment;
  if ([(RCWaveformDataSource *)self canceled])
  {
    waveformGenerator = [sourceCopy waveformGenerator];
    [waveformGenerator terminateLoadingImmediately];
  }

  else
  {
    waveformGenerator = sourceCopy;
    [waveformGenerator sourceTimeRange];
    v10 = v9;
    v12 = v11;
    [segmentCopy timeRange];
    if (RCTimeRangeIntersectsRange(v10, v12, v13, v14))
    {
      v15 = [segmentCopy segmentByClippingToTimeRange:{v10, v12}];
      if (v15)
      {
        [waveformGenerator destinationBeginTime];
        v17 = [v15 copyWithTimeRangeOffsetByTimeOffset:v16 - v10];
        waveformGenerator2 = [(RCWaveformDataSource *)self waveformGenerator];
        v21[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        [waveformGenerator2 appendAveragePowerLevelsByDigestingWaveformSegments:v19];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __47__RCCompositionWaveformDataSource_startLoading__block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"RCCompositionWaveformDataSource.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"weakSelf.accumulatorWaveform.segmentCount == 0"}];
}

@end