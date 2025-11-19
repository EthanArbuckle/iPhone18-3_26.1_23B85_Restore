@interface PFSinglePassVideoExportItemStatistics
+ (id)statisticsWithTargetPlaybackDuration:(id *)a3 frameRate:(float)a4 targetOutputTotalBytes:(unint64_t)a5;
- (PFSinglePassVideoExportItemStatistics)init;
- (float)processingFramesPerSecond;
- (id)outputChunkMeasurementsDescription;
- (id)summaryDescription;
- (int64_t)effectiveEncodingBitRate;
- (void)addMeasurementForBytesDelivered:(unint64_t)a3;
- (void)enumerateOutputChunkMeasurementsWithHandler:(id)a3;
@end

@implementation PFSinglePassVideoExportItemStatistics

- (id)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PFSinglePassVideoExportItemStatistics *)self processedOutputTotalBytes];
  v5 = vcvts_n_f32_u64([(PFSinglePassVideoExportItemStatistics *)self processedOutputTotalBytes], 0x14uLL);
  [(PFSinglePassVideoExportItemStatistics *)self conversionDuration];
  v7 = v6;
  v8 = vcvts_n_f32_u64([(PFSinglePassVideoExportItemStatistics *)self processedOutputBytesPerSecond], 0x14uLL);
  [(PFSinglePassVideoExportItemStatistics *)self processingFramesPerSecond];
  v10 = v9;
  [(PFSinglePassVideoExportItemStatistics *)self averageOutputChunkTimeInterval];
  return [v3 stringWithFormat:@"Exported %lu bytes (%.2fMB) in %.1fs (%.2fMB/s), %.2fps, average output interval = %.2fs, average output size = %.2fKB", v4, *&v5, v7, *&v8, *&v10, v11, vcvts_n_f32_u64(-[PFSinglePassVideoExportItemStatistics averageOutputChunkBytes](self, "averageOutputChunkBytes"), 0xAuLL)];
}

- (id)outputChunkMeasurementsDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"Sample Time\tTotal Bytes\tSample Bytes\n"];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PFSinglePassVideoExportItemStatistics_outputChunkMeasurementsDescription__block_invoke;
  v6[3] = &unk_1E7B666A8;
  v8 = v11;
  v9 = v10;
  v4 = v3;
  v7 = v4;
  [(PFSinglePassVideoExportItemStatistics *)self enumerateOutputChunkMeasurementsWithHandler:v6];

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

uint64_t __75__PFSinglePassVideoExportItemStatistics_outputChunkMeasurementsDescription__block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + a3;
  *(*(*(a1 + 48) + 8) + 24) += a2;
  return [*(a1 + 32) appendFormat:@"%f\t%lu\t%lu\n", *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), a2];
}

- (int64_t)effectiveEncodingBitRate
{
  processedOutputFrameCount = self->_processedOutputFrameCount;
  if (processedOutputFrameCount)
  {
    return vcvtd_n_u64_f64(roundf(self->_processedVideoSampleBytes / (processedOutputFrameCount / self->_frameRate)), 3uLL);
  }

  else
  {
    return 0;
  }
}

- (float)processingFramesPerSecond
{
  conversionDuration = self->_conversionDuration;
  if (conversionDuration == 0.0)
  {
    return NAN;
  }

  else
  {
    return self->_processedOutputFrameCount / conversionDuration;
  }
}

- (void)enumerateOutputChunkMeasurementsWithHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_outputChunkMeasurements;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 objectAtIndexedSubscript:0];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v10 objectAtIndexedSubscript:1];
      v15 = [v14 unsignedIntegerValue];

      v16 = 0;
      v4[2](v4, v15, &v16, v13);
      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addMeasurementForBytesDelivered:(unint64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  outputChunkMeasurements = self->_outputChunkMeasurements;
  v7 = (v5 - self->_lastOutputChunkTimestamp) / 1000000000.0;
  self->_lastOutputChunkTimestamp = v5;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [(NSMutableArray *)outputChunkMeasurements addObject:v10];

  self->_processedOutputTotalBytes += a3;
  self->_conversionDuration = v7 + self->_conversionDuration;
}

- (PFSinglePassVideoExportItemStatistics)init
{
  v7.receiver = self;
  v7.super_class = PFSinglePassVideoExportItemStatistics;
  v2 = [(PFSinglePassVideoExportItemStatistics *)&v7 init];
  if (v2)
  {
    v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v4 = [MEMORY[0x1E695DF70] array];
    outputChunkMeasurements = v2->_outputChunkMeasurements;
    v2->_outputChunkMeasurements = v4;

    v2->_lastOutputChunkTimestamp = v3;
  }

  return v2;
}

+ (id)statisticsWithTargetPlaybackDuration:(id *)a3 frameRate:(float)a4 targetOutputTotalBytes:(unint64_t)a5
{
  v8 = objc_opt_new();
  v11 = *a3;
  [v8 setTargetPlaybackDuration:CMTimeGetSeconds(&v11)];
  *&v9 = a4;
  [v8 setFrameRate:v9];
  [v8 setTargetOutputTotalBytes:a5];

  return v8;
}

@end