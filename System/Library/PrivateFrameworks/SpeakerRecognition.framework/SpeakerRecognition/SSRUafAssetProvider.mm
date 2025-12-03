@interface SSRUafAssetProvider
- (SSRUafAssetProvider)init;
- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code;
- (void)dealloc;
@end

@implementation SSRUafAssetProvider

- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code
{
  v36 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v7 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5297;
  v30 = __Block_byref_object_dispose__5298;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5297;
  v24 = __Block_byref_object_dispose__5298;
  v25 = 0;
  uafAssetManager = self->_uafAssetManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SSRUafAssetProvider_installedAssetOfType_forLanguageCode___block_invoke;
  v16[3] = &unk_2785789F0;
  v18 = &v26;
  v19 = &v20;
  v9 = v7;
  v17 = v9;
  [(CSUAFAssetManager *)uafAssetManager getInstalledAssetofType:type forLocale:codeCopy completion:v16];
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = v27[5];
  if (v11)
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[SSRUafAssetProvider installedAssetOfType:forLanguageCode:]";
      v34 = 2112;
      v35 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s uaf asset fetching error: %@", buf, 0x16u);
    }
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __60__SSRUafAssetProvider_installedAssetOfType_forLanguageCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  uafAssetManager = self->_uafAssetManager;
  self->_uafAssetManager = 0;

  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SSRUafAssetProvider dealloc]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SSRUafAssetProvider;
  [(SSRUafAssetProvider *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (SSRUafAssetProvider)init
{
  v7.receiver = self;
  v7.super_class = SSRUafAssetProvider;
  v2 = [(SSRUafAssetProvider *)&v7 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (([MEMORY[0x277D018F8] supportsUnderstandingOnDevice] & 1) != 0 || objc_msgSend(MEMORY[0x277D018F8], "supportsHybridUnderstandingOnDevice"))
  {
    v3 = objc_alloc_init(MEMORY[0x277D018D0]);
    uafAssetManager = v2->_uafAssetManager;
    v2->_uafAssetManager = v3;
  }

  if (!v2->_uafAssetManager)
  {
    v5 = 0;
  }

  else
  {
LABEL_6:
    v5 = v2;
  }

  return v5;
}

@end