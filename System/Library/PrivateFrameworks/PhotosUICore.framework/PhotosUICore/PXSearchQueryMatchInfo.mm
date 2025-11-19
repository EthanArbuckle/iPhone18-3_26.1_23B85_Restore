@interface PXSearchQueryMatchInfo
- (BOOL)isEqual:(id)a3;
- (PXSearchQueryMatchInfo)initWithLocalizedQueryString:(id)a3 matchedSceneIdentifiers:(id)a4 personLocalIdentifiers:(id)a5 audioIdentifiers:(id)a6 humanActionIdentifiers:(id)a7 ocrTexts:(id)a8 ocrAssetUUIDS:(id)a9 queryEmbedding:(id)a10 countOfQueryTerms:(unint64_t)a11;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXSearchQueryMatchInfo

- (unint64_t)hash
{
  v2 = [(PXSearchQueryMatchInfo *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXSearchQueryMatchInfo *)self identifier];
    v7 = [v5 identifier];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@:%p\n", v5, self];

  [v3 appendFormat:@"identifier: %@\n", self->_identifier];
  [v3 appendFormat:@"query: %@\n", self->_localizedQueryString];
  [v3 appendFormat:@"sceneIdentifiers: %@\n", self->_sceneIdentifiers];
  [v3 appendFormat:@"personLocalIdentifiers: %@\n", self->_personLocalIdentifiers];
  [v3 appendFormat:@"ocrTexts: %@\n", self->_ocrTexts];
  [v3 appendFormat:@"ocrAssetUUIDs: %@\n", self->_ocrAssetUUIDs];
  [v3 appendFormat:@"humanAction: %@\n", self->_humanActionIdentifiers];
  [v3 appendFormat:@"audio: %@\n", self->_audioIdentifiers];
  [v3 appendFormat:@"embedding: %@\n", self->_queryEmbedding];
  [v3 appendFormat:@"countOfQueryTerms: %ld\n", self->_countOfQueryTerms];

  return v3;
}

- (PXSearchQueryMatchInfo)initWithLocalizedQueryString:(id)a3 matchedSceneIdentifiers:(id)a4 personLocalIdentifiers:(id)a5 audioIdentifiers:(id)a6 humanActionIdentifiers:(id)a7 ocrTexts:(id)a8 ocrAssetUUIDS:(id)a9 queryEmbedding:(id)a10 countOfQueryTerms:(unint64_t)a11
{
  v51[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v47 = a8;
  v22 = a9;
  v23 = a10;
  v48.receiver = self;
  v48.super_class = PXSearchQueryMatchInfo;
  v24 = [(PXSearchQueryMatchInfo *)&v48 init];
  if (v24)
  {
    v25 = [MEMORY[0x1E696AFB0] UUID];
    v26 = [v25 UUIDString];
    identifier = v24->_identifier;
    v24->_identifier = v26;

    v28 = [v17 copy];
    localizedQueryString = v24->_localizedQueryString;
    v24->_localizedQueryString = v28;

    v30 = [v18 copy];
    sceneIdentifiers = v24->_sceneIdentifiers;
    v24->_sceneIdentifiers = v30;

    v32 = [v20 copy];
    audioIdentifiers = v24->_audioIdentifiers;
    v24->_audioIdentifiers = v32;

    v34 = [v21 copy];
    humanActionIdentifiers = v24->_humanActionIdentifiers;
    v24->_humanActionIdentifiers = v34;

    v36 = [v19 copy];
    personLocalIdentifiers = v24->_personLocalIdentifiers;
    v24->_personLocalIdentifiers = v36;

    v38 = [v22 copy];
    ocrAssetUUIDs = v24->_ocrAssetUUIDs;
    v24->_ocrAssetUUIDs = v38;

    objc_storeStrong(&v24->_queryEmbedding, a10);
    v24->_countOfQueryTerms = a11;
    v40 = +[PXSearchSettings sharedInstance];
    v41 = [v40 overrideMatchedQueryText];

    if ([v41 length])
    {
      v51[0] = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      ocrTexts = v24->_ocrTexts;
      v24->_ocrTexts = v42;

      p_super = PLSearchUIQueryGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v41;
        _os_log_impl(&dword_1A3C1C000, p_super, OS_LOG_TYPE_DEFAULT, "⚠️ overrideMatchedQueryText is set. Using the overridden value (%@) instead of the matched query strings.", buf, 0xCu);
      }
    }

    else
    {
      v45 = [v47 copy];
      p_super = &v24->_ocrTexts->super;
      v24->_ocrTexts = v45;
    }
  }

  return v24;
}

@end