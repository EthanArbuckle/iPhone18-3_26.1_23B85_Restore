@interface NWActivityAlgosScore
+ (id)sharedInstance;
+ (void)processNWActivitySuperMetric:(id)metric;
- (NWActivityAlgosScore)init;
- (id)_processNWActivityTransactions:(id)transactions;
- (void)_postSymptomFor:(id)for withScore:(unint64_t)score;
- (void)_processNWActivitySuperMetric:(id)metric;
@end

@implementation NWActivityAlgosScore

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NWActivityAlgosScore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_16 != -1)
  {
    dispatch_once(&sharedInstance_pred_16, block);
  }

  v2 = sharedInstance_sharedInstance_16;

  return v2;
}

void __38__NWActivityAlgosScore_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_16;
  sharedInstance_sharedInstance_16 = v1;

  v3 = +[SystemProperties sharedInstance];
  internalBuild = [v3 internalBuild];
}

+ (void)processNWActivitySuperMetric:(id)metric
{
  metricCopy = metric;
  v4 = +[NWActivityAlgosScore sharedInstance];
  [v4 _processNWActivitySuperMetric:metricCopy];
}

- (NWActivityAlgosScore)init
{
  v6.receiver = self;
  v6.super_class = NWActivityAlgosScore;
  v2 = [(NWActivityAlgosScore *)&v6 init];
  if (v2 && objc_opt_class())
  {
    connectionScore = [MEMORY[0x277D2CA30] connectionScore];
    activityScore = v2->_activityScore;
    v2->_activityScore = connectionScore;
  }

  return v2;
}

- (id)_processNWActivityTransactions:(id)transactions
{
  v88 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  if (transactionsCopy)
  {
    v4 = transactionsCopy;
    taskMetrics = [transactionsCopy taskMetrics];
    v64 = v4;
    if (taskMetrics && (v6 = taskMetrics, [v4 taskMetrics], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = [v4 taskMetrics];
      v67 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v67)
      {
        v10 = 0;
        v66 = *v79;
        *&v9 = 138412290;
        v63 = v9;
        v11 = @"totalBytesRead";
LABEL_6:
        v12 = 0;
LABEL_7:
        if (*v79 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v78 + 1) + 8 * v12);
        if (v10 <= [NWActivitySuperMetric limitForFragmentType:3, v63])
        {
          dictionaryReport = [v13 dictionaryReport];
          v15 = dictionaryReport;
          if (!dictionaryReport)
          {
            v23 = algosLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = v63;
              v83 = *&v13;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Failed to extract task metric dictionary report for %@", buf, 0xCu);
            }

            goto LABEL_54;
          }

          v69 = v12;
          v70 = v10;
          v16 = [dictionaryReport objectForKeyedSubscript:@"didCompleteWithError"];
          *&v17 = COERCE_DOUBLE([v16 unsignedLongLongValue]);

          v18 = algosLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v83 = *&v17;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "totalTaskDuration: %llu", buf, 0xCu);
          }

          v19 = [v15 objectForKeyedSubscript:@"error"];
          *&v20 = COERCE_DOUBLE([v19 longLongValue]);

          v21 = algosLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v83 = *&v20;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Error: %llu", buf, 0xCu);
          }

          v68 = v15;
          v22 = [v15 objectForKeyedSubscript:@"transactionMetrics"];
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v23 = v22;
          v73 = [v23 countByEnumeratingWithState:&v74 objects:v86 count:16];
          if (!v73)
          {
            goto LABEL_53;
          }

          v24 = *v75;
          v25 = v17;
          v71 = v23;
LABEL_17:
          v26 = 0;
          while (1)
          {
            if (*v75 != v24)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v74 + 1) + 8 * v26);
            v28 = [v27 objectForKeyedSubscript:v11];
            unsignedLongLongValue = [v28 unsignedLongLongValue];

            v30 = [v27 objectForKeyedSubscript:@"requestStart"];
            unsignedLongLongValue2 = [v30 unsignedLongLongValue];

            v32 = v25;
            if ([v23 count]< 2)
            {
              goto LABEL_29;
            }

            v33 = v24;
            v34 = v17;
            v35 = v11;
            v36 = [v27 objectForKeyedSubscript:@"responseEnd"];
            unsignedLongLongValue3 = [v36 unsignedLongLongValue];

            if (unsignedLongLongValue2 && unsignedLongLongValue3 > unsignedLongLongValue2)
            {
              break;
            }

            v39 = algosLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "Invalid input, skipping this redirect request.", buf, 2u);
            }

            v11 = v35;
            v17 = v34;
            v24 = v33;
            v23 = v71;
LABEL_45:
            if (v73 == ++v26)
            {
              v73 = [v23 countByEnumeratingWithState:&v74 objects:v86 count:16];
              if (v73)
              {
                goto LABEL_17;
              }

LABEL_53:
              v10 = v70 + 1;

              v15 = v68;
              v12 = v69;
LABEL_54:

              if (++v12 == v67)
              {
                v67 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
                if (!v67)
                {
                  goto LABEL_64;
                }

                goto LABEL_6;
              }

              goto LABEL_7;
            }
          }

          v32 = unsignedLongLongValue3 - unsignedLongLongValue2;
          v11 = v35;
          v17 = v34;
          v24 = v33;
          v23 = v71;
LABEL_29:
          v40 = [v27 objectForKeyedSubscript:@"responseStart"];
          unsignedLongLongValue4 = [v40 unsignedLongLongValue];

          if (unsignedLongLongValue2 && unsignedLongLongValue4 > unsignedLongLongValue2)
          {
            v42 = (unsignedLongLongValue4 - unsignedLongLongValue2) / 1000.0;
          }

          else
          {
            v42 = 0.0;
            if (!(v20 | v17))
            {
              v47 = algosLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "Bad input, double check responseStart and requestStart. Skipping current task.", buf, 2u);
              }

              goto LABEL_53;
            }
          }

          v43 = v32 / 1000.0;
          if (unsignedLongLongValue)
          {
            v44 = v20 != 0;
          }

          else
          {
            v44 = 0;
          }

          if (v20 != 0 && unsignedLongLongValue == 0)
          {
            *&v45 = NAN;
          }

          else
          {
            v45 = v20;
          }

          if (v44 && v17 > 0x50)
          {
            v20 = 1;
          }

          else
          {
            v20 = v45;
          }

          v46 = algosLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v83 = unsignedLongLongValue / 1000000.0 + 0.02;
            v84 = 2048;
            v85 = v43;
            _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "Score baseline %f  vs. actual %f secs", buf, 0x16u);
          }

          [(NWSAlgosConnectionScore *)self->_activityScore addConnectionRow:unsignedLongLongValue ttfb:v20 ttlb:v42 basettfb:v43 basettlb:0.0 weight:unsignedLongLongValue / 1000000.0 + 0.02 failed:1.0];
          goto LABEL_45;
        }

        v50 = algosLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          taskMetrics2 = [v64 taskMetrics];
          v52 = COERCE_DOUBLE([taskMetrics2 count]);
          *buf = 134217984;
          v83 = v52;
          _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_INFO, "Reached max task fragments for scoring, dropping the rest (count %lu)", buf, 0xCu);
        }
      }

LABEL_64:

      v53 = [(NWSAlgosConnectionScore *)self->_activityScore scoreConnection:0 label:0];
      v48 = [v53 mutableCopy];

      v54 = algosLogHandle();
      v55 = v54;
      if (v48)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v56 = [v48 objectForKeyedSubscript:@"score"];
          [v56 doubleValue];
          v58 = v57;
          taskMetrics3 = [v64 taskMetrics];
          v60 = [taskMetrics3 count];
          *buf = 134218240;
          v83 = v58;
          v84 = 2048;
          v85 = *&v60;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_INFO, "Calculated an Algos Score: %f for %lu samples", buf, 0x16u);
        }

        [(NWSAlgosConnectionScore *)self->_activityScore clearConnectionRows];
        [v48 removeObjectForKey:@"label"];
        v48 = v48;
        v49 = v48;
      }

      else
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "Failed to retrieve score for task metrics", buf, 2u);
        }

        [(NWSAlgosConnectionScore *)self->_activityScore clearConnectionRows];
        v49 = 0;
      }
    }

    else
    {
      v48 = algosLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "No task metrics found for this supermetric, not calculating an Algos score.", buf, 2u);
      }

      v49 = 0;
    }

    transactionsCopy = v64;
  }

  else
  {
    v49 = 0;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v49;
}

- (void)_processNWActivitySuperMetric:(id)metric
{
  v29 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (metricCopy)
  {
    if (objc_opt_class())
    {
      activity = [metricCopy activity];
      dictionaryReport = [activity dictionaryReport];
      v7 = [dictionaryReport objectForKeyedSubscript:@"bundleID"];

      activity2 = [metricCopy activity];
      dictionaryReport2 = [activity2 dictionaryReport];
      v10 = [dictionaryReport2 objectForKeyedSubscript:@"activityDomain"];

      activity3 = [metricCopy activity];
      dictionaryReport3 = [activity3 dictionaryReport];
      v13 = [dictionaryReport3 objectForKeyedSubscript:@"activityLabel"];

      activity4 = [metricCopy activity];
      dictionaryReport4 = [activity4 dictionaryReport];
      v16 = [dictionaryReport4 objectForKeyedSubscript:@"activityUUID"];

      v17 = algosLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138413058;
        v22 = v10;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Processing activity (domain: %@, label: %@, uuid: %@, bundle_id: %@)", &v21, 0x2Au);
      }

      v18 = [(NWActivityAlgosScore *)self _processNWActivityTransactions:metricCopy];
      if (v18)
      {
        [metricCopy setAlgosScore:v18];
      }

      v19 = algosLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412802;
        v22 = v10;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Finished processing activity (domain: %@, label: %@, uuid: %@)", &v21, 0x20u);
      }
    }

    else
    {
      v7 = algosLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Algos scoring is not available", &v21, 2u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_postSymptomFor:(id)for withScore:(unint64_t)score
{
  v12 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v6 = algosLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = forCopy;
    v10 = 2048;
    v11 = AlgosUnpackScore(score);
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Posting symptom for: %@, its Algos: %f", &v8, 0x16u);
  }

  internal_symptom_new(405521);
  internal_symptom_set_qualifier();
  [forCopy length];
  [forCopy UTF8String];
  internal_symptom_set_additional_qualifier();
  internal_symptom_send_immediate();

  v7 = *MEMORY[0x277D85DE8];
}

@end