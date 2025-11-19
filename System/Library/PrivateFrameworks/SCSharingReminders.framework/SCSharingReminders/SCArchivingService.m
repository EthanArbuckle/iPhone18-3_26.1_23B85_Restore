@interface SCArchivingService
- (void)getBoolAtKey:(int64_t)a3 completion:(id)a4;
- (void)getIntAtKey:(int64_t)a3 completion:(id)a4;
- (void)getObjectOfClass:(Class)a3 atKey:(id)a4 completion:(id)a5;
- (void)getValueAtKey:(int64_t)a3 completion:(id)a4;
- (void)setObject:(id)a3 atKey:(id)a4 completion:(id)a5;
- (void)setValue:(id)a3 atKey:(int64_t)a4 completion:(id)a5;
@end

@implementation SCArchivingService

- (void)setObject:(id)a3 atKey:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SCSharingReminderArchiver sharedInstance];
  [v10 setObject:v9 atKey:v8 withCompletion:v7];
}

- (void)getObjectOfClass:(Class)a3 atKey:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[SCSharingReminderArchiver sharedInstance];
  [v9 getObjectOfClass:a3 atKey:v8 completion:v7];
}

- (void)setValue:(id)a3 atKey:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = storeKeyToString(a4);
  [(SCArchivingService *)self setObject:v9 atKey:v10 completion:v8];
}

- (void)getValueAtKey:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = storeKeyToString(a3);
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SCArchivingService_getValueAtKey_completion___block_invoke;
  v11[3] = &unk_279B398F0;
  objc_copyWeak(v14, &location);
  v9 = v7;
  v12 = v9;
  v14[1] = a3;
  v10 = v6;
  v13 = v10;
  [(SCArchivingService *)self getObjectOfClass:v8 atKey:v9 completion:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __47__SCArchivingService_getValueAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = SCLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_262556000, v8, OS_LOG_TYPE_INFO, "Couldn't find value for %@, using and setting default instead", buf, 0xCu);
      }

      v10 = [SCSharingReminderKVStoreValue defaultForKey:*(a1 + 56)];
      v11 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__SCArchivingService_getValueAtKey_completion___block_invoke_2;
      v14[3] = &unk_279B398C8;
      v17 = *(a1 + 40);
      v15 = v10;
      v16 = v6;
      v12 = v10;
      [WeakRetained setValue:v12 atKey:v11 completion:v14];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __47__SCArchivingService_getValueAtKey_completion___block_invoke_2(void *a1, char a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = SCLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__SCArchivingService_getValueAtKey_completion___block_invoke_2_cold_1(v8);
    }

    v9 = a1[6];
    v10 = a1[4];
    v11 = [v5 code];
    v15[0] = a1[5];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = [SCDaemonError errorWithCode:v11 underlyingErrors:v12];
    (*(v9 + 16))(v9, v10, v13);
  }

  else
  {
    v6 = a1[5];
    v7 = a1[4];
    (*(a1[6] + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getIntAtKey:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SCArchivingService_getIntAtKey_completion___block_invoke;
  v8[3] = &unk_279B39918;
  v9 = v6;
  v7 = v6;
  [(SCArchivingService *)self getValueAtKey:a3 completion:v8];
}

void __45__SCArchivingService_getIntAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

- (void)getBoolAtKey:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SCArchivingService_getBoolAtKey_completion___block_invoke;
  v8[3] = &unk_279B39918;
  v9 = v6;
  v7 = v6;
  [(SCArchivingService *)self getValueAtKey:a3 completion:v8];
}

void __46__SCArchivingService_getBoolAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

@end