@interface TIFilterParameterLoader
- (TIFilterParameterLoader)init;
- (id)loadCandidateFilterSpecificationForLanguageIdentifier:(id)a3;
- (id)loadContentsForPlistWithLanguage:(id)a3;
- (id)parameterOverridesFolderURL;
- (void)loadCandidateFilterSpecificationForLanguageIdentifier:(id)a3 targetQueue:(id)a4 completion:(id)a5;
@end

@implementation TIFilterParameterLoader

- (id)parameterOverridesFolderURL
{
  v2 = TI_KB_USER_DIRECTORY();
  v3 = [v2 stringByAppendingPathComponent:@"Filters"];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (id)loadContentsForPlistWithLanguage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install != 1)
  {
    goto LABEL_7;
  }

  v4 = MEMORY[0x277CBEBC0];
  v5 = [(TIFilterParameterLoader *)self universalParameterPlist];
  v6 = [(TIFilterParameterLoader *)self parameterOverridesFolderURL];
  v7 = [v4 fileURLWithPath:v5 relativeToURL:v6];

  v8 = MEMORY[0x277CBEAC0];
  v9 = [v7 path];
  v10 = [v8 dictionaryWithContentsOfFile:v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v19 = [v7 path];
    v20 = 136315394;
    v21 = "[TIFilterParameterLoader loadContentsForPlistWithLanguage:]";
    v22 = 2080;
    v23 = [v19 UTF8String];
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Looking for candidate filter plist file under: %s", &v20, 0x16u);
  }

  if (!v10)
  {
LABEL_7:
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [(TIFilterParameterLoader *)self universalParameterPlist];
    v13 = [v11 pathForResource:v12 ofType:&stru_283FDFAF8];

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = [v13 UTF8String];
      v20 = 136315394;
      v21 = "[TIFilterParameterLoader loadContentsForPlistWithLanguage:]";
      v22 = 2080;
      v23 = v18;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Looking for candidate filter plist file under: %s", &v20, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      v14 = @"True";
    }

    else
    {
      v14 = @"False";
    }

    v15 = [(__CFString *)v14 UTF8String];
    v20 = 136315394;
    v21 = "[TIFilterParameterLoader loadContentsForPlistWithLanguage:]";
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  A valid candidate filter plist was found: %s", &v20, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)loadCandidateFilterSpecificationForLanguageIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10693;
  v14 = __Block_byref_object_dispose__10694;
  v15 = 0;
  v5 = [(TIFilterParameterLoader *)self loadQueue];
  v9 = v4;
  v6 = v4;
  TIDispatchSync();

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __81__TIFilterParameterLoader_loadCandidateFilterSpecificationForLanguageIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadContentsForPlistWithLanguage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)loadCandidateFilterSpecificationForLanguageIdentifier:(id)a3 targetQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TIFilterParameterLoader *)self loadQueue];
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  TIDispatchAsync();
}

void __104__TIFilterParameterLoader_loadCandidateFilterSpecificationForLanguageIdentifier_targetQueue_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadContentsForPlistWithLanguage:*(a1 + 40)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = v3;
    v5 = v2;
    TIDispatchAsync();
  }
}

- (TIFilterParameterLoader)init
{
  v8.receiver = self;
  v8.super_class = TIFilterParameterLoader;
  v2 = [(TIFilterParameterLoader *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.TextInput.TICandidateQualityParameterLoader", v4);
    loadQueue = v2->_loadQueue;
    v2->_loadQueue = v5;
  }

  return v2;
}

@end