@interface RCWaveformGenerator
- (BOOL)_appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments;
- (BOOL)_appendPowerMeterValuesFromDataInAudioFile:(id)file progressBlock:(id)block;
- (BOOL)appendAveragePowerLevel:(float)level;
- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer;
- (BOOL)appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:(id)l progressBlock:(id)block;
- (BOOL)appendAveragePowerLevelsByDigestingSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)appendAveragePowerLevelsByDigestingWaveform:(id)waveform;
- (BOOL)appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments;
- (BOOL)finished;
- (BOOL)idle;
- (BOOL)loadable;
- (BOOL)paused;
- (RCWaveformGenerator)init;
- (RCWaveformGenerator)initWithSamplingParametersFromGenerator:(id)generator trackIndex:(unint64_t)index;
- (RCWaveformGenerator)initWithSegmentFlushInterval:(double)interval trackIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)synchronouslyApproximateWaveformForAVContentURL:(id)l byReadingCurrentFileAheadTimeRange:(id)range;
- (void)_appendAveragePowerLevel:(float)level;
- (void)_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file;
- (void)_appendPowerMeterValuesFromAudioPCMBuffer:(id)buffer;
- (void)_appendPowerMeterValuesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_onQueue_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file;
- (void)_onQueue_appendSegment:(id)segment;
- (void)_onQueue_digestAveragePowerLevel:(float)level;
- (void)_onQueue_flushRemainingData;
- (void)_onQueue_flushWaveformSegment:(id)segment;
- (void)_onQueue_flushWithNextSegmentWithEndTime:(double)time isPredigest:(BOOL)predigest;
- (void)_onQueue_performInternalFinishedLoadingBlocksAndFinishObservers;
- (void)_onQueue_performLoadingFinishedBlock:(id)block internalBlockUUID:(id)d isTimeout:(BOOL)timeout;
- (void)_onQueue_performObserversBlock:(id)block;
- (void)_onQueue_pushAveragePowerLevel:(float)level;
- (void)addSegmentOutputObserver:(id)observer;
- (void)async_finishLoadingByTerminating:(BOOL)terminating loadingFinishedBlockTimeout:(unint64_t)timeout loadingFinishedBlock:(id)block;
- (void)beginLoading;
- (void)flushPendingCapturedSampleBuffers;
- (void)removeSegmentOutputObserver:(id)observer;
- (void)setPaused:(BOOL)paused;
@end

@implementation RCWaveformGenerator

- (RCWaveformGenerator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformGenerator.mm" lineNumber:84 description:{@"use the class specific designated initializer for %@", v6}];

  return 0;
}

- (RCWaveformGenerator)initWithSegmentFlushInterval:(double)interval trackIndex:(unint64_t)index
{
  v19.receiver = self;
  v19.super_class = RCWaveformGenerator;
  v6 = [(RCWaveformGenerator *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.VoiceMemos.RCWaveformGenerator.queue", 0);
    v8 = *(v6 + 3);
    *(v6 + 3) = v7;

    dispatch_queue_set_specific(*(v6 + 3), v6, v6, 0);
    v9 = dispatch_semaphore_create(0);
    v10 = *(v6 + 2);
    *(v6 + 2) = v9;

    dispatch_semaphore_signal(*(v6 + 2));
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v12 = *(v6 + 6);
    *(v6 + 6) = weakObjectsHashTable;

    array = [MEMORY[0x277CBEB18] array];
    v14 = *(v6 + 7);
    *(v6 + 7) = array;

    array2 = [MEMORY[0x277CBEB18] array];
    v16 = *(v6 + 8);
    *(v6 + 8) = array2;

    *(v6 + 33) = 160;
    intervalCopy = 0.0333333333;
    if (interval > 0.0)
    {
      intervalCopy = interval;
    }

    *(v6 + 32) = intervalCopy;
    *(v6 + 30) = index;
  }

  return v6;
}

- (RCWaveformGenerator)initWithSamplingParametersFromGenerator:(id)generator trackIndex:(unint64_t)index
{
  generatorCopy = generator;
  v7 = [(RCWaveformGenerator *)self initWithSegmentFlushInterval:index trackIndex:generatorCopy[32]];
  if (v7)
  {
    -[RCWaveformGenerator setOverviewUnitsPerSecond:](v7, "setOverviewUnitsPerSecond:", [generatorCopy overviewUnitsPerSecond]);
  }

  return v7;
}

- (void)addSegmentOutputObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RCWaveformGenerator_addSegmentOutputObserver___block_invoke;
  v7[3] = &unk_279E436F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __48__RCWaveformGenerator_addSegmentOutputObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);

    return [v4 addObject:v3];
  }

  return result;
}

- (void)removeSegmentOutputObserver:(id)observer
{
  observerCopy = observer;
  if (dispatch_get_specific(self) == self)
  {
    [(NSHashTable *)self->_weakObservers removeObject:observerCopy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__RCWaveformGenerator_removeSegmentOutputObserver___block_invoke;
    v6[3] = &unk_279E436F0;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_sync(queue, v6);
  }
}

- (void)flushPendingCapturedSampleBuffers
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RCWaveformGenerator_flushPendingCapturedSampleBuffers__block_invoke;
  block[3] = &unk_279E43718;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)appendAveragePowerLevelsByDigestingSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v5 = _checkCanAppend(self, a2);
  if (v5)
  {
    [(RCWaveformGenerator *)self _appendPowerMeterValuesFromSampleBuffer:buffer];
  }

  return v5;
}

- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = _checkCanAppend(self, a2);
  if (v6)
  {
    [(RCWaveformGenerator *)self _appendPowerMeterValuesFromAudioPCMBuffer:bufferCopy];
  }

  return v6;
}

- (BOOL)appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:(id)l progressBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  if (_checkCanAppend(self, a2))
  {
    v9 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      path = [lCopy path];
      [(RCWaveformGenerator *)path appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:v14 progressBlock:v9];
    }

    v11 = [(RCWaveformGenerator *)self _appendPowerMeterValuesFromDataInAudioFile:lCopy progressBlock:blockCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments
{
  segmentsCopy = segments;
  v6 = (_checkCanAppend(self, a2) & 1) != 0 && [(RCWaveformGenerator *)self _appendAveragePowerLevelsByDigestingWaveformSegments:segmentsCopy];

  return v6;
}

- (BOOL)appendAveragePowerLevel:(float)level
{
  v5 = _checkCanAppend(self, a2);
  if (v5)
  {
    *&v6 = level;
    [(RCWaveformGenerator *)self _appendAveragePowerLevel:v6];
  }

  return v5;
}

- (BOOL)appendAveragePowerLevelsByDigestingWaveform:(id)waveform
{
  waveformCopy = waveform;
  v6 = _checkCanAppend(self, a2);
  if (v6)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(RCWaveformGenerator *)waveformCopy appendAveragePowerLevelsByDigestingWaveform:v7];
    }

    segmentsCopy = [waveformCopy segmentsCopy];
    [(RCWaveformGenerator *)self _appendAveragePowerLevelsByDigestingWaveformSegments:segmentsCopy];
  }

  return v6;
}

- (BOOL)loadable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__RCWaveformGenerator_loadable__block_invoke;
  v5[3] = &unk_279E43740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)finished
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__RCWaveformGenerator_finished__block_invoke;
  v5[3] = &unk_279E43740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)idle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__RCWaveformGenerator_idle__block_invoke;
  v5[3] = &unk_279E43740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__RCWaveformGenerator_idle__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  *(*(*(result + 40) + 8) + 24) = v3;
  return result;
}

- (void)beginLoading
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RCWaveformGenerator_beginLoading__block_invoke;
  block[3] = &unk_279E43790;
  block[4] = self;
  block[5] = v4;
  block[6] = a2;
  dispatch_sync(queue, block);
  _Block_object_dispose(v4, 8);
}

void __35__RCWaveformGenerator_beginLoading__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = *(*(a1 + 32) + 8);
    if (v3 >= 2)
    {
      _assertInvalidStateMessage(@"begin loading", v3, *(a1 + 48));
    }
  }

  else
  {
    *(v2 + 8) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 224);
    *(v4 + 224) = 0;

    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__RCWaveformGenerator_beginLoading__block_invoke_2;
    v7[3] = &unk_279E43768;
    v7[4] = v6;
    [v6 _onQueue_performObserversBlock:v7];
  }
}

void __35__RCWaveformGenerator_beginLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 waveformGeneratorWillBeginLoading:*(a1 + 32)];
  }
}

- (void)setPaused:(BOOL)paused
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__RCWaveformGenerator_setPaused___block_invoke;
  v4[3] = &unk_279E437B8;
  pausedCopy = paused;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

void __33__RCWaveformGenerator_setPaused___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 232);
  if (*(a1 + 40) == 1)
  {
    *(v1 + 232) = v2 + 1;
    v3 = *(a1 + 32);
    if (*(v3 + 232) == 1)
    {
      v4 = *(v3 + 16);
      v5 = *MEMORY[0x277D85DE8];

      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      return;
    }

LABEL_13:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v2)
  {
    v8 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[RCWaveformGenerator setPaused:]_block_invoke";
      _os_log_impl(&dword_272442000, v8, OS_LOG_TYPE_INFO, "%s -- WARNING: Unbalanced setPaused: detected", &v10, 0xCu);
    }

    goto LABEL_13;
  }

  *(v1 + 232) = v2 - 1;
  v6 = *(*(a1 + 32) + 16);
  v7 = *MEMORY[0x277D85DE8];

  dispatch_semaphore_signal(v6);
}

- (BOOL)paused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__RCWaveformGenerator_paused__block_invoke;
  v5[3] = &unk_279E43740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)async_finishLoadingByTerminating:(BOOL)terminating loadingFinishedBlockTimeout:(unint64_t)timeout loadingFinishedBlock:(id)block
{
  v9 = [block copy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke;
  block[3] = &unk_279E43830;
  block[4] = self;
  v13 = v9;
  terminatingCopy = terminating;
  v14 = a2;
  timeoutCopy = timeout;
  v11 = v9;
  dispatch_async(queue, block);
}

void __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke(uint64_t a1)
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = *(a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 3)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, (*(v2 + 248) & 1) == 0, *(v2 + 224));
    }
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    v5 = [MEMORY[0x277CCAD78] UUID];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke_21;
    v22[3] = &unk_279E437E0;
    v26 = v27;
    v25 = *(a1 + 40);
    v6 = v5;
    v23 = v6;
    v7 = v4;
    v24 = v7;
    v8 = [v22 copy];
    [*(*(a1 + 32) + 56) addObject:v6];
    v9 = *(*(a1 + 32) + 64);
    v10 = MEMORY[0x2743CA3B0](v8);
    [v9 addObject:v10];

    v11 = *(a1 + 32);
    if (*(v11 + 248))
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 64);
    }

    *(v11 + 248) = v12 & 1;
    v13 = *(a1 + 32);
    if (*(v13 + 8) != 2)
    {
      *(v13 + 8) = 2;
      if (_checkCanAppend(*(a1 + 32), *(a1 + 48)))
      {
        [*(a1 + 32) _onQueue_flushRemainingData];
        [*(a1 + 32) _onQueue_performInternalFinishedLoadingBlocksAndFinishObservers];
      }
    }

    v14 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke_2;
    v17[3] = &unk_279E43808;
    v21 = *(a1 + 64);
    v18 = v7;
    v19 = v8;
    v20 = *(a1 + 56);
    v15 = v7;
    v16 = v8;
    dispatch_async(v14, v17);
  }

  _Block_object_dispose(v27, 8);
}

intptr_t __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke_21(void *a1, uint64_t a2)
{
  [*(*(a1[7] + 8) + 40) _onQueue_performLoadingFinishedBlock:a1[6] internalBlockUUID:a1[4] isTimeout:a2];
  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

intptr_t __105__RCWaveformGenerator_async_finishLoadingByTerminating_loadingFinishedBlockTimeout_loadingFinishedBlock___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || (result = dispatch_semaphore_wait(*(a1 + 32), *(a1 + 48))) != 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_onQueue_performLoadingFinishedBlock:(id)block internalBlockUUID:(id)d isTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  v10 = [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs indexOfObject:dCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs removeObjectAtIndex:v10];
    [(NSMutableArray *)self->_internalFinishedLoadingBlocks removeObjectAtIndex:v10];
  }

  if (timeoutCopy)
  {
    v11 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[RCWaveformGenerator _onQueue_performLoadingFinishedBlock:internalBlockUUID:isTimeout:]";
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_272442000, v11, OS_LOG_TYPE_INFO, "%s -- [FinishLoading] %@ WARNING: Encountered time out while trying to finish loading", &v16, 0x16u);
    }

    if (!self->_canceled && ![(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs count])
    {
      [(RCWaveformGenerator *)self async_finishLoadingByTerminating:1 loadingFinishedBlockTimeout:0 loadingFinishedBlock:0];
    }
  }

  canceled = self->_canceled;
  v13 = self->_loadingError;
  v14 = v13;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, (v13 == 0) & ~canceled, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_performInternalFinishedLoadingBlocksAndFinishObservers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_internalFinishedLoadingBlocks copy];
  allObjects = [(NSHashTable *)self->_weakObservers allObjects];
  [(NSMutableArray *)self->_internalFinishedLoadingBlocks removeAllObjects];
  [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs removeAllObjects];
  self->_state = 3;
  [v3 enumerateObjectsUsingBlock:{&__block_literal_global, PowerMeter::Reset(&self->_samplePowerMeter)}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 waveformGeneratorDidFinishLoading:self error:{self->_loadingError, v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_performObserversBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_weakObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_appendAveragePowerLevel:(float)level
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__RCWaveformGenerator__appendAveragePowerLevel___block_invoke;
  v4[3] = &unk_279E43878;
  v4[4] = self;
  levelCopy = level;
  dispatch_sync(queue, v4);
}

- (void)_appendPowerMeterValuesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  if (StreamBasicDescription)
  {
    v7 = StreamBasicDescription;
    bufferListSizeNeededOut = 0;
    if (!CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(buffer, &bufferListSizeNeededOut, 0, 0, 0, 0, 0, 0))
    {
      v8 = objc_alloc(MEMORY[0x277CBEB28]);
      v9 = [v8 initWithLength:bufferListSizeNeededOut];
      if (v9)
      {
        v10 = v9;
        bufferListSizeNeededOut = 0;
        mutableBytes = [v9 mutableBytes];
        AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(buffer, 0, mutableBytes, [v10 length], 0, 0, 0, &bufferListSizeNeededOut);
        if (AudioBufferListWithRetainedBlockBuffer)
        {
          v13 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(RCWaveformGenerator *)AudioBufferListWithRetainedBlockBuffer _appendPowerMeterValuesFromSampleBuffer:v13];
          }
        }

        else
        {
          queue = self->_queue;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __63__RCWaveformGenerator__appendPowerMeterValuesFromSampleBuffer___block_invoke;
          v15[3] = &unk_279E438A0;
          v15[5] = mutableBytes;
          v15[6] = v7;
          v15[4] = self;
          dispatch_sync(queue, v15);
          CFRelease(bufferListSizeNeededOut);
        }
      }
    }
  }
}

uint64_t __63__RCWaveformGenerator__appendPowerMeterValuesFromSampleBuffer___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = [*(v2 + 32) _onQueue_appendPowerMeterValuesFromRawAudioData:*&v1[v3 + 4] frameCount:v1[v3 + 2] * (v1[v3 + 3] / (*(*(v2 + 48) + 16) / *(*(v2 + 48) + 20))) format:? isPredigest:?];
      ++v4;
      v1 = *(v2 + 40);
      v3 += 4;
    }

    while (v4 < *v1);
  }

  return result;
}

- (void)_appendPowerMeterValuesFromAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RCWaveformGenerator__appendPowerMeterValuesFromAudioPCMBuffer___block_invoke;
  v7[3] = &unk_279E436F0;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_sync(queue, v7);
}

void __65__RCWaveformGenerator__appendPowerMeterValuesFromAudioPCMBuffer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *[*(a1 + 40) floatChannelData];
  v4 = [*(a1 + 40) frameLength];
  v5 = [*(a1 + 40) format];
  [v2 _onQueue_appendPowerMeterValuesFromRawAudioData:v3 frameCount:v4 format:objc_msgSend(v5 isPredigest:{"streamDescription"), 0}];
}

- (BOOL)_appendPowerMeterValuesFromDataInAudioFile:(id)file progressBlock:(id)block
{
  v98[4] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  blockCopy = block;
  if (_checkCanAppend(self, a2))
  {
    p_activeAsset = &self->_activeAsset;
    if (self->_activeAsset)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformGenerator.mm" lineNumber:454 description:@"already loading"];
    }

    v10 = [MEMORY[0x277CE63D8] assetWithURL:fileCopy];
    v11 = v10;
    if (v10)
    {
      rc_audioTracks = [v10 rc_audioTracks];
      v13 = [rc_audioTracks count];
      if (v13)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80__RCWaveformGenerator__appendPowerMeterValuesFromDataInAudioFile_progressBlock___block_invoke;
        block[3] = &unk_279E436F0;
        block[4] = self;
        v15 = v11;
        v95 = v15;
        dispatch_sync(queue, block);
        v92[0] = 0;
        v92[1] = v92;
        v92[2] = 0x2020000000;
        v93 = 0;
        v91[0] = 0;
        v91[1] = v91;
        v91[2] = 0x2020000000;
        v91[3] = 0;
        v90[0] = 0;
        v90[1] = v90;
        v90[2] = 0x2020000000;
        [v15 duration];
        v90[3] = CMTimeGetSeconds(&time);
        time.value = 0;
        *&time.timescale = &time;
        time.epoch = 0x3032000000;
        v87 = __Block_byref_object_copy_;
        v88 = __Block_byref_object_dispose_;
        v89 = 0;
        v80 = 0;
        v81 = &v80;
        v82 = 0x3032000000;
        v83 = __Block_byref_object_copy_;
        v84 = __Block_byref_object_dispose_;
        v16 = objc_alloc(MEMORY[0x277CE6410]);
        v17 = (*&time.timescale + 40);
        obj = *(*&time.timescale + 40);
        v18 = [v16 initWithAsset:v15 error:&obj];
        objc_storeStrong(v17, obj);
        v85 = v18;
        v19 = v81[5];
        if (!v19)
        {
          v22 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [RCWaveformGenerator _appendPowerMeterValuesFromDataInAudioFile:v22 progressBlock:?];
          }

          v30 = 0;
          goto LABEL_35;
        }

        start = **&MEMORY[0x277CC08F0];
        duration = **&MEMORY[0x277CC08B0];
        CMTimeRangeMake(&v78, &start, &duration);
        [v19 setTimeRange:&v78];
        v20 = *MEMORY[0x277CB82A0];
        v97[0] = *MEMORY[0x277CB8280];
        v97[1] = v20;
        v98[0] = &unk_2881AE010;
        v98[1] = MEMORY[0x277CBEC38];
        v21 = *MEMORY[0x277CB82E0];
        v97[2] = *MEMORY[0x277CB8288];
        v97[3] = v21;
        v98[2] = &unk_2881AE028;
        v98[3] = &unk_2881AE040;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:4];
        if (self->_trackIndex <= v13 - 1)
        {
          v23 = [rc_audioTracks objectAtIndexedSubscript:?];
          v96 = v23;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];

          rc_audioTracks = v24;
        }

        v78.start.value = 0;
        *&v78.start.timescale = &v78;
        v78.start.epoch = 0x3032000000;
        v78.duration.value = __Block_byref_object_copy_;
        *&v78.duration.timescale = __Block_byref_object_dispose_;
        v78.duration.epoch = [MEMORY[0x277CE6418] assetReaderAudioMixOutputWithAudioTracks:rc_audioTracks audioSettings:v22];
        v25 = *(*&v78.start.timescale + 40);
        if (v25)
        {
          [v25 setAlwaysCopiesSampleData:0];
          [*(*&v78.start.timescale + 40) markConfigurationAsFinal];
          if ([v81[5] canAddOutput:*(*&v78.start.timescale + 40)])
          {
            [v81[5] addOutput:*(*&v78.start.timescale + 40)];
            v26 = self->_queue;
            v64 = MEMORY[0x277D85DD0];
            v65 = 3221225472;
            v66 = __80__RCWaveformGenerator__appendPowerMeterValuesFromDataInAudioFile_progressBlock___block_invoke_40;
            v67 = &unk_279E438C8;
            v71 = &v78;
            p_time = &time;
            v70 = &v80;
            selfCopy = self;
            v73 = v91;
            v27 = blockCopy;
            v69 = v27;
            v74 = v90;
            v75 = v92;
            dispatch_sync(v26, &v64);
            if (*(*&time.timescale + 40))
            {
              v28 = OSLogForCategory(@"Default");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [(RCWaveformGenerator *)&self->_activeAsset _appendPowerMeterValuesFromDataInAudioFile:v28 progressBlock:?];
              }

              [(RCWaveformGenerator *)self terminateLoadingImmediately:v64];
            }

            v29 = *p_activeAsset;
            *p_activeAsset = 0;

            if (v27)
            {
              v27[2](v27, 1.0);
            }

            v30 = 1;
            goto LABEL_34;
          }

          v46 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [(RCWaveformGenerator *)v46 _appendPowerMeterValuesFromDataInAudioFile:v54 progressBlock:v55, v56, v57, v58, v59, v60];
          }
        }

        else
        {
          v46 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [(RCWaveformGenerator *)v46 _appendPowerMeterValuesFromDataInAudioFile:v47 progressBlock:v48, v49, v50, v51, v52, v53];
          }
        }

        v30 = 0;
LABEL_34:
        _Block_object_dispose(&v78, 8);

LABEL_35:
        _Block_object_dispose(&v80, 8);

        _Block_object_dispose(&time, 8);
        _Block_object_dispose(v90, 8);
        _Block_object_dispose(v91, 8);
        _Block_object_dispose(v92, 8);

        goto LABEL_36;
      }

      v38 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(RCWaveformGenerator *)v38 _appendPowerMeterValuesFromDataInAudioFile:v39 progressBlock:v40, v41, v42, v43, v44, v45];
      }
    }

    else
    {
      rc_audioTracks = OSLogForCategory(@"Default");
      if (os_log_type_enabled(rc_audioTracks, OS_LOG_TYPE_ERROR))
      {
        [(RCWaveformGenerator *)rc_audioTracks _appendPowerMeterValuesFromDataInAudioFile:v31 progressBlock:v32, v33, v34, v35, v36, v37];
      }
    }

    v30 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v30 = 0;
LABEL_37:

  v61 = *MEMORY[0x277D85DE8];
  return v30;
}

void __80__RCWaveformGenerator__appendPowerMeterValuesFromDataInAudioFile_progressBlock___block_invoke_40(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 48) + 8) + 40) startReading];
  v2 = [*(*(*(a1 + 56) + 8) + 40) copyNextSampleBuffer];
  NumSamples = CMSampleBufferGetNumSamples(v2);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
LABEL_2:
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v9 = NumSamples;
    v10 = *MEMORY[0x277CCA050];
    v11 = *MEMORY[0x277CCA450];
    while (1)
    {
      dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_semaphore_signal(*(*(a1 + 32) + 16));
      v12 = *(a1 + 32);
      if (v12[248] == 1)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:3072 userInfo:0];
        v20 = *(*(a1 + 64) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        goto LABEL_2;
      }

      if (v9 < 1)
      {
        [v12 _onQueue_flushRemainingData];
        goto LABEL_2;
      }

      FormatDescription = CMSampleBufferGetFormatDescription(v2);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      blockBufferOut = 0;
      CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v2, 0, &bufferListOut, 0x18uLL, 0, 0, 0, &blockBufferOut);
      if (bufferListOut.mNumberBuffers)
      {
        v15 = 0;
        p_mData = &bufferListOut.mBuffers[0].mData;
        do
        {
          [*(a1 + 32) _onQueue_appendPowerMeterValuesFromRawAudioData:*p_mData frameCount:*(p_mData - 1) / StreamBasicDescription->mBytesPerFrame format:StreamBasicDescription isPredigest:0];
          ++v15;
          p_mData += 2;
        }

        while (v15 < bufferListOut.mNumberBuffers);
      }

      CMSampleBufferGetDuration(&v27, v2);
      *(*(*(a1 + 72) + 8) + 24) = CMTimeGetSeconds(&v27) + *(*(*(a1 + 72) + 8) + 24);
      if (*(a1 + 40))
      {
        v17 = *(*(*(a1 + 72) + 8) + 24) / *(*(*(a1 + 80) + 8) + 24);
        v18 = *(*(a1 + 88) + 8);
        if (*(v18 + 24) != v17)
        {
          *(v18 + 24) = v17;
          (*(*(a1 + 40) + 16))();
        }
      }

      CFRelease(blockBufferOut);
      if (v2)
      {
        CFRelease(v2);
      }

      v2 = [*(*(*(a1 + 56) + 8) + 40) copyNextSampleBuffer];
      v9 = CMSampleBufferGetNumSamples(v2);
      if (!v2 && (*(*(a1 + 32) + 248) & 1) == 0)
      {
        break;
      }

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        goto LABEL_2;
      }
    }

    if ([*(*(*(a1 + 48) + 8) + 40) status] != 2)
    {
      v22 = MEMORY[0x277CCA9B8];
      v30 = v11;
      v31[0] = @"AVAsset reader failed to read audio track samples.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v24 = [v22 errorWithDomain:v10 code:3072 userInfo:v23];
      v25 = *(*(a1 + 64) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) cancelReading];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file
{
  var1 = range.var1;
  var0 = range.var0;
  fileCopy = file;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__RCWaveformGenerator__appendAveragePowerLevelsByDigestingTimeRange_inAudioFile___block_invoke;
  v10[3] = &unk_279E438F0;
  v12 = var0;
  v13 = var1;
  v10[4] = self;
  v11 = fileCopy;
  v9 = fileCopy;
  dispatch_sync(queue, v10);
}

- (void)_onQueue_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file
{
  var1 = range.var1;
  var0 = range.var0;
  fileCopy = file;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__RCWaveformGenerator__onQueue_appendAveragePowerLevelsByDigestingTimeRange_inAudioFile___block_invoke;
  block[3] = &unk_279E43918;
  v12 = fileCopy;
  v13 = a2;
  block[4] = self;
  v14 = var0;
  v15 = var1;
  v10 = fileCopy;
  dispatch_sync(queue, block);
}

void __89__RCWaveformGenerator__onQueue_appendAveragePowerLevelsByDigestingTimeRange_inAudioFile___block_invoke(uint64_t a1)
{
  if (_checkCanAppend(*(a1 + 32), *(a1 + 48)))
  {
    v2 = [*(a1 + 40) framePosition];
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = v2;
      v4 = [*(a1 + 40) processingFormat];
      [v4 sampleRate];
      v6 = *v8.i64;
      v7 = *(a1 + 56);
      *v8.i64 = v7 + -10.0;
      if (v7 + -10.0 < 0.0)
      {
        *v8.i64 = 0.0;
      }

      v9 = (v6 * *v8.i64);
      *v8.i64 = vcvtd_n_f64_s64(v9, 0xCuLL);
      *v5.i64 = *v8.i64 - trunc(*v8.i64);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v11 = vcvtd_n_s64_f64(*vbslq_s8(vnegq_f64(v10), v5, v8).i64, 0xCuLL);
      [*(a1 + 40) setFramePosition:{fmaxf((v9 - v11), 0.0)}];
      v12 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v4 frameCapacity:4096];
      if (v11 >= 1)
      {
        do
        {
          dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
          dispatch_semaphore_signal(*(*(a1 + 32) + 16));
          if (*(*(a1 + 32) + 248))
          {
            break;
          }

          v13 = *(a1 + 40);
          if (v11 >= 0x1000)
          {
            v14 = 4096;
          }

          else
          {
            v14 = v11;
          }

          v30 = 0;
          v15 = [v13 readIntoBuffer:v12 frameCount:v14 error:&v30];
          v16 = v30;
          if (!v15 || (v17 = [v12 frameLength]) == 0)
          {

            break;
          }

          v18 = *(a1 + 32);
          v19 = *[v12 floatChannelData];
          v20 = [v12 format];
          [v18 _onQueue_appendPowerMeterValuesFromRawAudioData:v19 frameCount:v17 format:objc_msgSend(v20 isPredigest:{"streamDescription"), 1}];
          v11 -= v17;
        }

        while (v11 > 0);
      }

      [*(a1 + 40) setFramePosition:(v6 * v7)];
      *(*(a1 + 32) + 32) = 0;
      *(*(a1 + 32) + 200) = 0;
      while (1)
      {
        v21 = *(*(a1 + 32) + 40);
        if (v21 >= RCTimeRangeDeltaWithExactPrecision(*(a1 + 56), *(a1 + 64)))
        {
          break;
        }

        dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_signal(*(*(a1 + 32) + 16));
        if (*(*(a1 + 32) + 248))
        {
          break;
        }

        v22 = *(a1 + 40);
        v29 = 0;
        v23 = [v22 readIntoBuffer:v12 frameCount:4096 error:&v29];
        v24 = v29;
        if (!v23 || (v25 = [v12 frameLength]) == 0)
        {
          [*(a1 + 32) _onQueue_flushRemainingData];

          break;
        }

        v26 = *(a1 + 32);
        v27 = *[v12 floatChannelData];
        v28 = [v12 format];
        [v26 _onQueue_appendPowerMeterValuesFromRawAudioData:v27 frameCount:v25 format:objc_msgSend(v28 isPredigest:{"streamDescription"), 0}];
      }

      [*(a1 + 40) setFramePosition:v3];
    }
  }
}

- (id)synchronouslyApproximateWaveformForAVContentURL:(id)l byReadingCurrentFileAheadTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__RCWaveformGenerator_synchronouslyApproximateWaveformForAVContentURL_byReadingCurrentFileAheadTimeRange___block_invoke;
  block[3] = &unk_279E43740;
  block[4] = self;
  block[5] = &v26;
  dispatch_sync(queue, block);
  v9 = v27[5];
  if (v9 && ([v9 url], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", lCopy), v10, (v11 & 1) != 0) && !-[RCWaveformGenerator finished](self, "finished"))
  {
    paused = [(RCWaveformGenerator *)self paused];
    if (!paused)
    {
      [(RCWaveformGenerator *)self setPaused:1];
    }

    v15 = [[RCWaveformGenerator alloc] initWithSamplingParametersFromGenerator:self trackIndex:self->_trackIndex];
    v16 = [[RCWaveformSegmentAccumulator alloc] initWithWaveformGenerator:v15];
    [(RCWaveformGenerator *)v15 _appendAveragePowerLevelsByDigestingTimeRange:v27[5] inAudioFile:var0, var1];
    [(RCWaveformSegmentAccumulator *)v16 waitUntilFinished];
    v17 = MEMORY[0x277CBEB18];
    segments = [(RCWaveformSegmentAccumulator *)v16 segments];
    v19 = [v17 arrayWithCapacity:{objc_msgSend(segments, "count")}];

    segments2 = [(RCWaveformSegmentAccumulator *)v16 segments];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__RCWaveformGenerator_synchronouslyApproximateWaveformForAVContentURL_byReadingCurrentFileAheadTimeRange___block_invoke_2;
    v21[3] = &unk_279E43940;
    v23 = var0;
    v24 = var1;
    v12 = v19;
    v22 = v12;
    [segments2 enumerateObjectsUsingBlock:v21];

    if (!paused)
    {
      [(RCWaveformGenerator *)self setPaused:0];
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v12;
}

void __106__RCWaveformGenerator_synchronouslyApproximateWaveformForAVContentURL_byReadingCurrentFileAheadTimeRange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copyWithTimeRangeOffsetByTimeOffset:*(a1 + 40)];

  [*(a1 + 32) addObject:?];
}

- (BOOL)_appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments
{
  segmentsCopy = segments;
  if (_checkCanAppend(self, a2))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__RCWaveformGenerator__appendAveragePowerLevelsByDigestingWaveformSegments___block_invoke;
    block[3] = &unk_279E43968;
    v10 = segmentsCopy;
    selfCopy = self;
    v12 = &v13;
    dispatch_sync(queue, block);
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __76__RCWaveformGenerator__appendAveragePowerLevelsByDigestingWaveformSegments___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(a1 + 40);
      if (v6[248])
      {
        break;
      }

      [v6 _onQueue_appendSegment:{*(*(&v9 + 1) + 8 * v5++), v9}];
      if (v3 == v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = [*(a1 + 40) _onQueue_flushRemainingData];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onQueue_flushWaveformSegment:(id)segment
{
  segmentCopy = segment;
  if (_checkCanAppend(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      [segmentCopy timeRange];
      if (v6 >= self->_totalFlushedTime)
      {
        [(RCWaveformGenerator *)self _onQueue_flushRemainingData];
      }

      else
      {
        v7 = MEMORY[0x277CBEAD8];
        [segmentCopy timeRange];
        objc_msgSend(v7, "raise:format:", *MEMORY[0x277CBE648], @"Invalid endTime (segment end time %f is less than total flushed time %f. Will regenerate waveform."), v8, *&self->_totalFlushedTime;
      }

      self->_framesConsumedSinceLastFlush = 0;
      [segmentCopy timeRange];
      self->_totalFlushedTime = v9;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __53__RCWaveformGenerator__onQueue_flushWaveformSegment___block_invoke;
      v10[3] = &unk_279E43990;
      v10[4] = self;
      v11 = segmentCopy;
      [(RCWaveformGenerator *)self _onQueue_performObserversBlock:v10];
      self->_powerLevelBuffer.__end_ = self->_powerLevelBuffer.__begin_;
    }
  }
}

- (void)_onQueue_flushWithNextSegmentWithEndTime:(double)time isPredigest:(BOOL)predigest
{
  if (_checkCanAppend(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      if (self->_totalFlushedTime > time)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformGenerator.mm" lineNumber:782 description:@"Invalid endTime"];

        totalFlushedTime = self->_totalFlushedTime;
      }

      v7 = RCTimeRangeMake();
      v9 = v8;
      if (self->_powerLevelBuffer.__end_ == self->_powerLevelBuffer.__begin_)
      {
        std::vector<float>::push_back[abi:ne200100](&self->_powerLevelBuffer.__begin_, &self->_powerLevelBufferLastPushedValue);
      }

      v10 = [[RCWaveformSegment alloc] initWithTimeRange:&self->_powerLevelBuffer averagePowerLevelVector:v7, v9];
      self->_totalFlushedTime = time;
      v11 = MEMORY[0x277D85DD0];
      self->_powerLevelsConsumedSinceLastFlush = 0;
      self->_framesConsumedSinceLastFlush = 0;
      v15[0] = v11;
      v15[1] = 3221225472;
      v15[2] = __76__RCWaveformGenerator__onQueue_flushWithNextSegmentWithEndTime_isPredigest___block_invoke;
      v15[3] = &unk_279E43990;
      v15[4] = self;
      v16 = v10;
      v12 = v10;
      [(RCWaveformGenerator *)self _onQueue_performObserversBlock:v15];
      self->_powerLevelBuffer.__end_ = self->_powerLevelBuffer.__begin_;
    }
  }
}

- (void)_onQueue_flushRemainingData
{
  if (_checkCanAppend(self, a2))
  {
    totalFlushedTime = self->_totalFlushedTime;
    v4 = self->_totalDigestedTime - totalFlushedTime;
    if (v4 > 0.0)
    {
      v5 = totalFlushedTime + v4;

      [(RCWaveformGenerator *)self _onQueue_flushWithNextSegmentWithEndTime:0 isPredigest:v5];
    }
  }
}

- (void)_onQueue_digestAveragePowerLevel:(float)level
{
  levelCopy = level;
  if (_checkCanAppend(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      self->_powerLevelBufferLastPushedValue = level;
      std::vector<float>::push_back[abi:ne200100](&self->_powerLevelBuffer.__begin_, &levelCopy);
    }
  }
}

- (void)_onQueue_pushAveragePowerLevel:(float)level
{
  if (_checkCanAppend(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      v5 = self->_powerLevelsConsumedSinceLastFlush + 1;
      self->_powerLevelsConsumedSinceLastFlush = v5;
      totalFlushedTime = self->_totalFlushedTime;
      segmentFlushInterval = self->_segmentFlushInterval;
      v8 = totalFlushedTime + v5 / self->_overviewUnitsPerSecond;
      self->_totalDigestedTime = v8;
      v9 = v8 - totalFlushedTime < segmentFlushInterval + 4.4408921e-16;
      v10 = -1.0;
      v11 = v9 ? -1.0 : v8;
      *&v10 = level;
      [(RCWaveformGenerator *)self _onQueue_digestAveragePowerLevel:v10];
      if (v11 > 0.0)
      {

        [(RCWaveformGenerator *)self _onQueue_flushWithNextSegmentWithEndTime:0 isPredigest:v11];
      }
    }
  }
}

- (void)_onQueue_appendSegment:(id)segment
{
  segmentCopy = segment;
  if (_checkCanAppend(self, a2))
  {
    [(RCWaveformGenerator *)self _onQueue_flushWaveformSegment:segmentCopy];
  }
}

- (id).cxx_construct
{
  PowerMeter::PowerMeter(&self->_samplePowerMeter);
  self->_powerLevelBuffer.__begin_ = 0;
  self->_powerLevelBuffer.__end_ = 0;
  self->_powerLevelBuffer.__cap_ = 0;
  return self;
}

- (void)appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:(os_log_t)log progressBlock:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[RCWaveformGenerator appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:progressBlock:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_272442000, log, OS_LOG_TYPE_DEBUG, "%s -- loading waveform data from audioFile %@", buf, 0x16u);
}

- (void)appendAveragePowerLevelsByDigestingWaveform:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCWaveformGenerator appendAveragePowerLevelsByDigestingWaveform:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_272442000, a2, OS_LOG_TYPE_DEBUG, "%s -- loading waveform data from %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromSampleBuffer:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCWaveformGenerator _appendPowerMeterValuesFromSampleBuffer:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer failed:  rv = %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(uint64_t)a3 progressBlock:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272442000, a1, a3, "%s -- assetReader can not add readerOutput", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(os_log_t)log progressBlock:.cold.2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a2 + 40);
  v6 = 136315650;
  v7 = "[RCWaveformGenerator _appendPowerMeterValuesFromDataInAudioFile:progressBlock:]";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_272442000, log, OS_LOG_TYPE_DEBUG, "%s -- ERROR: encountered error while attempting to read from audio file %@, error = %@ canceling further operations..", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(uint64_t)a3 progressBlock:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272442000, a1, a3, "%s -- readerOutput = nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(uint64_t)a1 progressBlock:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "[RCWaveformGenerator _appendPowerMeterValuesFromDataInAudioFile:progressBlock:]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- AVAssetReader Error = %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(uint64_t)a3 progressBlock:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272442000, a1, a3, "%s -- audioTracks.count == 0", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appendPowerMeterValuesFromDataInAudioFile:(uint64_t)a3 progressBlock:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272442000, a1, a3, "%s -- audioAsset = nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_appendPowerMeterValuesFromRawAudioData:(uint64_t)a3 frameCount:(uint64_t)a4 format:(uint64_t)a5 isPredigest:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_272442000, a1, a3, "%s -- ERROR: unable to process samples", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end