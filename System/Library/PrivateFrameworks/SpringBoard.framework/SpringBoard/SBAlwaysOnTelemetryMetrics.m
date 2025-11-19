@interface SBAlwaysOnTelemetryMetrics
- (SBAlwaysOnTelemetryMetrics)init;
- (_SBMachContinuousStopwatch)_stopWatchForBacklightState:(uint64_t)a1;
- (double)_timeForBacklightState:(uint64_t)a1;
- (id)dataForAnalyticsEvent:(id)a3;
- (id)dataForPowerlogEvent:(id)a3;
- (void)_activateStopWatch:(uint64_t)a1;
- (void)accumulateDiscardHistogram:(id)a3;
- (void)accumulateInvalidationHistogram:(id)a3;
- (void)accumulatePresentationSources:(id)a3;
- (void)accumulateRenderHistogram:(id)a3;
- (void)setBacklightState:(int64_t)a3;
@end

@implementation SBAlwaysOnTelemetryMetrics

- (SBAlwaysOnTelemetryMetrics)init
{
  v6.receiver = self;
  v6.super_class = SBAlwaysOnTelemetryMetrics;
  v2 = [(SBAlwaysOnTelemetryMetrics *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    stopWatches = v2->_stopWatches;
    v2->_stopWatches = v3;
  }

  return v2;
}

- (void)setBacklightState:(int64_t)a3
{
  v5 = [(SBAlwaysOnTelemetryMetrics *)self _stopWatchForBacklightState:a3];
  [(SBAlwaysOnTelemetryMetrics *)self _activateStopWatch:v5];

  stateChangeCounts = self->_stateChangeCounts;
  if (stateChangeCounts)
  {
    v7 = MEMORY[0x277CCABB0];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v8 = [(NSMutableDictionary *)stateChangeCounts objectForKeyedSubscript:v14];
    v9 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue") + 1}];
    v10 = self->_stateChangeCounts;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];

    v12 = v14;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v12 = self->_stateChangeCounts;
    self->_stateChangeCounts = v13;
  }
}

- (void)accumulateRenderHistogram:(id)a3
{
  v55 = a3;
  renderedFrameCount = self->_renderedFrameCount;
  self->_renderedFrameCount = renderedFrameCount + [v55 totalCount];
  [v55 presentationDuration];
  self->_renderedPartialMinuteCount = (ceil(v5 / 60.0) + self->_renderedPartialMinuteCount);
  v6 = [v55 presentationTimeHistogram];
  v7 = [v6 count];
  v8 = v7;
  if (v7 > 2)
  {
    if (v7 <= 4)
    {
      if (v7 == 3)
      {
LABEL_17:
        v14 = [v6 objectAtIndexedSubscript:2];
        self->_renderedFrames2to3Min += [v14 unsignedIntegerValue];

        goto LABEL_18;
      }

LABEL_16:
      v13 = [v6 objectAtIndexedSubscript:3];
      self->_renderedFrames3to4Min += [v13 unsignedIntegerValue];

      goto LABEL_17;
    }

    if (v7 == 5)
    {
LABEL_15:
      v12 = [v6 objectAtIndexedSubscript:4];
      self->_renderedFrames4to5Min += [v12 unsignedIntegerValue];

      goto LABEL_16;
    }

    if (v7 == 6)
    {
LABEL_14:
      v11 = [v6 objectAtIndexedSubscript:5];
      self->_renderedFrames5to6Min += [v11 unsignedIntegerValue];

      goto LABEL_15;
    }

LABEL_11:
    if (v7 >= 7)
    {
      v9 = 6;
      do
      {
        v10 = [v6 objectAtIndexedSubscript:v9];
        self->_renderedFramesMoreThan6Min += [v10 unsignedIntegerValue];

        ++v9;
      }

      while (v8 != v9);
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
LABEL_18:
      v15 = [v6 objectAtIndexedSubscript:1];
      self->_renderedFrames1to2Min += [v15 unsignedIntegerValue];

      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_19:
  v16 = [v6 objectAtIndexedSubscript:0];
  self->_renderedFramesLessThan1Min += [v16 unsignedIntegerValue];

LABEL_20:
  minimumAPL = self->_minimumAPL;
  v18 = MEMORY[0x277CCABB0];
  [v55 lowestAPL];
  v19 = [v18 numberWithFloat:?];
  v20 = NSNumberDoubleMin(minimumAPL, v19);
  v21 = self->_minimumAPL;
  self->_minimumAPL = v20;

  maximumAPL = self->_maximumAPL;
  v23 = MEMORY[0x277CCABB0];
  [v55 highestAPL];
  v24 = [v23 numberWithFloat:?];
  v25 = NSNumberDoubleMax(maximumAPL, v24);
  v26 = self->_maximumAPL;
  self->_maximumAPL = v25;

  [v55 averageAPL];
  v28 = v27;
  if (self->_averageAPL)
  {
    averageAPL = self->_averageAPL;
  }

  else
  {
    averageAPL = &unk_28336F780;
  }

  [(NSNumber *)averageAPL doubleValue];
  v31 = v30;
  if ([v55 totalCount])
  {
    v32 = MEMORY[0x277CCABB0];
    v33 = [v55 totalCount];
    v34 = [v32 numberWithDouble:v33 / (renderedFrameCount + v33) * v28 + renderedFrameCount / (renderedFrameCount + v33) * v31];
    v35 = self->_averageAPL;
    self->_averageAPL = v34;
  }

  minimumAPLDimming = self->_minimumAPLDimming;
  v37 = MEMORY[0x277CCABB0];
  [v55 lowestAPLDimming];
  v38 = [v37 numberWithFloat:?];
  v39 = NSNumberDoubleMin(minimumAPLDimming, v38);
  v40 = self->_minimumAPLDimming;
  self->_minimumAPLDimming = v39;

  maximumAPLDimming = self->_maximumAPLDimming;
  v42 = MEMORY[0x277CCABB0];
  [v55 highestAPLDimming];
  v43 = [v42 numberWithFloat:?];
  v44 = NSNumberDoubleMax(maximumAPLDimming, v43);
  v45 = self->_maximumAPLDimming;
  self->_maximumAPLDimming = v44;

  [v55 averageAPLDimming];
  v47 = v46;
  if (self->_averageAPLDimming)
  {
    averageAPLDimming = self->_averageAPLDimming;
  }

  else
  {
    averageAPLDimming = &unk_28336F780;
  }

  [(NSNumber *)averageAPLDimming doubleValue];
  v50 = v49;
  if ([v55 totalCount])
  {
    v51 = MEMORY[0x277CCABB0];
    v52 = [v55 totalCount];
    v53 = [v51 numberWithDouble:v52 / (renderedFrameCount + v52) * v47 + renderedFrameCount / (renderedFrameCount + v52) * v50];
    v54 = self->_averageAPLDimming;
    self->_averageAPLDimming = v53;
  }
}

- (void)accumulateInvalidationHistogram:(id)a3
{
  v4 = a3;
  v5 = [v4 totalCount];
  v6 = [v4 countLessThan1Min];
  v7 = v5 - (v6 + [v4 count1to2Min]);
  v8 = v7 - [v4 count2to3Min];
  v9 = v8 - [v4 count3to4Min];
  LODWORD(v6) = [v4 count4to5Min];

  v10 = self->_invalidatedFramesUpTo3mStale + v7;
  self->_invalidatedFramesUpTo2mStale += v5;
  self->_invalidatedFramesUpTo3mStale = v10;
  v11 = self->_invalidatedFramesUpTo5mStale + v9;
  self->_invalidatedFramesUpTo4mStale += v8;
  self->_invalidatedFramesUpTo5mStale = v11;
  self->_invalidatedFramesUpTo6mStale += v9 - v6;
}

- (void)accumulateDiscardHistogram:(id)a3
{
  v4 = a3;
  v5 = [v4 totalCount];
  v6 = [v4 countLessThan1Min];
  v7 = v5 - (v6 + [v4 count1to2Min]);
  v8 = v7 - [v4 count2to3Min];
  v9 = v8 - [v4 count3to4Min];
  LODWORD(v6) = [v4 count4to5Min];

  v10 = self->_discardedFramesUpTo3mStale + v7;
  self->_discardedFramesUpTo2mStale += v5;
  self->_discardedFramesUpTo3mStale = v10;
  v11 = self->_discardedFramesUpTo5mStale + v9;
  self->_discardedFramesUpTo4mStale += v8;
  self->_discardedFramesUpTo5mStale = v11;
  self->_discardedFramesUpTo6mStale += v9 - v6;
}

- (void)accumulatePresentationSources:(id)a3
{
  v4 = a3;
  presentationSources = self->_presentationSources;
  v8 = v4;
  if (!presentationSources)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_presentationSources;
    self->_presentationSources = v6;

    v4 = v8;
    presentationSources = self->_presentationSources;
  }

  [(NSMutableSet *)presentationSources unionSet:v4];
}

- (id)dataForPowerlogEvent:(id)a3
{
  v52[31] = *MEMORY[0x277D85DE8];
  if (![a3 isEqualToString:@"FlipbookStatistics"])
  {
    v4 = 0;
    goto LABEL_3;
  }

  v6 = [(SBAlwaysOnTelemetryMetrics *)self _timeForBacklightState:?];
  v7 = v6 + [(SBAlwaysOnTelemetryMetrics *)self _timeForBacklightState:?];
  v8 = v7 + [(SBAlwaysOnTelemetryMetrics *)self _timeForBacklightState:?];
  v51[0] = @"contentIdentifiers";
  v9 = [(NSMutableSet *)self->_presentationSources allObjects];
  v10 = MEMORY[0x277CBEBF8];
  v50 = v9;
  if (v9)
  {
    v10 = v9;
  }

  v52[0] = v10;
  v51[1] = @"invalidatedFramesUpTo2mStale";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_invalidatedFramesUpTo2mStale];
  v52[1] = v49;
  v51[2] = @"invalidatedFramesUpTo3mStale";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_invalidatedFramesUpTo3mStale];
  v52[2] = v48;
  v51[3] = @"invalidatedFramesUpTo4mStale";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_invalidatedFramesUpTo4mStale];
  v52[3] = v47;
  v51[4] = @"invalidatedFramesUpTo5mStale";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_invalidatedFramesUpTo5mStale];
  v52[4] = v46;
  v51[5] = @"invalidatedFramesUpTo6mStale";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_invalidatedFramesUpTo6mStale];
  v52[5] = v45;
  v51[6] = @"discardedFramesUpTo2mStale";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_discardedFramesUpTo2mStale];
  v52[6] = v44;
  v51[7] = @"discardedFramesUpTo3mStale";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_discardedFramesUpTo3mStale];
  v52[7] = v43;
  v51[8] = @"discardedFramesUpTo4mStale";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_discardedFramesUpTo4mStale];
  v52[8] = v42;
  v51[9] = @"discardedFramesUpTo5mStale";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_discardedFramesUpTo5mStale];
  v52[9] = v41;
  v51[10] = @"discardedFramesUpTo6mStale";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_discardedFramesUpTo6mStale];
  v52[10] = v40;
  v51[11] = @"renderedFramesLessThan1Min";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFramesLessThan1Min];
  v52[11] = v39;
  v51[12] = @"renderedFrames1to2Min";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrames1to2Min];
  v52[12] = v38;
  v51[13] = @"renderedFrames2to3Min";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrames2to3Min];
  v52[13] = v37;
  v51[14] = @"renderedFrames3to4Min";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrames3to4Min];
  v52[14] = v36;
  v51[15] = @"renderedFrames4to5Min";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrames4to5Min];
  v52[15] = v35;
  v51[16] = @"renderedFrames5to6Min";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrames5to6Min];
  v52[16] = v34;
  v51[17] = @"renderedFramesMoreThan6Min";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFramesMoreThan6Min];
  v52[17] = v33;
  v51[18] = @"renderedFrameCount";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedFrameCount];
  v52[18] = v32;
  v51[19] = @"renderedPartialMinuteCount";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_renderedPartialMinuteCount];
  v52[19] = v31;
  v51[20] = @"millisecondsDisplayOff";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SBAlwaysOnTelemetryMetrics _timeForBacklightState:](self, 0) * 1000.0}];
  v52[20] = v30;
  v51[21] = @"millisecondsDisplayOn";
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SBAlwaysOnTelemetryMetrics _timeForBacklightState:](self, 5) * 1000.0}];
  v52[21] = v29;
  v51[22] = @"millisecondsDisplayDimmed";
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SBAlwaysOnTelemetryMetrics _timeForBacklightState:](self, 6) * 1000.0}];
  v52[22] = v28;
  v51[23] = @"millisecondsShowingAOT";
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v8 * 1000.0];
  v52[23] = v27;
  v51[24] = @"millisecondsSuppressed";
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SBAlwaysOnTelemetryMetrics _timeForBacklightState:](self, 1) * 1000.0}];
  v52[24] = v26;
  v51[25] = @"averageAPL";
  averageAPL = self->_averageAPL;
  v25 = averageAPL;
  if (!averageAPL)
  {
    averageAPL = [MEMORY[0x277CBEB68] null];
  }

  v24 = averageAPL;
  v52[25] = averageAPL;
  v51[26] = @"minimumAPL";
  minimumAPL = self->_minimumAPL;
  v13 = minimumAPL;
  if (!minimumAPL)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v13;
  v52[26] = v13;
  v51[27] = @"maximumAPL";
  maximumAPL = self->_maximumAPL;
  v15 = maximumAPL;
  if (!maximumAPL)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v52[27] = v15;
  v51[28] = @"averageAPLDimming";
  averageAPLDimming = self->_averageAPLDimming;
  v17 = averageAPLDimming;
  if (!averageAPLDimming)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v52[28] = v17;
  v51[29] = @"minimumAPLDimming";
  minimumAPLDimming = self->_minimumAPLDimming;
  v19 = minimumAPLDimming;
  if (!minimumAPLDimming)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v52[29] = v19;
  v51[30] = @"maximumAPLDimming";
  maximumAPLDimming = self->_maximumAPLDimming;
  v21 = maximumAPLDimming;
  if (!maximumAPLDimming)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v52[30] = v21;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:{31, v22}];
  if (maximumAPLDimming)
  {
    if (minimumAPLDimming)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (minimumAPLDimming)
    {
LABEL_22:
      if (averageAPLDimming)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  if (averageAPLDimming)
  {
LABEL_23:
    if (maximumAPL)
    {
      goto LABEL_24;
    }

LABEL_31:

    if (minimumAPL)
    {
      goto LABEL_25;
    }

LABEL_32:

    goto LABEL_25;
  }

LABEL_30:

  if (!maximumAPL)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (!minimumAPL)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (!v25)
  {
  }

LABEL_3:

  return v4;
}

- (id)dataForAnalyticsEvent:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.springboard.alwayson.flipbookstatistics"])
  {
    v4 = [(SBAlwaysOnTelemetryMetrics *)self dataForPowerlogEvent:@"FlipbookStatistics"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_SBMachContinuousStopwatch)_stopWatchForBacklightState:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v6 = objc_alloc_init(_SBMachContinuousStopwatch);
      v7 = *(a1 + 8);
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_activateStopWatch:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v7 = *(a1 + 24);
    v5 = (a1 + 24);
    v6 = v7;
    if (v7 != v4)
    {
      v10 = v4;
      if (v6)
      {
        v8 = mach_continuous_time();
        v6[8] = 0;
        *(v6 + 3) += v8 - *(v6 + 2);
      }

      objc_storeStrong(v5, a2);
      v9 = *v5;
      v4 = v10;
      if (v9)
      {
        v9[8] = 1;
        *(v9 + 2) = mach_continuous_time();
        v4 = v10;
      }
    }
  }
}

- (double)_timeForBacklightState:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [(_SBMachContinuousStopwatch *)v4 activeTime];

  return v5;
}

@end