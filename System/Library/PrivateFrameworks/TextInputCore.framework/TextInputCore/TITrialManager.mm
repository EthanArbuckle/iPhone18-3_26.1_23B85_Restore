@interface TITrialManager
+ (TITrialManager)sharedInstance;
- (TITrialManager)initWithDDSTrialProvider:(id)a3;
- (id)encodedCATrialParametersForLocale:(id)a3;
- (id)encodedLMTrialParametersForLocale:(id)a3;
- (id)favoniusLanguagePowerOverrideForLocale:(id)a3;
- (id)featuresInTrialForLocale:(id)a3;
- (id)inlineCompletionOperatingPointOverrideForLocale:(id)a3;
- (id)inputTranscoderAssetsDirectoryURLForLocale:(id)a3;
- (id)isNegativeLearningEnabledForLocale:(id)a3;
- (id)urlForContentItemType:(id)a3 asset:(id)a4 locale:(id)a5;
- (void)dealloc;
- (void)handleReceivedTrialAsset:(id)a3;
- (void)start;
- (void)trialDidReceiveAsset:(id)a3 forQuery:(id)a4;
- (void)trialDidStopForQuery:(id)a3;
@end

@implementation TITrialManager

+ (TITrialManager)sharedInstance
{
  if (+[TITrialManager sharedInstance]::once != -1)
  {
    dispatch_once(&+[TITrialManager sharedInstance]::once, &__block_literal_global_21087);
  }

  v3 = +[TITrialManager sharedInstance]::manager;

  return v3;
}

- (void)trialDidStopForQuery:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D04030];
  v5 = a3;
  v6 = [v4 defaultQuery];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[TITrialManager trialDidStopForQuery:]";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  DDS: Trial stopped", &v9, 0xCu);
    }

    [(TITrialManager *)self handleReceivedTrialAsset:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)trialDidReceiveAsset:(id)a3 forQuery:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D04030];
  v8 = a4;
  v9 = [v7 defaultQuery];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[TITrialManager trialDidReceiveAsset:forQuery:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  DDS: Received trial asset: %@", &v12, 0x16u);
    }

    [(TITrialManager *)self handleReceivedTrialAsset:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(DDSTrialProvider *)self->_ddsTrialProvider unregisterDelegate:self];
  v3.receiver = self;
  v3.super_class = TITrialManager;
  [(TITrialManager *)&v3 dealloc];
}

- (void)handleReceivedTrialAsset:(id)a3
{
  v4 = a3;
  v5 = [(TITrialManager *)self trialAsset];

  if (v5 != v4)
  {
    v6 = [(TITrialManager *)self trialAsset];
    if (v4 | v6)
    {
    }

    else
    {
      v7 = [(TITrialManager *)self trialAsset];
      v8 = [v7 isEqual:0];

      if (v8)
      {
        goto LABEL_9;
      }
    }

    [(TITrialManager *)self setTrialAsset:v4];
    v9 = [(TITrialManager *)self updateCallback];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      TIDispatchAsync();
    }
  }

LABEL_9:
}

uint64_t __43__TITrialManager_handleReceivedTrialAsset___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[TITrialManager handleReceivedTrialAsset:]_block_invoke";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  DDS: Calling trial update callback", &v4, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)urlForContentItemType:(id)a3 asset:(id)a4 locale:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277D04020]);
  v12 = [v10 localeIdentifier];
  v13 = [v11 initWithLanguageIdentifier:v12];

  v14 = [(TITrialManager *)self ddsTrialProvider];
  v33[0] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v16 = [v13 filter];
  v17 = [v14 contentItemsFromAssets:v15 matchingFilter:v16];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v27 = v9;
    v20 = *v29;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = [v22 type];
        v24 = [v23 isEqualToString:v8];

        if (v24)
        {
          v19 = [v22 path];
          goto LABEL_11;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v9 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)start
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(TITrialManager *)self didStart])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[TITrialManager start]";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Starting trial manager for A/B testing", buf, 0xCu);
    }

    [(TITrialManager *)self setDidStart:1];
    v3 = [(TITrialManager *)self ddsTrialProvider];
    [v3 registerDelegate:self];

    v4 = [(TITrialManager *)self ddsTrialProvider];
    v5 = [MEMORY[0x277D04030] defaultQuery];
    [v4 setUpTrialForQuery:v5];

    v6 = [(TITrialManager *)self ddsTrialProvider];
    v7 = [MEMORY[0x277D04030] defaultQuery];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __23__TITrialManager_start__block_invoke;
    v9[3] = &unk_278733140;
    v9[4] = self;
    [v6 fetchTrialAssetForQuery:v7 callback:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __23__TITrialManager_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[TITrialManager start]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Trial asset was not found: %@", &v8, 0x16u);
  }

  [*(a1 + 32) handleReceivedTrialAsset:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)favoniusLanguagePowerOverrideForLocale:(id)a3
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:a3];
  v4 = [v3 objectForKeyedSubscript:@"favonius_candidate_ranking"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"favonius_language_power_value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)inlineCompletionOperatingPointOverrideForLocale:(id)a3
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:a3];
  v4 = [v3 objectForKeyedSubscript:@"inline_completions"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"operating_point"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)isNegativeLearningEnabledForLocale:(id)a3
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:a3];
  v4 = [v3 objectForKeyedSubscript:@"autocorrection_learning"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"Enabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)featuresInTrialForLocale:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TITrialManager *)self trialAsset];
  v6 = [v5 locale];

  if (!v6 || ([v4 languageCode], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasPrefix:", v6), v7, !v8))
  {
    v12 = 0;
    goto LABEL_15;
  }

  v9 = [(TITrialManager *)self trialAsset];
  v10 = [v9 localURL];
  v11 = [v10 URLByAppendingPathComponent:@"FeaturesInTrial.plist"];

  v20 = 0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v11 error:&v20];
  v13 = v20;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      v16 = [v13 domain];
      if ([v16 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v17 = [v14 code];

        if (v17 == 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v22 = "[TITrialManager featuresInTrialForLocale:]";
            v23 = 2112;
            v24 = v11;
            _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  %@ not present in trial bundle", buf, 0x16u);
          }

          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[TITrialManager featuresInTrialForLocale:]";
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v14;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Error loading url %@ as dictionary: %@.", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v15 = v12;
LABEL_14:

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)inputTranscoderAssetsDirectoryURLForLocale:(id)a3
{
  v4 = a3;
  v5 = [(TITrialManager *)self trialAsset];
  if (v5)
  {
    v6 = [(TITrialManager *)self urlForContentItemType:*MEMORY[0x277D23668] asset:v5 locale:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodedCATrialParametersForLocale:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = [(TITrialManager *)self trialAsset];
  v4 = v3;
  if (v3)
  {
    v16[0] = *MEMORY[0x277D6FCF8];
    v5 = [v3 experimentIdentifiers];
    v6 = [v5 experimentId];
    v17[0] = v6;
    v16[1] = *MEMORY[0x277D6FD00];
    v7 = [v4 experimentIdentifiers];
    v8 = [v7 treatmentId];
    v17[1] = v8;
    v16[2] = *MEMORY[0x277D6FCF0];
    v9 = MEMORY[0x277CCABB0];
    v10 = [v4 experimentIdentifiers];
    v11 = [v9 numberWithInt:{objc_msgSend(v10, "deploymentId")}];
    v12 = [v11 stringValue];
    v17[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)encodedLMTrialParametersForLocale:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TITrialManager *)self trialAsset];
  if (v5)
  {
    v6 = [(TITrialManager *)self urlForContentItemType:*MEMORY[0x277D23688] asset:v5 locale:v4];
    if (v6)
    {
      v28 = v6;
      v27 = [v5 localURL];
      v26 = [v27 path];
      v7 = [v26 UTF8String];
      memset(&__p, 0, sizeof(__p));
      v8 = (v7 - 1);
      do
      {
        v9 = v8->__r_.__value_.__s.__data_[1];
        v8 = (v8 + 1);
      }

      while (v9);
      std::string::append[abi:nn200100]<char const*,0>(&__p, v7, v8);
      v10 = [*MEMORY[0x277D6FCF8] UTF8String];
      v25 = [v5 experimentIdentifiers];
      v11 = [v25 experimentId];
      v12 = [v11 UTF8String];
      std::string::basic_string[abi:nn200100]<0>(v33, v10);
      std::string::basic_string[abi:nn200100]<0>(v34, v12);
      v13 = [*MEMORY[0x277D6FD00] UTF8String];
      v14 = [v5 experimentIdentifiers];
      v15 = [v14 treatmentId];
      v16 = [v15 UTF8String];
      std::string::basic_string[abi:nn200100]<0>(v35, v13);
      std::string::basic_string[abi:nn200100]<0>(v36, v16);
      v17 = [*MEMORY[0x277D6FCF0] UTF8String];
      v18 = [v5 experimentIdentifiers];
      std::to_string(&v29, [v18 deploymentId]);
      std::string::basic_string[abi:nn200100]<0>(v37, v17);
      v19 = 0;
      v38 = *&v29.__r_.__value_.__l.__data_;
      v39[0] = *(&v29.__r_.__value_.__l + 2);
      memset(&v29, 0, sizeof(v29));
      v32[0] = 0;
      v32[1] = 0;
      v31 = v32;
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v31, v32, &v33[v19]);
        v19 += 48;
      }

      while (v19 != 144);
      for (i = 0; i != -18; i -= 6)
      {
        v21 = &v33[i * 8];
        if (SHIBYTE(v39[i]) < 0)
        {
          operator delete(v21[15]);
        }

        if (*(v21 + 119) < 0)
        {
          operator delete(v21[12]);
        }
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v22 = LM::TrialParameters::copyEncodedRepresentation(&__p);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v32[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (TITrialManager)initWithDDSTrialProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TITrialManager;
  v6 = [(TITrialManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ddsTrialProvider, a3);
  }

  return v7;
}

void __32__TITrialManager_sharedInstance__block_invoke()
{
  v0 = [TITrialManager alloc];
  v3 = objc_alloc_init(DDSTrialProvider);
  v1 = [(TITrialManager *)v0 initWithDDSTrialProvider:v3];
  v2 = +[TITrialManager sharedInstance]::manager;
  +[TITrialManager sharedInstance]::manager = v1;
}

@end