@interface _SFPBQueryUnderstandingParse
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBQueryUnderstandingParse)initWithDictionary:(id)dictionary;
- (_SFPBQueryUnderstandingParse)initWithFacade:(id)facade;
- (_SFPBQueryUnderstandingParse)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBQueryUnderstandingParse

- (_SFPBQueryUnderstandingParse)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBQueryUnderstandingParse *)self init];
  if (v5)
  {
    if ([facadeCopy hasQueryIntentType])
    {
      -[_SFPBQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [facadeCopy queryIntentType]);
    }

    if ([facadeCopy hasHasUnspecifiedTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [facadeCopy hasUnspecifiedTokens]);
    }

    if ([facadeCopy hasHasSortCriteriaTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [facadeCopy hasSortCriteriaTokens]);
    }

    if ([facadeCopy hasHasLocationTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [facadeCopy hasLocationTokens]);
    }

    if ([facadeCopy hasHasActionTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [facadeCopy hasActionTokens]);
    }

    if ([facadeCopy hasHasMediaTypeTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [facadeCopy hasMediaTypeTokens]);
    }

    if ([facadeCopy hasHasVisualQualityTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [facadeCopy hasVisualQualityTokens]);
    }

    if ([facadeCopy hasHasNounTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [facadeCopy hasNounTokens]);
    }

    if ([facadeCopy hasHasTimeTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [facadeCopy hasTimeTokens]);
    }

    if ([facadeCopy hasHasEventTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [facadeCopy hasEventTokens]);
    }

    if ([facadeCopy hasHasGenericLocationTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [facadeCopy hasGenericLocationTokens]);
    }

    if ([facadeCopy hasHasCaptureDeviceTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [facadeCopy hasCaptureDeviceTokens]);
    }

    if ([facadeCopy hasHasFavoritedTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [facadeCopy hasFavoritedTokens]);
    }

    if ([facadeCopy hasHasSourceAppTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [facadeCopy hasSourceAppTokens]);
    }

    if ([facadeCopy hasHasPersonTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [facadeCopy hasPersonTokens]);
    }

    if ([facadeCopy hasHasPersonSenderTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [facadeCopy hasPersonSenderTokens]);
    }

    if ([facadeCopy hasSpotlightQueryIntent])
    {
      -[_SFPBQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [facadeCopy spotlightQueryIntent]);
    }

    if ([facadeCopy hasIsUnsafeQuery])
    {
      -[_SFPBQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [facadeCopy isUnsafeQuery]);
    }

    if ([facadeCopy hasIsBlocklistedQuery])
    {
      -[_SFPBQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [facadeCopy isBlocklistedQuery]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBQueryUnderstandingParse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = _SFPBQueryUnderstandingParse;
  v5 = [(_SFPBQueryUnderstandingParse *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"queryIntentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasUnspecifiedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hasSortCriteriaTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [v8 BOOLValue]);
    }

    v33 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasLocationTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [v9 BOOLValue]);
    }

    v37 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"hasActionTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [v10 BOOLValue]);
    }

    v11 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasMediaTypeTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [v12 BOOLValue]);
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"hasVisualQualityTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"hasNounTokens"];
    objc_opt_class();
    v43 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"hasTimeTokens"];
    objc_opt_class();
    v42 = v16;
    v17 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [v42 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"hasEventTokens"];
    objc_opt_class();
    v41 = v18;
    v19 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [v41 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasGenericLocationTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasCaptureDeviceTokens"];
    objc_opt_class();
    v40 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [v21 BOOLValue]);
    }

    v36 = v10;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"hasFavoritedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [v22 BOOLValue]);
    }

    v35 = v12;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"hasSourceAppTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [v23 BOOLValue]);
    }

    v34 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"hasPersonTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [v24 BOOLValue]);
    }

    v39 = v17;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"hasPersonSenderTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [v25 BOOLValue]);
    }

    v38 = v19;
    v26 = [dictionaryCopy objectForKeyedSubscript:{@"spotlightQueryIntent", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [v26 intValue]);
    }

    v27 = v20;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"isUnsafeQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [v28 BOOLValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"isBlocklistedQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [v29 BOOLValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBQueryUnderstandingParse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBQueryUnderstandingParse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBQueryUnderstandingParse *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_hasActionTokens)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasActionTokens](self, "hasActionTokens")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasActionTokens"];
  }

  if (self->_hasCaptureDeviceTokens)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasCaptureDeviceTokens](self, "hasCaptureDeviceTokens")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasCaptureDeviceTokens"];
  }

  if (self->_hasEventTokens)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasEventTokens](self, "hasEventTokens")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hasEventTokens"];
  }

  if (self->_hasFavoritedTokens)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasFavoritedTokens](self, "hasFavoritedTokens")}];
    [dictionary setObject:v7 forKeyedSubscript:@"hasFavoritedTokens"];
  }

  if (self->_hasGenericLocationTokens)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasGenericLocationTokens](self, "hasGenericLocationTokens")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasGenericLocationTokens"];
  }

  if (self->_hasLocationTokens)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasLocationTokens](self, "hasLocationTokens")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasLocationTokens"];
  }

  if (self->_hasMediaTypeTokens)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasMediaTypeTokens](self, "hasMediaTypeTokens")}];
    [dictionary setObject:v10 forKeyedSubscript:@"hasMediaTypeTokens"];
  }

  if (self->_hasNounTokens)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasNounTokens](self, "hasNounTokens")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasNounTokens"];
  }

  if (self->_hasPersonSenderTokens)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasPersonSenderTokens](self, "hasPersonSenderTokens")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasPersonSenderTokens"];
  }

  if (self->_hasPersonTokens)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasPersonTokens](self, "hasPersonTokens")}];
    [dictionary setObject:v13 forKeyedSubscript:@"hasPersonTokens"];
  }

  if (self->_hasSortCriteriaTokens)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasSortCriteriaTokens](self, "hasSortCriteriaTokens")}];
    [dictionary setObject:v14 forKeyedSubscript:@"hasSortCriteriaTokens"];
  }

  if (self->_hasSourceAppTokens)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasSourceAppTokens](self, "hasSourceAppTokens")}];
    [dictionary setObject:v15 forKeyedSubscript:@"hasSourceAppTokens"];
  }

  if (self->_hasTimeTokens)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasTimeTokens](self, "hasTimeTokens")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasTimeTokens"];
  }

  if (self->_hasUnspecifiedTokens)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasUnspecifiedTokens](self, "hasUnspecifiedTokens")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasUnspecifiedTokens"];
  }

  if (self->_hasVisualQualityTokens)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasVisualQualityTokens](self, "hasVisualQualityTokens")}];
    [dictionary setObject:v18 forKeyedSubscript:@"hasVisualQualityTokens"];
  }

  if (self->_isBlocklistedQuery)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse isBlocklistedQuery](self, "isBlocklistedQuery")}];
    [dictionary setObject:v19 forKeyedSubscript:@"isBlocklistedQuery"];
  }

  if (self->_isUnsafeQuery)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse isUnsafeQuery](self, "isUnsafeQuery")}];
    [dictionary setObject:v20 forKeyedSubscript:@"isUnsafeQuery"];
  }

  if (self->_queryIntentType)
  {
    queryIntentType = [(_SFPBQueryUnderstandingParse *)self queryIntentType];
    if (queryIntentType >= 4)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", queryIntentType];
    }

    else
    {
      v22 = off_1E7ACE560[queryIntentType];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"queryIntentType"];
  }

  if (self->_spotlightQueryIntent)
  {
    spotlightQueryIntent = [(_SFPBQueryUnderstandingParse *)self spotlightQueryIntent];
    if (spotlightQueryIntent >= 5)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", spotlightQueryIntent];
    }

    else
    {
      v24 = off_1E7ACE448[spotlightQueryIntent];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"spotlightQueryIntent"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (self->_hasUnspecifiedTokens)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (self->_hasSortCriteriaTokens)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_hasLocationTokens)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasActionTokens)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasMediaTypeTokens)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasVisualQualityTokens)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  if (self->_hasNounTokens)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  if (self->_hasTimeTokens)
  {
    v10 = 2654435761;
  }

  else
  {
    v10 = 0;
  }

  if (self->_hasEventTokens)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  if (self->_hasGenericLocationTokens)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  if (self->_hasCaptureDeviceTokens)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  if (self->_hasFavoritedTokens)
  {
    v14 = 2654435761;
  }

  else
  {
    v14 = 0;
  }

  if (self->_hasSourceAppTokens)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  if (self->_hasPersonTokens)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  if (self->_hasPersonSenderTokens)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  if (self->_isUnsafeQuery)
  {
    v18 = 2654435761;
  }

  else
  {
    v18 = 0;
  }

  if (!self->_isBlocklistedQuery)
  {
    v2 = 0;
  }

  return v3 ^ v4 ^ v5 ^ v6 ^ (2654435761 * self->_queryIntentType) ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ (2654435761 * self->_spotlightQueryIntent) ^ v18 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryIntentType = self->_queryIntentType;
  if (queryIntentType != [equalCopy queryIntentType])
  {
    goto LABEL_21;
  }

  hasUnspecifiedTokens = self->_hasUnspecifiedTokens;
  if (hasUnspecifiedTokens != [equalCopy hasUnspecifiedTokens])
  {
    goto LABEL_21;
  }

  hasSortCriteriaTokens = self->_hasSortCriteriaTokens;
  if (hasSortCriteriaTokens != [equalCopy hasSortCriteriaTokens])
  {
    goto LABEL_21;
  }

  hasLocationTokens = self->_hasLocationTokens;
  if (hasLocationTokens != [equalCopy hasLocationTokens])
  {
    goto LABEL_21;
  }

  hasActionTokens = self->_hasActionTokens;
  if (hasActionTokens != [equalCopy hasActionTokens])
  {
    goto LABEL_21;
  }

  hasMediaTypeTokens = self->_hasMediaTypeTokens;
  if (hasMediaTypeTokens != [equalCopy hasMediaTypeTokens])
  {
    goto LABEL_21;
  }

  hasVisualQualityTokens = self->_hasVisualQualityTokens;
  if (hasVisualQualityTokens != [equalCopy hasVisualQualityTokens])
  {
    goto LABEL_21;
  }

  hasNounTokens = self->_hasNounTokens;
  if (hasNounTokens != [equalCopy hasNounTokens])
  {
    goto LABEL_21;
  }

  hasTimeTokens = self->_hasTimeTokens;
  if (hasTimeTokens != [equalCopy hasTimeTokens])
  {
    goto LABEL_21;
  }

  hasEventTokens = self->_hasEventTokens;
  if (hasEventTokens != [equalCopy hasEventTokens])
  {
    goto LABEL_21;
  }

  hasGenericLocationTokens = self->_hasGenericLocationTokens;
  if (hasGenericLocationTokens != [equalCopy hasGenericLocationTokens])
  {
    goto LABEL_21;
  }

  hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens;
  if (hasCaptureDeviceTokens == [equalCopy hasCaptureDeviceTokens] && (hasFavoritedTokens = self->_hasFavoritedTokens, hasFavoritedTokens == objc_msgSend(equalCopy, "hasFavoritedTokens")) && (hasSourceAppTokens = self->_hasSourceAppTokens, hasSourceAppTokens == objc_msgSend(equalCopy, "hasSourceAppTokens")) && (hasPersonTokens = self->_hasPersonTokens, hasPersonTokens == objc_msgSend(equalCopy, "hasPersonTokens")) && (hasPersonSenderTokens = self->_hasPersonSenderTokens, hasPersonSenderTokens == objc_msgSend(equalCopy, "hasPersonSenderTokens")) && (spotlightQueryIntent = self->_spotlightQueryIntent, spotlightQueryIntent == objc_msgSend(equalCopy, "spotlightQueryIntent")) && (isUnsafeQuery = self->_isUnsafeQuery, isUnsafeQuery == objc_msgSend(equalCopy, "isUnsafeQuery")))
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    v24 = isBlocklistedQuery == [equalCopy isBlocklistedQuery];
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBQueryUnderstandingParse *)self queryIntentType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasUnspecifiedTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasSortCriteriaTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasLocationTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasActionTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasMediaTypeTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasVisualQualityTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasNounTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasTimeTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasEventTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasGenericLocationTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasCaptureDeviceTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasFavoritedTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasSourceAppTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasPersonTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self hasPersonSenderTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self spotlightQueryIntent])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBQueryUnderstandingParse *)self isUnsafeQuery])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBQueryUnderstandingParse *)self isBlocklistedQuery])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end