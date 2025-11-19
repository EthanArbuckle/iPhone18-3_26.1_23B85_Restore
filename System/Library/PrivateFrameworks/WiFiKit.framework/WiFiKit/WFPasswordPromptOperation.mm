@interface WFPasswordPromptOperation
+ (id)passwordPromptOperationWithCredentialsContext:(id)a3;
@end

@implementation WFPasswordPromptOperation

+ (id)passwordPromptOperationWithCredentialsContext:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *buf = 136315394;
    v36 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]";
    v37 = 2112;
    v38 = v3;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: creating password prompt for context %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v7 localizedStringForKey:@"kWFLocPasswordAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v3 network];
  v10 = [v9 ssid];
  v30 = [v8 stringWithFormat:v31, v10];

  if (v30)
  {
    [v6 setObject:v30 forKey:*MEMORY[0x277CBF188]];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v3 network];
    v13 = [v12 ssid];
    v14 = [v11 stringWithFormat:@"Enter the password for “%@”", v13];
    [v6 setObject:v14 forKey:*MEMORY[0x277CBF188]];
  }

  [v6 setObject:&unk_288304EB8 forKey:*MEMORY[0x277CBF230]];
  v15 = [v7 localizedStringForKey:@"kWFLocPasswordAlertCancelButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"Cancel";
  }

  [v6 setObject:v17 forKey:*MEMORY[0x277CBF1C0]];
  v18 = [v7 localizedStringForKey:@"kWFLocPasswordAlertJoinButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"Join";
  }

  [v6 setObject:v20 forKey:*MEMORY[0x277CBF1E8]];
  [v6 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v6 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v21 = [objc_alloc(objc_opt_class()) initWithOptions:v6 timeout:0x10000 flags:0.0];
  [v21 setCredentialsProviderContext:v3];
  objc_initWeak(&location, v21);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke;
  v32[3] = &unk_279EBCEA0;
  objc_copyWeak(&v33, &location);
  [v21 setCompletionBlock:v32];
  v22 = WFLogForCategory(3uLL);
  v23 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v22 && os_log_type_enabled(v22, v23))
  {
    *buf = 136315394;
    v36 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]";
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&dword_273ECD000, v22, v23, "%s: password prompt %@", buf, 0x16u);
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = [v3 network];
  v26 = [v25 ssid];
  v27 = [v24 stringWithFormat:@"Password prompt for '%@'", v26];
  [v21 setName:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

void __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke_2;
  v4[3] = &unk_279EBCE78;
  v5 = WeakRetained;
  v3 = WeakRetained;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
}

void __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(3uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v2 == 2)
  {
    if (v6)
    {
      v7 = v3;
      if (os_log_type_enabled(v7, v4))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v23 = 136315394;
        v24 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke_2";
        v25 = 2112;
        v26 = WeakRetained;
        _os_log_impl(&dword_273ECD000, v7, v4, "%s: user entered password %@", &v23, 0x16u);
      }
    }

    v9 = [*(a1 + 32) userResponse];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = [*(a1 + 32) userResponse];
    v12 = *MEMORY[0x277CBF238];
    v13 = [v11 objectForKey:*MEMORY[0x277CBF238]];

    if (v13)
    {
      v14 = [*(a1 + 32) userResponse];
      v15 = [v14 objectForKey:v12];
      [*(a1 + 32) setPassword:v15];
    }

    else
    {
LABEL_20:
      v14 = WFLogForCategory(3uLL);
      v20 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v20))
      {
        v21 = *(a1 + 32);
        v23 = 136315394;
        v24 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke";
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_273ECD000, v14, v20, "%s: nil user response from prompt %@", &v23, 0x16u);
      }
    }

    v19 = [*(a1 + 32) credentialsProviderContext];
    [v19 gatherCredentials:0];
  }

  else
  {
    if (v6)
    {
      v16 = v3;
      if (os_log_type_enabled(v16, v4))
      {
        v17 = *(a1 + 32);
        v18 = [v17 credentialsProviderContext];
        v23 = 136315650;
        v24 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke";
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_273ECD000, v16, v4, "%s: user cancelled password prompt %@, cancelling context %@", &v23, 0x20u);
      }
    }

    [*(a1 + 32) setPassword:0];
    v19 = [*(a1 + 32) credentialsProviderContext];
    [v19 cancel];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end