@interface PLMetric
+ (unint64_t)binDurationValue:(int)value;
- (PLMetric)initWithKey:(id)key withPosition:(unint64_t)position withNumBits:(int)bits withDefault:(int)default andType:(signed __int16)type;
- (unint64_t)getBinnedMetricValue;
- (void)constructMetricValueForInterval:(id)interval;
- (void)resetMetric;
- (void)updateMetricWithTimestamp:(id)timestamp forEvent:(signed __int16)event withValue:(int)value;
@end

@implementation PLMetric

- (PLMetric)initWithKey:(id)key withPosition:(unint64_t)position withNumBits:(int)bits withDefault:(int)default andType:(signed __int16)type
{
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = PLMetric;
  v14 = [(PLMetric *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_metricKey, key);
    v15->_metricType = type;
    lastOnTimestamp = v15->_lastOnTimestamp;
    v15->_lastOnTimestamp = 0;

    v15->_bitPosition = position;
    v15->_metricValue = default;
    v15->_numBits = bits;
    v15->_defaultValue = default;
  }

  return v15;
}

- (void)resetMetric
{
  lastOnTimestamp = self->_lastOnTimestamp;
  self->_lastOnTimestamp = 0;

  self->_metricValue = self->_defaultValue;
}

- (void)updateMetricWithTimestamp:(id)timestamp forEvent:(signed __int16)event withValue:(int)value
{
  eventCopy = event;
  v30 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  metricType = [(PLMetric *)self metricType];
  if (metricType == 2)
  {
    if (eventCopy == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (metricType == 1)
  {
    if (!eventCopy)
    {
      goto LABEL_29;
    }

    if (eventCopy == 2)
    {
      if (self->_lastOnTimestamp)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    if (eventCopy != 1)
    {
      goto LABEL_30;
    }

    objc_storeStrong(&self->_lastOnTimestamp, timestamp);
LABEL_14:
    self->_metricValue = value;
    goto LABEL_30;
  }

  if (!metricType)
  {
    if (eventCopy)
    {
      if (eventCopy != 2)
      {
        if (eventCopy == 1)
        {
          lastOnTimestamp = self->_lastOnTimestamp;
          p_lastOnTimestamp = &self->_lastOnTimestamp;
          if (!lastOnTimestamp)
          {
            objc_storeStrong(p_lastOnTimestamp, timestamp);
          }
        }

        goto LABEL_30;
      }

      if (self->_lastOnTimestamp)
      {
        objc_storeStrong(&self->_lastOnTimestamp, timestamp);
      }

LABEL_26:
      self->_metricValue = self->_defaultValue;
      goto LABEL_30;
    }

    if (!self->_lastOnTimestamp)
    {
      goto LABEL_30;
    }

    [timestampCopy timeIntervalSinceDate:?];
    self->_metricValue = (v20 + self->_metricValue);
LABEL_29:
    v21 = self->_lastOnTimestamp;
    self->_lastOnTimestamp = 0;

    goto LABEL_30;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __57__PLMetric_updateMetricWithTimestamp_forEvent_withValue___block_invoke;
    v26 = &__block_descriptor_40_e5_v8__0lu32l8;
    v27 = v13;
    if (qword_2811F4EB8 != -1)
    {
      dispatch_once(&qword_2811F4EB8, &block);
    }

    if (_MergedGlobals_1_39 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Unrecognized metric type %d!", self->_metricType, block, v24, v25, v26, v27];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetric updateMetricWithTimestamp:forEvent:withValue:]"];
      [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:205];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_30:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLMetric_updateMetricWithTimestamp_forEvent_withValue___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_39 = result;
  return result;
}

- (void)constructMetricValueForInterval:(id)interval
{
  v18 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = intervalCopy;
  if (!self->_metricType && self->_lastOnTimestamp)
  {
    [intervalCopy timeIntervalSinceDate:?];
    if (v7 < 0)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v8 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __44__PLMetric_constructMetricValueForInterval___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v8;
        if (qword_2811F4EC0 != -1)
        {
          dispatch_once(&qword_2811F4EC0, block);
        }

        if (byte_2811F4EA9 == 1)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Event starting at %@ does not belong to interval %@", self->_lastOnTimestamp, v5];
          v10 = MEMORY[0x277D3F178];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAggregateUsageService.m"];
          lastPathComponent = [v11 lastPathComponent];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMetric constructMetricValueForInterval:]"];
          [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:216];

          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v17 = v9;
            _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      self->_metricValue += v7;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLMetric_constructMetricValueForInterval___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EA9 = result;
  return result;
}

- (unint64_t)getBinnedMetricValue
{
  v3 = ldexp(1.0, self->_numBits);
  if (self->_metricType)
  {
    v4 = (v3 + -1.0);
    if ([(NSString *)self->_metricKey isEqualToString:@"ChargerCurrent"])
    {
      metricValue = self->_metricValue;
      if (metricValue)
      {
        if (metricValue <= 2999)
        {
          v6 = 1374389535 * metricValue;
          v7 = v6 >> 63;
          v8 = v6 >> 37;
          return v8 + v7 + 1;
        }

        return v4;
      }

      return 0;
    }

    if ([(NSString *)self->_metricKey isEqualToString:@"ChargerVoltage"])
    {
      v11 = self->_metricValue;
      if (v11)
      {
        if (v11 <= 19999)
        {
          v12 = 274877907 * v11;
          v7 = v12 >> 63;
          v8 = v12 >> 38;
          return v8 + v7 + 1;
        }

        return v4;
      }

      return 0;
    }

    if ([(NSString *)self->_metricKey isEqualToString:@"BatteryTemperature"])
    {
      v13 = self->_metricValue;

      return [PLMetric binBatteryTemperature:v13];
    }

    else if (self->_metricValue >= v4)
    {
      return v4;
    }

    else
    {
      return self->_metricValue;
    }
  }

  else
  {
    v9 = self->_metricValue;

    return [PLMetric binDurationValue:v9, v3];
  }
}

uint64_t __34__PLMetric_binBatteryTemperature___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4EAA = result;
  return result;
}

+ (unint64_t)binDurationValue:(int)value
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  v7 = 5;
  v8 = 6;
  if (value >= 0x384)
  {
    v8 = 7;
  }

  if (value >= 0x258)
  {
    v7 = v8;
  }

  if (value >= 0x12C)
  {
    v6 = v7;
  }

  if (value >= 0x78)
  {
    v5 = v6;
  }

  if (value >= 0x3C)
  {
    v4 = v5;
  }

  if (value >= 10)
  {
    v3 = v4;
  }

  if (value)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end