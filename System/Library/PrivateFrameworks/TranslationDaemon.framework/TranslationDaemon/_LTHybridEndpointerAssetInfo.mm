@interface _LTHybridEndpointerAssetInfo
- (BOOL)endpointerIsAvailableWithContext:(id)context;
- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)assets context:(id)context;
- (id)caesuraModelURL;
- (id)endpointerModelURL:(id)l;
- (id)getPreferredAsset:(id)asset orAsset:(id)orAsset withLocale:(id)locale;
- (id)selectAsset:(id)asset withLocale:(id)locale;
@end

@implementation _LTHybridEndpointerAssetInfo

- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)assets context:(id)context
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  contextCopy = context;
  v41.receiver = self;
  v41.super_class = _LTHybridEndpointerAssetInfo;
  v8 = [(_LTHybridEndpointerAssetInfo *)&v41 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  hybridepAssetFile = v8->_hybridepAssetFile;
  v8->_hybridepAssetFile = @"hybridendpointer.json";

  spgAssetFile = v9->_spgAssetFile;
  v9->_spgAssetFile = @"hybridendpointer.json";

  if (!assetsCopy)
  {
    v34 = _LTOSLogSpeech();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
LABEL_21:
      v33 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v35 = "No available endpointer assets";
LABEL_18:
    _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, v35, buf, 2u);
    goto LABEL_21;
  }

  if (![(_LTHybridEndpointerAssetInfo *)v9 endpointerIsAvailableWithContext:contextCopy])
  {
    v36 = _LTOSLogSpeech();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      localePair = [contextCopy localePair];
      *buf = 138543362;
      *v43 = localePair;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "HEP endpointing is not supported for the requested locale pair: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v9->_context, context);
  spgAsset = v9->_spgAsset;
  v9->_spgAsset = 0;

  sourceLanguageAsset = v9->_sourceLanguageAsset;
  v9->_sourceLanguageAsset = 0;

  targetLanguageAsset = v9->_targetLanguageAsset;
  v9->_targetLanguageAsset = 0;

  v15 = _LTOSLogSpeech();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [assetsCopy count];
    *buf = 134217984;
    *v43 = v17;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Number of HEP assets %zu", buf, 0xCu);
  }

  localePair2 = [contextCopy localePair];
  sourceLocale = [localePair2 sourceLocale];
  v20 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:assetsCopy withLocale:sourceLocale];
  v21 = v9->_sourceLanguageAsset;
  v9->_sourceLanguageAsset = v20;

  v22 = v9->_sourceLanguageAsset;
  if (v22)
  {
    objc_storeStrong(&v9->_spgAsset, v22);
  }

  if ([contextCopy autodetectLanguage])
  {
    localePair3 = [contextCopy localePair];
    targetLocale = [localePair3 targetLocale];
    v25 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:assetsCopy withLocale:targetLocale];
    v26 = v9->_targetLanguageAsset;
    v9->_targetLanguageAsset = v25;

    v27 = v9->_targetLanguageAsset;
    if (v27)
    {
      v28 = [(_LTHybridEndpointerAssetInfo *)v9 getPreferredAsset:v9->_spgAsset orAsset:v27 withLocale:0];
      v29 = v9->_spgAsset;
      v9->_spgAsset = v28;
    }
  }

  if (!v9->_sourceLanguageAsset && !v9->_targetLanguageAsset)
  {
    v34 = _LTOSLogSpeech();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v35 = "Could not find suitable HEP asset for any language";
    goto LABEL_18;
  }

  v30 = _LTOSLogSpeech();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = v9->_sourceLanguageAsset != 0;
    v32 = v9->_targetLanguageAsset != 0;
    *buf = 67109376;
    v43[0] = v31;
    LOWORD(v43[1]) = 1024;
    *(&v43[1] + 2) = v32;
    _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Found asset for source %{BOOL}i, for target %{BOOL}i", buf, 0xEu);
  }

  v33 = v9;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)selectAsset:(id)asset withLocale:(id)locale
{
  v21 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  localeCopy = locale;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [assetCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(assetCopy);
        }

        v10 = [(_LTHybridEndpointerAssetInfo *)self getPreferredAsset:v13 orAsset:*(*(&v16 + 1) + 8 * v12) withLocale:localeCopy];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [assetCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getPreferredAsset:(id)asset orAsset:(id)orAsset withLocale:(id)locale
{
  assetCopy = asset;
  orAssetCopy = orAsset;
  localeCopy = locale;
  v10 = localeCopy;
  v11 = orAssetCopy;
  if (assetCopy)
  {
    if (!localeCopy || (v12 = [assetCopy supportsLocale:localeCopy], v13 = objc_msgSend(orAssetCopy, "supportsLocale:", v10), (v12 & 1) != 0) || (v11 = orAssetCopy, !v13))
    {
      contentVersion = [assetCopy contentVersion];
      contentVersion2 = [orAssetCopy contentVersion];
      v11 = orAssetCopy;
      if (contentVersion >= contentVersion2)
      {
        if (contentVersion != contentVersion2 || (v16 = [assetCopy isPremiumTextLID], v17 = objc_msgSend(orAssetCopy, "isPremiumTextLID"), v11 = orAssetCopy, v16) && (!v17 || (v18 = objc_msgSend(assetCopy, "state"), v11 = orAssetCopy, v18 != 4)))
        {
          v11 = assetCopy;
        }
      }
    }
  }

  v19 = v11;

  return v19;
}

- (id)caesuraModelURL
{
  getLocalFileUrl = [(_LTDAssetModel *)self->_spgAsset getLocalFileUrl];
  v4 = [getLocalFileUrl URLByAppendingPathComponent:self->_spgAssetFile];

  return v4;
}

- (id)endpointerModelURL:(id)l
{
  lCopy = l;
  p_sourceLanguageAsset = &self->_sourceLanguageAsset;
  if (self->_sourceLanguageAsset)
  {
    localePair = [(_LTTranslationContext *)self->_context localePair];
    sourceLocale = [localePair sourceLocale];

    if (sourceLocale == lCopy)
    {
      goto LABEL_6;
    }
  }

  p_sourceLanguageAsset = &self->_targetLanguageAsset;
  if (self->_targetLanguageAsset && (-[_LTTranslationContext localePair](self->_context, "localePair"), v8 = objc_claimAutoreleasedReturnValue(), [v8 targetLocale], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == lCopy))
  {
LABEL_6:
    getLocalFileUrl = [(_LTDAssetModel *)*p_sourceLanguageAsset getLocalFileUrl];
    v10 = [getLocalFileUrl URLByAppendingPathComponent:self->_hybridepAssetFile];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)endpointerIsAvailableWithContext:(id)context
{
  contextCopy = context;
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  if ([contextCopy autodetectLanguage])
  {
    localePair2 = [contextCopy localePair];
    targetLocale = [localePair2 targetLocale];
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(sourceLocale, targetLocale);
  }

  else
  {
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(sourceLocale, 0);
  }

  return v8;
}

@end