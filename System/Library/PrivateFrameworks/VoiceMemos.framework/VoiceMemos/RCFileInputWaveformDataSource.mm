@interface RCFileInputWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)sourceTimeRange;
- (BOOL)savesGeneratedWaveform;
- (RCFileInputWaveformDataSource)initWithAVFileURL:(id)l savesGeneratedWaveform:(BOOL)waveform segmentFlushInterval:(double)interval trackIndex:(unint64_t)index;
- (double)duration;
- (float)loadingProgress;
- (id)synchronouslyApproximateWaveformSegmentsByReadingCurrentFileAheadTimeRange:(id)range;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block;
- (void)saveGeneratedWaveformIfNecessary;
- (void)setLoadingProgress:(float)progress;
- (void)startLoading;
@end

@implementation RCFileInputWaveformDataSource

- (RCFileInputWaveformDataSource)initWithAVFileURL:(id)l savesGeneratedWaveform:(BOOL)waveform segmentFlushInterval:(double)interval trackIndex:(unint64_t)index
{
  waveformCopy = waveform;
  lCopy = l;
  path = [lCopy path];

  if (!path)
  {
    [RCFileInputWaveformDataSource initWithAVFileURL:a2 savesGeneratedWaveform:self segmentFlushInterval:? trackIndex:?];
  }

  v14 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:index trackIndex:interval];
  if (waveformCopy)
  {
    v15 = [RCWaveform waveformURLForAVURL:lCopy trackIndex:index];
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = self;
  v21.super_class = RCFileInputWaveformDataSource;
  v16 = [(RCWaveformDataSource *)&v21 initWithWaveformGenerator:v14 generatedWaveformOutputURL:v15 trackIndex:index];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_AVFileURL, l);
    v17->_cachedDuration = -1.0;
    v18 = dispatch_queue_create(0, 0);
    serialQueue = v17->_serialQueue;
    v17->_serialQueue = v18;

    v17->_trackIndex = index;
  }

  return v17;
}

- (BOOL)savesGeneratedWaveform
{
  generatedWaveformOutputURL = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  v3 = generatedWaveformOutputURL != 0;

  return v3;
}

- (float)loadingProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__RCFileInputWaveformDataSource_loadingProgress__block_invoke;
  v5[3] = &unk_279E43B70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __48__RCFileInputWaveformDataSource_loadingProgress__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setLoadingProgress:(float)progress
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__RCFileInputWaveformDataSource_setLoadingProgress___block_invoke;
  v4[3] = &unk_279E453C0;
  v4[4] = self;
  progressCopy = progress;
  dispatch_sync(serialQueue, v4);
}

float __52__RCFileInputWaveformDataSource_setLoadingProgress___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 96) = result;
  return result;
}

- (void)startLoading
{
  v8 = *MEMORY[0x277D85DE8];
  path = [self path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block
{
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__13;
  v13[4] = __Block_byref_object_dispose__13;
  selfCopy = self;
  v14 = selfCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__RCFileInputWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke;
  v10[3] = &unk_279E45410;
  v12 = v13;
  v8 = blockCopy;
  v11 = v8;
  v9.receiver = selfCopy;
  v9.super_class = RCFileInputWaveformDataSource;
  [(RCWaveformDataSource *)&v9 finishLoadingWithCompletionTimeout:timeout completionBlock:v10];

  _Block_object_dispose(v13, 8);
}

uint64_t __84__RCFileInputWaveformDataSource_finishLoadingWithCompletionTimeout_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (!v7 && a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) saveGeneratedWaveformIfNecessary];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }

  return MEMORY[0x2821F9730]();
}

- (id)synchronouslyApproximateWaveformSegmentsByReadingCurrentFileAheadTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v7 = [waveformGenerator synchronouslyApproximateWaveformForAVContentURL:self->_AVFileURL byReadingCurrentFileAheadTimeRange:{var0, var1}];

  return v7;
}

- (void)saveGeneratedWaveformIfNecessary
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__RCFileInputWaveformDataSource_saveGeneratedWaveformIfNecessary__block_invoke;
  v4[3] = &unk_279E45108;
  v4[4] = self;
  [(RCWaveformDataSource *)self updateAccumulatorWaveformSegmentsWithBlock:v4];
  v3.receiver = self;
  v3.super_class = RCFileInputWaveformDataSource;
  [(RCWaveformDataSource *)&v3 saveGeneratedWaveformIfNecessary];
}

id __65__RCFileInputWaveformDataSource_saveGeneratedWaveformIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 segmentsCopy];
  v4 = [v3 lastObject];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) duration];
    if (v6 <= 0.0)
    {
      v7 = v3;
    }

    else
    {
      v7 = [v3 mutableCopy];
      [v5 timeRange];
      v9 = v8;
      [*(a1 + 32) duration];
      v11 = [v5 copyWithAdjustedTimeRange:{RCTimeRangeMake(v9, v10)}];

      [v7 replaceObjectAtIndex:objc_msgSend(v3 withObject:{"count") - 1, v11}];
    }
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (double)duration
{
  result = self->_cachedDuration;
  if (result < 0.0)
  {
    v4 = [MEMORY[0x277CE6650] assetWithURL:self->_AVFileURL];
    v5 = v4;
    if (self->_trackIndex == -1)
    {
      if (v4)
      {
        [v4 duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      self->_cachedDuration = CMTimeGetSeconds(&time);
    }

    else
    {
      rc_audioTracks = [v4 rc_audioTracks];
      v7 = [rc_audioTracks count];
      if (!v7 || self->_trackIndex >= v7)
      {

        return 0.0;
      }

      v8 = [rc_audioTracks objectAtIndexedSubscript:?];
      v9 = v8;
      if (v8)
      {
        [v8 timeRange];
      }

      else
      {
        memset(v10, 0, sizeof(v10));
      }

      time = *&v10[1];
      self->_cachedDuration = CMTimeGetSeconds(&time);
    }

    return self->_cachedDuration;
  }

  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)sourceTimeRange
{
  beginTime = self->_sourceTimeRange.beginTime;
  endTime = self->_sourceTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (void)initWithAVFileURL:(uint64_t)a1 savesGeneratedWaveform:(uint64_t)a2 segmentFlushInterval:trackIndex:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCFileInputWaveformDataSource.m" lineNumber:35 description:@"Invalid parameter"];
}

@end