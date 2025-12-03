@interface WFDiagnosticsResultItemAWDL
- (WFDiagnosticsResultItemAWDL)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemAWDL

- (WFDiagnosticsResultItemAWDL)initWithResults:(id)results
{
  v52 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v49.receiver = self;
  v49.super_class = WFDiagnosticsResultItemAWDL;
  v5 = [(WFDiagnosticsResultItemAWDL *)&v49 init];
  awdlDiagnosticsResults = [resultsCopy awdlDiagnosticsResults];
  [(WFDiagnosticsResultItemAWDL *)v5 setResults:awdlDiagnosticsResults];

  v7 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  results = [(WFDiagnosticsResultItemAWDL *)v5 results];
  v9 = [results countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v46;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(results);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        if ([v14 testID] == 21)
        {
          if (v11)
          {
            v15 = WFLogForCategory(0);
            v16 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v15, v16, "Multiple AWDLEnabled results found!", buf, 2u);
            }

            goto LABEL_18;
          }

          v11 = v14;
        }
      }

      v10 = [results countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  results2 = [(WFDiagnosticsResultItemAWDL *)v5 results];
  v18 = [results2 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v41;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(results2);
        }

        v23 = *(*(&v40 + 1) + 8 * j);
        if ([v23 testID] == 22)
        {
          if (v20)
          {
            v24 = WFLogForCategory(0);
            v25 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v24 && os_log_type_enabled(v24, v25))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v24, v25, "Multiple AWDL real time mode results found!", buf, 2u);
            }

            v26 = v11 != 0;
            v27 = 1;
            goto LABEL_36;
          }

          v20 = v23;
        }
      }

      v19 = [results2 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

  v26 = v11 != 0;
  v27 = v20 != 0;
  if (v11 | v20)
  {
LABEL_36:
    if ([v11 didPass])
    {
      [v7 addObject:&unk_288304C30];
    }

    if ([v20 didPass])
    {
      [v7 addObject:&unk_288304C48];
    }

    objc_storeStrong(&v5->_failedTests, v7);
    if (v26 && v27 && ([v11 didPass] & 1) == 0)
    {
      v28 = [v20 didPass] ^ 1;
    }

    else
    {
      v28 = 0;
    }

    [(WFDiagnosticsResultItemAWDL *)v5 setDidPassTest:v28];
    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemAWDL *)v5 didPassTest])
    {
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = v31;
      if (IsChinaDevice)
      {
        v33 = @"kWFLocDiagnosticsAWDLResultTitle_CH";
      }

      else
      {
        v33 = @"kWFLocDiagnosticsAWDLResultTitle";
      }

      if (IsChinaDevice)
      {
        v34 = @"kWFLocDiagnosticsAWDLResultDetailDescription_CH";
      }

      else
      {
        v34 = @"kWFLocDiagnosticsAWDLResultDetailDescription";
      }

      v35 = [v31 localizedStringForKey:v33 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemAWDL *)v5 setTitle:v35];

      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:v34 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemAWDL *)v5 setSuggestion:v37];
    }

    v29 = v5;
  }

  else
  {
    v20 = 0;
    v29 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v29;
}

@end