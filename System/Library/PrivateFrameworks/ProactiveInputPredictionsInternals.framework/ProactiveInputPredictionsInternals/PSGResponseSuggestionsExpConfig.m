@interface PSGResponseSuggestionsExpConfig
- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)a3 withLanguage:(id)a4 withTrialClient:(id)a5 shouldDownloadAssets:(BOOL)a6;
- (void)_fillDefaultValuesForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PSGResponseSuggestionsExpConfig

- (void)_fillDefaultValuesForFactors
{
  v20 = objc_opt_new();
  if ([(NSString *)self->_treatmentName length])
  {
    v3 = self->_treatmentName;
  }

  else
  {
    v3 = [v20 treatmentName];
  }

  treatmentName = self->_treatmentName;
  self->_treatmentName = v3;

  v5 = [(TRIRolloutIdentifiers *)self->_rolloutIdentifiers rolloutId];
  if ([v5 length])
  {
    v6 = self->_rolloutIdentifiers;
  }

  else
  {
    v6 = [v20 rolloutIdentifiers];
  }

  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = v6;

  v8 = [(TRIExperimentIdentifiers *)self->_experimentIdentifiers treatmentId];
  if ([v8 length])
  {
    v9 = self->_experimentIdentifiers;
  }

  else
  {
    v9 = [v20 experimentIdentifiers];
  }

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = v9;

  isMLModelEnabled = self->_isMLModelEnabled;
  if ((isMLModelEnabled & 1) == 0)
  {
    isMLModelEnabled = [v20 isMLModelEnabled];
  }

  self->_isMLModelEnabled = isMLModelEnabled;
  if ([(NSString *)self->_inferenceModelFilePath length])
  {
    v12 = self->_inferenceModelFilePath;
  }

  else
  {
    v12 = [v20 inferenceModelFilePath];
  }

  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = v12;

  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    v14 = self->_inferenceModelConfigPath;
  }

  else
  {
    v14 = [v20 inferenceModelConfigPath];
  }

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = v14;

  if ([(NSString *)self->_espressoBinFilePath length])
  {
    v16 = self->_espressoBinFilePath;
  }

  else
  {
    v16 = [v20 espressoBinFilePath];
  }

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = v16;

  if ([(NSString *)self->_vocabFilePath length])
  {
    v18 = self->_vocabFilePath;
  }

  else
  {
    v18 = [v20 vocabFilePath];
  }

  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = v18;
}

- (void)_setDefaultValuesForFactors
{
  v17 = objc_opt_new();
  v3 = [v17 treatmentName];
  treatmentName = self->_treatmentName;
  self->_treatmentName = v3;

  v5 = [v17 rolloutIdentifiers];
  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = v5;

  v7 = [v17 experimentIdentifiers];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = v7;

  self->_isMLModelEnabled = [v17 isMLModelEnabled];
  v9 = [v17 inferenceModelFilePath];
  inferenceModelFilePath = self->_inferenceModelFilePath;
  self->_inferenceModelFilePath = v9;

  v11 = [v17 inferenceModelConfigPath];
  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = v11;

  v13 = [v17 espressoBinFilePath];
  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = v13;

  v15 = [v17 vocabFilePath];
  vocabFilePath = self->_vocabFilePath;
  self->_vocabFilePath = v15;
}

- (PSGResponseSuggestionsExpConfig)initWithNamespaceName:(id)a3 withLanguage:(id)a4 withTrialClient:(id)a5 shouldDownloadAssets:(BOOL)a6
{
  v115[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v96.receiver = self;
  v96.super_class = PSGResponseSuggestionsExpConfig;
  v14 = [(PSGResponseSuggestionsExpConfig *)&v96 init];
  if (v14)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = v11;
      _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "ZKW Experiment config -- setting up config for namespace %@", buf, 0xCu);
    }

    [v13 refresh];
    objc_storeStrong(&v14->_namespaceName, a3);
    objc_storeStrong(&v14->_language, a4);
    v16 = [v13 rolloutIdentifiersWithNamespaceName:v14->_namespaceName];
    rolloutIdentifiers = v14->_rolloutIdentifiers;
    v14->_rolloutIdentifiers = v16;

    v18 = [v13 experimentIdentifiersWithNamespaceName:v14->_namespaceName];
    experimentIdentifiers = v14->_experimentIdentifiers;
    v14->_experimentIdentifiers = v18;

    v20 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if (![v20 length])
    {
      v21 = [(TRIRolloutIdentifiers *)v14->_rolloutIdentifiers rolloutId];
      v22 = [v21 length];

      if (v22)
      {
        goto LABEL_8;
      }

      v20 = psg_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v20, OS_LOG_TYPE_DEFAULT, "ZKW using on-device values since treatment id and rollout id is unset.", buf, 2u);
      }
    }

LABEL_8:
    v23 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
    if ([v23 length])
    {
      v24 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
      v25 = [v24 length];

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

    v28 = [v13 levelForFactor:@"treatmentName" withNamespaceName:v14->_namespaceName];
    v29 = [v28 stringValue];
    treatmentName = v14->_treatmentName;
    v14->_treatmentName = v29;

    v31 = [v13 levelForFactor:@"modelDescription" withNamespaceName:v14->_namespaceName];
    v32 = [v31 stringValue];
    inferenceModelDescription = v14->_inferenceModelDescription;
    v14->_inferenceModelDescription = v32;

    v34 = [v13 levelForFactor:@"mlModelEnabled" withNamespaceName:v14->_namespaceName];
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

        v36 = [v13 levelForFactor:@"modelAssets" withNamespaceName:v14->_namespaceName];
        v37 = [v36 directoryValue];

        if ([v37 hasPath] & 1) != 0 || (objc_msgSend(v37, "isOnDemand"))
        {
          if (([v37 hasPath] & 1) != 0 || a6)
          {
            if ([v37 hasPath])
            {
              v38 = [v37 path];
              v91 = 0;
              v43 = [MEMORY[0x277CCAA00] defaultManager];
              v44 = [v43 fileExistsAtPath:v38 isDirectory:&v91];

              if (v44 && (v91 & 1) != 0)
              {
                v45 = [(NSString *)v14->_treatmentName stringByAppendingString:@".model.chunk"];
                v46 = [(NSString *)v14->_treatmentName stringByAppendingString:@".config.plist"];
                v47 = [(NSString *)v14->_treatmentName stringByAppendingString:@".espresso.bin"];
                v48 = [(NSString *)v14->_treatmentName stringByAppendingString:@".vocab.trie"];
                v49 = [v38 stringByAppendingPathComponent:v45];
                inferenceModelFilePath = v14->_inferenceModelFilePath;
                v14->_inferenceModelFilePath = v49;

                v90 = v46;
                v51 = [v38 stringByAppendingPathComponent:v46];
                inferenceModelConfigPath = v14->_inferenceModelConfigPath;
                v14->_inferenceModelConfigPath = v51;

                v89 = v47;
                v53 = [v38 stringByAppendingPathComponent:v47];
                espressoBinFilePath = v14->_espressoBinFilePath;
                v14->_espressoBinFilePath = v53;

                v88 = v48;
                v55 = [v38 stringByAppendingPathComponent:v48];
                vocabFilePath = v14->_vocabFilePath;
                v14->_vocabFilePath = v55;

                v57 = [MEMORY[0x277CCAA00] defaultManager];
                LOBYTE(v47) = [v57 isReadableFileAtPath:v14->_inferenceModelFilePath];

                if ((v47 & 1) == 0)
                {
                  v58 = v14->_inferenceModelFilePath;
                  v14->_inferenceModelFilePath = 0;
                }

                v59 = [MEMORY[0x277CCAA00] defaultManager];
                v60 = [v59 isReadableFileAtPath:v14->_inferenceModelConfigPath];

                if ((v60 & 1) == 0)
                {
                  v61 = v14->_inferenceModelConfigPath;
                  v14->_inferenceModelConfigPath = 0;
                }

                v62 = [MEMORY[0x277CCAA00] defaultManager];
                v63 = [v62 isReadableFileAtPath:v14->_espressoBinFilePath];

                v64 = v45;
                if ((v63 & 1) == 0)
                {
                  v65 = v14->_espressoBinFilePath;
                  v14->_espressoBinFilePath = 0;
                }

                v66 = [MEMORY[0x277CCAA00] defaultManager];
                v67 = [v66 isReadableFileAtPath:v14->_vocabFilePath];

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
                    v70 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers experimentId];
                    v71 = [(TRIExperimentIdentifiers *)v14->_experimentIdentifiers treatmentId];
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
                    v110 = v70;
                    v111 = 2112;
                    v112 = v71;
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
            v38 = initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
            v75 = [v74 arrayWithObjects:v115 count:1];
            v76 = v14->_namespaceName;
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v94[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_2;
            v94[3] = &unk_279ABE428;
            v95 = v11;
            v92[0] = MEMORY[0x277D85DD0];
            v92[1] = 3221225472;
            v92[2] = __107__PSGResponseSuggestionsExpConfig_initWithNamespaceName_withLanguage_withTrialClient_shouldDownloadAssets___block_invoke_35;
            v92[3] = &unk_279ABE450;
            v93 = v14;
            [v13 downloadLevelsForFactors:v75 withNamespace:v76 queue:v38 options:0 progress:v94 completion:v92];
          }

          else
          {
            v38 = psg_default_log_handle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v98 = v11;
              _os_log_impl(&dword_260D36000, v38, OS_LOG_TYPE_DEFAULT, "ZKW: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
            }
          }
        }

        else
        {
          v38 = psg_default_log_handle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v38, OS_LOG_TYPE_FAULT, "ZKW: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
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