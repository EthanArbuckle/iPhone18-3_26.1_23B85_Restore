@interface SiriUICardProviderRegistry
+ (id)sharedInstance;
- (void)loadProviders;
- (void)preloadProviders;
@end

@implementation SiriUICardProviderRegistry

uint64_t __46__SiriUICardProviderRegistry_preloadProviders__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriUICardProviderRegistry preloadProviders]_block_invoke";
    _os_log_impl(&dword_26948D000, v2, OS_LOG_TYPE_DEFAULT, "%s Loading card providers", &v4, 0xCu);
  }

  return [*(a1 + 32) loadProviders];
}

- (void)loadProviders
{
  v5 = *MEMORY[0x277D85DE8];
  if (loadProviders__onceToken != -1)
  {
    [SiriUICardProviderRegistry loadProviders];
  }

  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[SiriUICardProviderRegistry loadProviders]";
    _os_log_impl(&dword_26948D000, v2, OS_LOG_TYPE_DEFAULT, "%s Card Providers loaded", &v3, 0xCu);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceInitializationToken != -1)
  {
    +[SiriUICardProviderRegistry sharedInstance];
  }

  v3 = sharedInstance_registry;

  return v3;
}

- (void)preloadProviders
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SiriUICardProviderRegistry preloadProviders]";
    _os_log_impl(&dword_26948D000, v3, OS_LOG_TYPE_DEFAULT, "%s Enqueuing load card providers", buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SiriUICardProviderRegistry_preloadProviders__block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __44__SiriUICardProviderRegistry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SiriUICardProviderRegistry);
  v1 = sharedInstance_registry;
  sharedInstance_registry = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __43__SiriUICardProviderRegistry_loadProviders__block_invoke()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CEF098];
  v1 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SiriUICardProviderRegistry loadProviders]_block_invoke";
    _os_log_impl(&dword_26948D000, v1, OS_LOG_TYPE_DEFAULT, "%s starting", &buf, 0xCu);
  }

  v2 = MEMORY[0x277CF93A8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getSUICKPEntryPointClass_softClass;
  v22 = getSUICKPEntryPointClass_softClass;
  if (!getSUICKPEntryPointClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v24 = __getSUICKPEntryPointClass_block_invoke;
    v25 = &unk_279C59F40;
    v26 = &v19;
    __getSUICKPEntryPointClass_block_invoke(&buf);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = objc_alloc_init(v3);
  [v2 registerProvider:{v5, v19}];

  v6 = MEMORY[0x277CF93A8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = getINUICKPEntryPointClass_softClass;
  v22 = getINUICKPEntryPointClass_softClass;
  if (!getINUICKPEntryPointClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v24 = __getINUICKPEntryPointClass_block_invoke;
    v25 = &unk_279C59F40;
    v26 = &v19;
    __getINUICKPEntryPointClass_block_invoke(&buf);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  v9 = objc_alloc_init(v7);
  [v6 registerProvider:{v9, v19}];

  v10 = MEMORY[0x277CF93A8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v11 = getVSUICKPEntryPointClass_softClass;
  v22 = getVSUICKPEntryPointClass_softClass;
  if (!getVSUICKPEntryPointClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v24 = __getVSUICKPEntryPointClass_block_invoke;
    v25 = &unk_279C59F40;
    v26 = &v19;
    __getVSUICKPEntryPointClass_block_invoke(&buf);
    v11 = v20[3];
  }

  v12 = v11;
  _Block_object_dispose(&v19, 8);
  v13 = objc_alloc_init(v11);
  [v10 registerProvider:{v13, v19}];

  v14 = MEMORY[0x277CF93A8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v15 = getSCKPProviderClass_softClass;
  v22 = getSCKPProviderClass_softClass;
  if (!getSCKPProviderClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v24 = __getSCKPProviderClass_block_invoke;
    v25 = &unk_279C59F40;
    v26 = &v19;
    __getSCKPProviderClass_block_invoke(&buf);
    v15 = v20[3];
  }

  v16 = v15;
  _Block_object_dispose(&v19, 8);
  v17 = objc_alloc_init(v15);
  [v14 registerProvider:{v17, v19}];

  v18 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SiriUICardProviderRegistry loadProviders]_block_invoke";
    _os_log_impl(&dword_26948D000, v18, OS_LOG_TYPE_DEFAULT, "%s completed", &buf, 0xCu);
  }
}

@end