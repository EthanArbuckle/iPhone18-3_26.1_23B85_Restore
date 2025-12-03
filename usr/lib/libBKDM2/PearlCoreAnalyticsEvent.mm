@interface PearlCoreAnalyticsEvent
- (BOOL)postEventExtendedBy:(id)by;
- (PearlCoreAnalyticsEvent)initWithName:(id)name;
- (PearlCoreAnalyticsEvent)initWithName:(id)name awdMetric:(id)metric;
- (id)getPrintableArray;
- (void)reset;
@end

@implementation PearlCoreAnalyticsEvent

- (void)reset
{
  v12 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent reset event: %@\n", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = PearlCoreAnalyticsEvent;
  [(BiometricKitCoreAnalyticsEvent *)&v9 reset];
  awdMetric = self->_awdMetric;
  self->_awdMetric = 0;

  awdMetricDictionary = self->_awdMetricDictionary;
  self->_awdMetricDictionary = 0;

  eventDictionary = self->_eventDictionary;
  self->_eventDictionary = 0;

  v8 = *MEMORY[0x29EDCA608];
}

- (PearlCoreAnalyticsEvent)initWithName:(id)name
{
  v19[7] = *MEMORY[0x29EDCA608];
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PearlCoreAnalyticsEvent;
  v5 = [(BiometricKitCoreAnalyticsEvent *)&v18 initWithName:nameCopy];
  if (v5)
  {
    v6 = *MEMORY[0x29EDBFDA8];
    v19[0] = *MEMORY[0x29EDBFDB0];
    v19[1] = v6;
    v7 = *MEMORY[0x29EDBFDC8];
    v19[2] = *MEMORY[0x29EDBFDA0];
    v19[3] = v7;
    v8 = *MEMORY[0x29EDBFDD8];
    v19[4] = *MEMORY[0x29EDBFDD0];
    v19[5] = v8;
    v19[6] = *MEMORY[0x29EDBFDC0];
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:7];
    v10 = *MEMORY[0x29EDBFD98];
    v11 = *(&v5->super.super.isa + v10);
    *(&v5->super.super.isa + v10) = v9;

    v12 = [&unk_2A1E03A20 objectForKey:nameCopy];
    awdMetricName = v5->_awdMetricName;
    v5->_awdMetricName = v12;

    if (v5->_awdMetricName)
    {
      v14 = [&unk_2A1E039F8 objectForKey:?];
      awdMetricId = v5->_awdMetricId;
      v5->_awdMetricId = v14;

      if (!v5->_awdMetricId)
      {
        [PearlCoreAnalyticsEvent initWithName:v5];
        v5 = 0;
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

- (PearlCoreAnalyticsEvent)initWithName:(id)name awdMetric:(id)metric
{
  metricCopy = metric;
  v8 = [(PearlCoreAnalyticsEvent *)self initWithName:name];
  v9 = v8;
  if (v8)
  {
    if (metricCopy)
    {
      objc_storeStrong(&v8->_awdMetric, metric);
    }

    else
    {
      [PearlCoreAnalyticsEvent initWithName:v8 awdMetric:?];
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)postEventExtendedBy:(id)by
{
  v19 = *MEMORY[0x29EDCA608];
  byCopy = by;
  v5 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent postEvent: %@\n", buf, 0xCu);
  }

  [(BiometricKitCoreAnalyticsEvent *)self updateBoundedFieldValue];
  [(PearlCoreAnalyticsEvent *)self prepareEventDictionary:0];
  if (self->_eventDictionary)
  {
    v14.receiver = self;
    v14.super_class = PearlCoreAnalyticsEvent;
    if ([(BiometricKitCoreAnalyticsEvent *)&v14 postEventExtendedBy:byCopy])
    {
      if (__osLogTrace)
      {
        v5 = __osLogTrace;
      }

      v8 = 1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
        *buf = 138412546;
        v16 = v9;
        v17 = 1024;
        v18 = 1;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "PearlCoreAnalyticsEvent postEvent: %@ result:%d\n", buf, 0x12u);
      }

      goto LABEL_19;
    }
  }

  else
  {
    [PearlCoreAnalyticsEvent postEventExtendedBy:];
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412546;
    v16 = v11;
    v17 = 1024;
    v18 = 0;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "PearlCoreAnalyticsEvent postEvent: %@ result:%d\n", buf, 0x12u);
  }

  v8 = 0;
LABEL_19:

  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

void __50__PearlCoreAnalyticsEvent_prepareEventDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 40) + *MEMORY[0x29EDBFD90]);
      v9 = v7;
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent(%@) getEventDictionary remove unsupported field: %@ of class: %@\n", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (id)getPrintableArray
{
  array = [MEMORY[0x29EDB8DE8] array];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  array2 = [MEMORY[0x29EDB8DE8] array];
  [(PearlCoreAnalyticsEvent *)self prepareEventDictionary:1];
  selfCopy = self;
  getEventDictionary = [(PearlCoreAnalyticsEvent *)self getEventDictionary];
  v4 = [getEventDictionary description];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [v4 getParagraphStart:&v22 end:&v21 contentsEnd:&v20 forRange:{v7, 0}];
      v8 = [v4 substringWithRange:{v22, v20 - v22}];
      [array2 addObject:v8];

      v7 = v21;
    }

    while (v21 < v6);
  }

  v9 = [array2 count] / 0x14uLL + 1;
  v10 = *MEMORY[0x29EDBFD90];
  v11 = [MEMORY[0x29EDBA050] stringWithFormat:@"PearlCAEvent: %@ (print %ld of %ld):\n", *(&self->super.super.isa + v10), 1, v9];
  if ([array2 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [array2 objectAtIndexedSubscript:v12];
      [v11 appendString:v14];

      [v11 appendString:@"\n"];
      if (v13 - 1 < v12 / 0x14)
      {
        [array addObject:v11];
        v15 = [MEMORY[0x29EDBA050] stringWithFormat:@"PearlCAEvent: %@ (print %ld of %ld):\n", *(&selfCopy->super.super.isa + v10), ++v13, v9];

        v11 = v15;
      }

      ++v12;
    }

    while (v12 < [array2 count]);
  }

  [array addObject:v11];

  return array;
}

- (void)initWithName:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)initWithName:(void *)a1 awdMetric:.cold.1(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)postEventExtendedBy:.cold.1()
{
  v5 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v3 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v4 = 75;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, 0x30u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

@end