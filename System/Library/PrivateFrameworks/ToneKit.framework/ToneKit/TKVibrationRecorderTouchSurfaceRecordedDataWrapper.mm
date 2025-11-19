@interface TKVibrationRecorderTouchSurfaceRecordedDataWrapper
- (BOOL)getNormalizedTouchLocation:(CGPoint *)a3 touchPhase:(int *)a4 forTimeInterval:(double)a5;
- (TKVibrationRecorderTouchSurfaceRecordedDataWrapper)initWithVibrationPatternMaximumDuration:(double)a3;
- (void)_prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:(double)a3;
- (void)_updateMaximumFramesPerSecondRate:(id)a3;
- (void)dealloc;
- (void)didStopRecording;
@end

@implementation TKVibrationRecorderTouchSurfaceRecordedDataWrapper

- (TKVibrationRecorderTouchSurfaceRecordedDataWrapper)initWithVibrationPatternMaximumDuration:(double)a3
{
  v14.receiver = self;
  v14.super_class = TKVibrationRecorderTouchSurfaceRecordedDataWrapper;
  v4 = [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_vibrationPatternMaximumDuration = a3;
    v4->_maximumFramesPerSecondRate = 60;
    v4->_isWarmUpModeEnabled = 1;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5->_warmUpModeDidStartTimestamp = v6;
    v7 = +[TKDisplayLinkManager currentDisplayLinkManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__TKVibrationRecorderTouchSurfaceRecordedDataWrapper_initWithVibrationPatternMaximumDuration___block_invoke;
    v12[3] = &unk_278316958;
    v8 = v5;
    v13 = v8;
    v9 = [v7 addObserverWithHandler:v12];
    displayLinkManagerObserverToken = v8->_displayLinkManagerObserverToken;
    v8->_displayLinkManagerObserverToken = v9;
  }

  return v5;
}

- (void)dealloc
{
  recordedData = self->_recordedData;
  if (recordedData)
  {
    free(recordedData);
  }

  v4.receiver = self;
  v4.super_class = TKVibrationRecorderTouchSurfaceRecordedDataWrapper;
  [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)&v4 dealloc];
}

- (void)_prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:(double)a3
{
  v4 = vcvtpd_u64_f64(self->_maximumFramesPerSecondRate * a3);
  recordedData = self->_recordedData;
  if (recordedData)
  {
    if (self->_recordedDataElementsCount < v4)
    {
      v6 = malloc_type_realloc(recordedData, 32 * v4, 0x1000040CA85BC40uLL);
      self->_recordedData = v6;
      bzero(&v6[32 * self->_recordedDataElementsCount], 32 * (v4 - self->_recordedDataElementsCount));
      self->_recordedDataElementsCount = v4;
    }
  }

  else
  {
    self->_recordedData = malloc_type_calloc(v4, 0x20uLL, 0x1000040CA85BC40uLL);
    self->_recordedDataElementsCount = v4;
    self->_recordedDataCursor = 0;
  }
}

- (void)didStopRecording
{
  if (self->_displayLinkManagerObserverToken)
  {
    v3 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v3 removeObserverWithToken:self->_displayLinkManagerObserverToken];

    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = 0;
  }
}

- (BOOL)getNormalizedTouchLocation:(CGPoint *)a3 touchPhase:(int *)a4 forTimeInterval:(double)a5
{
  v5 = *MEMORY[0x277CBF348];
  v6 = vcvtmd_u64_f64(self->_maximumFramesPerSecondRate * a5);
  recordedDataCursor = self->_recordedDataCursor;
  if (recordedDataCursor < v6 || (recordedData = self->_recordedData, v9 = recordedData[4 * v6 + 3], v9 > recordedDataCursor))
  {
    v10 = 0;
    result = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = &recordedData[4 * v9];
  v13 = *v12;
  v10 = *(v12 + 4);
  result = 1;
  if (a3)
  {
LABEL_4:
    *a3 = v13;
  }

LABEL_5:
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

- (void)_updateMaximumFramesPerSecondRate:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isWarmUpModeEnabled)
  {
    if (self->_displayLinkHasRefreshedAtLeastOnce)
    {
      v12[0] = v4;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      if (v5 - self->_warmUpModeDidStartTimestamp >= 0.5)
      {
        recordedDataCursor = self->_recordedDataCursor;
        if (recordedDataCursor)
        {
          memcpy(v12 - ((40 * recordedDataCursor + 15) & 0xFFFFFFFFFFFFFFF0), self->_recordedData, 40 * recordedDataCursor);
          [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:self->_vibrationPatternMaximumDuration * 1.2];
          bzero(self->_recordedData, 32 * self->_recordedDataElementsCount);
          self->_recordedDataCursor = 0;
          v9 = (&v12[2] - ((40 * recordedDataCursor + 15) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _recordFinalDataWithNormalizedTouchLocation:*v9 touchPhase:*(v9 - 2) timeIntervalSinceBeginningOfPattern:*(v9 - 1), v9[2]];
            v9 += 5;
            --recordedDataCursor;
          }

          while (recordedDataCursor);
        }

        else
        {
          [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:self->_vibrationPatternMaximumDuration * 1.2];
        }

        v4 = v12[0];
        self->_isWarmUpModeEnabled = 0;
        if (self->_displayLinkManagerObserverToken)
        {
          [v12[0] removeObserverWithToken:?];
          displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
          self->_displayLinkManagerObserverToken = 0;

          v4 = v12[0];
        }
      }

      else
      {
        [v12[0] duration];
        v4 = v12[0];
        v7 = vcvtpd_u64_f64(1.0 / v6);
        if (self->_maximumFramesPerSecondRate < v7)
        {
          self->_maximumFramesPerSecondRate = v7;
        }
      }
    }

    else
    {
      self->_displayLinkHasRefreshedAtLeastOnce = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)recordNormalizedTouchLocation:(uint64_t *)a1 touchPhase:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_21C599000, a2, OS_LOG_TYPE_ERROR, "Couldn't not handle recording touch location in warm up mode with index %lu.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end