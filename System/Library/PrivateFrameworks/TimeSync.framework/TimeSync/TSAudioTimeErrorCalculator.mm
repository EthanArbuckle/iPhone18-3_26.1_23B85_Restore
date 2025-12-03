@interface TSAudioTimeErrorCalculator
- (BOOL)exportTimeErrorToDirectoryURL:(id)l withFilename:(id)filename;
- (BOOL)exportTimeErrorToPath:(id)path;
- (NSArray)audioTimeErrors;
- (NSArray)timeErrors;
- (TSAudioTimeErrorCalculator)initWithChannelA:(const float *)a andChannelB:(const float *)b ofLength:(int64_t)length withInterval:(int64_t)interval correlationLength:(int64_t)correlationLength upscaleFactor:(int64_t)factor atSamplingRate:(double)rate correlationType:(int64_t)self0;
- (id)initNoCopyWithChannelA:(const float *)a andChannelB:(const float *)b ofLength:(int64_t)length withInterval:(int64_t)interval correlationLength:(int64_t)correlationLength upscaleFactor:(int64_t)factor atSamplingRate:(double)rate correlationType:(int64_t)self0;
- (void)_processTimeErrorFromStartOffset:(int64_t)offset atIndex:(int64_t)index withCount:(int64_t)count;
- (void)calculateTimeErrorFromStartOffset:(int64_t)offset toEndOffset:(int64_t)endOffset withThreadingOption:(int64_t)option;
- (void)dealloc;
@end

@implementation TSAudioTimeErrorCalculator

- (TSAudioTimeErrorCalculator)initWithChannelA:(const float *)a andChannelB:(const float *)b ofLength:(int64_t)length withInterval:(int64_t)interval correlationLength:(int64_t)correlationLength upscaleFactor:(int64_t)factor atSamplingRate:(double)rate correlationType:(int64_t)self0
{
  v23.receiver = self;
  v23.super_class = TSAudioTimeErrorCalculator;
  v17 = [(TSAudioTimeErrorCalculator *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_interval = interval;
    v17->_correlationLength = correlationLength;
    v17->_numberOfSamples = length;
    v17->_samplingRate = rate;
    v17->_upscaleFactor = factor;
    v17->_correlationType = type;
    v17->_channelASamples = malloc_type_calloc(length, 4uLL, 0x100004052888210uLL);
    v18->_channelBSamples = malloc_type_calloc(v18->_numberOfSamples, 4uLL, 0x100004052888210uLL);
    v19 = (interval + v18->_numberOfSamples - 1) / interval;
    v18->_maxMeasurements = v19;
    v18->_sampleTimestamps = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
    v20 = malloc_type_calloc(v18->_maxMeasurements, 8uLL, 0x100004000313F17uLL);
    v18->_timeErrors = v20;
    channelASamples = v18->_channelASamples;
    if (channelASamples && v18->_channelBSamples && v18->_sampleTimestamps && v20)
    {
      memcpy(channelASamples, a, 4 * v18->_numberOfSamples);
      memcpy(v18->_channelBSamples, b, 4 * v18->_numberOfSamples);
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

- (id)initNoCopyWithChannelA:(const float *)a andChannelB:(const float *)b ofLength:(int64_t)length withInterval:(int64_t)interval correlationLength:(int64_t)correlationLength upscaleFactor:(int64_t)factor atSamplingRate:(double)rate correlationType:(int64_t)self0
{
  v22.receiver = self;
  v22.super_class = TSAudioTimeErrorCalculator;
  v17 = [(TSAudioTimeErrorCalculator *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_noCopy = 1;
    v17->_interval = interval;
    v17->_correlationLength = correlationLength;
    v17->_samplingRate = rate;
    v17->_upscaleFactor = factor;
    v17->_correlationType = type;
    v17->_channelASamples = a;
    v17->_channelBSamples = b;
    v19 = (length + interval - 1) / interval;
    v18->_numberOfSamples = length;
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

- (void)_processTimeErrorFromStartOffset:(int64_t)offset atIndex:(int64_t)index withCount:(int64_t)count
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
  correlationBlock = [v10 correlationBlock];
  if (count >= 1)
  {
    v12 = count + index;
    do
    {
      self->_sampleTimestamps[index] = offset / self->_samplingRate;
      self->_timeErrors[index++] = (correlationBlock)[2](correlationBlock, &self->_channelASamples[offset], &self->_channelBSamples[offset], self->_correlationLength);
      offset += self->_interval;
    }

    while (index < v12);
  }
}

- (void)calculateTimeErrorFromStartOffset:(int64_t)offset toEndOffset:(int64_t)endOffset withThreadingOption:(int64_t)option
{
  v9 = mach_absolute_time();
  v10 = offset & ~(offset >> 63);
  numberOfSamples = self->_numberOfSamples;
  if (numberOfSamples <= endOffset)
  {
    endOffsetCopy = numberOfSamples - 1;
  }

  else
  {
    endOffsetCopy = endOffset;
  }

  v13 = (endOffsetCopy - v10 + 1) / self->_interval;
  if (option != 1 && (option || v13 <= 10000 / self->_upscaleFactor) || ([MEMORY[0x277CCAC38] processInfo], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "activeProcessorCount"), v14, v15 == 1))
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
        selfCopy = self;
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
  array = [MEMORY[0x277CBEB18] array];
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
      [array addObject:v5];

      ++v4;
    }

    while (v4 < self->_measurementsInBuffer);
  }

  return array;
}

- (NSArray)timeErrors
{
  array = [MEMORY[0x277CBEB18] array];
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
      [array addObject:v6];

      ++v4;
    }

    while (v4 < self->_measurementsInBuffer);
  }

  return array;
}

- (BOOL)exportTimeErrorToDirectoryURL:(id)l withFilename:(id)filename
{
  lCopy = l;
  filenameCopy = filename;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];
    v9 = [path stringByAppendingPathComponent:filenameCopy];

    v10 = [(TSAudioTimeErrorCalculator *)self exportTimeErrorToPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)exportTimeErrorToPath:(id)path
{
  pathCopy = path;
  v6 = fopen([path UTF8String], "w");
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