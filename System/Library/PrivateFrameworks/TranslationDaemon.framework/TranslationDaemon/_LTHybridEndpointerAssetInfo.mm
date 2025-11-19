@interface _LTHybridEndpointerAssetInfo
- (BOOL)endpointerIsAvailableWithContext:(id)a3;
- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)a3 context:(id)a4;
- (id)caesuraModelURL;
- (id)endpointerModelURL:(id)a3;
- (id)getPreferredAsset:(id)a3 orAsset:(id)a4 withLocale:(id)a5;
- (id)selectAsset:(id)a3 withLocale:(id)a4;
@end

@implementation _LTHybridEndpointerAssetInfo

- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)a3 context:(id)a4
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

  if (!v6)
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

  if (![(_LTHybridEndpointerAssetInfo *)v9 endpointerIsAvailableWithContext:v7])
  {
    v36 = _LTOSLogSpeech();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      v38 = [v7 localePair];
      *buf = 138543362;
      *v43 = v38;
      _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "HEP endpointing is not supported for the requested locale pair: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v9->_context, a4);
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
    v17 = [v6 count];
    *buf = 134217984;
    *v43 = v17;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Number of HEP assets %zu", buf, 0xCu);
  }

  v18 = [v7 localePair];
  v19 = [v18 sourceLocale];
  v20 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:v6 withLocale:v19];
  v21 = v9->_sourceLanguageAsset;
  v9->_sourceLanguageAsset = v20;

  v22 = v9->_sourceLanguageAsset;
  if (v22)
  {
    objc_storeStrong(&v9->_spgAsset, v22);
  }

  if ([v7 autodetectLanguage])
  {
    v23 = [v7 localePair];
    v24 = [v23 targetLocale];
    v25 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:v6 withLocale:v24];
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

- (id)selectAsset:(id)a3 withLocale:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = [(_LTHybridEndpointerAssetInfo *)self getPreferredAsset:v13 orAsset:*(*(&v16 + 1) + 8 * v12) withLocale:v7];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)getPreferredAsset:(id)a3 orAsset:(id)a4 withLocale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = v8;
  if (v7)
  {
    if (!v9 || (v12 = [v7 supportsLocale:v9], v13 = objc_msgSend(v8, "supportsLocale:", v10), (v12 & 1) != 0) || (v11 = v8, !v13))
    {
      v14 = [v7 contentVersion];
      v15 = [v8 contentVersion];
      v11 = v8;
      if (v14 >= v15)
      {
        if (v14 != v15 || (v16 = [v7 isPremiumTextLID], v17 = objc_msgSend(v8, "isPremiumTextLID"), v11 = v8, v16) && (!v17 || (v18 = objc_msgSend(v7, "state"), v11 = v8, v18 != 4)))
        {
          v11 = v7;
        }
      }
    }
  }

  v19 = v11;

  return v19;
}

- (id)caesuraModelURL
{
  v3 = [(_LTDAssetModel *)self->_spgAsset getLocalFileUrl];
  v4 = [v3 URLByAppendingPathComponent:self->_spgAssetFile];

  return v4;
}

- (id)endpointerModelURL:(id)a3
{
  v4 = a3;
  p_sourceLanguageAsset = &self->_sourceLanguageAsset;
  if (self->_sourceLanguageAsset)
  {
    v6 = [(_LTTranslationContext *)self->_context localePair];
    v7 = [v6 sourceLocale];

    if (v7 == v4)
    {
      goto LABEL_6;
    }
  }

  p_sourceLanguageAsset = &self->_targetLanguageAsset;
  if (self->_targetLanguageAsset && (-[_LTTranslationContext localePair](self->_context, "localePair"), v8 = objc_claimAutoreleasedReturnValue(), [v8 targetLocale], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v4))
  {
LABEL_6:
    v11 = [(_LTDAssetModel *)*p_sourceLanguageAsset getLocalFileUrl];
    v10 = [v11 URLByAppendingPathComponent:self->_hybridepAssetFile];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)endpointerIsAvailableWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 localePair];
  v5 = [v4 sourceLocale];
  if ([v3 autodetectLanguage])
  {
    v6 = [v3 localePair];
    v7 = [v6 targetLocale];
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(v5, v7);
  }

  else
  {
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(v5, 0);
  }

  return v8;
}

@end