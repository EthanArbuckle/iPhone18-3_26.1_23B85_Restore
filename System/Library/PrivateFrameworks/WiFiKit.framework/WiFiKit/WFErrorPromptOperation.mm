@interface WFErrorPromptOperation
+ (id)errorPromptOperationWithContext:(id)a3;
@end

@implementation WFErrorPromptOperation

+ (id)errorPromptOperationWithContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [v3 error];
      *buf = 136315650;
      v29 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_273ECD000, v6, v5, "%s: creating error prompt for context %@ (error %@)", buf, 0x20u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [v3 error];
  v10 = [v9 localizedDescription];

  if ([v10 length])
  {
    [v8 setObject:v10 forKey:*MEMORY[0x277CBF188]];
    v11 = WFLogForCategory(3uLL);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      *buf = 136315394;
      v29 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_273ECD000, v11, v12, "%s: prompt title %@", buf, 0x16u);
    }
  }

  v13 = [v3 error];
  v14 = [v13 localizedRecoverySuggestion];

  if (v14)
  {
    [v8 setObject:v14 forKey:*MEMORY[0x277CBF198]];
    v15 = WFLogForCategory(3uLL);
    v16 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
    {
      *buf = 136315394;
      v29 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_273ECD000, v15, v16, "%s: prompt message %@", buf, 0x16u);
    }
  }

  v17 = [v3 error];
  v18 = [v17 localizedRecoveryOptions];
  v19 = [v18 objectAtIndexedSubscript:0];

  [v8 setObject:v19 forKey:*MEMORY[0x277CBF1E8]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v8 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v20 = [objc_alloc(objc_opt_class()) initWithOptions:v8 timeout:0 flags:0.0];
  [v20 setContext:v3];
  objc_initWeak(&location, v20);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke;
  v25[3] = &unk_279EBCEA0;
  objc_copyWeak(&v26, &location);
  [v20 setCompletionBlock:v25];
  v21 = WFLogForCategory(3uLL);
  v22 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v21 && os_log_type_enabled(v21, v22))
  {
    *buf = 136315394;
    v29 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_273ECD000, v21, v22, "%s: password prompt %@", buf, 0x16u);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

void __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke_2;
  block[3] = &unk_279EBCEA0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(3uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = 136315394;
      v10 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]_block_invoke_2";
      v11 = 2112;
      v12 = WeakRetained;
      _os_log_impl(&dword_273ECD000, v4, v3, "%s: user dismissed alert %@", &v9, 0x16u);
    }
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 context];
  [v7 cancel];

  v8 = *MEMORY[0x277D85DE8];
}

@end