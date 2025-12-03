@interface _LTSpeechTranslationAssetInfo
+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets configAsset:(id)asset validateIfNeeded:(BOOL)needed;
+ (BOOL)_validTopLevelSymlinkDirectory:(id)directory configAssetURL:(id)l assets:(id)assets;
+ (id)_languagePairDirectoryForLocalePair:(id)pair;
+ (void)_createSymlink:(id)symlink target:(id)target error:(id *)error;
+ (void)_createSymlinksFromDirectory:(id)directory target:(id)target error:(id *)error;
- (BOOL)_validateSymlinksForAssets:(id)assets;
- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)hint;
- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)hint;
- (BOOL)updateAvailableInAssets:(id)assets;
- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)assets catalogAssets:(id)catalogAssets localePair:(id)pair offlineConfig:(id)config assetManager:(id)manager;
- (id)availabilityInfo;
- (id)description;
- (id)speechModelURLForLocale:(id)locale taskHint:(int64_t)hint;
- (id)speechModelVersionForLocale:(id)locale;
- (id)translationModelURLs;
- (int64_t)_mtModelOfflineState;
- (void)_referenceAssets:(id)assets catalogAssets:(id)catalogAssets;
- (void)createSymlinkDirectoryForMTAssets;
- (void)downloadAssetsUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
- (void)purgeAssetUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
@end

@implementation _LTSpeechTranslationAssetInfo

- (id)description
{
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];

  targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];

  offlineConfig = self->_offlineConfig;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <-> %@ | %@ %@", localeIdentifier, localeIdentifier2, offlineConfig, self->_allAssets];

  return v8;
}

- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)assets catalogAssets:(id)catalogAssets localePair:(id)pair offlineConfig:(id)config assetManager:(id)manager
{
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  pairCopy = pair;
  configCopy = config;
  managerCopy = manager;
  v28.receiver = self;
  v28.super_class = _LTSpeechTranslationAssetInfo;
  v17 = [(_LTSpeechTranslationAssetInfo *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v18->_offlineConfig, config);
    objc_storeStrong(&v18->_localePair, pair);
    v19 = [managerCopy modelURLsForLanguagePair:pairCopy];
    modelURLs = v18->_modelURLs;
    v18->_modelURLs = v19;

    pairAssetList = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetList];
    pairAssetConfigFile = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetConfigFile];
    v23 = pairAssetConfigFile;
    if (pairAssetList)
    {
      v24 = pairAssetConfigFile == 0;
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

    [(_LTSpeechTranslationAssetInfo *)v18 _referenceAssets:assetsCopy catalogAssets:catalogAssetsCopy];
    v18->_needsUpdate = [(_LTSpeechTranslationAssetInfo *)v18 updateAvailableInAssets:catalogAssetsCopy];
    if (([pairCopy isPassthrough] & 1) == 0 && !-[NSArray count](v18->_missingAssets, "count") && -[NSArray count](v18->_allAssets, "count") && !-[_LTSpeechTranslationAssetInfo _validateSymlinksForAssets:](v18, "_validateSymlinksForAssets:", v18->_mtAssets))
    {
      [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:pairCopy assets:v18->_mtAssets validateIfNeeded:0];
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

- (void)_referenceAssets:(id)assets catalogAssets:(id)catalogAssets
{
  v74 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  pairAssetList = [(_LTDOfflineConfigurationModel *)self->_offlineConfig pairAssetList];
  v9 = [pairAssetList mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v12 = _os_feature_enabled_impl();
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  if (v12)
  {
    v58 = assetsCopy;
    v71 = 0;
    v14 = [_LTDAssetService matchingASRAssetForLocale:sourceLocale error:&v71];
    v15 = v71;
    sourceASRModel = self->_sourceASRModel;
    self->_sourceASRModel = v14;

    v17 = self->_sourceASRModel;
    if (v17)
    {
      if ([(_LTDAssetModel *)v17 isInstalled])
      {
        v18 = array;
      }

      else
      {
        v18 = array3;
      }

      [v18 addObject:self->_sourceASRModel];
    }

    targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
    v70 = v15;
    v20 = [_LTDAssetService matchingASRAssetForLocale:targetLocale error:&v70];
    v21 = v70;

    targetASRModel = self->_targetASRModel;
    self->_targetASRModel = v20;

    v23 = self->_targetASRModel;
    if (v23)
    {
      if ([(_LTDAssetModel *)v23 isInstalled])
      {
        v24 = array;
      }

      else
      {
        v24 = array3;
      }

      [v24 addObject:self->_targetASRModel];
    }

    assetsCopy = v58;
  }

  else
  {
    v25 = [_LTDAssetService matchingASRAssetInAssets:catalogAssetsCopy forLocale:sourceLocale];
    v26 = self->_sourceASRModel;
    self->_sourceASRModel = v25;

    v27 = self->_sourceASRModel;
    if (v27)
    {
      if ([(_LTDAssetModel *)v27 isInstalled])
      {
        v28 = array;
      }

      else
      {
        v28 = array3;
      }

      [v28 addObject:self->_sourceASRModel];
    }

    targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
    v30 = [_LTDAssetService matchingASRAssetInAssets:catalogAssetsCopy forLocale:targetLocale2];
    v31 = self->_targetASRModel;
    self->_targetASRModel = v30;

    v32 = self->_targetASRModel;
    if (v32)
    {
      if ([(_LTDAssetModel *)v32 isInstalled])
      {
        v33 = array;
      }

      else
      {
        v33 = array3;
      }

      [v33 addObject:self->_targetASRModel];
    }
  }

  selfCopy = self;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v34 = assetsCopy;
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
        identifier = [v39 identifier];
        if ([v9 containsObject:identifier] && ((objc_msgSend(v39, "isMTModel") & 1) != 0 || objc_msgSend(v39, "isPhrasebook")))
        {
          [array2 addObject:v39];
          [array addObject:v39];
          [v9 removeObject:identifier];
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
    v57 = catalogAssetsCopy;
    v41 = catalogAssetsCopy;
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
          identifier2 = [v46 identifier];
          if ([v9 containsObject:identifier2] && ((objc_msgSend(v46, "isMTModel") & 1) != 0 || objc_msgSend(v46, "isPhrasebook")))
          {
            [array3 addObject:v46];
            [array4 addObject:v46];
            [v9 removeObject:identifier2];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v43);
    }

    catalogAssetsCopy = v57;
  }

  v48 = [array2 copy];
  mtAssets = selfCopy->_mtAssets;
  selfCopy->_mtAssets = v48;

  v50 = [array copy];
  allAssets = selfCopy->_allAssets;
  selfCopy->_allAssets = v50;

  v52 = [array3 copy];
  missingAssets = selfCopy->_missingAssets;
  selfCopy->_missingAssets = v52;

  v54 = [array4 copy];
  missingMTAssets = selfCopy->_missingMTAssets;
  selfCopy->_missingMTAssets = v54;

  v56 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateAvailableInAssets:(id)assets
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  assetsCopy = assets;
  v5 = [assetsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(assetsCopy);
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

      v6 = [assetsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (id)speechModelURLForLocale:(id)locale taskHint:(int64_t)hint
{
  v27 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  v8 = [sourceLocale isEqual:localeCopy];

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
  v12 = [v11 getLocalFileUrlForTaskHint:hint];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    localeIdentifier = [localeCopy localeIdentifier];
    v21 = 138543874;
    v22 = v10;
    v23 = 2114;
    v24 = localeIdentifier;
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

- (id)speechModelVersionForLocale:(id)locale
{
  localePair = self->_localePair;
  localeCopy = locale;
  targetLocale = [(_LTLocalePair *)localePair targetLocale];
  v7 = [targetLocale isEqual:localeCopy];

  v8 = 32;
  if (v7)
  {
    v8 = 40;
  }

  assetVersion = [*(&self->super.isa + v8) assetVersion];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:assetVersion];
  stringValue = [v10 stringValue];

  return stringValue;
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

        getLocalFileUrl = [*(*(&v12 + 1) + 8 * v7++) getLocalFileUrl];
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

- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)hint
{
  isPassthrough = [(_LTLocalePair *)self->_localePair isPassthrough];
  if (isPassthrough)
  {
    sourceASRModel = self->_sourceASRModel;
    if (sourceASRModel)
    {
      isPassthrough = [(_LTDAssetModel *)sourceASRModel isInstalled];
      if (isPassthrough)
      {
        v7 = self->_sourceASRModel;

        LOBYTE(isPassthrough) = [(_LTDAssetModel *)v7 isASRModelSupportingTaskHint:hint];
      }
    }

    else
    {
      LOBYTE(isPassthrough) = 1;
    }
  }

  return isPassthrough;
}

- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)hint
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
      v7 = [(_LTDAssetModel *)self->_sourceASRModel isASRModelSupportingTaskHint:hint];
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
      v9 = [(_LTDAssetModel *)self->_targetASRModel isASRModelSupportingTaskHint:hint];
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

  _mtModelOfflineState = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v11 = _LTOSLogAssets();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((hint & 0xFFFFFFFFFFFFFFFDLL) == 9)
  {
    if (v12)
    {
      v19 = 67109632;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = _mtModelOfflineState == 2;
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
      v24 = _mtModelOfflineState == 2;
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

  if (_mtModelOfflineState == 2)
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
          defaultManager = [v10 defaultManager];
          path = [v11 path];

          LODWORD(v11) = [defaultManager fileExistsAtPath:path];
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
  _mtModelOfflineState = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v5 = _LTOfflineStateString();
  [v3 setMtState:v5];

  stateDescription = [(_LTDAssetModel *)self->_sourceASRModel stateDescription];
  [v3 setSourceASRState:stateDescription];

  stateDescription2 = [(_LTDAssetModel *)self->_targetASRModel stateDescription];
  [v3 setTargetASRState:stateDescription2];

  if (_mtModelOfflineState == 2 || [(_LTLocalePair *)self->_localePair isPassthrough]&& _allInstalled(self->_allAssets) && ![(NSArray *)self->_missingAssets count])
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

+ (id)_languagePairDirectoryForLocalePair:(id)pair
{
  pairCopy = pair;
  v4 = +[_LTOfflineAssetManager assetDirectory];
  canonicalIdentifier = [pairCopy canonicalIdentifier];

  v6 = [v4 URLByAppendingPathComponent:canonicalIdentifier];

  return v6;
}

- (BOOL)_validateSymlinksForAssets:(id)assets
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

+ (void)_createSymlink:(id)symlink target:(id)target error:(id *)error
{
  symlinkCopy = symlink;
  targetCopy = target;
  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_LTSpeechTranslationAssetInfo _createSymlink:v9 target:symlinkCopy error:?];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [targetCopy path];
  path2 = [symlinkCopy path];
  [defaultManager createSymbolicLinkAtPath:path withDestinationPath:path2 error:error];

  if (*error)
  {
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _createSymlink:error target:? error:?];
    }
  }
}

+ (void)_createSymlinksFromDirectory:(id)directory target:(id)target error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  targetCopy = target;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [targetCopy path];
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

  if (*error)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:error target:? error:?];
    }
  }

  else
  {
    path2 = [directoryCopy path];
    v14 = [defaultManager contentsOfDirectoryAtPath:path2 error:error];

    if (*error)
    {
      v15 = _LTOSLogAssets();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:error target:? error:?];
      }
    }

    else
    {
      selfCopy = self;
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
            v21 = [targetCopy URLByAppendingPathComponent:{v20, v26}];
            v22 = [directoryCopy URLByAppendingPathComponent:v20];
            v29 = 0;
            path3 = [v22 path];
            [defaultManager fileExistsAtPath:path3 isDirectory:&v29];

            if (v29 == 1)
            {
              v24 = _LTOSLogAssets();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                [(_LTSpeechTranslationAssetInfo *)v34 _createSymlinksFromDirectory:v24 target:v22 error:&v35];
              }

              [selfCopy _createSymlinksFromDirectory:v22 target:v21 error:error];
            }

            else
            {
              [selfCopy _createSymlink:v22 target:v21 error:error];
            }

            if (*error)
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

+ (BOOL)_validTopLevelSymlinkDirectory:(id)directory configAssetURL:(id)l assets:(id)assets
{
  v61 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  lCopy = l;
  assetsCopy = assets;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [self _languagePairDirectoryForLocalePair:directoryCopy];
  v51 = [v12 URLByAppendingPathComponent:@"mt-quasar-config.json"];
  path = [v51 path];
  LOBYTE(l) = [defaultManager fileExistsAtPath:path];

  if ((l & 1) == 0)
  {
    v39 = _LTOSLogAssets();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
    }

    goto LABEL_31;
  }

  if (lCopy)
  {
    path2 = [v51 path];
    v57 = 0;
    v15 = [defaultManager destinationOfSymbolicLinkAtPath:path2 error:&v57];
    v16 = v57;

    if (!v16)
    {
      path3 = [lCopy path];
      v18 = [v15 isEqualToString:path3];

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
  v47 = assetsCopy;
  v48 = lCopy;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = assetsCopy;
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v46 = directoryCopy;
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
        identifier = [v24 identifier];
        v26 = [v12 URLByAppendingPathComponent:identifier];

        getLocalFileUrl = [v24 getLocalFileUrl];
        path4 = [v26 path];
        v52 = 0;
        v32 = [defaultManager destinationOfSymbolicLinkAtPath:path4 error:&v52];
        v33 = v52;

        path5 = [v26 path];
        if ([defaultManager fileExistsAtPath:path5])
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

        path6 = [getLocalFileUrl path];
        v37 = [v32 isEqualToString:path6];

        if ((v37 & 1) == 0)
        {
          v33 = 0;
LABEL_39:
          v43 = _LTOSLogAssets();
          assetsCopy = v47;
          lCopy = v48;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
          }

          v12 = v49;
          v19 = v50;
          directoryCopy = v46;
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
        directoryCopy = v46;
        goto LABEL_33;
      }
    }

    coreAssetName = [v24 coreAssetName];
    v26 = [v12 URLByAppendingPathComponent:coreAssetName];

    path7 = [v26 path];
    v28 = [defaultManager fileExistsAtPath:path7];

    if ((v28 & 1) == 0)
    {
      v41 = _LTOSLogAssets();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        directoryCopy = v46;
        v59 = v46;
        _os_log_impl(&dword_232E53000, v41, OS_LOG_TYPE_INFO, "Did not find translation model folder in symlink directory for %{public}@", buf, 0xCu);
      }

      else
      {
        directoryCopy = v46;
      }

      assetsCopy = v47;
      lCopy = v48;
      goto LABEL_42;
    }

LABEL_22:

    goto LABEL_23;
  }

  v38 = 1;
LABEL_33:
  assetsCopy = v47;
  lCopy = v48;
LABEL_43:

LABEL_44:
  v44 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets configAsset:(id)asset validateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v98 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  assetsCopy = assets;
  assetCopy = asset;
  if (pairCopy && [assetsCopy count])
  {
    if (([pairCopy isPassthrough] & 1) != 0 || objc_msgSend(pairCopy, "isVariantPair"))
    {
      v13 = _LTOSLogAssets();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        identifier = [pairCopy identifier];
        *buf = 138543362;
        v94 = identifier;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Skipping symlinks creation for passthrough / variant pair %{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v19 = _LTOSLogAssets();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      identifier2 = [pairCopy identifier];
      *buf = 138543362;
      v94 = identifier2;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Updating symlinks for %{public}@", buf, 0xCu);
    }

    if (!assetCopy)
    {
      v27 = _LTOSLogAssets();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v27 assets:? configAsset:? validateIfNeeded:?];
      }

      goto LABEL_7;
    }

    getLocalFileUrl = [assetCopy getLocalFileUrl];
    if (!getLocalFileUrl)
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

    canonicalIdentifier = [pairCopy canonicalIdentifier];
    v30 = [v23 offlinePairConfigurationWithIdentifier:canonicalIdentifier];

    v78 = v30;
    pairAssetConfigFile = [v30 pairAssetConfigFile];
    if (!pairAssetConfigFile)
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

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v75 = [self _languagePairDirectoryForLocalePair:pairCopy];
    v74 = [getLocalFileUrl URLByAppendingPathComponent:pairAssetConfigFile];
    if (neededCopy && [_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:pairCopy configAssetURL:v74 assets:assetsCopy])
    {
      v32 = _LTOSLogAssets();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v94 = pairCopy;
        _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_INFO, "Skipping symlink directiory creation, found necessary symlinks on disk for %{public}@", buf, 0xCu);
      }

      v25 = 0;
      v16 = 0;
      v33 = v78;
      v34 = defaultManager;
      goto LABEL_72;
    }

    v35 = [v75 URLByAppendingPathExtension:@"tmp"];
    [defaultManager removeItemAtURL:v35 error:0];
    v91 = 0;
    [defaultManager createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v91];
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
        v34 = defaultManager;
      }

      else
      {
        v16 = 0;
        v34 = defaultManager;
        v25 = v80;
      }

      goto LABEL_71;
    }

    v66 = pairAssetConfigFile;
    v67 = v23;
    v38 = [v35 URLByAppendingPathComponent:@"mt-quasar-config.json"];
    path = [v38 path];
    path2 = [v74 path];
    v90 = 0;
    [defaultManager createSymbolicLinkAtPath:path withDestinationPath:path2 error:&v90];
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
      pairAssetConfigFile = v66;
      v23 = v67;
      v33 = v78;
      v34 = defaultManager;
LABEL_70:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_74:

LABEL_75:
      goto LABEL_8;
    }

    v65 = getLocalFileUrl;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = assetsCopy;
    v25 = 0;
    v76 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (!v76)
    {
LABEL_54:

      v83 = 0;
      v57 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v83];
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

      v34 = defaultManager;
      [defaultManager removeItemAtURL:v75 error:0];
      v82 = 0;
      [defaultManager moveItemAtURL:v81 toURL:v75 error:&v82];
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
      getLocalFileUrl = v65;
      v33 = v78;
LABEL_69:

      pairAssetConfigFile = v66;
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
        identifier3 = [v44 identifier];
        identifier4 = [v44 identifier];
        [dictionary setObject:identifier3 forKeyedSubscript:identifier4];

        v70 = identifier3;
        v48 = [v81 URLByAppendingPathComponent:identifier3];
        getLocalFileUrl2 = [v44 getLocalFileUrl];
        v54 = _LTOSLogAssets();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v94 = getLocalFileUrl2;
          v95 = 2114;
          v96 = v48;
          _os_log_impl(&dword_232E53000, v54, OS_LOG_TYPE_INFO, "Creating link from %{public}@ to %{public}@", buf, 0x16u);
        }

        path3 = [v48 path];
        path4 = [getLocalFileUrl2 path];
        v84 = 0;
        [defaultManager createSymbolicLinkAtPath:path3 withDestinationPath:path4 error:&v84];
        v56 = v84;

        if (v56)
        {
          v63 = getLocalFileUrl2;
          v77 = v56;
          v64 = _LTOSLogAssets();
          v23 = v67;
          v25 = 0;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
          }

          getLocalFileUrl = v65;
          v33 = v78;
          v34 = defaultManager;
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

    coreAssetName = [v44 coreAssetName];
    identifier5 = [v44 identifier];
    [dictionary setObject:coreAssetName forKeyedSubscript:identifier5];

    v47 = coreAssetName;
    v48 = [v81 URLByAppendingPathComponent:coreAssetName];
    getLocalFileUrl3 = [v44 getLocalFileUrl];
    v85 = 0;
    [self _createSymlinksFromDirectory:getLocalFileUrl3 target:v48 error:&v85];
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

      getLocalFileUrl = v65;
      v33 = v78;
      v34 = defaultManager;
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

- (void)downloadAssetsUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  initiatedCopy = initiated;
  v51 = *MEMORY[0x277D85DE8];
  queue = queue;
  completionCopy = completion;
  if ([(NSArray *)self->_missingAssets count])
  {
    v8 = dispatch_group_create();
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      localePair = self->_localePair;
      v11 = v9;
      identifier = [(_LTLocalePair *)localePair identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = identifier;
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
          [_LTDAssetService downloadAsset:v16 options:initiatedCopy | 2 progress:0 completion:v31];
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
    v27 = completionCopy;
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
      identifier2 = [(_LTLocalePair *)v19 identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = identifier2;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "No downloadable assets missing asset for: %{public}@", &buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)purgeAssetUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  initiatedCopy = initiated;
  v69 = *MEMORY[0x277D85DE8];
  queue = queue;
  completionCopy = completion;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v36 = +[_LTOfflineAssetManager assetDirectory];
  assetIdentifierReferenceCountDictionary = [(_LTOfflineAssetManager *)self->_assetManager assetIdentifierReferenceCountDictionary];
  v7 = _LTOSLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    assetManager = self->_assetManager;
    v9 = v7;
    assetIdentifierReferenceCountDictionary2 = [(_LTOfflineAssetManager *)assetManager assetIdentifierReferenceCountDictionary];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = assetIdentifierReferenceCountDictionary2;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Reference counts before purge %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__13;
  v67 = __Block_byref_object_dispose__13;
  v68 = 0;
  v11 = dispatch_group_create();
  identifier = [(_LTLocalePair *)self->_localePair identifier];
  v38 = [v36 URLByAppendingPathComponent:identifier];

  path = [v38 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (v14)
  {
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 138543618;
      v61 = v38;
      v62 = 1024;
      v63 = initiatedCopy;
      _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_DEFAULT, "Starting purge for %{public}@; userInitiated: %{BOOL}i", v60, 0x12u);
    }

    v57 = 0;
    [defaultManager removeItemAtURL:v38 error:&v57];
    v33 = v57;
    if (v33)
    {
      v16 = _LTOSLogAssets();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo purgeAssetUserInitiated:queue:completion:];
      }
    }

    array = [MEMORY[0x277CBEB18] array];
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
          identifier2 = [v22 identifier];
          v24 = [assetIdentifierReferenceCountDictionary objectForKeyedSubscript:identifier2];

          if (!v24 || [v24 integerValue] <= 1)
          {
            [array addObject:v22];
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
    obj = array;
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
            identifier3 = [v28 identifier];
            *v60 = 138543362;
            v61 = identifier3;
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
    v43 = completionCopy;
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