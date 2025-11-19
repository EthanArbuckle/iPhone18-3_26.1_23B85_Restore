@interface DERLogContext
- (DERLogContext)init;
- (void)dealloc;
@end

@implementation DERLogContext

- (DERLogContext)init
{
  v8.receiver = self;
  v8.super_class = DERLogContext;
  v2 = [(DERLogContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->circBuff = CircularBufferInit(v2->circBuffStorage, 0x1800uLL);
    objc_initWeak(&location, v3);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __21__DERLogContext_init__block_invoke;
    v5[3] = &unk_2788753F0;
    objc_copyWeak(&v6, &location);
    DERLogSetBlock(v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __21__DERLogContext_init__block_invoke(uint64_t a1, const char *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v6 = WeakRetained;
    v5 = strlen(a2);
    CircularBufferAdd(v4, a2, (v5 + 1));
    WeakRetained = v6;
  }
}

- (void)dealloc
{
  DERLogSetBlock(0);
  v3.receiver = self;
  v3.super_class = DERLogContext;
  [(DERLogContext *)&v3 dealloc];
}

void __25__DERLogContext_dumpLogs__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = a3;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_ERROR, "%s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end