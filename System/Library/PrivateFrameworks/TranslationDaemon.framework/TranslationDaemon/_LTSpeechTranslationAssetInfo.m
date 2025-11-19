@interface _LTSpeechTranslationAssetInfo
+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)a3 assets:(id)a4 configAsset:(id)a5 validateIfNeeded:(BOOL)a6;
+ (BOOL)_validTopLevelSymlinkDirectory:(id)a3 configAssetURL:(id)a4 assets:(id)a5;
+ (id)_languagePairDirectoryForLocalePair:(id)a3;
+ (void)_createSymlink:(id)a3 target:(id)a4 error:(id *)a5;
+ (void)_createSymlinksFromDirectory:(id)a3 target:(id)a4 error:(id *)a5;
- (BOOL)_validateSymlinksForAssets:(id)a3;
- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)a3;
- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)a3;
- (BOOL)updateAvailableInAssets:(id)a3;
- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)a3 catalogAssets:(id)a4 localePair:(id)a5 offlineConfig:(id)a6 assetManager:(id)a7;
- (id)availabilityInfo;
- (id)description;
- (id)speechModelURLForLocale:(id)a3 taskHint:(int64_t)a4;
- (id)speechModelVersionForLocale:(id)a3;
- (id)translationModelURLs;
- (int64_t)_mtModelOfflineState;
- (void)_referenceAssets:(id)a3 catalogAssets:(id)a4;
- (void)createSymlinkDirectoryForMTAssets;
- (void)downloadAssetsUserInitiated:(BOOL)a3 queue:(id)a4 completion:(id)a5;
- (void)purgeAssetUserInitiated:(BOOL)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation _LTSpeechTranslationAssetInfo

- (id)description
{
  v3 = [(_LTLocalePair *)self->_localePair sourceLocale];
  v4 = [v3 localeIdentifier];

  v5 = [(_LTLocalePair *)self->_localePair targetLocale];
  v6 = [v5 localeIdentifier];

  offlineConfig = self->_offlineConfig;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <-> %@ | %@ %@", v4, v6, offlineConfig, self->_allAssets];

  return v8;
}

- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)a3 catalogAssets:(id)a4 localePair:(id)a5 offlineConfig:(id)a6 assetManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = _LTSpeechTranslationAssetInfo;
  v17 = [(_LTSpeechTranslationAssetInfo *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, a7);
    objc_storeStrong(&v18->_offlineConfig, a6);
    objc_storeStrong(&v18->_localePair, a5);
    v19 = [v16 modelURLsForLanguagePair:v14];
    modelURLs = v18->_modelURLs;
    v18->_modelURLs = v19;

    v21 = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetList];
    v22 = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetConfigFile];
    v23 = v22;
    if (v21)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = _LTOSLogAssets();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo initWithInstalledAssets:v25 catalogAssets:? localePair:? offlineConfig:? assetManager:?];
      }
    }

    [(_LTSpeechTranslationAssetInfo *)v18 _referenceAssets:v12 catalogAssets:v13];
    v18->_needsUpdate = [(_LTSpeechTranslationAssetInfo *)v18 updateAvailableInAssets:v13];
    if (([v14 isPassthrough] & 1) == 0 && !-[NSArray count](v18->_missingAssets, "count") && -[NSArray count](v18->_allAssets, "count") && !-[_LTSpeechTranslationAssetInfo _validateSymlinksForAssets:](v18, "_validateSymlinksForAssets:", v18->_mtAssets))
    {
      [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v14 assets:v18->_mtAssets validateIfNeeded:0];
    }

    v26 = v18;
  }

  return v18;
}

- (void)createSymlinkDirectoryForMTAssets
{
  if (![(NSArray *)self->_missingMTAssets count]&& [(NSArray *)self->_allAssets count])
  {
    localePair = self->_localePair;
    mtAssets = self->_mtAssets;

    [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:localePair assets:mtAssets validateIfNeeded:0];
  }
}

- (void)_referenceAssets:(id)a3 catalogAssets:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_LTDOfflineConfigurationModel *)self->_offlineConfig pairAssetList];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v60 = [MEMORY[0x277CBEB18] array];
  v12 = _os_feature_enabled_impl();
  v13 = [(_LTLocalePair *)self->_localePair sourceLocale];
  if (v12)
  {
    v58 = v6;
    v71 = 0;
    v14 = [_LTDAssetService matchingASRAssetForLocale:v13 error:&v71];
    v15 = v71;
    sourceASRModel = self->_sourceASRModel;
    self->_sourceASRModel = v14;

    v17 = self->_sourceASRModel;
    if (v17)
    {
      if ([(_LTDAssetModel *)v17 isInstalled])
      {
        v18 = v10;
      }

      else
      {
        v18 = v61;
      }

      [v18 addObject:self->_sourceASRModel];
    }

    v19 = [(_LTLocalePair *)self->_localePair targetLocale];
    v70 = v15;
    v20 = [_LTDAssetService matchingASRAssetForLocale:v19 error:&v70];
    v21 = v70;

    targetASRModel = self->_targetASRModel;
    self->_targetASRModel = v20;

    v23 = self->_targetASRModel;
    if (v23)
    {
      if ([(_LTDAssetModel *)v23 isInstalled])
      {
        v24 = v10;
      }

      else
      {
        v24 = v61;
      }

      [v24 addObject:self->_targetASRModel];
    }

    v6 = v58;
  }

  else
  {
    v25 = [_LTDAssetService matchingASRAssetInAssets:v7 forLocale:v13];
    v26 = self->_sourceASRModel;
    self->_sourceASRModel = v25;

    v27 = self->_sourceASRModel;
    if (v27)
    {
      if ([(_LTDAssetModel *)v27 isInstalled])
      {
        v28 = v10;
      }

      else
      {
        v28 = v61;
      }

      [v28 addObject:self->_sourceASRModel];
    }

    v29 = [(_LTLocalePair *)self->_localePair targetLocale];
    v30 = [_LTDAssetService matchingASRAssetInAssets:v7 forLocale:v29];
    v31 = self->_targetASRModel;
    self->_targetASRModel = v30;

    v32 = self->_targetASRModel;
    if (v32)
    {
      if ([(_LTDAssetModel *)v32 isInstalled])
      {
        v33 = v10;
      }

      else
      {
        v33 = v61;
      }

      [v33 addObject:self->_targetASRModel];
    }
  }

  v59 = self;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v34 = v6;
  v35 = [v34 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v67;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v66 + 1) + 8 * i);
        v40 = [v39 identifier];
        if ([v9 containsObject:v40] && ((objc_msgSend(v39, "isMTModel") & 1) != 0 || objc_msgSend(v39, "isPhrasebook")))
        {
          [v11 addObject:v39];
          [v10 addObject:v39];
          [v9 removeObject:v40];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v36);
  }

  if ([v9 count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v57 = v7;
    v41 = v7;
    v42 = [v41 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v63;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v63 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v62 + 1) + 8 * j);
          v47 = [v46 identifier];
          if ([v9 containsObject:v47] && ((objc_msgSend(v46, "isMTModel") & 1) != 0 || objc_msgSend(v46, "isPhrasebook")))
          {
            [v61 addObject:v46];
            [v60 addObject:v46];
            [v9 removeObject:v47];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v43);
    }

    v7 = v57;
  }

  v48 = [v11 copy];
  mtAssets = v59->_mtAssets;
  v59->_mtAssets = v48;

  v50 = [v10 copy];
  allAssets = v59->_allAssets;
  v59->_allAssets = v50;

  v52 = [v61 copy];
  missingAssets = v59->_missingAssets;
  v59->_missingAssets = v52;

  v54 = [v60 copy];
  missingMTAssets = v59->_missingMTAssets;
  v59->_missingMTAssets = v54;

  v56 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateAvailableInAssets:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = self->_allAssets;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([v9 isNewerCompatibleVersionThan:*(*(&v18 + 1) + 8 * j)])
              {

                v15 = 1;
                goto LABEL_19;
              }
            }

            v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)speechModelURLForLocale:(id)a3 taskHint:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_LTLocalePair *)self->_localePair sourceLocale];
  v8 = [v7 isEqual:v6];

  v9 = 40;
  if (v8)
  {
    v9 = 32;
    v10 = @"Source";
  }

  else
  {
    v10 = @"Target";
  }

  v11 = *(&self->super.isa + v9);
  v12 = [v11 getLocalFileUrlForTaskHint:a4];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v6 localeIdentifier];
    v21 = 138543874;
    v22 = v10;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ ASR Model locale: %{public}@ model: %@", &v21, 0x20u);
  }

  v16 = _LTOSLogAssets();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = _LTTranslationTaskHintString();
    v21 = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    v25 = 2114;
    v26 = v18;
    _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ ASR Model local file URL %@: for taskHint: %{public}@", &v21, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)speechModelVersionForLocale:(id)a3
{
  localePair = self->_localePair;
  v5 = a3;
  v6 = [(_LTLocalePair *)localePair targetLocale];
  v7 = [v6 isEqual:v5];

  v8 = 32;
  if (v7)
  {
    v8 = 40;
  }

  v9 = [*(&self->super.isa + v8) assetVersion];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v11 = [v10 stringValue];

  return v11;
}

- (id)translationModelURLs
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_allAssets;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7++) getLocalFileUrl];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  modelURLs = self->_modelURLs;
  v10 = *MEMORY[0x277D85DE8];

  return modelURLs;
}

- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)a3
{
  v5 = [(_LTLocalePair *)self->_localePair isPassthrough];
  if (v5)
  {
    sourceASRModel = self->_sourceASRModel;
    if (sourceASRModel)
    {
      v5 = [(_LTDAssetModel *)sourceASRModel isInstalled];
      if (v5)
      {
        v7 = self->_sourceASRModel;

        LOBYTE(v5) = [(_LTDAssetModel *)v7 isASRModelSupportingTaskHint:a3];
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:self->_mtAssets])
  {
    v5 = 1;
  }

  else
  {
    [(_LTSpeechTranslationAssetInfo *)self createSymlinkDirectoryForMTAssets];
    v5 = [(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:self->_mtAssets];
  }

  sourceASRModel = self->_sourceASRModel;
  if (sourceASRModel)
  {
    if ([(_LTDAssetModel *)sourceASRModel isInstalled])
    {
      v7 = [(_LTDAssetModel *)self->_sourceASRModel isASRModelSupportingTaskHint:a3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  targetASRModel = self->_targetASRModel;
  if (targetASRModel)
  {
    if ([(_LTDAssetModel *)targetASRModel isInstalled])
    {
      v9 = [(_LTDAssetModel *)self->_targetASRModel isASRModelSupportingTaskHint:a3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v11 = _LTOSLogAssets();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 9)
  {
    if (v12)
    {
      v19 = 67109632;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10 == 2;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Models - sourceASR: %{BOOL}i (ignored), targetASR %{BOOL}i (ignored), mt: %{BOOL}i", &v19, 0x14u);
    }
  }

  else
  {
    if (v12)
    {
      v13 = v11;
      v14 = _LTTranslationTaskHintString();
      v15 = self->_sourceASRModel;
      v16 = self->_targetASRModel;
      v19 = 67110402;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10 == 2;
      v25 = 2114;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_DEFAULT, "Models - sourceASR: %{BOOL}i, targetASR: %{BOOL}i, mt: %{BOOL}i, taskHint: %{public}@, sourceASRModel: %@, targetASRModel: %@", &v19, 0x32u);
    }

    v5 &= v7 && v9;
  }

  if (v10 == 2)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_mtModelOfflineState
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_missingAssets count])
  {
LABEL_2:
    result = 0;
  }

  else if (_anyDownloading(self->_mtAssets))
  {
    result = 1;
  }

  else
  {
    v4 = self->_modelURLs;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x277CCAA00];
          v11 = *(*(&v15 + 1) + 8 * v9);
          v12 = [v10 defaultManager];
          v13 = [v11 path];

          LODWORD(v11) = [v12 fileExistsAtPath:v13];
          if (!v11)
          {

            goto LABEL_2;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (_allInstalled(self->_mtAssets))
    {
      result = 2;
    }

    else
    {
      result = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)availabilityInfo
{
  v3 = [objc_alloc(MEMORY[0x277CE1B18]) initWithLocales:self->_localePair];
  v4 = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v5 = _LTOfflineStateString();
  [v3 setMtState:v5];

  v6 = [(_LTDAssetModel *)self->_sourceASRModel stateDescription];
  [v3 setSourceASRState:v6];

  v7 = [(_LTDAssetModel *)self->_targetASRModel stateDescription];
  [v3 setTargetASRState:v7];

  if (v4 == 2 || [(_LTLocalePair *)self->_localePair isPassthrough]&& _allInstalled(self->_allAssets) && ![(NSArray *)self->_missingAssets count])
  {
    v8 = 2;
  }

  else
  {
    v8 = _anyDownloading(self->_allAssets);
  }

  [v3 setPairState:v8];
  [v3 setNeedsUpdate:self->_needsUpdate];

  return v3;
}

+ (id)_languagePairDirectoryForLocalePair:(id)a3
{
  v3 = a3;
  v4 = +[_LTOfflineAssetManager assetDirectory];
  v5 = [v3 canonicalIdentifier];

  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

- (BOOL)_validateSymlinksForAssets:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  p_missingMTAssets = &self->_missingMTAssets;
  if ([(NSArray *)self->_missingMTAssets count]|| ![(NSArray *)self->_allAssets count])
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:v5];
    }

    goto LABEL_4;
  }

  localePair = self->_localePair;
  p_localePair = &self->_localePair;
  v11 = [_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:localePair configAssetURL:0 assets:p_localePair[5]];
  v12 = _LTOSLogAssets();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _validateSymlinksForAssets:?];
    }

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = *p_localePair;
    v15 = 138543362;
    v16 = v14;
    _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Asset symlink skip accounting for %{public}@", &v15, 0xCu);
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)_createSymlink:(id)a3 target:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_LTSpeechTranslationAssetInfo _createSymlink:v9 target:v7 error:?];
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 path];
  v12 = [v7 path];
  [v10 createSymbolicLinkAtPath:v11 withDestinationPath:v12 error:a5];

  if (*a5)
  {
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _createSymlink:a5 target:? error:?];
    }
  }
}

+ (void)_createSymlinksFromDirectory:(id)a3 target:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v9 path];
  [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:a5];

  if (*a5)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:a5 target:? error:?];
    }
  }

  else
  {
    v13 = [v8 path];
    v14 = [v10 contentsOfDirectoryAtPath:v13 error:a5];

    if (*a5)
    {
      v15 = _LTOSLogAssets();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:a5 target:? error:?];
      }
    }

    else
    {
      v28 = a1;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v14;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            v21 = [v9 URLByAppendingPathComponent:{v20, v26}];
            v22 = [v8 URLByAppendingPathComponent:v20];
            v29 = 0;
            v23 = [v22 path];
            [v10 fileExistsAtPath:v23 isDirectory:&v29];

            if (v29 == 1)
            {
              v24 = _LTOSLogAssets();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                [(_LTSpeechTranslationAssetInfo *)v34 _createSymlinksFromDirectory:v24 target:v22 error:&v35];
              }

              [v28 _createSymlinksFromDirectory:v22 target:v21 error:a5];
            }

            else
            {
              [v28 _createSymlink:v22 target:v21 error:a5];
            }

            if (*a5)
            {

              goto LABEL_22;
            }
          }

          v17 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:

      v14 = v26;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_validTopLevelSymlinkDirectory:(id)a3 configAssetURL:(id)a4 assets:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [a1 _languagePairDirectoryForLocalePair:v8];
  v51 = [v12 URLByAppendingPathComponent:@"mt-quasar-config.json"];
  v13 = [v51 path];
  LOBYTE(a4) = [v11 fileExistsAtPath:v13];

  if ((a4 & 1) == 0)
  {
    v39 = _LTOSLogAssets();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
    }

    goto LABEL_31;
  }

  if (v9)
  {
    v14 = [v51 path];
    v57 = 0;
    v15 = [v11 destinationOfSymbolicLinkAtPath:v14 error:&v57];
    v16 = v57;

    if (!v16)
    {
      v17 = [v9 path];
      v18 = [v15 isEqualToString:v17];

      if (v18)
      {

        goto LABEL_6;
      }
    }

    v40 = _LTOSLogAssets();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
    }

LABEL_31:
    v38 = 0;
    goto LABEL_44;
  }

LABEL_6:
  v47 = v10;
  v48 = v9;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = v10;
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v46 = v8;
    v22 = *v54;
    v49 = v12;
    v50 = v19;
LABEL_8:
    v23 = 0;
    while (1)
    {
      if (*v54 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v53 + 1) + 8 * v23);
      if ([v24 isMTModel])
      {
        break;
      }

      if ([v24 isPhrasebook])
      {
        v29 = [v24 identifier];
        v26 = [v12 URLByAppendingPathComponent:v29];

        v30 = [v24 getLocalFileUrl];
        v31 = [v26 path];
        v52 = 0;
        v32 = [v11 destinationOfSymbolicLinkAtPath:v31 error:&v52];
        v33 = v52;

        v34 = [v26 path];
        if ([v11 fileExistsAtPath:v34])
        {
          v35 = v33 == 0;
        }

        else
        {
          v35 = 0;
        }

        if (!v35)
        {

          goto LABEL_39;
        }

        v36 = [v30 path];
        v37 = [v32 isEqualToString:v36];

        if ((v37 & 1) == 0)
        {
          v33 = 0;
LABEL_39:
          v43 = _LTOSLogAssets();
          v10 = v47;
          v9 = v48;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
          }

          v12 = v49;
          v19 = v50;
          v8 = v46;
LABEL_42:

          v38 = 0;
          goto LABEL_43;
        }

        v12 = v49;
        v19 = v50;
        goto LABEL_22;
      }

LABEL_23:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v21)
        {
          goto LABEL_8;
        }

        v38 = 1;
        v8 = v46;
        goto LABEL_33;
      }
    }

    v25 = [v24 coreAssetName];
    v26 = [v12 URLByAppendingPathComponent:v25];

    v27 = [v26 path];
    v28 = [v11 fileExistsAtPath:v27];

    if ((v28 & 1) == 0)
    {
      v41 = _LTOSLogAssets();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v8 = v46;
        v59 = v46;
        _os_log_impl(&dword_232E53000, v41, OS_LOG_TYPE_INFO, "Did not find translation model folder in symlink directory for %{public}@", buf, 0xCu);
      }

      else
      {
        v8 = v46;
      }

      v10 = v47;
      v9 = v48;
      goto LABEL_42;
    }

LABEL_22:

    goto LABEL_23;
  }

  v38 = 1;
LABEL_33:
  v10 = v47;
  v9 = v48;
LABEL_43:

LABEL_44:
  v44 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)a3 assets:(id)a4 configAsset:(id)a5 validateIfNeeded:(BOOL)a6
{
  v6 = a6;
  v98 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && [v11 count])
  {
    if (([v10 isPassthrough] & 1) != 0 || objc_msgSend(v10, "isVariantPair"))
    {
      v13 = _LTOSLogAssets();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [v10 identifier];
        *buf = 138543362;
        v94 = v15;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Skipping symlinks creation for passthrough / variant pair %{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v19 = _LTOSLogAssets();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [v10 identifier];
      *buf = 138543362;
      v94 = v21;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Updating symlinks for %{public}@", buf, 0xCu);
    }

    if (!v12)
    {
      v27 = _LTOSLogAssets();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v27 assets:? configAsset:? validateIfNeeded:?];
      }

      goto LABEL_7;
    }

    v22 = [v12 getLocalFileUrl];
    if (!v22)
    {
      v28 = _LTOSLogAssets();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v28 assets:? configAsset:? validateIfNeeded:?];
      }

      v16 = 0;
      goto LABEL_75;
    }

    v92 = 0;
    v23 = [_LTDConfigurationService offlineConfigurationWithError:&v92];
    v24 = v92;
    if (v24)
    {
      v25 = v24;
      v26 = _LTOSLogAssets();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      v16 = 0;
      goto LABEL_74;
    }

    v29 = [v10 canonicalIdentifier];
    v30 = [v23 offlinePairConfigurationWithIdentifier:v29];

    v78 = v30;
    v31 = [v30 pairAssetConfigFile];
    if (!v31)
    {
      v37 = _LTOSLogAssets();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v37 assets:? configAsset:? validateIfNeeded:?];
      }

      v25 = 0;
      v16 = 0;
      v33 = v78;
      goto LABEL_73;
    }

    v79 = [MEMORY[0x277CCAA00] defaultManager];
    v75 = [a1 _languagePairDirectoryForLocalePair:v10];
    v74 = [v22 URLByAppendingPathComponent:v31];
    if (v6 && [_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:v10 configAssetURL:v74 assets:v11])
    {
      v32 = _LTOSLogAssets();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v94 = v10;
        _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_INFO, "Skipping symlink directiory creation, found necessary symlinks on disk for %{public}@", buf, 0xCu);
      }

      v25 = 0;
      v16 = 0;
      v33 = v78;
      v34 = v79;
      goto LABEL_72;
    }

    v35 = [v75 URLByAppendingPathExtension:@"tmp"];
    [v79 removeItemAtURL:v35 error:0];
    v91 = 0;
    [v79 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v91];
    v80 = v91;
    v81 = v35;
    if (v80)
    {
      v36 = _LTOSLogAssets();
      v33 = v30;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v25 = v80;
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        v16 = 0;
        v34 = v79;
      }

      else
      {
        v16 = 0;
        v34 = v79;
        v25 = v80;
      }

      goto LABEL_71;
    }

    v66 = v31;
    v67 = v23;
    v38 = [v35 URLByAppendingPathComponent:@"mt-quasar-config.json"];
    v39 = [v38 path];
    v40 = [v74 path];
    v90 = 0;
    [v79 createSymbolicLinkAtPath:v39 withDestinationPath:v40 error:&v90];
    v41 = v90;

    v68 = v41;
    if (v41)
    {
      v42 = _LTOSLogAssets();
      v25 = 0;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      v16 = 0;
      v31 = v66;
      v23 = v67;
      v33 = v78;
      v34 = v79;
LABEL_70:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_74:

LABEL_75:
      goto LABEL_8;
    }

    v65 = v22;
    v72 = [MEMORY[0x277CBEB38] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v11;
    v25 = 0;
    v76 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (!v76)
    {
LABEL_54:

      v83 = 0;
      v57 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v72 options:0 error:&v83];
      v77 = v83;
      if (v77)
      {
        v58 = _LTOSLogAssets();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        }
      }

      v59 = [v81 URLByAppendingPathComponent:@"assets.json"];
      [v57 writeToURL:v59 atomically:1];

      v34 = v79;
      [v79 removeItemAtURL:v75 error:0];
      v82 = 0;
      [v79 moveItemAtURL:v81 toURL:v75 error:&v82];
      v60 = v82;
      v23 = v67;
      if (v60)
      {
        v61 = _LTOSLogAssets();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        }
      }

      v16 = 1;
      v22 = v65;
      v33 = v78;
LABEL_69:

      v31 = v66;
      goto LABEL_70;
    }

    v73 = *v87;
LABEL_40:
    v43 = 0;
    while (1)
    {
      if (*v87 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v86 + 1) + 8 * v43);
      if ([v44 isMTModel])
      {
        break;
      }

      if ([v44 isPhrasebook])
      {
        v51 = [v44 identifier];
        v52 = [v44 identifier];
        [v72 setObject:v51 forKeyedSubscript:v52];

        v70 = v51;
        v48 = [v81 URLByAppendingPathComponent:v51];
        v53 = [v44 getLocalFileUrl];
        v54 = _LTOSLogAssets();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v94 = v53;
          v95 = 2114;
          v96 = v48;
          _os_log_impl(&dword_232E53000, v54, OS_LOG_TYPE_INFO, "Creating link from %{public}@ to %{public}@", buf, 0x16u);
        }

        v69 = [v48 path];
        v55 = [v53 path];
        v84 = 0;
        [v79 createSymbolicLinkAtPath:v69 withDestinationPath:v55 error:&v84];
        v56 = v84;

        if (v56)
        {
          v63 = v53;
          v77 = v56;
          v64 = _LTOSLogAssets();
          v23 = v67;
          v25 = 0;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
          }

          v22 = v65;
          v33 = v78;
          v34 = v79;
          v47 = v70;
          goto LABEL_68;
        }

        v25 = 0;
        v47 = v70;
        goto LABEL_51;
      }

LABEL_52:
      if (v76 == ++v43)
      {
        v76 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
        if (v76)
        {
          goto LABEL_40;
        }

        goto LABEL_54;
      }
    }

    v45 = [v44 coreAssetName];
    v46 = [v44 identifier];
    [v72 setObject:v45 forKeyedSubscript:v46];

    v47 = v45;
    v48 = [v81 URLByAppendingPathComponent:v45];
    v49 = [v44 getLocalFileUrl];
    v85 = 0;
    [a1 _createSymlinksFromDirectory:v49 target:v48 error:&v85];
    v50 = v85;

    if (v50)
    {
      v77 = v50;
      v62 = _LTOSLogAssets();
      v23 = v67;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      v22 = v65;
      v33 = v78;
      v34 = v79;
      v25 = 0;
LABEL_68:

      [v34 removeItemAtURL:v81 error:0];
      v16 = 0;
      goto LABEL_69;
    }

    v25 = 0;
LABEL_51:

    goto LABEL_52;
  }

LABEL_7:
  v16 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)downloadAssetsUserInitiated:(BOOL)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a3;
  v51 = *MEMORY[0x277D85DE8];
  queue = a4;
  v24 = a5;
  if ([(NSArray *)self->_missingAssets count])
  {
    v8 = dispatch_group_create();
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      localePair = self->_localePair;
      v11 = v9;
      v12 = [(_LTLocalePair *)localePair identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Requested to download asset for: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__13;
    v49 = __Block_byref_object_dispose__13;
    v50 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__13;
    v41[4] = __Block_byref_object_dispose__13;
    v42 = self->_localePair;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__13;
    v39[4] = __Block_byref_object_dispose__13;
    v40 = [(NSArray *)self->_missingMTAssets arrayByAddingObjectsFromArray:self->_mtAssets];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_missingAssets;
    v13 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v13)
    {
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = _LTOSLogAssets();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v43 = 138543362;
            v44 = v16;
            _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Starting download for asset with attributes: %{public}@", v43, 0xCu);
          }

          dispatch_group_enter(v8);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke;
          v31[3] = &unk_2789B7BF8;
          p_buf = &buf;
          v34 = v41;
          v32 = v8;
          [_LTDAssetService downloadAsset:v16 options:v6 | 2 progress:0 completion:v31];
        }

        v13 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31;
    block[3] = &unk_2789B5758;
    v28 = &buf;
    v29 = v41;
    v30 = v39;
    v27 = v24;
    dispatch_group_notify(v8, queue, block);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = _LTOSLogAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = self->_localePair;
      v20 = v18;
      v21 = [(_LTLocalePair *)v19 identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "No downloadable assets missing asset for: %{public}@", &buf, 0xCu);
    }

    if (v24)
    {
      (*(v24 + 2))(v24, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)purgeAssetUserInitiated:(BOOL)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a3;
  v69 = *MEMORY[0x277D85DE8];
  queue = a4;
  v35 = a5;
  v37 = [MEMORY[0x277CCAA00] defaultManager];
  v36 = +[_LTOfflineAssetManager assetDirectory];
  v41 = [(_LTOfflineAssetManager *)self->_assetManager assetIdentifierReferenceCountDictionary];
  v7 = _LTOSLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    assetManager = self->_assetManager;
    v9 = v7;
    v10 = [(_LTOfflineAssetManager *)assetManager assetIdentifierReferenceCountDictionary];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Reference counts before purge %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__13;
  v67 = __Block_byref_object_dispose__13;
  v68 = 0;
  v11 = dispatch_group_create();
  v12 = [(_LTLocalePair *)self->_localePair identifier];
  v38 = [v36 URLByAppendingPathComponent:v12];

  v13 = [v38 path];
  v14 = [v37 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 138543618;
      v61 = v38;
      v62 = 1024;
      v63 = v6;
      _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_DEFAULT, "Starting purge for %{public}@; userInitiated: %{BOOL}i", v60, 0x12u);
    }

    v57 = 0;
    [v37 removeItemAtURL:v38 error:&v57];
    v33 = v57;
    if (v33)
    {
      v16 = _LTOSLogAssets();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo purgeAssetUserInitiated:queue:completion:];
      }
    }

    v17 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v18 = self->_allAssets;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v19)
    {
      v20 = *v54;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          v23 = [v22 identifier];
          v24 = [v41 objectForKeyedSubscript:v23];

          if (!v24 || [v24 integerValue] <= 1)
          {
            [v17 addObject:v22];
          }
        }

        v19 = [(NSArray *)v18 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v19);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v17;
    v25 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v25)
    {
      v26 = *v50;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v49 + 1) + 8 * j);
          v29 = _LTOSLogAssets();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v28 identifier];
            *v60 = 138543362;
            v61 = v30;
            _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_INFO, "Starting purge for asset %{public}@", v60, 0xCu);
          }

          dispatch_group_enter(v11);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke;
          v46[3] = &unk_2789B7C20;
          v46[4] = v28;
          p_buf = &buf;
          v47 = v11;
          [_LTDAssetService purgeAsset:v28 completion:v46];
        }

        v25 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v25);
    }

    objc_initWeak(v60, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34;
    block[3] = &unk_2789B7C48;
    objc_copyWeak(&v45, v60);
    v44 = &buf;
    v43 = v35;
    dispatch_group_notify(v11, queue, block);

    objc_destroyWeak(&v45);
    objc_destroyWeak(v60);
  }

  else
  {
    v31 = _LTOSLogAssets();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v60 = 138543362;
      v61 = v38;
      _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "Language pair directory doesn't exist %{public}@; nothing to purge", v60, 0xCu);
    }

    v33 = 0;
  }

  _Block_object_dispose(&buf, 8);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)initWithInstalledAssets:(uint64_t *)a1 catalogAssets:(void *)a2 localePair:offlineConfig:assetManager:.cold.1(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v6, v7, "Malformed config asset %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_validateSymlinksForAssets:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Did not find required top-level symlinks for %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_validateSymlinksForAssets:(void *)a3 .cold.2(uint64_t a1, void **a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = [*(a1 + 48) count];
  v10 = 138543874;
  v11 = v4;
  v12 = 2048;
  v13 = v7;
  v14 = 2048;
  v15 = v8;
  _os_log_error_impl(&dword_232E53000, v6, OS_LOG_TYPE_ERROR, "Asset symlink validation for %{public}@ failed due to missing assets %zu or no assets %zu", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlink:(void *)a1 target:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 path];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_7() path];
  v6 = 138543618;
  v7 = a2;
  v8 = 2114;
  v9 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Creating link from %{public}@ to %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlink:(uint64_t *)a1 target:error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to link model file: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinksFromDirectory:(uint64_t *)a1 target:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to create model directory: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinksFromDirectory:(uint64_t *)a1 target:error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to obtain content of locale model files directory: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinksFromDirectory:(void *)a3 target:(void *)a4 error:.cold.3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 path];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "File is a directory, further descending: %{public}@", a1, 0xCu);
}

+ (void)_validTopLevelSymlinkDirectory:configAssetURL:assets:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Did not find quasar config in symlink directory for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validTopLevelSymlinkDirectory:configAssetURL:assets:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Did not find phrasebook link in symlink directory for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read offline configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to create directory '%{public}@': %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to link mt-quasar-config.json: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to link model file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create symlinks for model directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to serialize JSON data for asset identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to rename temp language pair directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:(void *)a1 assets:configAsset:validateIfNeeded:.cold.8(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() canonicalIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v4, v5, "Failed to find offline configuration for pair: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_createSymlinkDirectoryForLocalePair:(void *)a1 assets:configAsset:validateIfNeeded:.cold.9(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() assetVersion];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to get local file URL for configuration [ver: %zd]", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)purgeAssetUserInitiated:queue:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Error deleting directory %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end