@interface PHAMetricReportingTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (double)period;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAMetricReportingTask

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAMetricReportingTask timeoutFatal:]", "PHAMetricReportingTask.m", 110, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAMetricReportingTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  availableMetricEvents = [managerCopy availableMetricEvents];
  v8 = [availableMetricEvents count];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = availableMetricEvents;
  v9 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v9)
  {
    v10 = 1.0 / (v8 + 1);
    v34 = *v45;
    v11 = 0.0;
    while (2)
    {
      v33 = v9;
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        if ([v13 shouldReportMetrics])
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __69__PHAMetricReportingTask_runWithGraphManager_progressReporter_error___block_invoke;
          v39[3] = &unk_2788B2CD0;
          v42 = v11;
          v43 = v10;
          v41 = &v48;
          v32 = reporterCopy;
          v40 = v32;
          [v13 gatherMetricsWithProgressBlock:v39];
          if (*(v49 + 24) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v55 = 87;
              *&v55[4] = 2080;
              *&v55[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHAMetricReportingTask.m";
              _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            if (error && !*error)
            {
              *error = [MEMORY[0x277D22C28] errorForCode:-4];
            }

            goto LABEL_39;
          }

          if ([v13 conformsToProtocol:&unk_2844EBBC8])
          {
            payload = v13;
            [payload payloads];
          }

          else
          {
            payload = [v13 payload];
            v53 = payload;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
          }
          v18 = ;

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v52 count:16];
          if (v20)
          {
            v21 = *v36;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v36 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v35 + 1) + 8 * j);
                analytics = [managerCopy analytics];
                identifier = [v13 identifier];
                [analytics sendEvent:identifier withPayload:v23];
              }

              v20 = [v19 countByEnumeratingWithState:&v35 objects:v52 count:16];
            }

            while (v20);
          }

          if (*(v49 + 24) == 1)
          {
            *(v49 + 24) = 1;
LABEL_33:

            goto LABEL_34;
          }

          v11 = v11 + 1.0;
          v26 = [v32 isCancelledWithProgress:v10 * v11];
          *(v49 + 24) = v26 & 1;
          if (v26)
          {
            goto LABEL_33;
          }

          v15 = v40;
        }

        else
        {
          v15 = MEMORY[0x277D86220];
          v16 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v13 identifier];
            *buf = 138412290;
            *v55 = identifier2;
            _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PHAMetricReportingTask] Skipping metrics reporting for event %@.", buf, 0xCu);

            v15 = MEMORY[0x277D86220];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  if (*(v49 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v55 = 104;
      *&v55[4] = 2080;
      *&v55[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHAMetricReportingTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    if (error && !*error)
    {
      [MEMORY[0x277D22C28] errorForCode:-4];
      *error = v27 = 0;
    }

    else
    {
LABEL_39:
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  _Block_object_dispose(&v48, 8);
  return v27;
}

uint64_t __69__PHAMetricReportingTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:(*(a1 + 48) + a3) * *(a1 + 56)];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (double)period
{
  HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
  result = 604800.0;
  if (HasInternalDiagnostics)
  {
    return 86400.0;
  }

  return result;
}

@end