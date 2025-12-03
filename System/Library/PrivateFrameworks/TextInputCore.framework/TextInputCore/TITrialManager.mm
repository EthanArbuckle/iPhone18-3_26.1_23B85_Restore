@interface TITrialManager
+ (TITrialManager)sharedInstance;
- (TITrialManager)initWithDDSTrialProvider:(id)provider;
- (id)encodedCATrialParametersForLocale:(id)locale;
- (id)encodedLMTrialParametersForLocale:(id)locale;
- (id)favoniusLanguagePowerOverrideForLocale:(id)locale;
- (id)featuresInTrialForLocale:(id)locale;
- (id)inlineCompletionOperatingPointOverrideForLocale:(id)locale;
- (id)inputTranscoderAssetsDirectoryURLForLocale:(id)locale;
- (id)isNegativeLearningEnabledForLocale:(id)locale;
- (id)urlForContentItemType:(id)type asset:(id)asset locale:(id)locale;
- (void)dealloc;
- (void)handleReceivedTrialAsset:(id)asset;
- (void)start;
- (void)trialDidReceiveAsset:(id)asset forQuery:(id)query;
- (void)trialDidStopForQuery:(id)query;
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

- (void)trialDidStopForQuery:(id)query
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D04030];
  queryCopy = query;
  defaultQuery = [v4 defaultQuery];
  v7 = [queryCopy isEqual:defaultQuery];

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

- (void)trialDidReceiveAsset:(id)asset forQuery:(id)query
{
  v16 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = MEMORY[0x277D04030];
  queryCopy = query;
  defaultQuery = [v7 defaultQuery];
  v10 = [queryCopy isEqual:defaultQuery];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[TITrialManager trialDidReceiveAsset:forQuery:]";
      v14 = 2112;
      v15 = assetCopy;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  DDS: Received trial asset: %@", &v12, 0x16u);
    }

    [(TITrialManager *)self handleReceivedTrialAsset:assetCopy];
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

- (void)handleReceivedTrialAsset:(id)asset
{
  assetCopy = asset;
  trialAsset = [(TITrialManager *)self trialAsset];

  if (trialAsset != assetCopy)
  {
    trialAsset2 = [(TITrialManager *)self trialAsset];
    if (assetCopy | trialAsset2)
    {
    }

    else
    {
      trialAsset3 = [(TITrialManager *)self trialAsset];
      v8 = [trialAsset3 isEqual:0];

      if (v8)
      {
        goto LABEL_9;
      }
    }

    [(TITrialManager *)self setTrialAsset:assetCopy];
    updateCallback = [(TITrialManager *)self updateCallback];
    v10 = updateCallback;
    if (updateCallback)
    {
      v11 = updateCallback;
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

- (id)urlForContentItemType:(id)type asset:(id)asset locale:(id)locale
{
  v33[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  assetCopy = asset;
  localeCopy = locale;
  v11 = objc_alloc(MEMORY[0x277D04020]);
  localeIdentifier = [localeCopy localeIdentifier];
  v13 = [v11 initWithLanguageIdentifier:localeIdentifier];

  ddsTrialProvider = [(TITrialManager *)self ddsTrialProvider];
  v33[0] = assetCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  filter = [v13 filter];
  v17 = [ddsTrialProvider contentItemsFromAssets:v15 matchingFilter:filter];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  path = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (path)
  {
    v27 = assetCopy;
    v20 = *v29;
    while (2)
    {
      for (i = 0; i != path; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        type = [v22 type];
        v24 = [type isEqualToString:typeCopy];

        if (v24)
        {
          path = [v22 path];
          goto LABEL_11;
        }
      }

      path = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (path)
      {
        continue;
      }

      break;
    }

LABEL_11:
    assetCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return path;
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
    ddsTrialProvider = [(TITrialManager *)self ddsTrialProvider];
    [ddsTrialProvider registerDelegate:self];

    ddsTrialProvider2 = [(TITrialManager *)self ddsTrialProvider];
    defaultQuery = [MEMORY[0x277D04030] defaultQuery];
    [ddsTrialProvider2 setUpTrialForQuery:defaultQuery];

    ddsTrialProvider3 = [(TITrialManager *)self ddsTrialProvider];
    defaultQuery2 = [MEMORY[0x277D04030] defaultQuery];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __23__TITrialManager_start__block_invoke;
    v9[3] = &unk_278733140;
    v9[4] = self;
    [ddsTrialProvider3 fetchTrialAssetForQuery:defaultQuery2 callback:v9];
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

- (id)favoniusLanguagePowerOverrideForLocale:(id)locale
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:locale];
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

- (id)inlineCompletionOperatingPointOverrideForLocale:(id)locale
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:locale];
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

- (id)isNegativeLearningEnabledForLocale:(id)locale
{
  v3 = [(TITrialManager *)self featuresInTrialForLocale:locale];
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

- (id)featuresInTrialForLocale:(id)locale
{
  v27 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  trialAsset = [(TITrialManager *)self trialAsset];
  locale = [trialAsset locale];

  if (!locale || ([localeCopy languageCode], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasPrefix:", locale), v7, !v8))
  {
    v12 = 0;
    goto LABEL_15;
  }

  trialAsset2 = [(TITrialManager *)self trialAsset];
  localURL = [trialAsset2 localURL];
  v11 = [localURL URLByAppendingPathComponent:@"FeaturesInTrial.plist"];

  v20 = 0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v11 error:&v20];
  v13 = v20;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      domain = [v13 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v14 code];

        if (code == 4)
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

- (id)inputTranscoderAssetsDirectoryURLForLocale:(id)locale
{
  localeCopy = locale;
  trialAsset = [(TITrialManager *)self trialAsset];
  if (trialAsset)
  {
    v6 = [(TITrialManager *)self urlForContentItemType:*MEMORY[0x277D23668] asset:trialAsset locale:localeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodedCATrialParametersForLocale:(id)locale
{
  v17[3] = *MEMORY[0x277D85DE8];
  trialAsset = [(TITrialManager *)self trialAsset];
  v4 = trialAsset;
  if (trialAsset)
  {
    v16[0] = *MEMORY[0x277D6FCF8];
    experimentIdentifiers = [trialAsset experimentIdentifiers];
    experimentId = [experimentIdentifiers experimentId];
    v17[0] = experimentId;
    v16[1] = *MEMORY[0x277D6FD00];
    experimentIdentifiers2 = [v4 experimentIdentifiers];
    treatmentId = [experimentIdentifiers2 treatmentId];
    v17[1] = treatmentId;
    v16[2] = *MEMORY[0x277D6FCF0];
    v9 = MEMORY[0x277CCABB0];
    experimentIdentifiers3 = [v4 experimentIdentifiers];
    v11 = [v9 numberWithInt:{objc_msgSend(experimentIdentifiers3, "deploymentId")}];
    stringValue = [v11 stringValue];
    v17[2] = stringValue;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)encodedLMTrialParametersForLocale:(id)locale
{
  v39[1] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  trialAsset = [(TITrialManager *)self trialAsset];
  if (trialAsset)
  {
    v6 = [(TITrialManager *)self urlForContentItemType:*MEMORY[0x277D23688] asset:trialAsset locale:localeCopy];
    if (v6)
    {
      v28 = v6;
      localURL = [trialAsset localURL];
      path = [localURL path];
      uTF8String = [path UTF8String];
      memset(&__p, 0, sizeof(__p));
      v8 = (uTF8String - 1);
      do
      {
        v9 = v8->__r_.__value_.__s.__data_[1];
        v8 = (v8 + 1);
      }

      while (v9);
      std::string::append[abi:nn200100]<char const*,0>(&__p, uTF8String, v8);
      uTF8String2 = [*MEMORY[0x277D6FCF8] UTF8String];
      experimentIdentifiers = [trialAsset experimentIdentifiers];
      experimentId = [experimentIdentifiers experimentId];
      uTF8String3 = [experimentId UTF8String];
      std::string::basic_string[abi:nn200100]<0>(v33, uTF8String2);
      std::string::basic_string[abi:nn200100]<0>(v34, uTF8String3);
      uTF8String4 = [*MEMORY[0x277D6FD00] UTF8String];
      experimentIdentifiers2 = [trialAsset experimentIdentifiers];
      treatmentId = [experimentIdentifiers2 treatmentId];
      uTF8String5 = [treatmentId UTF8String];
      std::string::basic_string[abi:nn200100]<0>(v35, uTF8String4);
      std::string::basic_string[abi:nn200100]<0>(v36, uTF8String5);
      uTF8String6 = [*MEMORY[0x277D6FCF0] UTF8String];
      experimentIdentifiers3 = [trialAsset experimentIdentifiers];
      std::to_string(&v29, [experimentIdentifiers3 deploymentId]);
      std::string::basic_string[abi:nn200100]<0>(v37, uTF8String6);
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

- (TITrialManager)initWithDDSTrialProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = TITrialManager;
  v6 = [(TITrialManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ddsTrialProvider, provider);
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