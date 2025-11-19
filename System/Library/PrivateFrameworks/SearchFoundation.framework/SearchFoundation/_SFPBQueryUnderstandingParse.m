@interface _SFPBQueryUnderstandingParse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBQueryUnderstandingParse)initWithDictionary:(id)a3;
- (_SFPBQueryUnderstandingParse)initWithFacade:(id)a3;
- (_SFPBQueryUnderstandingParse)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBQueryUnderstandingParse

- (_SFPBQueryUnderstandingParse)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBQueryUnderstandingParse *)self init];
  if (v5)
  {
    if ([v4 hasQueryIntentType])
    {
      -[_SFPBQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [v4 queryIntentType]);
    }

    if ([v4 hasHasUnspecifiedTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [v4 hasUnspecifiedTokens]);
    }

    if ([v4 hasHasSortCriteriaTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [v4 hasSortCriteriaTokens]);
    }

    if ([v4 hasHasLocationTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [v4 hasLocationTokens]);
    }

    if ([v4 hasHasActionTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [v4 hasActionTokens]);
    }

    if ([v4 hasHasMediaTypeTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [v4 hasMediaTypeTokens]);
    }

    if ([v4 hasHasVisualQualityTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [v4 hasVisualQualityTokens]);
    }

    if ([v4 hasHasNounTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [v4 hasNounTokens]);
    }

    if ([v4 hasHasTimeTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [v4 hasTimeTokens]);
    }

    if ([v4 hasHasEventTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [v4 hasEventTokens]);
    }

    if ([v4 hasHasGenericLocationTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [v4 hasGenericLocationTokens]);
    }

    if ([v4 hasHasCaptureDeviceTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [v4 hasCaptureDeviceTokens]);
    }

    if ([v4 hasHasFavoritedTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [v4 hasFavoritedTokens]);
    }

    if ([v4 hasHasSourceAppTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [v4 hasSourceAppTokens]);
    }

    if ([v4 hasHasPersonTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [v4 hasPersonTokens]);
    }

    if ([v4 hasHasPersonSenderTokens])
    {
      -[_SFPBQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [v4 hasPersonSenderTokens]);
    }

    if ([v4 hasSpotlightQueryIntent])
    {
      -[_SFPBQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [v4 spotlightQueryIntent]);
    }

    if ([v4 hasIsUnsafeQuery])
    {
      -[_SFPBQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [v4 isUnsafeQuery]);
    }

    if ([v4 hasIsBlocklistedQuery])
    {
      -[_SFPBQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [v4 isBlocklistedQuery]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBQueryUnderstandingParse)initWithDictionary:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _SFPBQueryUnderstandingParse;
  v5 = [(_SFPBQueryUnderstandingParse *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"queryIntentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"hasUnspecifiedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"hasSortCriteriaTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [v8 BOOLValue]);
    }

    v33 = v8;
    v9 = [v4 objectForKeyedSubscript:@"hasLocationTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [v9 BOOLValue]);
    }

    v37 = v9;
    v10 = [v4 objectForKeyedSubscript:@"hasActionTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [v10 BOOLValue]);
    }

    v11 = v7;
    v12 = [v4 objectForKeyedSubscript:@"hasMediaTypeTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [v12 BOOLValue]);
    }

    v13 = v6;
    v14 = [v4 objectForKeyedSubscript:@"hasVisualQualityTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"hasNounTokens"];
    objc_opt_class();
    v43 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"hasTimeTokens"];
    objc_opt_class();
    v42 = v16;
    v17 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [v42 BOOLValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"hasEventTokens"];
    objc_opt_class();
    v41 = v18;
    v19 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [v41 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasGenericLocationTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasCaptureDeviceTokens"];
    objc_opt_class();
    v40 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [v21 BOOLValue]);
    }

    v36 = v10;
    v22 = [v4 objectForKeyedSubscript:@"hasFavoritedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [v22 BOOLValue]);
    }

    v35 = v12;
    v23 = [v4 objectForKeyedSubscript:@"hasSourceAppTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [v23 BOOLValue]);
    }

    v34 = v14;
    v24 = [v4 objectForKeyedSubscript:@"hasPersonTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [v24 BOOLValue]);
    }

    v39 = v17;
    v25 = [v4 objectForKeyedSubscript:@"hasPersonSenderTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [v25 BOOLValue]);
    }

    v38 = v19;
    v26 = [v4 objectForKeyedSubscript:{@"spotlightQueryIntent", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [v26 intValue]);
    }

    v27 = v20;
    v28 = [v4 objectForKeyedSubscript:@"isUnsafeQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [v28 BOOLValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"isBlocklistedQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [v29 BOOLValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBQueryUnderstandingParse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBQueryUnderstandingParse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBQueryUnderstandingParse *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_hasActionTokens)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasActionTokens](self, "hasActionTokens")}];
    [v3 setObject:v4 forKeyedSubscript:@"hasActionTokens"];
  }

  if (self->_hasCaptureDeviceTokens)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasCaptureDeviceTokens](self, "hasCaptureDeviceTokens")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasCaptureDeviceTokens"];
  }

  if (self->_hasEventTokens)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasEventTokens](self, "hasEventTokens")}];
    [v3 setObject:v6 forKeyedSubscript:@"hasEventTokens"];
  }

  if (self->_hasFavoritedTokens)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasFavoritedTokens](self, "hasFavoritedTokens")}];
    [v3 setObject:v7 forKeyedSubscript:@"hasFavoritedTokens"];
  }

  if (self->_hasGenericLocationTokens)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasGenericLocationTokens](self, "hasGenericLocationTokens")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasGenericLocationTokens"];
  }

  if (self->_hasLocationTokens)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasLocationTokens](self, "hasLocationTokens")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasLocationTokens"];
  }

  if (self->_hasMediaTypeTokens)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasMediaTypeTokens](self, "hasMediaTypeTokens")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasMediaTypeTokens"];
  }

  if (self->_hasNounTokens)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasNounTokens](self, "hasNounTokens")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasNounTokens"];
  }

  if (self->_hasPersonSenderTokens)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasPersonSenderTokens](self, "hasPersonSenderTokens")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasPersonSenderTokens"];
  }

  if (self->_hasPersonTokens)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasPersonTokens](self, "hasPersonTokens")}];
    [v3 setObject:v13 forKeyedSubscript:@"hasPersonTokens"];
  }

  if (self->_hasSortCriteriaTokens)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasSortCriteriaTokens](self, "hasSortCriteriaTokens")}];
    [v3 setObject:v14 forKeyedSubscript:@"hasSortCriteriaTokens"];
  }

  if (self->_hasSourceAppTokens)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasSourceAppTokens](self, "hasSourceAppTokens")}];
    [v3 setObject:v15 forKeyedSubscript:@"hasSourceAppTokens"];
  }

  if (self->_hasTimeTokens)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasTimeTokens](self, "hasTimeTokens")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasTimeTokens"];
  }

  if (self->_hasUnspecifiedTokens)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasUnspecifiedTokens](self, "hasUnspecifiedTokens")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasUnspecifiedTokens"];
  }

  if (self->_hasVisualQualityTokens)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse hasVisualQualityTokens](self, "hasVisualQualityTokens")}];
    [v3 setObject:v18 forKeyedSubscript:@"hasVisualQualityTokens"];
  }

  if (self->_isBlocklistedQuery)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse isBlocklistedQuery](self, "isBlocklistedQuery")}];
    [v3 setObject:v19 forKeyedSubscript:@"isBlocklistedQuery"];
  }

  if (self->_isUnsafeQuery)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBQueryUnderstandingParse isUnsafeQuery](self, "isUnsafeQuery")}];
    [v3 setObject:v20 forKeyedSubscript:@"isUnsafeQuery"];
  }

  if (self->_queryIntentType)
  {
    v21 = [(_SFPBQueryUnderstandingParse *)self queryIntentType];
    if (v21 >= 4)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7ACE560[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"queryIntentType"];
  }

  if (self->_spotlightQueryIntent)
  {
    v23 = [(_SFPBQueryUnderstandingParse *)self spotlightQueryIntent];
    if (v23 >= 5)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    else
    {
      v24 = off_1E7ACE448[v23];
    }

    [v3 setObject:v24 forKeyedSubscript:@"spotlightQueryIntent"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryIntentType = self->_queryIntentType;
  if (queryIntentType != [v4 queryIntentType])
  {
    goto LABEL_21;
  }

  hasUnspecifiedTokens = self->_hasUnspecifiedTokens;
  if (hasUnspecifiedTokens != [v4 hasUnspecifiedTokens])
  {
    goto LABEL_21;
  }

  hasSortCriteriaTokens = self->_hasSortCriteriaTokens;
  if (hasSortCriteriaTokens != [v4 hasSortCriteriaTokens])
  {
    goto LABEL_21;
  }

  hasLocationTokens = self->_hasLocationTokens;
  if (hasLocationTokens != [v4 hasLocationTokens])
  {
    goto LABEL_21;
  }

  hasActionTokens = self->_hasActionTokens;
  if (hasActionTokens != [v4 hasActionTokens])
  {
    goto LABEL_21;
  }

  hasMediaTypeTokens = self->_hasMediaTypeTokens;
  if (hasMediaTypeTokens != [v4 hasMediaTypeTokens])
  {
    goto LABEL_21;
  }

  hasVisualQualityTokens = self->_hasVisualQualityTokens;
  if (hasVisualQualityTokens != [v4 hasVisualQualityTokens])
  {
    goto LABEL_21;
  }

  hasNounTokens = self->_hasNounTokens;
  if (hasNounTokens != [v4 hasNounTokens])
  {
    goto LABEL_21;
  }

  hasTimeTokens = self->_hasTimeTokens;
  if (hasTimeTokens != [v4 hasTimeTokens])
  {
    goto LABEL_21;
  }

  hasEventTokens = self->_hasEventTokens;
  if (hasEventTokens != [v4 hasEventTokens])
  {
    goto LABEL_21;
  }

  hasGenericLocationTokens = self->_hasGenericLocationTokens;
  if (hasGenericLocationTokens != [v4 hasGenericLocationTokens])
  {
    goto LABEL_21;
  }

  hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens;
  if (hasCaptureDeviceTokens == [v4 hasCaptureDeviceTokens] && (hasFavoritedTokens = self->_hasFavoritedTokens, hasFavoritedTokens == objc_msgSend(v4, "hasFavoritedTokens")) && (hasSourceAppTokens = self->_hasSourceAppTokens, hasSourceAppTokens == objc_msgSend(v4, "hasSourceAppTokens")) && (hasPersonTokens = self->_hasPersonTokens, hasPersonTokens == objc_msgSend(v4, "hasPersonTokens")) && (hasPersonSenderTokens = self->_hasPersonSenderTokens, hasPersonSenderTokens == objc_msgSend(v4, "hasPersonSenderTokens")) && (spotlightQueryIntent = self->_spotlightQueryIntent, spotlightQueryIntent == objc_msgSend(v4, "spotlightQueryIntent")) && (isUnsafeQuery = self->_isUnsafeQuery, isUnsafeQuery == objc_msgSend(v4, "isUnsafeQuery")))
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    v24 = isBlocklistedQuery == [v4 isBlocklistedQuery];
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

  return v24;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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