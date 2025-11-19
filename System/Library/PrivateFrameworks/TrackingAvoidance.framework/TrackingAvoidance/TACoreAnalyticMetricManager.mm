@interface TACoreAnalyticMetricManager
+ (id)computeMetricsInterVisit:(id)a3;
+ (id)computeMetricsVisit:(id)a3 withFilterVisitsSettings:(id)a4;
@end

@implementation TACoreAnalyticMetricManager

+ (id)computeMetricsInterVisit:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v3;
  v5 = [v3 visitState];
  v6 = [v5 interVisitMetricSnapshotBuffer];
  v7 = [v6 bufferCopy];
  v8 = [v7 reverseObjectEnumerator];

  obj = v8;
  v32 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
      v11 = [v10 accumulatedDeviceMetrics];
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v10 accumulatedDeviceMetrics];
          v18 = [v17 objectForKey:v16];

          v19 = [v4 objectForKey:v16];
          if (v19)
          {
            v20 = v19;
            v21 = [(TAMetricsInterVisit *)v19 totalInterVisitMetric];
            [v21 accumulate:v18];

LABEL_14:
            goto LABEL_18;
          }

          if (v34)
          {
            [v18 duration];
            if (v22 > 0.0)
            {
              v20 = objc_alloc_init(TAMetricsInterVisit);
              v23 = [(TAMetricsInterVisit *)v20 currentInterVisitMetric];
              [v23 accumulate:v18];

              v24 = [(TAMetricsInterVisit *)v20 totalInterVisitMetric];
              [v24 accumulate:v18];

              [v4 setObject:v20 forKey:v16];
              goto LABEL_14;
            }
          }

LABEL_18:
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
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

    v25 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
LABEL_22:

    v25 = v4;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)computeMetricsVisit:(id)a3 withFilterVisitsSettings:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = v5;
  v9 = [v5 visitState];
  v10 = [v9 visitSnapshotBuffer];
  v11 = [v10 lastObject];

  if ([v11 isClosed])
  {
    v28 = v7;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v11;
    obj = [v11 latestUtAdvertisements];
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
          v18 = [v8 visitState];
          v19 = [v18 visitSnapshotBuffer];
          v20 = [v19 bufferCopy];
          v21 = [(TAMetricsVisit *)v17 initWithSnapshotHistory:v20 andAddress:v16 andVisitFilterSettings:v6];

          if (v21)
          {
            [v28 setObject:v21 forKey:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v7 = v28;
    v22 = v28;
    v11 = v26;
  }

  else
  {
    v23 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TACoreAnalyticMetricManager computeMetricsVisit:v23 withFilterVisitsSettings:?];
    }

    v22 = [MEMORY[0x277CBEB38] dictionary];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

@end