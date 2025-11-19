@interface WFMetricsManager
+ (id)sharedManager;
- (WFMetricsManager)init;
- (void)_submitCAEvent:(id)a3;
- (void)processEvent:(id)a3;
@end

@implementation WFMetricsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WFMetricsManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __33__WFMetricsManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(WFMetricsManager);

  return MEMORY[0x2821F96F8]();
}

- (void)processEvent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&unk_28831F170])
    {
      [(WFMetricsManager *)self _submitCAEvent:v5];
    }

    else
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_273ECD000, v6, v7, "%@ does not conform to event protocol", &v9, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_submitCAEvent:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 eventName];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = [v3 eventDictionary];
  if (!v4)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v9 || !os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v23 = "[WFMetricsManager _submitCAEvent:]";
    v11 = "%s: event name is nil";
    v12 = v9;
    v13 = v10;
    v14 = 12;
    goto LABEL_17;
  }

  if (!v17[5])
  {
    v9 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v9 || !os_log_type_enabled(v9, v15))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v23 = "[WFMetricsManager _submitCAEvent:]";
    v24 = 2112;
    v25 = v4;
    v11 = "%s: event is nil for event %@";
    v12 = v9;
    v13 = v15;
    v14 = 22;
LABEL_17:
    _os_log_impl(&dword_273ECD000, v12, v13, v11, buf, v14);
LABEL_18:

    goto LABEL_8;
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5 && os_log_type_enabled(v5, v6))
  {
    v7 = v17[5];
    *buf = 136315650;
    v23 = "[WFMetricsManager _submitCAEvent:]";
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: submitting %@ with dictionary %@", buf, 0x20u);
  }

  AnalyticsSendEventLazy();
LABEL_8:
  _Block_object_dispose(&v16, 8);

  v8 = *MEMORY[0x277D85DE8];
}

- (WFMetricsManager)init
{
  v13.receiver = self;
  v13.super_class = WFMetricsManager;
  v2 = [(WFMetricsManager *)&v13 init];
  if (v2)
  {
    v3 = WFCopyProcessIdentifier();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      processName = v2->_processName;
      v2->_processName = &v5->isa;
    }

    else
    {
      v10 = v2->_processName;
      v2->_processName = @"unknown";

      processName = WFLogForCategory(0);
      v11 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && processName && os_log_type_enabled(processName, v11))
      {
        *v12 = 0;
        _os_log_impl(&dword_273ECD000, processName, v11, "Unable to get process name", v12, 2u);
      }
    }

    v7 = [MEMORY[0x277CBEB38] dictionary];
    ssidHashes = v2->_ssidHashes;
    v2->_ssidHashes = v7;

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

@end