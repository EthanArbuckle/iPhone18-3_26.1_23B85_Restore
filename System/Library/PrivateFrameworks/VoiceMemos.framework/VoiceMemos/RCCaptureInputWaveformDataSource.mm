@interface RCCaptureInputWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight;
- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer;
- (BOOL)appendAveragePowerLevelsByDigestingCapturedSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)waitUntilFinished;
- (BOOL)waitUntilFinishedWithFinalizedDestinationFragmentDuration:(double)duration;
- (RCCaptureInputWaveformDataSource)initWithDestinationComposition:(id)composition destinationFragment:(id)fragment trackIndex:(unint64_t)index;
- (RCMutableComposition)capturedComposition;
- (RCMutableCompositionFragment)capturedFragment;
- (double)_fragmentDuration;
- (double)duration;
- (id)_captureSegmentsInComponentWaveform:(id)waveform captureTimeRange:(id)range componentWaveformSegmentOffset:(double)offset;
- (id)copyWithTrackIndex:(unint64_t)index emptyCopy:(BOOL)copy;
- (id)segmentsInCompositionByConvertingFromActiveLoadingFragment:(id)fragment;
- (id)waveformSegmentsInTimeRange:(id)range;
- (void)_captureSesionCompletedWithFinalizedDuration:(double)duration;
- (void)_extendAccumulatedWaveformSegmentsToMatchFinalDuration:(double)duration;
- (void)_initializeCaptureComposition;
- (void)_modifyAccumulatedWaveformSegmentsToMatchFinalDuration:(double)duration;
- (void)_truncateAccumulatedWaveformSegmentsToEndTime:(double)time;
- (void)_updateCapturedComposition:(BOOL)composition;
- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)segment;
- (void)cancelLoading;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout finalizedFragmentDuration:(double)duration completionBlock:(id)block;
- (void)flushPendingCapturedSampleBuffers;
- (void)startLoading;
- (void)undoCapture;
- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment;
- (void)waveformDataSourceDidFinishLoading:(id)loading;
- (void)waveformDataSourceRequiresUpdate:(id)update;
@end

@implementation RCCaptureInputWaveformDataSource

- (RCCaptureInputWaveformDataSource)initWithDestinationComposition:(id)composition destinationFragment:(id)fragment trackIndex:(unint64_t)index
{
  compositionCopy = composition;
  fragmentCopy = fragment;
  v11 = [RCWaveformGenerator alloc];
  +[RCDevice audioInputWaveformFlushInterval];
  v12 = [(RCWaveformGenerator *)v11 initWithSegmentFlushInterval:index trackIndex:?];
  waveformURL = [fragmentCopy waveformURL];
  v16.receiver = self;
  v16.super_class = RCCaptureInputWaveformDataSource;
  v14 = [(RCWaveformDataSource *)&v16 initWithWaveformGenerator:v12 generatedWaveformOutputURL:waveformURL trackIndex:index];

  if (v14)
  {
    v14->_updatedCapturedFragmentDuration = -3.40282347e38;
    v14->_finalCapturedFragmentDuration = -1.0;
    v14->_canUpdateCaptureComposition = 1;
    objc_storeStrong(&v14->_destinationComposition, composition);
    objc_storeStrong(&v14->_destinationFragment, fragment);
    [(RCCaptureInputWaveformDataSource *)v14 _initializeCaptureComposition];
  }

  return v14;
}

- (void)_initializeCaptureComposition
{
  v39 = *MEMORY[0x277D85DE8];
  [(RCCompositionFragment *)self->_destinationFragment timeRangeInComposition];
  self->_captureInsertionTimeInComposition = v3;
  self->_captureInsertionDurationInComposition = v4 - v3;
  v5 = [(RCCompositionFragment *)self->_destinationFragment mutableCopy];
  capturedFragment = self->_capturedFragment;
  self->_capturedFragment = v5;

  [(RCCompositionFragment *)self->_capturedFragment setTimeRangeInComposition:RCTimeRangeMake(self->_captureInsertionTimeInComposition, self->_captureInsertionTimeInComposition)];
  [(RCCompositionFragment *)self->_capturedFragment setTimeRangeInContentToUse:-1.79769313e308, 1.79769313e308];
  v7 = [(RCComposition *)self->_destinationComposition mutableCopy];
  capturedComposition = self->_capturedComposition;
  self->_capturedComposition = v7;

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  composedFragments = [(RCComposition *)self->_capturedComposition composedFragments];
  v12 = [composedFragments countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(composedFragments);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v16 copy];
        [array addObject:v17];

        v18 = [v16 mutableCopy];
        [array2 addObject:v18];
      }

      v13 = [composedFragments countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v13);
  }

  v19 = [(RCMutableCompositionFragment *)self->_capturedFragment copy];
  [array addObject:v19];

  v20 = [(RCMutableCompositionFragment *)self->_capturedFragment mutableCopy];
  [array2 addObject:v20];

  [(RCComposition *)self->_capturedComposition setDecomposedFragments:array2];
  objc_storeStrong(&self->_captureInitialDecomposedFragments, array);
  v21 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    destinationComposition = self->_destinationComposition;
    destinationFragment = self->_destinationFragment;
    v25 = self->_capturedComposition;
    *buf = 136315906;
    v31 = "[RCCaptureInputWaveformDataSource _initializeCaptureComposition]";
    v32 = 2112;
    v33 = destinationComposition;
    v34 = 2112;
    v35 = destinationFragment;
    v36 = 2112;
    v37 = v25;
    _os_log_debug_impl(&dword_272442000, v21, OS_LOG_TYPE_DEBUG, "%s -- initializing capture waveform data source.\n  original composition = %@\n  original fragment = %@\n  initial capture composition = %@", buf, 0x2Au);
  }

  [(RCCaptureInputWaveformDataSource *)self _updateCapturedComposition:1];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)waveformDataSourceDidFinishLoading:(id)loading
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__RCCaptureInputWaveformDataSource_waveformDataSourceDidFinishLoading___block_invoke;
  v6[3] = &unk_279E44330;
  v6[4] = self;
  loadingCopy = loading;
  [(RCWaveformDataSource *)self _performObserversBlock:v6];
  [loadingCopy removeObserver:self];

  baseWaveformDataSource = self->_baseWaveformDataSource;
  self->_baseWaveformDataSource = 0;
}

- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment
{
  sourceCopy = source;
  segmentCopy = segment;
  v8 = segmentCopy;
  if (!self->_emptyCopy)
  {
    v12 = segmentCopy;
    goto LABEL_5;
  }

  [segmentCopy timeRange];
  captureInsertionTimeInComposition = self->_captureInsertionTimeInComposition;
  if (v10 >= captureInsertionTimeInComposition)
  {
    v11 = [v8 copyEmptiedWithTimeRangeOffsetByTimeOffset:-captureInsertionTimeInComposition];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__RCCaptureInputWaveformDataSource_waveformDataSource_didLoadWaveformSegment___block_invoke;
    v16[3] = &unk_279E45108;
    v12 = v11;
    v17 = v12;
    [(RCWaveformDataSource *)self updateAccumulatorWaveformSegmentsWithBlock:v16];

LABEL_5:
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__RCCaptureInputWaveformDataSource_waveformDataSource_didLoadWaveformSegment___block_invoke_2;
    v14[3] = &unk_279E443A8;
    v14[4] = self;
    v15 = v12;
    v13 = v12;
    [(RCWaveformDataSource *)self _performObserversBlock:v14];
  }
}

id __78__RCCaptureInputWaveformDataSource_waveformDataSource_didLoadWaveformSegment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 segmentsCopy];
  v4 = [v3 mutableCopy];

  [v4 addObject:*(a1 + 32)];

  return v4;
}

- (void)waveformDataSourceRequiresUpdate:(id)update
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__RCCaptureInputWaveformDataSource_waveformDataSourceRequiresUpdate___block_invoke;
  v3[3] = &unk_279E44330;
  v3[4] = self;
  [(RCWaveformDataSource *)self _performObserversBlock:v3];
}

void __69__RCCaptureInputWaveformDataSource_waveformDataSourceRequiresUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 waveformDataSourceRequiresUpdate:*(a1 + 32)];
  }
}

- (void)cancelLoading
{
  v3.receiver = self;
  v3.super_class = RCCaptureInputWaveformDataSource;
  [(RCWaveformDataSource *)&v3 cancelLoading];
  [(RCCompositionWaveformDataSource *)self->_baseWaveformDataSource cancelLoading];
}

- (void)startLoading
{
  v3 = [(RCComposition *)self->_destinationComposition composedWaveformURLForTrackIndex:[(RCWaveformDataSource *)self trackIndex]];
  v11 = +[RCWaveform waveformWithContentsOfURL:minimumRequiredVersion:](RCMutableWaveform, "waveformWithContentsOfURL:minimumRequiredVersion:", v3, +[RCWaveform version]);

  segments = [v11 segments];
  v5 = [segments count];

  if (v5)
  {
    v6 = v11;
    baseWaveform = self->_baseWaveform;
    self->_baseWaveform = v6;
  }

  else
  {
    v8 = [[RCCompositionWaveformDataSource alloc] initWithComposition:self->_destinationComposition trackIndex:[(RCWaveformDataSource *)self trackIndex]];
    [(RCWaveformDataSource *)v8 addObserver:self];
    [(RCWaveformDataSource *)v8 beginLoading];
    accumulatorWaveform = [(RCWaveformDataSource *)v8 accumulatorWaveform];
    v10 = self->_baseWaveform;
    self->_baseWaveform = accumulatorWaveform;

    baseWaveform = self->_baseWaveformDataSource;
    self->_baseWaveformDataSource = v8;
  }
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RCCaptureInputWaveformDataSource.m" lineNumber:160 description:@"ERROR: use -finishLoadingWithCompletionTimeout:finalizedFragmentDuration:completionBlock: instead"];
}

- (BOOL)waitUntilFinished
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RCCaptureInputWaveformDataSource.m" lineNumber:165 description:@"ERROR: use -waitUntilFinishedWithFinalizedDestinationFragmentDuration: instead"];

  return 0;
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout finalizedFragmentDuration:(double)duration completionBlock:(id)block
{
  blockCopy = block;
  [(RCCompositionWaveformDataSource *)self->_baseWaveformDataSource waitUntilSegmentsFinishLoadingWithTimeout:timeout];
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__RCCaptureInputWaveformDataSource_finishLoadingWithCompletionTimeout_finalizedFragmentDuration_completionBlock___block_invoke;
  v11[3] = &unk_279E45130;
  durationCopy = duration;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [waveformGenerator finishLoadingWithCompletionTimeout:timeout completionBlock:v11];
}

void __113__RCCaptureInputWaveformDataSource_finishLoadingWithCompletionTimeout_finalizedFragmentDuration_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _captureSesionCompletedWithFinalizedDuration:*(a1 + 48)];
  [*(a1 + 32) saveGeneratedWaveformIfNecessary];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (BOOL)waitUntilFinishedWithFinalizedDestinationFragmentDuration:(double)duration
{
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__RCCaptureInputWaveformDataSource_waitUntilFinishedWithFinalizedDestinationFragmentDuration___block_invoke;
  v10[3] = &unk_279E442E0;
  v11 = v5;
  v6 = v5;
  [(RCCaptureInputWaveformDataSource *)self finishLoadingWithCompletionTimeout:-1 finalizedFragmentDuration:v10 completionBlock:duration];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  canceled = [waveformGenerator canceled];

  return canceled ^ 1;
}

- (id)_captureSegmentsInComponentWaveform:(id)waveform captureTimeRange:(id)range componentWaveformSegmentOffset:(double)offset
{
  var1 = range.var1;
  var0 = range.var0;
  if (offset == 0.0)
  {
    waveformCopy = waveform;
    [waveformCopy segmentsByClippingToTimeRange:{var0, var1}];
  }

  else
  {
    v9 = -offset;
    waveformCopy2 = waveform;
    waveformCopy = [waveformCopy2 segmentsByClippingToTimeRange:{RCTimeRangeShift(var0, var1, v9)}];

    [RCWaveformSegment segmentsByShiftingSegments:waveformCopy byTimeOffset:offset];
  }
  v11 = ;

  return v11;
}

- (id)waveformSegmentsInTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v45 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v42.receiver = self;
  v42.super_class = RCCaptureInputWaveformDataSource;
  [(RCWaveformDataSource *)&v42 duration];
  if (captureDelta < self->captureDelta)
  {
    captureDelta = self->captureDelta;
  }

  v8 = RCTimeRangeMake(self->_captureInsertionTimeInComposition, self->_captureInsertionTimeInComposition + captureDelta);
  v10 = v9;
  if (var0 < self->_captureInsertionTimeInComposition)
  {
    if (var1 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = var1;
    }

    v12 = [(RCCaptureInputWaveformDataSource *)self _captureSegmentsInComponentWaveform:self->_baseWaveform captureTimeRange:RCTimeRangeMake(var0 componentWaveformSegmentOffset:v11)];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v13)
    {
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v38 + 1) + 8 * i) setIsRendered:1];
        }

        v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    [array addObjectsFromArray:v12];
  }

  if (var1 > v8)
  {
    v16 = RCTimeRangeIntersectTimeRange(var0, var1, v8, v10);
    v18 = v17;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__12;
    v36 = __Block_byref_object_dispose__12;
    v37 = 0;
    queue = [(RCWaveformDataSource *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__RCCaptureInputWaveformDataSource_waveformSegmentsInTimeRange___block_invoke;
    block[3] = &unk_279E45158;
    block[4] = self;
    block[5] = &v32;
    *&block[6] = v16;
    block[7] = v18;
    *&block[8] = v8;
    *&block[9] = v10;
    dispatch_sync(queue, block);

    if (v33[5])
    {
      [array addObjectsFromArray:?];
    }

    _Block_object_dispose(&v32, 8);
  }

  if (var1 > v10)
  {
    if (v10 >= var0)
    {
      v20 = v10;
    }

    else
    {
      v20 = var0;
    }

    v21 = [(RCCaptureInputWaveformDataSource *)self _captureSegmentsInComponentWaveform:self->_baseWaveform captureTimeRange:RCTimeRangeMake(v20 componentWaveformSegmentOffset:var1)];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v22)
    {
      v23 = *v28;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * j) setIsRendered:1];
        }

        v22 = [v21 countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v22);
    }

    [array addObjectsFromArray:v21];
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

void __64__RCCaptureInputWaveformDataSource_waveformSegmentsInTimeRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 accumulatorWaveform];
  v3 = [v2 _captureSegmentsInComponentWaveform:v6 captureTimeRange:*(a1 + 48) componentWaveformSegmentOffset:{*(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight
{
  [(RCCaptureInputWaveformDataSource *)self _fragmentDuration];
  v4 = v3 + self->_captureInsertionTimeInComposition;
  captureInsertionTimeInComposition = self->_captureInsertionTimeInComposition;

  v6 = RCTimeRangeMake(captureInsertionTimeInComposition, v4);
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id)segmentsInCompositionByConvertingFromActiveLoadingFragment:(id)fragment
{
  v12 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  v4 = MEMORY[0x277CBEA60];
  fragmentCopy2 = fragment;
  v6 = [v4 arrayWithObjects:&fragmentCopy count:1];
  v7 = [RCWaveformSegment segmentsByShiftingSegments:v6 byTimeOffset:self->_captureInsertionTimeInComposition, fragmentCopy, v12];

  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (RCMutableComposition)capturedComposition
{
  [(RCCaptureInputWaveformDataSource *)self _updateCapturedComposition:0];
  capturedComposition = self->_capturedComposition;

  return capturedComposition;
}

- (RCMutableCompositionFragment)capturedFragment
{
  [(RCCaptureInputWaveformDataSource *)self _updateCapturedComposition:0];
  capturedFragment = self->_capturedFragment;

  return capturedFragment;
}

- (double)duration
{
  [(RCCaptureInputWaveformDataSource *)self _updateCapturedComposition:0];
  capturedComposition = self->_capturedComposition;

  [(RCComposition *)capturedComposition composedDuration];
  return result;
}

- (void)undoCapture
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"RCCaptureInputWaveformDataSource.m" lineNumber:290 description:{@"Invalid state to perform capture undo, generator has not finished yet."}];
}

- (BOOL)appendAveragePowerLevelsByDigestingCapturedSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  LOBYTE(buffer) = [waveformGenerator appendAveragePowerLevelsByDigestingSampleBuffer:buffer];

  return buffer;
}

- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v6 = [waveformGenerator appendAveragePowerLevelsByDigestingAudioPCMBuffer:bufferCopy];

  return v6;
}

- (void)flushPendingCapturedSampleBuffers
{
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  [waveformGenerator flushPendingCapturedSampleBuffers];
}

- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)segment
{
  v8[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v8[0] = segmentCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [waveformGenerator appendAveragePowerLevelsByDigestingWaveformSegments:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_captureSesionCompletedWithFinalizedDuration:(double)duration
{
  self->_finalCapturedFragmentDuration = duration;
  [(RCCaptureInputWaveformDataSource *)self _updateCapturedComposition:1];
  self->_canUpdateCaptureComposition = 0;
}

- (double)_fragmentDuration
{
  result = self->_finalCapturedFragmentDuration;
  if (result < 0.0)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = RCCaptureInputWaveformDataSource;
    [(RCWaveformDataSource *)&v5 duration];
  }

  return result;
}

- (void)_updateCapturedComposition:(BOOL)composition
{
  v32 = *MEMORY[0x277D85DE8];
  [(RCCaptureInputWaveformDataSource *)self _fragmentDuration];
  v7 = v6;
  if (composition || vabdd_f64(v6, self->_updatedCapturedFragmentDuration) >= 0.01)
  {
    self->_updatedCapturedFragmentDuration = v6;
    [(RCCompositionFragment *)self->_capturedFragment setContentDuration:v6];
    [(RCCompositionFragment *)self->_capturedFragment setTimeRangeInComposition:RCTimeRangeMake(self->_captureInsertionTimeInComposition, v7 + self->_captureInsertionTimeInComposition)];
    decomposedFragments = [(RCComposition *)self->_capturedComposition decomposedFragments];
    v9 = [decomposedFragments mutableCopy];

    [v9 removeLastObject];
    [v9 addObject:self->_capturedFragment];
    [(RCComposition *)self->_capturedComposition setDecomposedFragments:v9];
    if (self->_finalCapturedFragmentDuration > 0.0)
    {
      accumulatorWaveform = [(RCWaveformDataSource *)self accumulatorWaveform];
      segmentsCopy = [accumulatorWaveform segmentsCopy];
      lastObject = [segmentsCopy lastObject];

      if (lastObject)
      {
        [lastObject timeRange];
        finalCapturedFragmentDuration = self->_finalCapturedFragmentDuration;
        if (vabdd_f64(v14, finalCapturedFragmentDuration) > 0.00000011920929)
        {
          [lastObject timeRange];
          if (finalCapturedFragmentDuration - v15 >= 1.0)
          {
            [(RCCaptureInputWaveformDataSource *)a2 _updateCapturedComposition:?];
          }

          [lastObject timeRange];
          v17 = self->_finalCapturedFragmentDuration;
          if (v17 > 0.00000011920929)
          {
            v18 = v16;
            if (vabdd_f64(v17, v16) >= 0.07)
            {
              [lastObject timeRange];
              v20 = v19;
              v21 = self->_finalCapturedFragmentDuration;
              v22 = OSLogForCategory(@"Default");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v24 = 136315906;
                v25 = "[RCCaptureInputWaveformDataSource _updateCapturedComposition:]";
                v26 = 2048;
                v27 = v21;
                v28 = 2048;
                v29 = v20;
                v30 = 2048;
                v31 = v17 - v18;
                _os_log_impl(&dword_272442000, v22, OS_LOG_TYPE_INFO, "%s -- DURATION MISMATCH: AVAsset.duration = %.3f, duration derived from samples = %.3f (delta = %.6f)!", &v24, 0x2Au);
              }

              v17 = self->_finalCapturedFragmentDuration;
            }
          }

          [(RCCaptureInputWaveformDataSource *)self _modifyAccumulatedWaveformSegmentsToMatchFinalDuration:v17];
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_modifyAccumulatedWaveformSegmentsToMatchFinalDuration:(double)duration
{
  accumulatorWaveform = [(RCWaveformDataSource *)self accumulatorWaveform];
  segmentsCopy = [accumulatorWaveform segmentsCopy];
  lastObject = [segmentsCopy lastObject];

  v7 = lastObject;
  if (lastObject)
  {
    [lastObject timeRange];
    if (v8 >= duration)
    {
      [(RCCaptureInputWaveformDataSource *)self _truncateAccumulatedWaveformSegmentsToEndTime:duration];
    }

    else
    {
      [(RCCaptureInputWaveformDataSource *)self _extendAccumulatedWaveformSegmentsToMatchFinalDuration:duration];
    }

    v7 = lastObject;
  }
}

- (void)_extendAccumulatedWaveformSegmentsToMatchFinalDuration:(double)duration
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__RCCaptureInputWaveformDataSource__extendAccumulatedWaveformSegmentsToMatchFinalDuration___block_invoke;
  v3[3] = &unk_279E45180;
  *&v3[5] = duration;
  v3[4] = self;
  [(RCWaveformDataSource *)self updateAccumulatorWaveformSegmentsWithBlock:v3];
}

id __91__RCCaptureInputWaveformDataSource__extendAccumulatedWaveformSegmentsToMatchFinalDuration___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 segmentsCopy];
  v4 = [v3 lastObject];
  v5 = [v3 mutableCopy];
  [v5 removeLastObject];
  [v4 timeRange];
  v7 = [v4 copyWithAdjustedTimeRange:{RCTimeRangeMake(v6, *(a1 + 40))}];
  [v5 addObject:v7];
  v8 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(*(a1 + 32) + 104) AVOutputURL];
    v12 = [v11 path];
    v13 = *(a1 + 40);
    v14 = 136316162;
    v15 = "[RCCaptureInputWaveformDataSource _extendAccumulatedWaveformSegmentsToMatchFinalDuration:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    v18 = 2048;
    v19 = v13;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&dword_272442000, v8, OS_LOG_TYPE_DEBUG, "%s -- Modifying waveform segments of %@ to match asset final duration (%.2f) by extending last segment.  Last segment was %@, now %@", &v14, 0x34u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_truncateAccumulatedWaveformSegmentsToEndTime:(double)time
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__RCCaptureInputWaveformDataSource__truncateAccumulatedWaveformSegmentsToEndTime___block_invoke;
  v3[3] = &unk_279E45180;
  *&v3[5] = time;
  v3[4] = self;
  [(RCWaveformDataSource *)self updateAccumulatorWaveformSegmentsWithBlock:v3];
}

id __82__RCCaptureInputWaveformDataSource__truncateAccumulatedWaveformSegmentsToEndTime___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 segmentsCopy];
  v5 = [v4 firstObject];
  v6 = [v4 lastObject];
  if (v6)
  {
    [v5 timeRange];
    v8 = [v3 segmentsByClippingToTimeRange:{RCTimeRangeMake(v7, *(a1 + 40))}];
    v9 = v4;
    if (v8)
    {
      v10 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = [*(*(a1 + 32) + 104) AVOutputURL];
        v15 = [v14 path];
        v16 = *(a1 + 40);
        v17 = [v8 lastObject];
        v18 = 136316162;
        v19 = "[RCCaptureInputWaveformDataSource _truncateAccumulatedWaveformSegmentsToEndTime:]_block_invoke";
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v17;
        _os_log_debug_impl(&dword_272442000, v10, OS_LOG_TYPE_DEBUG, "%s -- Modifying waveform segments of %@ to match asset final duration (%.2f) by truncating waveform.  Last segment was %@, now %@", &v18, 0x34u);
      }

      v9 = v8;
    }

    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithTrackIndex:(unint64_t)index emptyCopy:(BOOL)copy
{
  copyCopy = copy;
  v6 = [[RCCaptureInputWaveformDataSource alloc] initWithDestinationComposition:self->_destinationComposition destinationFragment:self->_destinationFragment trackIndex:index];
  v7 = v6;
  if (copyCopy)
  {
    [(RCCaptureInputWaveformDataSource *)v6 setEmptyCopy:1];
    [(RCWaveformDataSource *)self addObserver:v7];
  }

  return v7;
}

- (void)_updateCapturedComposition:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCCaptureInputWaveformDataSource.m" lineNumber:368 description:{@"significant mismatch between waveform and m4a durations detected, saved duration is > accumulated waveform duration"}];
}

@end