@interface TISKSessionStats
- (BOOL)isEqual:(id)equal;
- (TISKSessionStats)initWithCoder:(id)coder;
- (id)_roundDownToNearestHalfHour:(id)hour;
- (id)_roundUpToNearestHalfHour:(id)hour;
- (id)_roundedSessionInterval;
- (id)counter:(id)counter;
- (id)description:(BOOL)description;
- (id)generateDataForSR;
- (id)init:(id)init endDate:(id)date identifier:(id)identifier version:(id)version inputMode:(id)mode sessionIds:(id)ids layout:(id)layout;
- (id)samples:(id)samples;
- (id)samples:(id)samples withPosition:(unint64_t)position;
- (void)addSample:(id)sample forKey:(id)key;
- (void)addSample:(id)sample forKey:(id)key withPosition:(unint64_t)position;
- (void)addToDurationForRateMetric:(double)metric forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)haltTypingTimer;
- (void)haltTypingTimerWithEvent:(id)event;
- (void)merge:(id)merge;
- (void)setup;
@end

@implementation TISKSessionStats

- (void)encodeWithCoder:(id)coder
{
  keyedMetrics = self->_keyedMetrics;
  coderCopy = coder;
  [coderCopy encodeObject:keyedMetrics forKey:@"MetricSampleDictionary"];
  [coderCopy encodeObject:self->_startTime forKey:@"StartDateKey"];
  [coderCopy encodeObject:self->_endTime forKey:@"EndDateKey"];
  [coderCopy encodeObject:self->_identifier forKey:@"IdentifierKey"];
  [coderCopy encodeObject:self->_version forKey:@"VersionKey"];
  [coderCopy encodeObject:self->_inputMode forKey:@"InputModeKey"];
  [coderCopy encodeObject:self->_sessionIds forKey:@"SessionIdsKey"];
  [coderCopy encodeObject:self->_layout forKey:@"LayoutKey"];
}

- (TISKSessionStats)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v12 forKey:@"MetricSampleDictionary"];
  keyedMetrics = self->_keyedMetrics;
  self->_keyedMetrics = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDateKey"];
  startTime = self->_startTime;
  self->_startTime = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDateKey"];
  endTime = self->_endTime;
  self->_endTime = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
  identifier = self->_identifier;
  self->_identifier = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VersionKey"];
  version = self->_version;
  self->_version = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InputModeKey"];
  inputMode = self->_inputMode;
  self->_inputMode = v26;

  v28 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SessionIdsKey"];
  sessionIds = self->_sessionIds;
  self->_sessionIds = v28;

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LayoutKey"];

  layout = self->_layout;
  self->_layout = v30;

  return self;
}

- (id)generateDataForSR
{
  v84 = *MEMORY[0x277D85DE8];
  if (!self->_identifier)
  {
    self->_identifier = @"KEYBOARD-digest";
    v3 = IXADefaultLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] _identifier is nil", "-[TISKSessionStats generateDataForSR]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v63;
      _os_log_error_impl(&dword_22CA55000, v3, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }
  }

  if ([(TISKSessionStats *)self _isPublishable])
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v4 = getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationIdentifierKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v5 = SensorKitLibrary_19737();
      v6 = dlsym(v5, "SRKeyboardMetaInformationIdentifierKey");
      *(v83[1] + 24) = v6;
      getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr = *(v83[1] + 24);
      v4 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v4)
    {
      goto LABEL_60;
    }

    v7 = *v4;
    v77[0] = v7;
    v79[0] = self->_identifier;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v8 = getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationVersionKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v9 = SensorKitLibrary_19737();
      v10 = dlsym(v9, "SRKeyboardMetaInformationVersionKey");
      *(v83[1] + 24) = v10;
      getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr = *(v83[1] + 24);
      v8 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v8)
    {
      goto LABEL_60;
    }

    v11 = *v8;
    v77[1] = v11;
    v79[1] = self->_version;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v12 = getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationWidthKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v13 = SensorKitLibrary_19737();
      v14 = dlsym(v13, "SRKeyboardMetaInformationWidthKey");
      *(v83[1] + 24) = v14;
      getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr = *(v83[1] + 24);
      v12 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v12)
    {
      goto LABEL_60;
    }

    v15 = *v12;
    v77[2] = v15;
    v16 = MEMORY[0x277CCABB0];
    [(TIKeyboardLayout *)self->_layout frame];
    [TISKMetricDefinition pointsToMM:v17];
    v18 = [v16 numberWithDouble:?];
    v79[2] = v18;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v19 = getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationHeightKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v20 = SensorKitLibrary_19737();
      v21 = dlsym(v20, "SRKeyboardMetaInformationHeightKey");
      *(v83[1] + 24) = v21;
      getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr = *(v83[1] + 24);
      v19 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v19)
    {
      goto LABEL_60;
    }

    v66 = v15;
    v22 = *v19;
    v77[3] = v22;
    v23 = MEMORY[0x277CCABB0];
    [(TIKeyboardLayout *)self->_layout frame];
    [TISKMetricDefinition pointsToMM:v24];
    v25 = [v23 numberWithDouble:?];
    v79[3] = v25;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v26 = getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationInputModesKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v27 = SensorKitLibrary_19737();
      v28 = dlsym(v27, "SRKeyboardMetaInformationInputModesKey");
      *(v83[1] + 24) = v28;
      getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr = *(v83[1] + 24);
      v26 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v26)
    {
      goto LABEL_60;
    }

    v29 = v11;
    v64 = v7;
    v30 = *v26;
    v77[4] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_inputMode, 0}];
    v79[4] = v31;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v32 = getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr;
    v75 = getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr;
    if (!getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      v33 = SensorKitLibrary_19737();
      v34 = dlsym(v33, "SRKeyboardMetaInformationSessionIdentifiersKey");
      *(v83[1] + 24) = v34;
      getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr = *(v83[1] + 24);
      v32 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v32)
    {
LABEL_60:
      dlerror();
      abort_report_np();
    }

    v78 = *v32;
    sessionIds = self->_sessionIds;
    v36 = v78;
    v37 = [(NSMutableArray *)sessionIds copy];
    v79[5] = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v77 count:6];

    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v39 = getSRKeyboardMetricsClass_softClass;
    v75 = getSRKeyboardMetricsClass_softClass;
    if (!getSRKeyboardMetricsClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v81 = __getSRKeyboardMetricsClass_block_invoke;
      v82 = &unk_278733760;
      v83 = &v72;
      __getSRKeyboardMetricsClass_block_invoke(&buf);
      v39 = v73[3];
    }

    v40 = v39;
    _Block_object_dispose(&v72, 8);
    v41 = [v39 alloc];
    _roundedSessionInterval = [(TISKSessionStats *)self _roundedSessionInterval];
    v67 = [v41 initWithInterval:_roundedSessionInterval metaInformation:v38];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v43 = +[TISKMetricDefinition metricDefinitions];
    v44 = [v43 countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v44)
    {
      v45 = v44;
      v65 = v38;
      v46 = 0;
      v47 = *v69;
      while (1)
      {
        for (i = 0; i != v45; ++i)
        {
          v49 = v46;
          if (*v69 != v47)
          {
            objc_enumerationMutation(v43);
          }

          v46 = *(*(&v68 + 1) + 8 * i);

          keyedMetrics = self->_keyedMetrics;
          metricName = [v46 metricName];
          v52 = [(NSMutableDictionary *)keyedMetrics objectForKey:metricName];

          if (v52)
          {
            metricType = [v46 metricType];
            if (metricType > 1)
            {
              if (metricType == 2)
              {
                rate = [v52 rate];
                [rate doubleValue];
                if (v58 == 0.0)
                {
                  goto LABEL_49;
                }

                mutableScalarMetrics = [v67 mutableScalarMetrics];
LABEL_47:
                metricName3 = mutableScalarMetrics;
                metricName2 = [v46 metricName];
                [metricName3 setObject:rate forKey:metricName2];

LABEL_48:
                goto LABEL_49;
              }

              if (metricType == 3 && ([v52 isEmpty] & 1) == 0)
              {
                rate = [v52 generateDataForSR:v46];
                if (rate)
                {
                  mutableScalarMetrics = [v67 mutablePositionalMetrics];
                  goto LABEL_47;
                }

LABEL_49:
              }
            }

            else
            {
              if (!metricType)
              {
                [v52 doubleValue];
                if (v56 == 0.0)
                {
                  goto LABEL_50;
                }

                rate = [v67 mutableScalarMetrics];
                metricName3 = [v46 metricName];
                [rate setObject:v52 forKey:metricName3];
                goto LABEL_48;
              }

              if (metricType == 1 && ([v52 isEmpty] & 1) == 0)
              {
                rate = [v52 generateDataForSR:v46];
                if (rate)
                {
                  mutableScalarMetrics = [v67 mutableProbabilityMetrics];
                  goto LABEL_47;
                }

                goto LABEL_49;
              }
            }
          }

LABEL_50:
        }

        v45 = [v43 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (!v45)
        {

          v38 = v65;
          break;
        }
      }
    }
  }

  else
  {
    v38 = IXADefaultLogFacility();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISKSessionStats has metadata that resolves to nil and cannot be published", "-[TISKSessionStats generateDataForSR]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v62;
      _os_log_error_impl(&dword_22CA55000, v38, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    v67 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v67;
}

- (id)_roundedSessionInterval
{
  v3 = [(TISKSessionStats *)self _roundDownToNearestHalfHour:self->_startTime];
  v4 = [(TISKSessionStats *)self _roundUpToNearestHalfHour:self->_endTime];
  if ([v4 isEqualToDate:v3])
  {
    v5 = [v3 dateByAddingTimeInterval:1800.0];

    v4 = v5;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 endDate:v4];

  return v6;
}

- (id)_roundDownToNearestHalfHour:(id)hour
{
  v3 = MEMORY[0x277CBEA80];
  hourCopy = hour;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:252 fromDate:hourCopy];

  if ([v6 minute] >= 30)
  {
    v7 = 30;
  }

  else
  {
    v7 = 0;
  }

  [v6 setMinute:v7];
  [v6 setSecond:0];
  v8 = [currentCalendar dateFromComponents:v6];

  return v8;
}

- (id)_roundUpToNearestHalfHour:(id)hour
{
  v3 = MEMORY[0x277CBEA80];
  hourCopy = hour;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:252 fromDate:hourCopy];

  if ([v6 minute] >= 30)
  {
    v7 = 60;
  }

  else
  {
    v7 = 30;
  }

  [v6 setMinute:v7];
  [v6 setSecond:0];
  v8 = [currentCalendar dateFromComponents:v6];

  return v8;
}

- (id)description:(BOOL)description
{
  descriptionCopy = description;
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB68];
  v24.receiver = self;
  v24.super_class = TISKSessionStats;
  v5 = [(TISKSessionStats *)&v24 description];
  v6 = [v4 stringWithString:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(NSMutableDictionary *)self->_keyedMetrics allKeys];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 description];
        }

        else
        {
          v13 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 description];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v12, "intValue")];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_16;
            }

            v14 = [v12 description:descriptionCopy];
          }
        }

        v15 = v14;

        v13 = v15;
LABEL_16:
        [v6 appendFormat:@"%@ %@\n", v11, v13];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)samples:(id)samples withPosition:(unint64_t)position
{
  v5 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:samples];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([v6 size] <= position)
    {
      samples = 0;
    }

    else
    {
      positionalMetricSample = [v6 positionalMetricSample];
      v8 = [positionalMetricSample objectAtIndex:position];
      samples = [v8 samples];
    }
  }

  else
  {
    samples = 0;
  }

  return samples;
}

- (id)samples:(id)samples
{
  v3 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:samples];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    samples = [v3 samples];
  }

  else
  {
    samples = 0;
  }

  return samples;
}

- (id)counter:(id)counter
{
  v3 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:counter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addToDurationForRateMetric:(double)metric forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 addToDuration:metric];
  }
}

- (void)addSample:(id)sample forKey:(id)key
{
  sampleCopy = sample;
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 addSample:sampleCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyedMetrics = self->_keyedMetrics;
      v9 = MEMORY[0x277CCABB0];
      [v7 floatValue];
      v11 = v10;
      [sampleCopy floatValue];
      *&v13 = v11 + v12;
      v14 = [v9 numberWithFloat:v13];
      [(NSMutableDictionary *)keyedMetrics setObject:v14 forKey:keyCopy];
    }
  }

  self->_isEmpty = 0;
}

- (void)addSample:(id)sample forKey:(id)key withPosition:(unint64_t)position
{
  sampleCopy = sample;
  v8 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 addSample:sampleCopy withPosition:position];
  }

  self->_isEmpty = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    startTime = self->_startTime;
    startTime = [(TISKSessionStats *)equalCopy startTime];
    if ([(NSDate *)startTime isEqual:startTime])
    {
      endTime = self->_endTime;
      endTime = [(TISKSessionStats *)v5 endTime];
      if (([(NSDate *)endTime isEqual:endTime]& 1) != 0)
      {
        layout = self->_layout;
        layout = [(TISKSessionStats *)v5 layout];
        if (([(TIKeyboardLayout *)layout isEqual:layout]& 1) != 0)
        {
          version = self->_version;
          version = [(TISKSessionStats *)v5 version];
          if ([(NSString *)version isEqual:version])
          {
            identifier = self->_identifier;
            identifier = [(TISKSessionStats *)v5 identifier];
            if ([(NSString *)identifier isEqual:identifier])
            {
              inputMode = self->_inputMode;
              inputMode = [(TISKSessionStats *)v5 inputMode];
              if ([(NSString *)inputMode isEqual:inputMode])
              {
                sessionIds = self->_sessionIds;
                sessionIds = [(TISKSessionStats *)v5 sessionIds];
                LODWORD(sessionIds) = [(NSMutableArray *)sessionIds isEqual:sessionIds];

                if (!sessionIds)
                {
                  v21 = 0;
                  goto LABEL_18;
                }

                keyedMetrics = self->_keyedMetrics;
                startTime = [(TISKSessionStats *)v5 keyedMetrics];
                v21 = [(NSMutableDictionary *)keyedMetrics isEqual:startTime];
                goto LABEL_17;
              }
            }
          }
        }
      }
    }

    v21 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (void)merge:(id)merge
{
  v47 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  v5 = mergeCopy;
  if (!mergeCopy || ([mergeCopy isEmpty] & 1) != 0)
  {
    goto LABEL_36;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  keyedMetrics = [v5 keyedMetrics];
  allKeys = [keyedMetrics allKeys];

  v39 = [allKeys countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v39)
  {
    goto LABEL_30;
  }

  v8 = *v41;
  v38 = *v41;
  do
  {
    v9 = 0;
    do
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v40 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_keyedMetrics objectForKey:v10];
      keyedMetrics2 = [v5 keyedMetrics];
      v13 = [keyedMetrics2 objectForKey:v10];

      if (!v11)
      {
        [(NSMutableDictionary *)self->_keyedMetrics setObject:v13 forKey:v10];

        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          keyedMetrics = self->_keyedMetrics;
          v15 = allKeys;
          v16 = MEMORY[0x277CCABB0];
          [v11 floatValue];
          v18 = v17;
          [v13 floatValue];
          v20 = [v16 numberWithInteger:(v18 + v19)];
          [(NSMutableDictionary *)keyedMetrics setObject:v20 forKey:v10];

          allKeys = v15;
          v8 = v38;
          goto LABEL_25;
        }

        v21 = IXADefaultLogFacility();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

LABEL_28:
        v36 = MEMORY[0x277CCACA8];
        v37 = allKeys;
        v22 = objc_opt_class();
        v23 = [v36 stringWithFormat:@"%s [SensorKit] otherObject has different class: %@ than ownObject: %@ for key: %@", "-[TISKSessionStats merge:]", v22, objc_opt_class(), v10];
        *buf = 138412290;
        v45 = v23;
        _os_log_error_impl(&dword_22CA55000, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

        allKeys = v37;
LABEL_17:

        goto LABEL_25;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = IXADefaultLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }

          goto LABEL_17;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = IXADefaultLogFacility();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            goto LABEL_17;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = IXADefaultLogFacility();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            goto LABEL_17;
          }
        }
      }

      [v11 merge:v13];
LABEL_25:

      ++v9;
    }

    while (v39 != v9);
    v24 = [allKeys countByEnumeratingWithState:&v40 objects:v46 count:16];
    v39 = v24;
  }

  while (v24);
LABEL_30:

  startTime = [v5 startTime];
  v26 = [startTime compare:self->_startTime];

  if (v26 == -1)
  {
    startTime2 = [v5 startTime];
    startTime = self->_startTime;
    self->_startTime = startTime2;
  }

  endTime = [v5 endTime];
  v30 = [endTime compare:self->_endTime];

  if (v30 == 1)
  {
    endTime2 = [v5 endTime];
    endTime = self->_endTime;
    self->_endTime = endTime2;
  }

  sessionIds = self->_sessionIds;
  sessionIds = [v5 sessionIds];
  [(NSMutableArray *)sessionIds addObjectsFromArray:sessionIds];

  self->_isEmpty = 0;
LABEL_36:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setup
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = +[TISKMetricDefinition metricDefinitions];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = v6;
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v17 + 1) + 8 * i);

        metricType = [v6 metricType];
        if (metricType > 1)
        {
          if (metricType == 2)
          {
            keyedMetrics = self->_keyedMetrics;
            v12 = TISKRateMetricSample;
LABEL_15:
            makeMetric = [(__objc2_class *)v12 makeMetric];
            goto LABEL_16;
          }

          if (metricType != 3)
          {
            continue;
          }

          keyedMetrics = self->_keyedMetrics;
          makeMetric = +[TISKPositionalMetricSample makeMetric:](TISKPositionalMetricSample, "makeMetric:", [v6 positionalSize]);
        }

        else
        {
          if (metricType)
          {
            if (metricType != 1)
            {
              continue;
            }

            keyedMetrics = self->_keyedMetrics;
            v12 = TISKSingleMetricSample;
            goto LABEL_15;
          }

          keyedMetrics = self->_keyedMetrics;
          makeMetric = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        }

LABEL_16:
        v14 = makeMetric;
        metricName = [v6 metricName];
        [(NSMutableDictionary *)keyedMetrics setObject:v14 forKey:metricName];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v5)
      {

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)haltTypingTimer
{
  startTimerEvent = self->_startTimerEvent;
  self->_startTimerEvent = 0;
  MEMORY[0x2821F96F8]();
}

- (void)haltTypingTimerWithEvent:(id)event
{
  if (self->_startTimerEvent)
  {
    [event touchUpTimestamp];
    v5 = v4;
    [(TISKEvent *)self->_startTimerEvent touchDownTimestamp];
    v7 = v5 - v6;
    if (v7 > 0.0)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      [(TISKSessionStats *)self addSample:v8 forKey:kTISKTotalSessionTypingDuration];

      [(TISKSessionStats *)self addToDurationForRateMetric:kTISKTapTypingSpeed forKey:v7];
    }

    startTimerEvent = self->_startTimerEvent;
    self->_startTimerEvent = 0;
  }
}

- (id)init:(id)init endDate:(id)date identifier:(id)identifier version:(id)version inputMode:(id)mode sessionIds:(id)ids layout:(id)layout
{
  initCopy = init;
  dateCopy = date;
  identifierCopy = identifier;
  versionCopy = version;
  modeCopy = mode;
  idsCopy = ids;
  layoutCopy = layout;
  v30.receiver = self;
  v30.super_class = TISKSessionStats;
  v19 = [(TISKSessionStats *)&v30 init];
  if (v19)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    keyedMetrics = v19->_keyedMetrics;
    v19->_keyedMetrics = dictionary;

    objc_storeStrong(&v19->_startTime, init);
    objc_storeStrong(&v19->_endTime, date);
    startTimerEvent = v19->_startTimerEvent;
    v19->_startTimerEvent = 0;

    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_version, version);
    objc_storeStrong(&v19->_inputMode, mode);
    v23 = [idsCopy mutableCopy];
    sessionIds = v19->_sessionIds;
    v19->_sessionIds = v23;

    objc_storeStrong(&v19->_layout, layout);
    v19->_isEmpty = 1;
    [(TISKSessionStats *)v19 setup];
  }

  return v19;
}

@end