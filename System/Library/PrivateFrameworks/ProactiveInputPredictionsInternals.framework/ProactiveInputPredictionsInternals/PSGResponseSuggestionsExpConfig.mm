@interface PSGResponseSuggestionsExpConfig
- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withLanguage:(id)language withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets;
- (void)_fillDefaultValuesForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PSGResponseSuggestionsExpConfig

- (void)_fillDefaultValuesForFactors
{
  v20 = objc_opt_new();
  if ([(NSString *)self->_treatmentName length])
  {
    treatmentName = self->_treatmentName;
  }

  else
  {
    treatmentName = [v20 treatmentName];
  }

  treatmentName = self->_treatmentName;
  self->_treatmentName = treatmentName;

  rolloutId = [(TRIRolloutIdentifiers *)self->_rolloutIdentifiers rolloutId];
  if ([rolloutId length])
  {
    rolloutIdentifiers = self->_rolloutIdentifiers;
  }

  else
  {
    rolloutIdentifiers = [v20 rolloutIdentifiers];
  }

  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = rolloutIdentifiers;

  treatmentId = [(TRIExperimentIdentifiers *)self->_experimentIdentifiers treatmentId];
  if ([treatmentId length])
  {
    experimentIdentifiers = self->_experimentIdentifiers;
  }

  else
  {
    experimentIdentifiers = [v20 experimentIdentifiers];
  }

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  isMLModelEnabled = self->_isMLModelEnabled;
  if ((isMLModelEnabled & 1) == 0)
  {
    isMLModelEnabled = [v20 isMLModelEnabled];
  }

  self->_isMLModelEnabled = isMLModelEnabled;
  if ([(NSString *)self->_inferenceModelFilePath length])
  {
    inferenceModelFilePath = self->_inferenceModelFilePath;
  }

  else
  {
    inferenceModelFilePath = [v20 inferenceModelFilePath];
  }

  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = inferenceModelFilePath;

  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    inferenceModelConfigPath = self->_inferenceModelConfigPath;
  }

  else
  {
    inferenceModelConfigPath = [v20 inferenceModelConfigPath];
  }

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  if ([(NSString *)self->_espressoBinFilePath length])
  {
    espressoBinFilePath = self->_espressoBinFilePath;
  }

  else
  {
    espressoBinFilePath = [v20 espressoBinFilePath];
  }

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;

  if ([(NSString *)self->_vocabFilePath length])
  {
    vocabFilePath = self->_vocabFilePath;
  }

  else
  {
    vocabFilePath = [v20 vocabFilePath];
  }

  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = vocabFilePath;
}

- (void)_setDefaultValuesForFactors
{
  v17 = objc_opt_new();
  treatmentName = [v17 treatmentName];
  treatmentName = self->_treatmentName;
  self->_treatmentName = treatmentName;

  rolloutIdentifiers = [v17 rolloutIdentifiers];
  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = rolloutIdentifiers;

  experimentIdentifiers = [v17 experimentIdentifiers];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = experimentIdentifiers;

  self->_isMLModelEnabled = [v17 isMLModelEnabled];
  inferenceModelFilePath = [v17 inferenceModelFilePath];
  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = inferenceModelFilePath;

  inferenceModelConfigPath = [v17 inferenceModelConfigPath];
  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = inferenceModelConfigPath;

  espressoBinFilePath = [v17 espressoBinFilePath];
  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = espressoBinFilePath;

  vocabFilePath = [v17 vocabFilePath];
  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = vocabFilePath;
}

- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)name withLanguage:(id)language withTrialClient:(id)client shouldDownloadAssets:(BOOL)assets
{
  v115[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  languageCopy = language;
  clientCopy = client;
  v96.receiver = self;
  v96.super_class = PSGResponseSuggestionsExpConfig;
  v14 = [(PSGResponseSuggestionsExpConfig *)&v96 init];
  if (v14)
  {
    if (!nameCopy)
    {
      goto LABEL_30;
    }

    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = nameCopy;
      _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "ZKW Experiment config -- setting up config for namespace %@", buf, 0xCu);
    }

    [clientCopy refresh];
    objc_storeStrong(&v14->_namespaceName, name);
    objc_storeStrong(&v14->_language, language);
    v16 = [clientCopy rolloutIdentifiersWithNamespaceName:v14->_namespaceName];
    rolloutIdentifiers = v14->_rolloutIdentifiers;
    v14->_rolloutIdentifiers = v16;

    v18 = [clientCopy experimentIdentifiersWithNamespaceName:v14->_namespaceName];
    experimentIdentifiers = v14->_experimentIdentifiers;
    v14->_experimentIdentifiers = v18;

    treatmentId = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if (![treatmentId length])
    {
      rolloutId = [(TRIRolloutIdentifiers *)v14->_rolloutIdentifiers rolloutId];
      v22 = [rolloutId length];

      if (v22)
      {
        goto LABEL_8;
      }

      treatmentId = psg_default_log_handle();
      if (os_log_type_enabled(treatmentId, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, treatmentId, OS_LOG_TYPE_DEFAULT, "ZKW using on-device values since treatment id and rollout id is unset.", buf, 2u);
      }
    }

LABEL_8:
    treatmentId2 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if ([treatmentId2 length])
    {
      experimentId = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
      v25 = [experimentId length];

      if (!v25)
      {
        v26 = psg_default_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          namespaceName = v14->_namespaceName;
          *buf = 138412290;
          v98 = namespaceName;
          _os_log_fault_impl(&dword_260D36000, v26, OS_LOG_TYPE_FAULT, "ZKW: treatmentId without experimentId for namespace %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v28 = [clientCopy levelForFactor:@"treatmentName" withNamespaceName:v14->_namespaceName];
    stringValue = [v28 stringValue];
    treatmentName = v14->_treatmentName;
    v14->_treatmentName = stringValue;

    v31 = [clientCopy levelForFactor:@"modelDescription" withNamespaceName:v14->_namespaceName];
    stringValue2 = [v31 stringValue];
    inferenceModelDescription = v14->_inferenceModelDescription;
    v14->_inferenceModelDescription = stringValue2;

    v34 = [clientCopy levelForFactor:@"mlModelEnabled" withNamespaceName:v14->_namespaceName];
    v14->_isMLModelEnabled = [v34 BOOLeanValue];

    if ([(NSString *)v14->_treatmentName length])
    {
      if (v14->_isMLModelEnabled)
      {
        if (![(NSString *)v14->_inferenceModelDescription length])
        {
          v35 = psg_default_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v35, OS_LOG_TYPE_FAULT, "ZKW: model description expected but not found", buf, 2u);
          }
        }

        v36 = [clientCopy levelForFactor:@"modelAssets" withNamespaceName:v14->_namespaceName];
        directoryValue = [v36 directoryValue];

        if ([directoryValue hasPath] & 1) != 0 || (objc_msgSend(directoryValue, "isOnDemand"))
        {
          if (([directoryValue hasPath] & 1) != 0 || assets)
          {
            if ([directoryValue hasPath])
            {
              path = [directoryValue path];
              v91 = 0;
              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v44 = [defaultManager fileExistsAtPath:path isDirectory:&v91];

              if (v44 && (v91 & 1) != 0)
              {
                v45 = [(NSString *)v14->_treatmentName stringByAppendingString:@".model.chunk"];
                v46 = [(NSString *)v14->_treatmentName stringByAppendingString:@".config.plist"];
                v47 = [(NSString *)v14->_treatmentName stringByAppendingString:@".espresso.bin"];
                v48 = [(NSString *)v14->_treatmentName stringByAppendingString:@".vocab.trie"];
                v49 = [path stringByAppendingPathComponent:v45];
                inferenceModelFilePath = v14->_inferenceModelFilePath;
                v14->_inferenceModelFilePath = v49;

                v90 = v46;
                v51 = [path stringByAppendingPathComponent:v46];
                inferenceModelConfigPath = v14->_inferenceModelConfigPath;
                v14->_inferenceModelConfigPath = v51;

                v89 = v47;
                v53 = [path stringByAppendingPathComponent:v47];
                espressoBinFilePath = v14->_espressoBinFilePath;
                v14->_espressoBinFilePath = v53;

                v88 = v48;
                v55 = [path stringByAppendingPathComponent:v48];
                vocabFilePath = v14->_vocabFilePath;
                v14->_vocabFilePath = v55;

                defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                LOBYTE(v47) = [defaultManager2 isReadableFileAtPath:v14->_inferenceModelFilePath];

                if ((v47 & 1) == 0)
                {
                  v58 = v14->_inferenceModelFilePath;
                  v14->_inferenceModelFilePath = 0;
                }

                defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
                v60 = [defaultManager3 isReadableFileAtPath:v14->_inferenceModelConfigPath];

                if ((v60 & 1) == 0)
                {
                  v61 = v14->_inferenceModelConfigPath;
                  v14->_inferenceModelConfigPath = 0;
                }

                defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                v63 = [defaultManager4 isReadableFileAtPath:v14->_espressoBinFilePath];

                v64 = v45;
                if ((v63 & 1) == 0)
                {
                  v65 = v14->_espressoBinFilePath;
                  v14->_espressoBinFilePath = 0;
                }

                defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
                v67 = [defaultManager5 isReadableFileAtPath:v14->_vocabFilePath];

                if ((v67 & 1) == 0)
                {
                  v68 = v14->_vocabFilePath;
                  v14->_vocabFilePath = 0;
                }

                if (v14->_inferenceModelConfigPath && (v14->_inferenceModelFilePath || v14->_espressoBinFilePath))
                {
                  v69 = psg_default_log_handle();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    v83 = v14->_treatmentName;
                    v84 = v14->_inferenceModelDescription;
                    v85 = v14->_inferenceModelConfigPath;
                    v86 = v14->_espressoBinFilePath;
                    v87 = v14->_vocabFilePath;
                    v82 = v14->_inferenceModelFilePath;
                    experimentId2 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
                    treatmentId3 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
                    isMLModelEnabled = v14->_isMLModelEnabled;
                    *buf = 138414338;
                    v98 = v83;
                    v99 = 2112;
                    v100 = v84;
                    v101 = 2112;
                    v102 = v82;
                    v103 = 2112;
                    v104 = v85;
                    v105 = 2112;
                    v106 = v86;
                    v107 = 2112;
                    v108 = v87;
                    v109 = 2112;
                    v110 = experimentId2;
                    v111 = 2112;
                    v112 = treatmentId3;
                    v113 = 1024;
                    v114 = isMLModelEnabled;
                    _os_log_impl(&dword_260D36000, v69, OS_LOG_TYPE_DEFAULT, "ZKW reading from trial factor values {treatmentName: %@ inferenceModelDescription: %@ inferenceModelFilePath: %@ inferenceModelConfigPath: %@ espresso.bin: %@ vocab: %@ experimentId: %@ treatmentId: %@ isMLModelEnabled: %d}", buf, 0x58u);
                  }

                  v27 = v14;
                }

                else
                {
                  v78 = psg_default_log_handle();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
                  {
                    v79 = v14->_inferenceModelFilePath;
                    v80 = v14->_inferenceModelConfigPath;
                    v81 = v14->_espressoBinFilePath;
                    *buf = 138412802;
                    v98 = v79;
                    v99 = 2112;
                    v100 = v80;
                    v101 = 2112;
                    v102 = v81;
                    _os_log_fault_impl(&dword_260D36000, v78, OS_LOG_TYPE_FAULT, "ZKW: some required file factor not readable with config path %@, inference path %@, and espresso bin path %@", buf, 0x20u);
                  }

                  v27 = 0;
                }
              }

              else
              {
                v64 = psg_default_log_handle();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_260D36000, v64, OS_LOG_TYPE_FAULT, "ZKW: directory factor download completed, but directory path not found", buf, 2u);
                }

                v27 = 0;
              }

              goto LABEL_63;
            }

            v73 = psg_default_log_handle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260D36000, v73, OS_LOG_TYPE_DEFAULT, "ZKW: assets directory factor is being queued for download", buf, 2u);
            }

            if (initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasOnceToken11 != -1)
            {
              dispatch_once(&initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasOnceToken11, &__block_literal_global_1648);
            }

            v115[0] = @"modelAssets";
            v74 = MEMORY[0x277CBEA60];
            path = initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
            v75 = [v74 arrayWithObjects:v115 count:1];
            v76 = v14->_namespaceName;
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v94[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_2;
            v94[3] = &unk_279ABE428;
            v95 = nameCopy;
            v92[0] = MEMORY[0x277D85DD0];
            v92[1] = 3221225472;
            v92[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_35;
            v92[3] = &unk_279ABE450;
            v93 = v14;
            [clientCopy downloadLevelsForFactors:v75 withNamespace:v76 queue:path options:0 progress:v94 completion:v92];
          }

          else
          {
            path = psg_default_log_handle();
            if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v98 = nameCopy;
              _os_log_impl(&dword_260D36000, path, OS_LOG_TYPE_DEFAULT, "ZKW: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
            }
          }
        }

        else
        {
          path = psg_default_log_handle();
          if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, path, OS_LOG_TYPE_FAULT, "ZKW: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
          }
        }

        v27 = 0;
LABEL_63:

        goto LABEL_35;
      }

      v40 = psg_default_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v40, OS_LOG_TYPE_DEFAULT, "ZKW using default values since the ML model is not enabled.", buf, 2u);
      }

      [(PSGResponseSuggestionsExpConfig *)v14 _fillDefaultValuesForFactors];
LABEL_34:
      v27 = v14;
      goto LABEL_35;
    }

    v39 = psg_default_log_handle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v39, OS_LOG_TYPE_DEFAULT, "ZKW: treatment name required but not found", buf, 2u);
    }

LABEL_30:
    [(PSGResponseSuggestionsExpConfig *)v14 _setDefaultValuesForFactors];
    goto LABEL_34;
  }

LABEL_13:
  v27 = 0;
LABEL_35:

  v41 = *MEMORY[0x277D85DE8];
  return v27;
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = psg_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_260D36000, v4, OS_LOG_TYPE_DEFAULT, "ZKW: download progress %d%% for namespace %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_35(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = psg_default_log_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 userInfo];
      v9 = [v8 description];
      v10 = *(*(a1 + 32) + 16);
      v13 = 138412802;
      *v14 = v9;
      *&v14[8] = 1024;
      *&v14[10] = a2;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "ZKW: Trial download error %@ with result %d for namespace %@", &v13, 0x1Cu);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1 + 32) + 16);
    v13 = 67109378;
    *v14 = a2;
    *&v14[4] = 2112;
    *&v14[6] = v11;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "ZKW: Trial download result %d for namespace %@", &v13, 0x12u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGResponseSuggestions-downloadAssets" qosClass:9];
  v2 = initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
  initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end