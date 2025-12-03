@interface PXSearchQueryMatchInfo
- (BOOL)isEqual:(id)equal;
- (PXSearchQueryMatchInfo)initWithLocalizedQueryString:(id)string matchedSceneIdentifiers:(id)identifiers personLocalIdentifiers:(id)localIdentifiers audioIdentifiers:(id)audioIdentifiers humanActionIdentifiers:(id)actionIdentifiers ocrTexts:(id)texts ocrAssetUUIDS:(id)s queryEmbedding:(id)self0 countOfQueryTerms:(unint64_t)self1;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXSearchQueryMatchInfo

- (unint64_t)hash
{
  identifier = [(PXSearchQueryMatchInfo *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(PXSearchQueryMatchInfo *)self identifier];
    identifier2 = [v5 identifier];

    v8 = identifier == identifier2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@:%p\n", v5, self];

  [string appendFormat:@"identifier: %@\n", self->_identifier];
  [string appendFormat:@"query: %@\n", self->_localizedQueryString];
  [string appendFormat:@"sceneIdentifiers: %@\n", self->_sceneIdentifiers];
  [string appendFormat:@"personLocalIdentifiers: %@\n", self->_personLocalIdentifiers];
  [string appendFormat:@"ocrTexts: %@\n", self->_ocrTexts];
  [string appendFormat:@"ocrAssetUUIDs: %@\n", self->_ocrAssetUUIDs];
  [string appendFormat:@"humanAction: %@\n", self->_humanActionIdentifiers];
  [string appendFormat:@"audio: %@\n", self->_audioIdentifiers];
  [string appendFormat:@"embedding: %@\n", self->_queryEmbedding];
  [string appendFormat:@"countOfQueryTerms: %ld\n", self->_countOfQueryTerms];

  return string;
}

- (PXSearchQueryMatchInfo)initWithLocalizedQueryString:(id)string matchedSceneIdentifiers:(id)identifiers personLocalIdentifiers:(id)localIdentifiers audioIdentifiers:(id)audioIdentifiers humanActionIdentifiers:(id)actionIdentifiers ocrTexts:(id)texts ocrAssetUUIDS:(id)s queryEmbedding:(id)self0 countOfQueryTerms:(unint64_t)self1
{
  v51[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  audioIdentifiersCopy = audioIdentifiers;
  actionIdentifiersCopy = actionIdentifiers;
  textsCopy = texts;
  sCopy = s;
  embeddingCopy = embedding;
  v48.receiver = self;
  v48.super_class = PXSearchQueryMatchInfo;
  v24 = [(PXSearchQueryMatchInfo *)&v48 init];
  if (v24)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v24->_identifier;
    v24->_identifier = uUIDString;

    v28 = [stringCopy copy];
    localizedQueryString = v24->_localizedQueryString;
    v24->_localizedQueryString = v28;

    v30 = [identifiersCopy copy];
    sceneIdentifiers = v24->_sceneIdentifiers;
    v24->_sceneIdentifiers = v30;

    v32 = [audioIdentifiersCopy copy];
    audioIdentifiers = v24->_audioIdentifiers;
    v24->_audioIdentifiers = v32;

    v34 = [actionIdentifiersCopy copy];
    humanActionIdentifiers = v24->_humanActionIdentifiers;
    v24->_humanActionIdentifiers = v34;

    v36 = [localIdentifiersCopy copy];
    personLocalIdentifiers = v24->_personLocalIdentifiers;
    v24->_personLocalIdentifiers = v36;

    v38 = [sCopy copy];
    ocrAssetUUIDs = v24->_ocrAssetUUIDs;
    v24->_ocrAssetUUIDs = v38;

    objc_storeStrong(&v24->_queryEmbedding, embedding);
    v24->_countOfQueryTerms = terms;
    v40 = +[PXSearchSettings sharedInstance];
    overrideMatchedQueryText = [v40 overrideMatchedQueryText];

    if ([overrideMatchedQueryText length])
    {
      v51[0] = overrideMatchedQueryText;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      ocrTexts = v24->_ocrTexts;
      v24->_ocrTexts = v42;

      p_super = PLSearchUIQueryGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = overrideMatchedQueryText;
        _os_log_impl(&dword_1A3C1C000, p_super, OS_LOG_TYPE_DEFAULT, "⚠️ overrideMatchedQueryText is set. Using the overridden value (%@) instead of the matched query strings.", buf, 0xCu);
      }
    }

    else
    {
      v45 = [textsCopy copy];
      p_super = &v24->_ocrTexts->super;
      v24->_ocrTexts = v45;
    }
  }

  return v24;
}

@end