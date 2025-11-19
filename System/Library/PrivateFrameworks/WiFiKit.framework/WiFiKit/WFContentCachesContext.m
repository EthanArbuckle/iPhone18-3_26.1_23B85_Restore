@interface WFContentCachesContext
- (ContentCachesContextDelegate)delegate;
- (WFContentCachesContext)init;
@end

@implementation WFContentCachesContext

- (WFContentCachesContext)init
{
  v38 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFContentCachesContext;
  v2 = [(WFContentCachesContext *)&v33 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/Content Caches.bundle"];
    v32 = 0;
    v4 = [v3 loadAndReturnError:&v32];
    v5 = v32;

    if ((v4 & 1) == 0)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v6)
      {
        v8 = v6;
        if (os_log_type_enabled(v8, v7))
        {
          v9 = [v5 localizedDescription];
          *buf = 136315394;
          v35 = "[WFContentCachesContext init]";
          v36 = 2112;
          v37 = v9;
          _os_log_impl(&dword_273ECD000, v8, v7, "%s: Failed to load content caches bundle from system path. Error: %@", buf, 0x16u);
        }
      }

      v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/PreferenceBundles/Content Caches.bundle"];
      v31 = 0;
      v11 = [v10 loadAndReturnError:&v31];
      v5 = v31;

      v12 = WFLogForCategory(0);
      v13 = v12 != 0;
      if ((v11 & 1) == 0)
      {
        v23 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() != 0 && v13)
        {
          v24 = v12;
          if (os_log_type_enabled(v24, v23))
          {
            v25 = [v5 localizedDescription];
            *buf = 136315394;
            v35 = "[WFContentCachesContext init]";
            v36 = 2112;
            v37 = v25;
            _os_log_impl(&dword_273ECD000, v24, v23, "%s: Failed to load content caches bundle from internal path. Error: %@", buf, 0x16u);
          }
        }

        goto LABEL_31;
      }

      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() > 2 && v13 && os_log_type_enabled(v12, v14))
      {
        *buf = 136315138;
        v35 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v12, v14, "%s: Loaded content caches bundle from internal path", buf, 0xCu);
      }
    }

    v15 = NSClassFromString(&cfstr_Cachelocatorse.isa);
    if (v15)
    {
      v16 = objc_alloc_init(v15);
      cacheLocatorSettingsInstance = v2->_cacheLocatorSettingsInstance;
      v2->_cacheLocatorSettingsInstance = v16;

      v18 = v2->_cacheLocatorSettingsInstance;
      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(buf, v2);
        v19 = v2->_cacheLocatorSettingsInstance;
        v20 = dispatch_get_global_queue(25, 0);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __30__WFContentCachesContext_init__block_invoke;
        v29[3] = &unk_279EBDFA0;
        objc_copyWeak(&v30, buf);
        [(CacheLocatorSettings *)v19 scanForCachesOn:v20 withHandler:v29];

        v21 = v2;
        objc_destroyWeak(&v30);
        objc_destroyWeak(buf);
LABEL_32:

        goto LABEL_33;
      }

      v12 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v26))
      {
        *buf = 136315138;
        v35 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v12, v26, "%s: scanForCaches method not found on CacheLocatorSettings", buf, 0xCu);
      }
    }

    else
    {
      v12 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v22))
      {
        *buf = 136315138;
        v35 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v12, v22, "%s: CacheLocatorSettings class not found in content caches bundle.", buf, 0xCu);
      }
    }

LABEL_31:

    v21 = 0;
    goto LABEL_32;
  }

  v21 = 0;
LABEL_33:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

void __30__WFContentCachesContext_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__WFContentCachesContext_init__block_invoke_2;
    v5[3] = &unk_279EBDFF0;
    v6 = WeakRetained;
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __30__WFContentCachesContext_init__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNumOfContentCaches:*(a1 + 40)];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 40);
    v7 = 136315394;
    v8 = "[WFContentCachesContext init]_block_invoke_2";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: found %d content caches", &v7, 0x12u);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 contentCachesContext:*(a1 + 32) didUpdateNumOfContentCaches:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (ContentCachesContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end