@interface PSGWordBoundarySuggestionsExpConfig
- (PSGWordBoundarySuggestionsExpConfig)initWithNamespaceName:(id)a3 withTrialClient:(id)a4 shouldDownloadAssets:(BOOL)a5;
- (void)_fillDefaultValuesForFactors;
- (void)_setDefaultValuesForFactors;
@end

@implementation PSGWordBoundarySuggestionsExpConfig

- (void)_fillDefaultValuesForFactors
{
  v16 = objc_opt_new();
  if ([(NSString *)self->_treatmentName length])
  {
    v3 = self->_treatmentName;
  }

  else
  {
    v3 = [v16 treatmentName];
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
    v6 = [v16 rolloutIdentifiers];
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
    v9 = [v16 experimentIdentifiers];
  }

  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = v9;

  isMLModelEnabled = self->_isMLModelEnabled;
  if ((isMLModelEnabled & 1) == 0)
  {
    isMLModelEnabled = [v16 isMLModelEnabled];
  }

  self->_isMLModelEnabled = isMLModelEnabled;
  if ([(NSString *)self->_inferenceModelConfigPath length])
  {
    v12 = self->_inferenceModelConfigPath;
  }

  else
  {
    v12 = [v16 inferenceModelConfigPath];
  }

  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = v12;

  if ([(NSString *)self->_espressoBinFilePath length])
  {
    v14 = self->_espressoBinFilePath;
  }

  else
  {
    v14 = [v16 espressoBinFilePath];
  }

  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = v14;
}

- (void)_setDefaultValuesForFactors
{
  v13 = objc_opt_new();
  self->_isMLModelEnabled = [v13 isMLModelEnabled];
  v3 = [v13 treatmentName];
  treatmentName = self->_treatmentName;
  self->_treatmentName = v3;

  v5 = [v13 rolloutIdentifiers];
  rolloutIdentifiers = self->_rolloutIdentifiers;
  self->_rolloutIdentifiers = v5;

  v7 = [v13 experimentIdentifiers];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = v7;

  v9 = [v13 inferenceModelConfigPath];
  inferenceModelConfigPath = self->_inferenceModelConfigPath;
  self->_inferenceModelConfigPath = v9;

  v11 = [v13 espressoBinFilePath];
  espressoBinFilePath = self->_espressoBinFilePath;
  self->_espressoBinFilePath = v11;
}

- (PSGWordBoundarySuggestionsExpConfig)initWithNamespaceName:(id)a3 withTrialClient:(id)a4 shouldDownloadAssets:(BOOL)a5
{
  v91[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v76.receiver = self;
  v76.super_class = PSGWordBoundarySuggestionsExpConfig;
  v11 = [(PSGWordBoundarySuggestionsExpConfig *)&v76 init];
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v12 = psg_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v9;
      _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "WordBoundary config -- setting up config for namespace %@", buf, 0xCu);
    }

    [v10 refresh];
    objc_storeStrong(&v11->_namespaceName, a3);
    v13 = [v10 rolloutIdentifiersWithNamespaceName:v11->_namespaceName];
    rolloutIdentifiers = v11->_rolloutIdentifiers;
    v11->_rolloutIdentifiers = v13;

    v15 = [v10 experimentIdentifiersWithNamespaceName:v11->_namespaceName];
    experimentIdentifiers = v11->_experimentIdentifiers;
    v11->_experimentIdentifiers = v15;

    v17 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
    if (![v17 length])
    {
      v18 = [(TRIRolloutIdentifiers *)v11->_rolloutIdentifiers rolloutId];
      v19 = [v18 length];

      if (v19)
      {
        goto LABEL_8;
      }

      v17 = psg_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v17, OS_LOG_TYPE_DEFAULT, "WordBoundary using on-device values since treatment id and rollout id is unset.", buf, 2u);
      }
    }

LABEL_8:
    v20 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
    if ([v20 length])
    {
      v21 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers experimentId];
      v22 = [v21 length];

      if (!v22)
      {
        v23 = psg_default_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          namespaceName = v11->_namespaceName;
          *buf = 138412290;
          v78 = namespaceName;
          _os_log_fault_impl(&dword_260D36000, v23, OS_LOG_TYPE_FAULT, "WordBoundary: treatmentId without experimentId for namespace %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v25 = [v10 levelForFactor:@"treatmentName" withNamespaceName:v11->_namespaceName];
    v26 = [v25 stringValue];
    treatmentName = v11->_treatmentName;
    v11->_treatmentName = v26;

    v28 = [v10 levelForFactor:@"modelDescription" withNamespaceName:v11->_namespaceName];
    v29 = [v28 stringValue];
    inferenceModelDescription = v11->_inferenceModelDescription;
    v11->_inferenceModelDescription = v29;

    v31 = [v10 levelForFactor:@"mlModelEnabled" withNamespaceName:v11->_namespaceName];
    v11->_isMLModelEnabled = [v31 BOOLeanValue];

    if ([(NSString *)v11->_treatmentName length])
    {
      if (v11->_isMLModelEnabled)
      {
        if (![(NSString *)v11->_inferenceModelDescription length])
        {
          v32 = psg_default_log_handle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v32, OS_LOG_TYPE_FAULT, "WordBoundary: model description expected but not found", buf, 2u);
          }
        }

        v33 = [v10 levelForFactor:@"modelAssets" withNamespaceName:v11->_namespaceName];
        v34 = [v33 directoryValue];

        if ([v34 hasPath] & 1) != 0 || (objc_msgSend(v34, "isOnDemand"))
        {
          if (([v34 hasPath] & 1) != 0 || a5)
          {
            if ([v34 hasPath])
            {
              v35 = [v34 path];
              v71 = 0;
              v40 = [MEMORY[0x277CCAA00] defaultManager];
              v41 = [v40 fileExistsAtPath:v35 isDirectory:&v71];

              if (v41 && (v71 & 1) != 0)
              {
                v42 = [(NSString *)v11->_treatmentName stringByAppendingString:@".config.plist"];
                v43 = [(NSString *)v11->_treatmentName stringByAppendingString:@".espresso.bin"];
                v44 = [v35 stringByAppendingPathComponent:v42];
                inferenceModelConfigPath = v11->_inferenceModelConfigPath;
                v11->_inferenceModelConfigPath = v44;

                v46 = [v35 stringByAppendingPathComponent:v43];
                espressoBinFilePath = v11->_espressoBinFilePath;
                v11->_espressoBinFilePath = v46;

                v48 = [MEMORY[0x277CCAA00] defaultManager];
                v49 = [v48 isReadableFileAtPath:v11->_inferenceModelConfigPath];

                if ((v49 & 1) == 0)
                {
                  v50 = v11->_inferenceModelConfigPath;
                  v11->_inferenceModelConfigPath = 0;
                }

                v51 = [MEMORY[0x277CCAA00] defaultManager];
                v52 = [v51 isReadableFileAtPath:v11->_espressoBinFilePath];

                if ((v52 & 1) == 0)
                {
                  v53 = v11->_espressoBinFilePath;
                  v11->_espressoBinFilePath = 0;
                }

                if (v11->_inferenceModelConfigPath && v11->_espressoBinFilePath)
                {
                  v54 = psg_default_log_handle();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = v11->_inferenceModelDescription;
                    v69 = v55;
                    v70 = v11->_espressoBinFilePath;
                    v67 = v11->_treatmentName;
                    v68 = v11->_inferenceModelConfigPath;
                    v56 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers experimentId];
                    v57 = [(TRIExperimentIdentifiers *)v11->_experimentIdentifiers treatmentId];
                    isMLModelEnabled = v11->_isMLModelEnabled;
                    *buf = 138413826;
                    v78 = v67;
                    v79 = 2112;
                    v80 = v69;
                    v81 = 2112;
                    v82 = v68;
                    v83 = 2112;
                    v84 = v70;
                    v85 = 2112;
                    v86 = v56;
                    v87 = 2112;
                    v88 = v57;
                    v89 = 1024;
                    v90 = isMLModelEnabled;
                    _os_log_impl(&dword_260D36000, v54, OS_LOG_TYPE_DEFAULT, "WordBoundary reading from trial factor values {treatmentName: %@ inferenceModelDescription: %@ inferenceModelConfigPath: %@ espresso.bin: %@ experimentId: %@ treatmentId: %@ isMLModelEnabled: %d}", buf, 0x44u);
                  }

                  v24 = v11;
                }

                else
                {
                  v64 = psg_default_log_handle();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                  {
                    v65 = v11->_inferenceModelConfigPath;
                    v66 = v11->_espressoBinFilePath;
                    *buf = 138412546;
                    v78 = v65;
                    v79 = 2112;
                    v80 = v66;
                    _os_log_fault_impl(&dword_260D36000, v64, OS_LOG_TYPE_FAULT, "WordBoundary: some required file factor not readable with config path %@ and espresso bin path %@", buf, 0x16u);
                  }

                  v24 = 0;
                }
              }

              else
              {
                v42 = psg_default_log_handle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_260D36000, v42, OS_LOG_TYPE_FAULT, "WordBoundary: directory factor download completed, but directory path not found", buf, 2u);
                }

                v24 = 0;
              }

              goto LABEL_58;
            }

            v59 = psg_default_log_handle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260D36000, v59, OS_LOG_TYPE_DEFAULT, "WordBoundary: assets directory factor is being queued for download", buf, 2u);
            }

            if (initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11 != -1)
            {
              dispatch_once(&initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasOnceToken11, &__block_literal_global_172);
            }

            v91[0] = @"modelAssets";
            v60 = MEMORY[0x277CBEA60];
            v35 = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
            v61 = [v60 arrayWithObjects:v91 count:1];
            v62 = v11->_namespaceName;
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2;
            v74[3] = &unk_279ABE428;
            v75 = v9;
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_29;
            v72[3] = &unk_279ABE450;
            v73 = v11;
            [v10 downloadLevelsForFactors:v61 withNamespace:v62 queue:v35 options:0 progress:v74 completion:v72];
          }

          else
          {
            v35 = psg_default_log_handle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v78 = v9;
              _os_log_impl(&dword_260D36000, v35, OS_LOG_TYPE_DEFAULT, "WordBoundary: assets for %@ not found on device, not downloading for this request", buf, 0xCu);
            }
          }
        }

        else
        {
          v35 = psg_default_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D36000, v35, OS_LOG_TYPE_FAULT, "WordBoundary: directory factor isn't downloadable on-demand and also isn't found on device", buf, 2u);
          }
        }

        v24 = 0;
LABEL_58:

        goto LABEL_35;
      }

      v37 = psg_default_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v37, OS_LOG_TYPE_DEFAULT, "WordBoundary using default values since the ML model is not enabled.", buf, 2u);
      }

      [(PSGWordBoundarySuggestionsExpConfig *)v11 _fillDefaultValuesForFactors];
LABEL_34:
      v24 = v11;
      goto LABEL_35;
    }

    v36 = psg_default_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v36, OS_LOG_TYPE_DEFAULT, "WordBoundary: treatment name required but not found", buf, 2u);
    }

LABEL_30:
    [(PSGWordBoundarySuggestionsExpConfig *)v11 _setDefaultValuesForFactors];
    goto LABEL_34;
  }

LABEL_13:
  v24 = 0;
LABEL_35:

  v38 = *MEMORY[0x277D85DE8];
  return v24;
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_2(uint64_t a1, int a2)
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
    _os_log_impl(&dword_260D36000, v4, OS_LOG_TYPE_DEFAULT, "WordBoundary: download progress %d%% for namespace %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke_29(uint64_t a1, int a2, void *a3)
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
      _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "WordBoundary: Trial download error %@ with result %d for namespace %@", &v13, 0x1Cu);
    }
  }

  else if (v7)
  {
    v11 = *(*(a1 + 32) + 16);
    v13 = 67109378;
    *v14 = a2;
    *&v14[4] = 2112;
    *&v14[6] = v11;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "WordBoundary: Trial download result %d for namespace %@", &v13, 0x12u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__PSGWordBoundarySuggestionsExpConfig_initWithNamespaceName_withTrialClient_shouldDownloadAssets___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGWordBoundarySuggestions-downloadAssets" qosClass:9];
  v2 = initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult;
  initWithNamespaceName_withTrialClient_shouldDownloadAssets___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end