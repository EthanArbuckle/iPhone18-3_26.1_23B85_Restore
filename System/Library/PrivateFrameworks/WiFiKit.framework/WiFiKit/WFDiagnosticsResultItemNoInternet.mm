@interface WFDiagnosticsResultItemNoInternet
- (WFDiagnosticsResultItemNoInternet)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemNoInternet

- (WFDiagnosticsResultItemNoInternet)initWithResults:(id)results
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v26.receiver = self;
  v26.super_class = WFDiagnosticsResultItemNoInternet;
  v5 = [(WFDiagnosticsResultItemNoInternet *)&v26 init];
  noInternetDiagnosticsResults = [resultsCopy noInternetDiagnosticsResults];
  [(WFDiagnosticsResultItemNoInternet *)v5 setResults:noInternetDiagnosticsResults];

  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  results = [(WFDiagnosticsResultItemNoInternet *)v5 results];
  v9 = [results countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v23;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(results);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      if ([v14 testID] == 11)
      {
        if (v11)
        {
          v15 = WFLogForCategory(0);
          v16 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
          {
            *v21 = 0;
            _os_log_impl(&dword_273ECD000, v15, v16, "Multiple RetrieveAppleDisallowCellular results found!", v21, 2u);
          }

          goto LABEL_18;
        }

        v11 = v14;
      }

      if (v10 == ++v13)
      {
        v10 = [results countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        if (([v11 didPass]& 1) == 0)
        {
          [v7 addObject:&unk_288304D20];
        }

        objc_storeStrong(&v5->_failedTests, v7);
        [(WFDiagnosticsResultItemNoInternet *)v5 setDidPassTest:[v11 didPass]];
        v17 = v5;
        goto LABEL_27;
      }
    }
  }

LABEL_22:
  v11 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(1uLL);
  v17 = 0;
  if (WFCurrentLogLevel() && v11)
  {
    if (os_log_type_enabled(v11, v18))
    {
      *v21 = 0;
      _os_log_impl(&dword_273ECD000, v11, v18, "No Internet tests didn't have complete test results!", v21, 2u);
    }

    v17 = 0;
  }

LABEL_27:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end