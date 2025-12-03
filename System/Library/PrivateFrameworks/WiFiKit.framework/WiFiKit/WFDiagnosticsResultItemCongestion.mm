@interface WFDiagnosticsResultItemCongestion
- (WFDiagnosticsResultItemCongestion)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemCongestion

- (WFDiagnosticsResultItemCongestion)initWithResults:(id)results
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v31.receiver = self;
  v31.super_class = WFDiagnosticsResultItemCongestion;
  v5 = [(WFDiagnosticsResultItemCongestion *)&v31 init];
  congestionDiagnosticsResults = [resultsCopy congestionDiagnosticsResults];
  [(WFDiagnosticsResultItemCongestion *)v5 setResults:congestionDiagnosticsResults];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  results = [(WFDiagnosticsResultItemCongestion *)v5 results];
  v8 = [results countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(results);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if ([v12 testID] == 24)
        {
          if (v9)
          {
            v13 = WFLogForCategory(0);
            v14 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
            {
              *v26 = 0;
              _os_log_impl(&dword_273ECD000, v13, v14, "Multiple channel congestion results found!", v26, 2u);
            }

            goto LABEL_18;
          }

          v9 = v12;
        }
      }

      v8 = [results countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (!v9)
    {
      v8 = 0;
      goto LABEL_26;
    }

LABEL_18:
    -[WFDiagnosticsResultItemCongestion setDidPassTest:](v5, "setDidPassTest:", [v9 didPass]);
    failedTests = v5->_failedTests;
    v5->_failedTests = MEMORY[0x277CBEBF8];

    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemCongestion *)v5 didPassTest])
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v17;
      if (IsChinaDevice)
      {
        v19 = @"kWFLocDiagnosticsCongestionResultTitle_CH";
      }

      else
      {
        v19 = @"kWFLocDiagnosticsCongestionResultTitle";
      }

      v20 = [v17 localizedStringForKey:v19 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemCongestion *)v5 setTitle:v20];

      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocDiagnosticsCongestionResultDetailDescription" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemCongestion *)v5 setSuggestion:v22];

      v23 = v5->_failedTests;
      v5->_failedTests = &unk_288304EE8;
    }

    v8 = v5;
  }

  else
  {
    v9 = results;
  }

LABEL_26:
  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

@end