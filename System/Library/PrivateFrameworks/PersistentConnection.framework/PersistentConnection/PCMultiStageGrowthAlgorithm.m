@interface PCMultiStageGrowthAlgorithm
+ (void)_loadDefaultValue:(double *)a3 forKey:(__CFString *)a4;
+ (void)_loadDefaults;
- (BOOL)useIntervalIfImprovement:(double)a3;
- (NSDictionary)cacheInfo;
- (NSString)description;
- (PCMultiStageGrowthAlgorithm)initWithCacheInfo:(id)a3 loggingIdentifier:(id)a4 algorithmName:(id)a5;
- (_PCTimeRange)signalAvoidanceRange;
- (double)_steadyStateTimeout;
- (double)maximumKeepAliveInterval;
- (double)minimumKeepAliveInterval;
- (id)_stringForAction:(int)a3;
- (id)_stringForMode:(int)a3;
- (id)_stringForStage:(int)a3;
- (void)_adjustGrowthAlgorithmMode;
- (void)_fallbackToLastSuccessfulKeepAliveInterval;
- (void)_processBackoffAction:(int)a3;
- (void)_processInitialGrowthAction:(int)a3;
- (void)_processInitialShrinkAction:(int)a3;
- (void)_processRefinedGrowthAction:(int)a3;
- (void)_processRefinedShrinkAction:(int)a3;
- (void)_setCurrentKeepAliveInterval:(double)a3 varianceMode:(unsigned int)a4 allowRoundUp:(BOOL)a5;
- (void)setLastSuccessfulKeepAliveInterval:(double)a3;
- (void)setMaximumKeepAliveInterval:(double)a3;
- (void)setMinimumIntervalFallbackEnabled:(BOOL)a3;
- (void)setMinimumKeepAliveInterval:(double)a3;
@end

@implementation PCMultiStageGrowthAlgorithm

- (PCMultiStageGrowthAlgorithm)initWithCacheInfo:(id)a3 loggingIdentifier:(id)a4 algorithmName:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[PCMultiStageGrowthAlgorithm _loadDefaults];
  v27.receiver = self;
  v27.super_class = PCMultiStageGrowthAlgorithm;
  v11 = [(PCMultiStageGrowthAlgorithm *)&v27 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"multiStateGrowth.%@", v9];
    v13 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [v12 UTF8String]);
    v14 = *(v11 + 15);
    *(v11 + 15) = v13;

    v15 = [v10 copy];
    v16 = *(v11 + 13);
    *(v11 + 13) = v15;

    v17 = PCDefaultMaximumKeepAliveInterval;
    *(v11 + 2) = PCDefaultMinimumKeepAliveInterval;
    *(v11 + 3) = v17;
    *(v11 + 45) = 0;
    *(v11 + 18) = 0;
    *(v11 + 19) = 0;
    *(v11 + 20) = 0;
    *(v11 + 21) = 0x40F5180000000000;
    if (v8)
    {
      v18 = [v8 objectForKey:@"keepAliveInterval"];
      [v18 doubleValue];
      v20 = v19;

      v21 = [v8 objectForKey:@"inInitialGrowth"];
      v22 = [v21 BOOLValue];

      v23 = *(v11 + 15);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"NO";
        *buf = 134218498;
        v29 = v20;
        v30 = 2114;
        if (v22)
        {
          v24 = @"YES";
        }

        v31 = v24;
        v32 = 2114;
        v33 = v8;
        _os_log_impl(&dword_25E3EF000, v23, OS_LOG_TYPE_DEFAULT, "Using cached keep alive interval of %g seconds inInitialGrowth? %{public}@ from [%{public}@]", buf, 0x20u);
      }

      if (v22)
      {
        [v11 _resetAlgorithmToInterval:0 stage:v20];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v20 = 0.0;
    }

    [v11 _resetAlgorithmToInterval:v20];
    goto LABEL_11;
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (double)maximumKeepAliveInterval
{
  result = self->_serverStatsMaxKeepAliveInterval;
  if (result <= 0.0)
  {
    return self->_maximumKeepAliveInterval;
  }

  return result;
}

- (double)minimumKeepAliveInterval
{
  result = self->_serverStatsMinKeepAliveInterval;
  if (result <= 0.0)
  {
    return self->_minimumKeepAliveInterval;
  }

  return result;
}

- (void)setMaximumKeepAliveInterval:(double)a3
{
  self->_maximumKeepAliveInterval = a3;
  [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
  if (v5 > a3)
  {
    [(PCMultiStageGrowthAlgorithm *)self setMinimumKeepAliveInterval:a3];
  }

  [(PCMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
}

- (void)setMinimumKeepAliveInterval:(double)a3
{
  self->_minimumKeepAliveInterval = a3;
  [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
  if (v5 < a3)
  {
    [(PCMultiStageGrowthAlgorithm *)self setMaximumKeepAliveInterval:a3];
  }

  [(PCMultiStageGrowthAlgorithm *)self currentKeepAliveInterval];

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
}

- (void)_setCurrentKeepAliveInterval:(double)a3 varianceMode:(unsigned int)a4 allowRoundUp:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v8 = *&PCDefaultInitialKeepAliveInterval;
  }

  else
  {
    v8 = a3;
  }

  [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
  if (v8 < v9)
  {
    [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
LABEL_8:
    v8 = v10;
    a4 = 0;
    goto LABEL_9;
  }

  [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
  if (v8 > v11)
  {
    [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
    goto LABEL_8;
  }

LABEL_9:
  duration = self->_signalAvoidanceRange.duration;
  if (duration == 0.0 || ((v13 = self->_signalAvoidanceRange.start, v14 = v13 + duration, v13 != 0.0) ? (v15 = v13 < v8) : (v15 = 0), v15 ? (v16 = v14 <= v8) : (v16 = 1), v16))
  {
    start = v8;
  }

  else
  {
    growthStage = self->_growthStage;
    v24 = 0.5;
    if (growthStage <= 6)
    {
      v24 = dbl_25E416230[growthStage];
    }

    if (v5)
    {
      currentKeepAliveInterval = self->_currentKeepAliveInterval;
      v26 = (v8 - v13) / duration;
      if (v8 <= currentKeepAliveInterval)
      {
        if (v26 <= v24)
        {
          start = self->_signalAvoidanceRange.start;
        }

        else
        {
          if (v14 >= currentKeepAliveInterval)
          {
            v28 = self->_currentKeepAliveInterval;
          }

          else
          {
            v28 = v14;
          }

          if (v14 == currentKeepAliveInterval)
          {
            start = self->_signalAvoidanceRange.start;
          }

          else
          {
            start = v28;
          }
        }
      }

      else
      {
        start = v14;
        if (v26 <= v24)
        {
          v27 = v13 == currentKeepAliveInterval;
          if (v13 < currentKeepAliveInterval)
          {
            v13 = self->_currentKeepAliveInterval;
          }

          if (v27)
          {
            start = v14;
          }

          else
          {
            start = v13;
          }
        }
      }

      [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
      if (start <= v29)
      {
        [(PCMultiStageGrowthAlgorithm *)self minimumKeepAliveInterval];
        if (start < v30)
        {
          start = v14;
        }
      }

      else
      {
        start = self->_signalAvoidanceRange.start;
      }
    }

    else
    {
      start = self->_signalAvoidanceRange.start;
    }

    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v32 = self->_signalAvoidanceRange.start;
      v33 = self->_signalAvoidanceRange.duration;
      v34 = 138413570;
      v35 = self;
      v36 = 2048;
      v37 = v8;
      v38 = 2048;
      v39 = start;
      v40 = 2048;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      v44 = 2048;
      v45 = v24;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@: triggered signaling avoidance {interval: %g, adjustedInterval: %g, _signalAvoidanceRange.start: %g, _signalAvoidanceRange.duration: %g, roundUpRatio: %g}", &v34, 0x3Eu);
    }
  }

  if (a4 == 2)
  {
    v19 = arc4random();
    start = start - -(*&PCIncrementRandomVariance - (v19 / 4294967300.0 + v19 / 4294967300.0) * *&PCIncrementRandomVariance);
  }

  else if (a4 == 1)
  {
    v18 = arc4random();
    start = start - (*&PCIncrementRandomVariance - (v18 / 4294967300.0 + v18 / 4294967300.0) * *&PCIncrementRandomVariance);
  }

  if (self->_currentKeepAliveInterval != start)
  {
    v20 = self->_logObject;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      algorithmName = self->_algorithmName;
      v34 = 138543618;
      v35 = algorithmName;
      v36 = 2048;
      v37 = start;
      _os_log_impl(&dword_25E3EF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: setting current interval to %g seconds", &v34, 0x16u);
    }

    self->_lastKeepAliveInterval = self->_currentKeepAliveInterval;
    self->_currentKeepAliveInterval = start;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setLastSuccessfulKeepAliveInterval:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_lastSuccessfulKeepAliveInterval != a3)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      algorithmName = self->_algorithmName;
      v8 = 138543618;
      v9 = algorithmName;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: setting lastSuccessfulKeepAliveInterval to %g seconds", &v8, 0x16u);
    }

    self->_lastSuccessfulKeepAliveInterval = a3;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fallbackToLastSuccessfulKeepAliveInterval
{
  lastSuccessfulKeepAliveInterval = self->_lastSuccessfulKeepAliveInterval;
  if (lastSuccessfulKeepAliveInterval > 2.22044605e-16 && lastSuccessfulKeepAliveInterval < self->_currentKeepAliveInterval)
  {
    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:?];
  }
}

- (void)setMinimumIntervalFallbackEnabled:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_minimumIntervalFallbackEnabled != a3)
  {
    v3 = a3;
    self->_minimumIntervalFallbackEnabled = a3;
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ minimumIntervalFallbackEnabled changed to %@", &v9, 0x16u);
    }

    if (!self->_minimumIntervalFallbackEnabled)
    {
      leaveMinimumIntervalFallbackStateDate = self->_leaveMinimumIntervalFallbackStateDate;
      if (leaveMinimumIntervalFallbackStateDate)
      {
        self->_leaveMinimumIntervalFallbackStateDate = 0;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)useIntervalIfImprovement:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    lastKeepAliveInterval = self->_lastKeepAliveInterval;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    v13 = 138544130;
    v14 = self;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = lastKeepAliveInterval;
    v19 = 2048;
    v20 = currentKeepAliveInterval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: useIntervalIfImprovement %f   lastKeepAliveInterval: %f  currentKeepAliveInterval: %f", &v13, 0x2Au);
  }

  v8 = self->_lastKeepAliveInterval;
  if (v8 >= self->_currentKeepAliveInterval || v8 <= 2.22044605e-16)
  {
    v10 = self->_currentKeepAliveInterval;
  }

  else
  {
    v10 = self->_lastKeepAliveInterval;
  }

  if (v10 < a3)
  {
    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:0 allowRoundUp:a3];
  }

  result = v10 < a3;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDictionary)cacheInfo
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentKeepAliveInterval];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_growthStage == 0];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v3 initWithObjectsAndKeys:{v4, @"keepAliveInterval", v5, @"inInitialGrowth", v6, @"cacheDate", 0}];

  return v7;
}

- (void)_adjustGrowthAlgorithmMode
{
  v17 = *MEMORY[0x277D85DE8];
  lastKeepAliveAlgorithmMode = self->_lastKeepAliveAlgorithmMode;
  if (lastKeepAliveAlgorithmMode == 2)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= 2.22044605e-16)
    {
      if (self->_usingServerStatsAggressively)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (lastKeepAliveAlgorithmMode == 1)
  {
    if (self->_usingServerStatsAggressively)
    {
      goto LABEL_8;
    }

    if (self->_serverStatsExpectedKeepAliveInterval >= 2.22044605e-16)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  if (lastKeepAliveAlgorithmMode)
  {
    goto LABEL_15;
  }

  if (!self->_usingServerStatsAggressively)
  {
    if (self->_serverStatsExpectedKeepAliveInterval <= 2.22044605e-16)
    {
      goto LABEL_15;
    }

    [(PCMultiStageGrowthAlgorithm *)self _resetAlgorithmToInterval:2 stage:?];
LABEL_11:
    v4 = 1;
    goto LABEL_14;
  }

LABEL_8:
  [(PCMultiStageGrowthAlgorithm *)self _resetAlgorithmToInterval:5 stage:self->_serverStatsMaxKeepAliveInterval];
  v4 = 2;
LABEL_14:
  self->_currentKeepAliveAlgorithmMode = v4;
LABEL_15:
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_lastKeepAliveAlgorithmMode;
    v7 = logObject;
    v8 = [(PCMultiStageGrowthAlgorithm *)self _stringForMode:v6];
    v9 = [(PCMultiStageGrowthAlgorithm *)self _stringForMode:self->_currentKeepAliveAlgorithmMode];
    v11 = 138543874;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: adjustGrowthAlgorithmMode. {lastMode: %@, currentMode: %@}", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processInitialGrowthAction:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      currentKeepAliveInterval = self->_currentKeepAliveInterval;
      [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      logObject = self->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        algorithmName = self->_algorithmName;
        v16 = 138543362;
        v17 = algorithmName;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: leaving the initial growth stage for refined growth", &v16, 0xCu);
      }

      self->_growthStage = 1;
      [(PCMultiStageGrowthAlgorithm *)self processNextAction:self->_currentKeepAliveInterval >= currentKeepAliveInterval];
    }

    else if (!a3)
    {
      v4 = self->_currentKeepAliveInterval;
      [(PCMultiStageGrowthAlgorithm *)self maximumKeepAliveInterval];
      if (v4 >= v5)
      {
        self->_growthStage = 2;
      }

      v6 = self->_currentKeepAliveInterval;
      v7 = (v6 + *&PCInitialGrowthIncrement);
      if (v6 > self->_highWatermark)
      {
        self->_highWatermark = v6;
      }

      v8 = v7;
      if (self->_initialGrowthStageHighWatermark < v7)
      {
        self->_initialGrowthStageLastAttempt = v8;
      }

      if (self->_currentKeepAliveAlgorithmMode == 1)
      {
        [(PCMultiStageGrowthAlgorithm *)self serverStatsExpectedKeepAliveInterval];
        if (v9 < v8)
        {
          self->_growthStage = 1;
        }
      }

      v10 = *MEMORY[0x277D85DE8];

      [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:1 varianceMode:v8];
      return;
    }

LABEL_23:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!self->_isServerOriginatedKeepAlive)
  {
    goto LABEL_23;
  }

  v14 = *MEMORY[0x277D85DE8];

  [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
}

- (void)_processBackoffAction:(int)a3
{
  switch(a3)
  {
    case 2:
      if (self->_isServerOriginatedKeepAlive)
      {
        [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      }

      break;
    case 1:
      [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:0 varianceMode:self->_currentKeepAliveInterval * *&PCBackoffMultiple];
      break;
    case 0:
      self->_growthStage = 0;
      [(PCMultiStageGrowthAlgorithm *)self processNextAction:?];
      break;
  }
}

- (void)_processRefinedGrowthAction:(int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    if (self->_isServerOriginatedKeepAlive)
    {
      v11 = *MEMORY[0x277D85DE8];

      [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
      return;
    }

LABEL_25:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a3 == 1)
  {
    [(PCMultiStageGrowthAlgorithm *)self _fallbackToLastSuccessfulKeepAliveInterval];
    self->_growthStage = 2;
    v10 = *MEMORY[0x277D85DE8];

    [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
    return;
  }

  if (a3)
  {
    goto LABEL_25;
  }

  currentKeepAliveInterval = self->_currentKeepAliveInterval;
  if (self->_currentKeepAliveAlgorithmMode != 1)
  {
    initialGrowthStageLastAttempt = self->_initialGrowthStageLastAttempt;
    if (currentKeepAliveInterval >= initialGrowthStageLastAttempt && initialGrowthStageLastAttempt > 2.22044605e-16)
    {
      logObject = self->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        algorithmName = self->_algorithmName;
        v15 = self->_initialGrowthStageLastAttempt;
        v17 = 138543618;
        v18 = algorithmName;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: surpassed where the previous initial growth stopped at %g; reverting to initial growth.", &v17, 0x16u);
      }

      self->_growthStage = 0;
      [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
      goto LABEL_25;
    }
  }

  if (currentKeepAliveInterval > self->_highWatermark)
  {
    self->_highWatermark = currentKeepAliveInterval;
  }

  v7 = *&PCRefinedGrowthIncrement;
  v8 = *MEMORY[0x277D85DE8];
  v9 = (currentKeepAliveInterval + *&PCRefinedGrowthIncrement);

  [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:1 varianceMode:v9, v7];
}

- (void)_processInitialShrinkAction:(int)a3
{
  if (a3 == 1)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= (self->_currentKeepAliveInterval + -300.0))
    {
      self->_growthStage = 6;
    }

    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:2 varianceMode:?];
  }

  else if (!a3)
  {
    self->_growthStage = 2;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    if (currentKeepAliveInterval > self->_highWatermark)
    {
      self->_highWatermark = currentKeepAliveInterval;
    }

    [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
  }
}

- (void)_processRefinedShrinkAction:(int)a3
{
  if (a3 == 1)
  {
    if (self->_serverStatsExpectedKeepAliveInterval >= (self->_currentKeepAliveInterval + -120.0))
    {
      self->_growthStage = 6;
    }

    [(PCMultiStageGrowthAlgorithm *)self _setCurrentKeepAliveInterval:2 varianceMode:?];
  }

  else if (!a3)
  {
    self->_growthStage = 2;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    if (currentKeepAliveInterval > self->_highWatermark)
    {
      self->_highWatermark = currentKeepAliveInterval;
    }

    [(PCMultiStageGrowthAlgorithm *)self processNextAction:0];
  }
}

- (double)_steadyStateTimeout
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_currentKeepAliveInterval * 24.0 >= 3600.0)
  {
    v3 = self->_currentKeepAliveInterval * 24.0;
  }

  else
  {
    v3 = 3600.0;
  }

  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    algorithmName = self->_algorithmName;
    currentKeepAliveInterval = self->_currentKeepAliveInterval;
    v9 = 138543874;
    v10 = algorithmName;
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = currentKeepAliveInterval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@: using a steady state timeout of %g for current interval %g", &v9, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (void)_loadDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PCMultiStageGrowthAlgorithm__loadDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_loadDefaults_pred != -1)
  {
    dispatch_once(&_loadDefaults_pred, block);
  }
}

uint64_t __44__PCMultiStageGrowthAlgorithm__loadDefaults__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadDefaultValue:&PCDefaultMinimumKeepAliveInterval forKey:@"PCDefaultMinimumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCDefaultMaximumKeepAliveInterval forKey:@"PCDefaultMaximumKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCDefaultInitialKeepAliveInterval forKey:@"PCDefaultInitialKeepAliveInterval"];
  [*(a1 + 32) _loadDefaultValue:&PCInitialGrowthIncrement forKey:@"PCInitialGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&PCRefinedGrowthIncrement forKey:@"PCRefinedGrowthIncrement"];
  [*(a1 + 32) _loadDefaultValue:&PCIncrementRandomVariance forKey:@"PCIncrementRandomVariance"];
  [*(a1 + 32) _loadDefaultValue:&PCBackoffMultiple forKey:@"PCBackoffMultiple"];
  v2 = *(a1 + 32);

  return [v2 _loadDefaultValue:&PCHighWatermarkThreshold forKey:@"PCHighWatermarkThreshold"];
}

+ (void)_loadDefaultValue:(double *)a3 forKey:(__CFString *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = CFPreferencesCopyAppValue(a4, @"com.apple.persistentconnection");
  if (v6)
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;
    if (v8 > 2.22044605e-16)
    {
      v10 = +[PCLog timer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = a4;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %0.2f", &v12, 0x16u);
      }

      *a3 = v9;
    }

    CFRelease(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PCMultiStageGrowthAlgorithm;
  v4 = [(PCMultiStageGrowthAlgorithm *)&v9 description];
  currentKeepAliveInterval = self->_currentKeepAliveInterval;
  v6 = [(PCMultiStageGrowthAlgorithm *)self _stringForStage:self->_growthStage];
  v7 = [v3 stringWithFormat:@"%@{keep alive interval = %g, state = %@, next recalibration date = %@}", v4, *&currentKeepAliveInterval, v6, self->_leaveSteadyStateDate];

  return v7;
}

- (id)_stringForAction:(int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_279A19DD8[a3];
  }
}

- (id)_stringForStage:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_279A19DF8[a3];
  }
}

- (id)_stringForMode:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_279A19E30[a3];
  }
}

- (_PCTimeRange)signalAvoidanceRange
{
  start = self->_signalAvoidanceRange.start;
  duration = self->_signalAvoidanceRange.duration;
  result.duration = duration;
  result.start = start;
  return result;
}

@end