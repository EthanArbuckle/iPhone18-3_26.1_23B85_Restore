@interface TACoreAnalyticMetricManager
+ (id)computeMetricsInterVisit:(id)visit;
+ (id)computeMetricsVisit:(id)visit withFilterVisitsSettings:(id)settings;
@end

@implementation TACoreAnalyticMetricManager

+ (id)computeMetricsInterVisit:(id)visit
{
  v45 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = visitCopy;
  visitState = [visitCopy visitState];
  interVisitMetricSnapshotBuffer = [visitState interVisitMetricSnapshotBuffer];
  bufferCopy = [interVisitMetricSnapshotBuffer bufferCopy];
  reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v32)
  {
    v31 = *v40;
    v34 = 1;
LABEL_3:
    v9 = 0;
LABEL_4:
    if (*v40 != v31)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v39 + 1) + 8 * v9);
    if ([v10 isClosed])
    {
      v33 = v9;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      accumulatedDeviceMetrics = [v10 accumulatedDeviceMetrics];
      v12 = [accumulatedDeviceMetrics countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12;
      v14 = *v36;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(accumulatedDeviceMetrics);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          accumulatedDeviceMetrics2 = [v10 accumulatedDeviceMetrics];
          v18 = [accumulatedDeviceMetrics2 objectForKey:v16];

          v19 = [dictionary objectForKey:v16];
          if (v19)
          {
            v20 = v19;
            totalInterVisitMetric = [(TAMetricsInterVisit *)v19 totalInterVisitMetric];
            [totalInterVisitMetric accumulate:v18];

LABEL_14:
            goto LABEL_18;
          }

          if (v34)
          {
            [v18 duration];
            if (v22 > 0.0)
            {
              v20 = objc_alloc_init(TAMetricsInterVisit);
              currentInterVisitMetric = [(TAMetricsInterVisit *)v20 currentInterVisitMetric];
              [currentInterVisitMetric accumulate:v18];

              totalInterVisitMetric2 = [(TAMetricsInterVisit *)v20 totalInterVisitMetric];
              [totalInterVisitMetric2 accumulate:v18];

              [dictionary setObject:v20 forKey:v16];
              goto LABEL_14;
            }
          }

LABEL_18:
        }

        v13 = [accumulatedDeviceMetrics countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (!v13)
        {
LABEL_20:

          v34 = 0;
          v9 = v33 + 1;
          if (v33 + 1 == v32)
          {
            v34 = 0;
            v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
            if (!v32)
            {
              goto LABEL_22;
            }

            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }

    v26 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TACoreAnalyticMetricManager computeMetricsInterVisit:v26];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
LABEL_22:

    dictionary2 = dictionary;
  }

  v27 = *MEMORY[0x277D85DE8];

  return dictionary2;
}

+ (id)computeMetricsVisit:(id)visit withFilterVisitsSettings:(id)settings
{
  v34 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = visitCopy;
  visitState = [visitCopy visitState];
  visitSnapshotBuffer = [visitState visitSnapshotBuffer];
  lastObject = [visitSnapshotBuffer lastObject];

  if ([lastObject isClosed])
  {
    v28 = dictionary;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = lastObject;
    obj = [lastObject latestUtAdvertisements];
    v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [TAMetricsVisit alloc];
          visitState2 = [v8 visitState];
          visitSnapshotBuffer2 = [visitState2 visitSnapshotBuffer];
          bufferCopy = [visitSnapshotBuffer2 bufferCopy];
          v21 = [(TAMetricsVisit *)v17 initWithSnapshotHistory:bufferCopy andAddress:v16 andVisitFilterSettings:settingsCopy];

          if (v21)
          {
            [v28 setObject:v21 forKey:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    dictionary = v28;
    dictionary2 = v28;
    lastObject = v26;
  }

  else
  {
    v23 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TACoreAnalyticMetricManager computeMetricsVisit:v23 withFilterVisitsSettings:?];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  v24 = *MEMORY[0x277D85DE8];

  return dictionary2;
}

@end