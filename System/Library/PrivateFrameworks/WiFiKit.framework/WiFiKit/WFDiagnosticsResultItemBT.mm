@interface WFDiagnosticsResultItemBT
- (WFDiagnosticsResultItemBT)initWithResults:(id)a3;
@end

@implementation WFDiagnosticsResultItemBT

- (WFDiagnosticsResultItemBT)initWithResults:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = WFDiagnosticsResultItemBT;
  v5 = [(WFDiagnosticsResultItemBT *)&v33 init];
  v6 = [v4 btDiagnosticsResults];
  [(WFDiagnosticsResultItemBT *)v5 setResults:v6];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(WFDiagnosticsResultItemBT *)v5 results];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v30;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 testID] == 19)
        {
          if (v9)
          {
            v13 = WFLogForCategory(0);
            v14 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
            {
              *v28 = 0;
              _os_log_impl(&dword_273ECD000, v13, v14, "Multiple BTConnected results found!", v28, 2u);
            }

            goto LABEL_18;
          }

          v9 = v12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
    v15 = [v9 info];
    v16 = [v15 objectForKey:@"BTConnectedCount"];
    -[WFDiagnosticsResultItemBT setDidPassTest:](v5, "setDidPassTest:", [v16 intValue] < 5);

    failedTests = v5->_failedTests;
    v5->_failedTests = MEMORY[0x277CBEBF8];

    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemBT *)v5 didPassTest])
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"kWFLocDiagnosticsBTResultTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemBT *)v5 setTitle:v20];

      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = v21;
      if (IsChinaDevice)
      {
        v23 = @"kWFLocDiagnosticsBTResultDetailDescription_CH";
      }

      else
      {
        v23 = @"kWFLocDiagnosticsBTResultDetailDescription";
      }

      v24 = [v21 localizedStringForKey:v23 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemBT *)v5 setSuggestion:v24];

      v25 = v5->_failedTests;
      v5->_failedTests = &unk_288304FA8;
    }

    v8 = v5;
  }

  else
  {
    v9 = v7;
  }

LABEL_26:
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

@end