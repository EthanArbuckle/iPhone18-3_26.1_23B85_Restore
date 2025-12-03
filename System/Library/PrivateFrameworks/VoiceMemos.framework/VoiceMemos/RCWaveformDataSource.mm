@interface RCWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight;
- (BOOL)waitUntilFinished;
- (RCWaveformDataSource)initWithWaveformGenerator:(id)generator generatedWaveformOutputURL:(id)l trackIndex:(unint64_t)index;
- (double)averagePowerLevelsRate;
- (double)duration;
- (id)copyWithTrackIndex:(unint64_t)index emptyCopy:(BOOL)copy;
- (id)waveformSegmentsInTimeRange:(id)range;
- (id)waveformSegmentsIntersectingTimeRange:(id)range;
- (void)_performObserversBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)beginLoading;
- (void)dealloc;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block;
- (void)markWaveformPotentiallyCorrupted;
- (void)mergeGeneratedWaveformIfNecessary;
- (void)removeObserver:(id)observer;
- (void)saveGeneratedWaveformIfNecessary;
- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)block;
- (void)waveformGenerator:(id)generator didLoadWaveformSegment:(id)segment;
- (void)waveformGeneratorDidFinishLoading:(id)loading error:(id)error;
@end

@implementation RCWaveformDataSource

- (RCWaveformDataSource)initWithWaveformGenerator:(id)generator generatedWaveformOutputURL:(id)l trackIndex:(unint64_t)index
{
  generatorCopy = generator;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = RCWaveformDataSource;
  v11 = [(RCWaveformDataSource *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_waveformGenerator, generator);
    v13 = objc_alloc_init(RCMutableWaveform);
    accumulatorWaveform = v12->_accumulatorWaveform;
    v12->_accumulatorWaveform = v13;

    v12->_liveRecordingMergeTime = 0.0;
    objc_storeStrong(&v12->_generatedWaveformOutputURL, l);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    weakObservers = v12->_weakObservers;
    v12->_weakObservers = weakObjectsHashTable;

    v17 = dispatch_queue_create("com.apple.waveformDataSourceProcessing", 0);
    queue = v12->_queue;
    v12->_queue = v17;

    v12->_trackIndex = index;
  }

  return v12;
}

- (void)dealloc
{
  [(RCWaveformGenerator *)self->_waveformGenerator terminateLoadingImmediately];
  v3.receiver = self;
  v3.super_class = RCWaveformDataSource;
  [(RCWaveformDataSource *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__RCWaveformDataSource_addObserver___block_invoke;
  v7[3] = &unk_279E43AD0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __36__RCWaveformDataSource_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    return [v4 addObject:v3];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RCWaveformDataSource_removeObserver___block_invoke;
  v7[3] = &unk_279E43AD0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

void __39__RCWaveformDataSource_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  v2 = dispatch_time(0, 500000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RCWaveformDataSource_removeObserver___block_invoke_2;
  block[3] = &unk_279E43B20;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

uint64_t __39__RCWaveformDataSource_removeObserver___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  if (!result)
  {
    v3 = *(*(a1 + 32) + 32);

    return [v3 terminateLoadingImmediately];
  }

  return result;
}

- (void)beginLoading
{
  if (!self->_hasStartedLoading)
  {
    self->_hasStartedLoading = 1;
    waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
    [waveformGenerator beginLoading];

    waveformGenerator2 = [(RCWaveformDataSource *)self waveformGenerator];
    [waveformGenerator2 addSegmentOutputObserver:self];

    [(RCWaveformDataSource *)self startLoading];
  }
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__RCWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke;
  v9[3] = &unk_279E442B8;
  objc_copyWeak(&v11, &location);
  v8 = blockCopy;
  v10 = v8;
  [waveformGenerator finishLoadingWithCompletionTimeout:timeout completionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __75__RCWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveGeneratedWaveformIfNecessary];

  v7 = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__RCWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke_2;
  v10[3] = &unk_279E44290;
  v8 = *(a1 + 32);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 _performOnObserversBlock:v10];
}

uint64_t __75__RCWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)waitUntilFinished
{
  v3 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCWaveformDataSource_waitUntilFinished__block_invoke;
  v6[3] = &unk_279E442E0;
  v7 = v3;
  v4 = v3;
  [(RCWaveformDataSource *)self finishLoadingWithCompletionTimeout:-1 completionBlock:v6];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = [(RCWaveformGenerator *)self->_waveformGenerator canceled];

  return self ^ 1;
}

- (double)duration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__RCWaveformDataSource_duration__block_invoke;
  v7[3] = &unk_279E43B70;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = v9[5];
  if (v3)
  {
    [v3 timeRange];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__RCWaveformDataSource_duration__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) segments];
  v2 = [v5 lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight
{
  [(RCWaveformDataSource *)self duration];

  v3 = RCTimeRangeMake(0.0, v2);
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)waveformSegmentsInTimeRange:(id)range
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__RCWaveformDataSource_waveformSegmentsInTimeRange___block_invoke;
  v6[3] = &unk_279E44308;
  v6[4] = self;
  v6[5] = &v8;
  rangeCopy = range;
  dispatch_sync(queue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __52__RCWaveformDataSource_waveformSegmentsInTimeRange___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) accumulatorWaveform];
  v2 = [v5 segmentsByClippingToTimeRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)waveformSegmentsIntersectingTimeRange:(id)range
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RCWaveformDataSource_waveformSegmentsIntersectingTimeRange___block_invoke;
  v6[3] = &unk_279E44308;
  v6[4] = self;
  v6[5] = &v8;
  rangeCopy = range;
  dispatch_sync(queue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __62__RCWaveformDataSource_waveformSegmentsIntersectingTimeRange___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) accumulatorWaveform];
  v2 = [v5 segmentsIntersectingTimeRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)averagePowerLevelsRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__RCWaveformDataSource_averagePowerLevelsRate__block_invoke;
  v5[3] = &unk_279E43B70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __46__RCWaveformDataSource_averagePowerLevelsRate__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) averagePowerLevelsRate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)saveGeneratedWaveformIfNecessary
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[RCWaveformDataSource saveGeneratedWaveformIfNecessary]";
  v5 = 2112;
  v6 = @"saved";
  v7 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_272442000, a2, OS_LOG_TYPE_DEBUG, "%s -- %@ waveform to %@", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__RCWaveformDataSource_saveGeneratedWaveformIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 waveformDataSourceRequiresUpdate:*(a1 + 32)];
  }
}

- (void)mergeGeneratedWaveformIfNecessary
{
  if ([(RCWaveformDataSource *)self shouldMergeLiveWaveform])
  {
    segments = [(RCWaveform *)self->_accumulatorWaveform segments];
    lastObject = [segments lastObject];

    if (lastObject)
    {
      [lastObject timeRange];
      v6 = v5 + -15.0;
    }

    else
    {
      v6 = -15.0;
    }

    segments2 = [(RCWaveform *)self->_accumulatorWaveform segments];
    v8 = [segments2 count];

    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - self->_liveRecordingMergeTime > 0.0333333333)
      {
        [(RCWaveformDataSource *)self durationPerWaveformSlice];
        v11 = fmin(v10, 1.79769313e308);
        queue = self->_queue;
        v13[1] = 3221225472;
        v13[0] = MEMORY[0x277D85DD0];
        v13[2] = __57__RCWaveformDataSource_mergeGeneratedWaveformIfNecessary__block_invoke;
        v13[3] = &unk_279E44358;
        if (v11 < 0.001)
        {
          v11 = 0.001;
        }

        v13[4] = self;
        v13[5] = 0x403E000000000000;
        *&v13[6] = v6;
        *&v13[7] = v11;
        dispatch_sync(queue, v13);
        self->_liveRecordingMergeTime = Current;
      }
    }
  }
}

void __57__RCWaveformDataSource_mergeGeneratedWaveformIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) segments];
  v3 = [RCWaveformSegment segmentsByMergingSegments:v2 preferredSegmentDuration:*(a1 + 40) beforeTime:*(a1 + 48) andThenUsePreferredSegmentDuration:*(a1 + 56)];

  if ([v3 count])
  {
    [*(*(a1 + 32) + 8) setSegments:v3];
  }
}

- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [(RCWaveformDataSource *)a2 updateAccumulatorWaveformSegmentsWithBlock:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__RCWaveformDataSource_updateAccumulatorWaveformSegmentsWithBlock___block_invoke;
  v8[3] = &unk_279E44380;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_sync(queue, v8);
}

void __67__RCWaveformDataSource_updateAccumulatorWaveformSegmentsWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = (*(*(a1 + 40) + 16))();
  [*(*(a1 + 32) + 8) setSegments:v3];
}

- (void)waveformGeneratorDidFinishLoading:(id)loading error:(id)error
{
  errorCopy = error;
  generatedWaveformOutputURL = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  if (errorCopy)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RCWaveformDataSource waveformGeneratorDidFinishLoading:errorCopy error:v7];
    }

    if (self->_hasStartedLoading)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__RCWaveformDataSource_waveformGeneratorDidFinishLoading_error___block_invoke;
      block[3] = &unk_279E43B20;
      block[4] = self;
      dispatch_sync(queue, block);
      self->_hasStartedLoading = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [generatedWaveformOutputURL path];
      v11 = [defaultManager fileExistsAtPath:path];

      if (v11)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager2 removeItemAtURL:generatedWaveformOutputURL error:0];

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __64__RCWaveformDataSource_waveformGeneratorDidFinishLoading_error___block_invoke_2;
        v14[3] = &unk_279E43B20;
        v14[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v14);
      }
    }
  }

  else
  {
    [(RCWaveformDataSource *)self saveGeneratedWaveformIfNecessary];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__RCWaveformDataSource_waveformGeneratorDidFinishLoading_error___block_invoke_3;
  v13[3] = &unk_279E44330;
  v13[4] = self;
  [(RCWaveformDataSource *)self _performObserversBlock:v13];
}

- (void)waveformGenerator:(id)generator didLoadWaveformSegment:(id)segment
{
  segmentCopy = segment;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RCWaveformDataSource_waveformGenerator_didLoadWaveformSegment___block_invoke;
  block[3] = &unk_279E43AD0;
  block[4] = self;
  v13 = segmentCopy;
  v7 = segmentCopy;
  dispatch_sync(queue, block);
  [(RCWaveformDataSource *)self mergeGeneratedWaveformIfNecessary];
  v8 = [(RCWaveformDataSource *)self segmentsInCompositionByConvertingFromActiveLoadingFragment:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__RCWaveformDataSource_waveformGenerator_didLoadWaveformSegment___block_invoke_2;
  v10[3] = &unk_279E443A8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(RCWaveformDataSource *)self _performObserversBlock:v10];
}

- (void)markWaveformPotentiallyCorrupted
{
  accumulatorWaveform = [(RCWaveformDataSource *)self accumulatorWaveform];
  [accumulatorWaveform setPotentiallyCorrupted:1];
}

- (void)_performObserversBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RCWaveformDataSource__performObserversBlock___block_invoke;
  block[3] = &unk_279E43B70;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(queue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v17[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__RCWaveformDataSource__performObserversBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)copyWithTrackIndex:(unint64_t)index emptyCopy:(BOOL)copy
{
  v6 = [RCWaveformDataSource alloc];
  waveformGenerator = self->_waveformGenerator;
  generatedWaveformOutputURL = self->_generatedWaveformOutputURL;

  return [(RCWaveformDataSource *)v6 initWithWaveformGenerator:waveformGenerator generatedWaveformOutputURL:generatedWaveformOutputURL trackIndex:index];
}

- (void)updateAccumulatorWaveformSegmentsWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCWaveformDataSource.m" lineNumber:284 description:@"Invalid parameter"];
}

- (void)waveformGeneratorDidFinishLoading:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCWaveformDataSource waveformGeneratorDidFinishLoading:error:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Waveform generator reported loading error! %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end