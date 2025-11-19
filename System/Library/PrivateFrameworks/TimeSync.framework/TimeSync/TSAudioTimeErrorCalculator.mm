@interface TSAudioTimeErrorCalculator
- (BOOL)exportTimeErrorToDirectoryURL:(id)a3 withFilename:(id)a4;
- (BOOL)exportTimeErrorToPath:(id)a3;
- (NSArray)audioTimeErrors;
- (NSArray)timeErrors;
- (TSAudioTimeErrorCalculator)initWithChannelA:(const float *)a3 andChannelB:(const float *)a4 ofLength:(int64_t)a5 withInterval:(int64_t)a6 correlationLength:(int64_t)a7 upscaleFactor:(int64_t)a8 atSamplingRate:(double)a9 correlationType:(int64_t)a10;
- (id)initNoCopyWithChannelA:(const float *)a3 andChannelB:(const float *)a4 ofLength:(int64_t)a5 withInterval:(int64_t)a6 correlationLength:(int64_t)a7 upscaleFactor:(int64_t)a8 atSamplingRate:(double)a9 correlationType:(int64_t)a10;
- (void)_processTimeErrorFromStartOffset:(int64_t)a3 atIndex:(int64_t)a4 withCount:(int64_t)a5;
- (void)calculateTimeErrorFromStartOffset:(int64_t)a3 toEndOffset:(int64_t)a4 withThreadingOption:(int64_t)a5;
- (void)dealloc;
@end

@implementation TSAudioTimeErrorCalculator

- (TSAudioTimeErrorCalculator)initWithChannelA:(const float *)a3 andChannelB:(const float *)a4 ofLength:(int64_t)a5 withInterval:(int64_t)a6 correlationLength:(int64_t)a7 upscaleFactor:(int64_t)a8 atSamplingRate:(double)a9 correlationType:(int64_t)a10
{
  v23.receiver = self;
  v23.super_class = TSAudioTimeErrorCalculator;
  v17 = [(TSAudioTimeErrorCalculator *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_interval = a6;
    v17->_correlationLength = a7;
    v17->_numberOfSamples = a5;
    v17->_samplingRate = a9;
    v17->_upscaleFactor = a8;
    v17->_correlationType = a10;
    v17->_channelASamples = malloc_type_calloc(a5, 4uLL, 0x100004052888210uLL);
    v18->_channelBSamples = malloc_type_calloc(v18->_numberOfSamples, 4uLL, 0x100004052888210uLL);
    v19 = (a6 + v18->_numberOfSamples - 1) / a6;
    v18->_maxMeasurements = v19;
    v18->_sampleTimestamps = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v20 = malloc_type_calloc(v18->_maxMeasurements, 8uLL, 0x100004000313F17uLL);
    v18->_timeErrors = v20;
    channelASamples = v18->_channelASamples;
    if (channelASamples && v18->_channelBSamples && v18->_sampleTimestamps && v20)
    {
      memcpy(channelASamples, a3, 4 * v18->_numberOfSamples);
      memcpy(v18->_channelBSamples, a4, 4 * v18->_numberOfSamples);
      bzero(v18->_sampleTimestamps, 8 * v18->_maxMeasurements);
      bzero(v18->_timeErrors, 8 * v18->_maxMeasurements);
    }

    else
    {

      return 0;
    }
  }

  return v18;
}

- (id)initNoCopyWithChannelA:(const float *)a3 andChannelB:(const float *)a4 ofLength:(int64_t)a5 withInterval:(int64_t)a6 correlationLength:(int64_t)a7 upscaleFactor:(int64_t)a8 atSamplingRate:(double)a9 correlationType:(int64_t)a10
{
  v22.receiver = self;
  v22.super_class = TSAudioTimeErrorCalculator;
  v17 = [(TSAudioTimeErrorCalculator *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_noCopy = 1;
    v17->_interval = a6;
    v17->_correlationLength = a7;
    v17->_samplingRate = a9;
    v17->_upscaleFactor = a8;
    v17->_correlationType = a10;
    v17->_channelASamples = a3;
    v17->_channelBSamples = a4;
    v19 = (a5 + a6 - 1) / a6;
    v18->_numberOfSamples = a5;
    v18->_maxMeasurements = v19;
    v18->_sampleTimestamps = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v20 = malloc_type_calloc(v18->_maxMeasurements, 8uLL, 0x100004000313F17uLL);
    v18->_timeErrors = v20;
    if (v18->_channelASamples && v18->_channelBSamples && v18->_sampleTimestamps && v20)
    {
      bzero(v18->_sampleTimestamps, 8 * v18->_maxMeasurements);
      bzero(v18->_timeErrors, 8 * v18->_maxMeasurements);
    }

    else
    {

      return 0;
    }
  }

  return v18;
}

- (void)_processTimeErrorFromStartOffset:(int64_t)a3 atIndex:(int64_t)a4 withCount:(int64_t)a5
{
  correlationType = self->_correlationType;
  if (correlationType > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(*off_279DBD610[correlationType]) initWithMaxCorrelationLength:self->_correlationLength andUpscaleFactor:self->_upscaleFactor forSamplingRate:self->_samplingRate];
  }

  v13 = v10;
  v11 = [v10 correlationBlock];
  if (a5 >= 1)
  {
    v12 = a5 + a4;
    do
    {
      self->_sampleTimestamps[a4] = a3 / self->_samplingRate;
      self->_timeErrors[a4++] = (v11)[2](v11, &self->_channelASamples[a3], &self->_channelBSamples[a3], self->_correlationLength);
      a3 += self->_interval;
    }

    while (a4 < v12);
  }
}

- (void)calculateTimeErrorFromStartOffset:(int64_t)a3 toEndOffset:(int64_t)a4 withThreadingOption:(int64_t)a5
{
  v9 = mach_absolute_time();
  v10 = a3 & ~(a3 >> 63);
  numberOfSamples = self->_numberOfSamples;
  if (numberOfSamples <= a4)
  {
    v12 = numberOfSamples - 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = (v12 - v10 + 1) / self->_interval;
  if (a5 != 1 && (a5 || v13 <= 10000 / self->_upscaleFactor) || ([MEMORY[0x277CCAC38] processInfo], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "activeProcessorCount"), v14, v15 == 1))
  {
    [(TSAudioTimeErrorCalculator *)self _processTimeErrorFromStartOffset:v10 atIndex:0 withCount:v13];
  }

  else
  {
    v23 = v9;
    v25 = dispatch_queue_create("com.apple.timesync.TSAudioTimeErrorCalculator.parallel", MEMORY[0x277D85CD8]);
    queue = dispatch_queue_create("com.apple.timesync.TSAudioTimeErrorCalculator.sequence", 0);
    v16 = dispatch_semaphore_create(v15);
    v17 = dispatch_group_create();
    if (v13 >= 1)
    {
      v18 = 0;
      v19 = MEMORY[0x277D85DD0];
      v20 = v13 / v15;
      do
      {
        block[0] = v19;
        block[1] = 3221225472;
        if (v18 + v20 > v13)
        {
          v20 = v13 - v18;
        }

        block[2] = __96__TSAudioTimeErrorCalculator_calculateTimeErrorFromStartOffset_toEndOffset_withThreadingOption___block_invoke;
        block[3] = &unk_279DBD5F0;
        v27 = v16;
        v21 = v17;
        v28 = v21;
        v29 = v25;
        v30 = self;
        v31 = v10;
        v32 = v18;
        v33 = v20;
        dispatch_group_async(v21, queue, block);
        v18 += v20;
        v10 += self->_interval * v20;
      }

      while (v18 < v13);
    }

    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    v9 = v23;
  }

  v22 = mach_absolute_time();
  self->_calculatedTimeError = 1;
  self->_measurementsInBuffer = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [TSAudioTimeErrorCalculator calculateTimeErrorFromStartOffset:v22 toEndOffset:v9 withThreadingOption:?];
  }
}

intptr_t __96__TSAudioTimeErrorCalculator_calculateTimeErrorFromStartOffset_toEndOffset_withThreadingOption___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__TSAudioTimeErrorCalculator_calculateTimeErrorFromStartOffset_toEndOffset_withThreadingOption___block_invoke_2;
  v5[3] = &unk_279DBD5C8;
  v5[4] = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  dispatch_group_async(v2, v3, v5);
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (NSArray)audioTimeErrors
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (!self->_calculatedTimeError)
  {
    [(TSAudioTimeErrorCalculator *)self calculateTimeError];
  }

  if (self->_measurementsInBuffer >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [[TSAudioTimeErrorValue alloc] initWithSampleTimestamp:self->_sampleTimestamps[v4] andTimeError:self->_timeErrors[v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < self->_measurementsInBuffer);
  }

  return v3;
}

- (NSArray)timeErrors
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (!self->_calculatedTimeError)
  {
    [(TSAudioTimeErrorCalculator *)self calculateTimeError];
  }

  if (self->_measurementsInBuffer >= 1)
  {
    v4 = 0;
    do
    {
      v5 = self->_timeErrors[v4];
      v6 = [[TSTimeErrorValue alloc] initWithTimestamp:(self->_sampleTimestamps[v4] * 1000000000.0) andError:(v5 * 1000000000.0)];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 < self->_measurementsInBuffer);
  }

  return v3;
}

- (BOOL)exportTimeErrorToDirectoryURL:(id)a3 withFilename:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL])
  {
    v8 = [v6 path];
    v9 = [v8 stringByAppendingPathComponent:v7];

    v10 = [(TSAudioTimeErrorCalculator *)self exportTimeErrorToPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)exportTimeErrorToPath:(id)a3
{
  v5 = a3;
  v6 = fopen([a3 UTF8String], "w");
  if (v6)
  {
    if (!self->_calculatedTimeError)
    {
      [(TSAudioTimeErrorCalculator *)self calculateTimeError];
    }

    fwrite("index,time,time error\n", 0x16uLL, 1uLL, v6);
    if (self->_measurementsInBuffer >= 1)
    {
      v7 = 0;
      do
      {
        fprintf(v6, "%ld,%.9f,%.9f\n", v7, self->_sampleTimestamps[v7], self->_timeErrors[v7]);
        ++v7;
      }

      while (v7 < self->_measurementsInBuffer);
    }

    fclose(v6);
  }

  return v6 != 0;
}

- (void)dealloc
{
  if (!self->_noCopy)
  {
    free(self->_channelASamples);
    free(self->_channelBSamples);
  }

  free(self->_sampleTimestamps);
  free(self->_timeErrors);
  v3.receiver = self;
  v3.super_class = TSAudioTimeErrorCalculator;
  [(TSAudioTimeErrorCalculator *)&v3 dealloc];
}

- (void)calculateTimeErrorFromStartOffset:(uint64_t)a1 toEndOffset:(uint64_t)a2 withThreadingOption:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1 - a2;
  v5 = 2048;
  v6 = (a1 - a2) / 1000000000.0;
  _os_log_debug_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Elapsed time %llu, %f\n", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end