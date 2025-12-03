@interface STSchemaSTSpotlightResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTSpotlightResult)initWithDictionary:(id)dictionary;
- (STSchemaSTSpotlightResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEmbeddingSimilarity:(BOOL)similarity;
- (void)setHasFreshness:(BOOL)freshness;
- (void)setHasKeywordMatchScore:(BOOL)score;
- (void)setHasLikelihood:(BOOL)likelihood;
- (void)setHasPommesAdjustedL1Score:(BOOL)score;
- (void)setHasPommesCalibratedL1Score:(BOOL)score;
- (void)setHasPommesL1Score:(BOOL)score;
- (void)setHasTopicality:(BOOL)topicality;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTSpotlightResult

- (STSchemaSTSpotlightResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = STSchemaSTSpotlightResult;
  v5 = [(STSchemaSTSpotlightResult *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"retrievalType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTSpotlightResult setRetrievalType:](v5, "setRetrievalType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(STSchemaSTSpotlightResult *)v5 setBundleId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"likelihood"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setLikelihood:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"topicality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setTopicality:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pommesL1Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setPommesL1Score:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pommesAdjustedL1Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setPommesAdjustedL1Score:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"pommesCalibratedL1Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setPommesCalibratedL1Score:?];
    }

    v27 = v13;
    v31 = v9;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"embeddingSimilarity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setEmbeddingSimilarity:?];
    }

    v33 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"keywordMatchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setKeywordMatchScore:?];
    }

    v28 = v12;
    v32 = v7;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"freshness"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(STSchemaSTSpotlightResult *)v5 setFreshness:?];
    }

    v30 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"queryAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[STSchemaQueryAttributes alloc] initWithDictionary:v17];
      [(STSchemaSTSpotlightResult *)v5 setQueryAttributes:v18];
    }

    v29 = v11;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"quTokenParseInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[STSchemaQUTokenParseInfo alloc] initWithDictionary:v19];
      [(STSchemaSTSpotlightResult *)v5 setQuTokenParseInfo:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"documentAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[STSchemaDocumentAttributes alloc] initWithDictionary:v21];
      [(STSchemaSTSpotlightResult *)v5 setDocumentAttributes:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"topicalityAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[STSchemaTopicalityAttributes alloc] initWithDictionary:v23];
      [(STSchemaSTSpotlightResult *)v5 setTopicalityAttributes:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (STSchemaSTSpotlightResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTSpotlightResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTSpotlightResult *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(STSchemaSTSpotlightResult *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_documentAttributes)
  {
    documentAttributes = [(STSchemaSTSpotlightResult *)self documentAttributes];
    dictionaryRepresentation = [documentAttributes dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"documentAttributes"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"documentAttributes"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(STSchemaSTSpotlightResult *)self embeddingSimilarity];
    v15 = [v14 numberWithFloat:?];
    [dictionary setObject:v15 forKeyedSubscript:@"embeddingSimilarity"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_10:
      if ((has & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_10;
  }

  v16 = MEMORY[0x1E696AD98];
  [(STSchemaSTSpotlightResult *)self freshness];
  v17 = [v16 numberWithFloat:?];
  [dictionary setObject:v17 forKeyedSubscript:@"freshness"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = MEMORY[0x1E696AD98];
  [(STSchemaSTSpotlightResult *)self keywordMatchScore];
  v19 = [v18 numberWithFloat:?];
  [dictionary setObject:v19 forKeyedSubscript:@"keywordMatchScore"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = MEMORY[0x1E696AD98];
  [(STSchemaSTSpotlightResult *)self likelihood];
  v21 = [v20 numberWithFloat:?];
  [dictionary setObject:v21 forKeyedSubscript:@"likelihood"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v22 = MEMORY[0x1E696AD98];
  [(STSchemaSTSpotlightResult *)self pommesAdjustedL1Score];
  v23 = [v22 numberWithFloat:?];
  [dictionary setObject:v23 forKeyedSubscript:@"pommesAdjustedL1Score"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_24:
  v24 = MEMORY[0x1E696AD98];
  [(STSchemaSTSpotlightResult *)self pommesCalibratedL1Score];
  v25 = [v24 numberWithFloat:?];
  [dictionary setObject:v25 forKeyedSubscript:@"pommesCalibratedL1Score"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    v10 = MEMORY[0x1E696AD98];
    [(STSchemaSTSpotlightResult *)self pommesL1Score];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"pommesL1Score"];
  }

LABEL_16:
  if (self->_quTokenParseInfo)
  {
    quTokenParseInfo = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
    dictionaryRepresentation2 = [quTokenParseInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"quTokenParseInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"quTokenParseInfo"];
    }
  }

  if (self->_queryAttributes)
  {
    queryAttributes = [(STSchemaSTSpotlightResult *)self queryAttributes];
    dictionaryRepresentation3 = [queryAttributes dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"queryAttributes"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"queryAttributes"];
    }
  }

  v30 = self->_has;
  if (v30)
  {
    retrievalType = [(STSchemaSTSpotlightResult *)self retrievalType];
    v32 = @"STSPOTLIGHTSEARCHRETRIEVALTYPE_UNKNOWN";
    if (retrievalType == 1)
    {
      v32 = @"STSPOTLIGHTSEARCHRETRIEVALTYPE_META";
    }

    if (retrievalType == 2)
    {
      v33 = @"STSPOTLIGHTSEARCHRETRIEVALTYPE_SEMANTIC";
    }

    else
    {
      v33 = v32;
    }

    [dictionary setObject:v33 forKeyedSubscript:@"retrievalType"];
    v30 = self->_has;
  }

  if ((v30 & 4) != 0)
  {
    v34 = MEMORY[0x1E696AD98];
    [(STSchemaSTSpotlightResult *)self topicality];
    v35 = [v34 numberWithFloat:?];
    [dictionary setObject:v35 forKeyedSubscript:@"topicality"];
  }

  if (self->_topicalityAttributes)
  {
    topicalityAttributes = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
    dictionaryRepresentation4 = [topicalityAttributes dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"topicalityAttributes"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"topicalityAttributes"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_retrievalType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    likelihood = self->_likelihood;
    if (likelihood >= 0.0)
    {
      v10 = likelihood;
    }

    else
    {
      v10 = -likelihood;
    }

    *v5.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v12), v6, v5);
    v8 = 2654435761u * *v5.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((has & 4) != 0)
  {
    topicality = self->_topicality;
    if (topicality >= 0.0)
    {
      v15 = topicality;
    }

    else
    {
      v15 = -topicality;
    }

    *v5.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v17), v6, v5);
    v13 = 2654435761u * *v5.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 8) != 0)
  {
    pommesL1Score = self->_pommesL1Score;
    if (pommesL1Score >= 0.0)
    {
      v20 = pommesL1Score;
    }

    else
    {
      v20 = -pommesL1Score;
    }

    *v5.i64 = floor(v20 + 0.5);
    v21 = (v20 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v22), v6, v5);
    v18 = 2654435761u * *v5.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v18 += v21;
      }
    }

    else
    {
      v18 -= fabs(v21);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x10) != 0)
  {
    pommesAdjustedL1Score = self->_pommesAdjustedL1Score;
    if (pommesAdjustedL1Score >= 0.0)
    {
      v25 = pommesAdjustedL1Score;
    }

    else
    {
      v25 = -pommesAdjustedL1Score;
    }

    *v5.i64 = floor(v25 + 0.5);
    v26 = (v25 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v27), v6, v5);
    v23 = 2654435761u * *v5.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v23 += v26;
      }
    }

    else
    {
      v23 -= fabs(v26);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((has & 0x20) != 0)
  {
    pommesCalibratedL1Score = self->_pommesCalibratedL1Score;
    if (pommesCalibratedL1Score >= 0.0)
    {
      v30 = pommesCalibratedL1Score;
    }

    else
    {
      v30 = -pommesCalibratedL1Score;
    }

    *v5.i64 = floor(v30 + 0.5);
    v31 = (v30 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v32), v6, v5);
    v28 = 2654435761u * *v5.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v28 += v31;
      }
    }

    else
    {
      v28 -= fabs(v31);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((has & 0x40) != 0)
  {
    embeddingSimilarity = self->_embeddingSimilarity;
    if (embeddingSimilarity >= 0.0)
    {
      v35 = embeddingSimilarity;
    }

    else
    {
      v35 = -embeddingSimilarity;
    }

    *v5.i64 = floor(v35 + 0.5);
    v36 = (v35 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v37), v6, v5);
    v33 = 2654435761u * *v5.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v33 += v36;
      }
    }

    else
    {
      v33 -= fabs(v36);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((has & 0x80) != 0)
  {
    keywordMatchScore = self->_keywordMatchScore;
    if (keywordMatchScore >= 0.0)
    {
      v40 = keywordMatchScore;
    }

    else
    {
      v40 = -keywordMatchScore;
    }

    *v5.i64 = floor(v40 + 0.5);
    v41 = (v40 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v42), v6, v5);
    v38 = 2654435761u * *v5.i64;
    if (v41 >= 0.0)
    {
      if (v41 > 0.0)
      {
        v38 += v41;
      }
    }

    else
    {
      v38 -= fabs(v41);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    freshness = self->_freshness;
    if (freshness >= 0.0)
    {
      v45 = freshness;
    }

    else
    {
      v45 = -freshness;
    }

    *v5.i64 = floor(v45 + 0.5);
    v46 = (v45 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v43 = 2654435761u * *vbslq_s8(vnegq_f64(v47), v6, v5).i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v43 += v46;
      }
    }

    else
    {
      v43 -= fabs(v46);
    }
  }

  else
  {
    v43 = 0;
  }

  v48 = v4 ^ v3 ^ v8 ^ v13 ^ v18 ^ v23 ^ v28 ^ v33 ^ v38 ^ v43 ^ [(STSchemaQueryAttributes *)self->_queryAttributes hash];
  v49 = [(STSchemaQUTokenParseInfo *)self->_quTokenParseInfo hash];
  v50 = v49 ^ [(STSchemaDocumentAttributes *)self->_documentAttributes hash];
  return v48 ^ v50 ^ [(STSchemaTopicalityAttributes *)self->_topicalityAttributes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 1) != (equalCopy[44] & 1))
  {
    goto LABEL_61;
  }

  if (*&self->_has)
  {
    retrievalType = self->_retrievalType;
    if (retrievalType != [equalCopy retrievalType])
    {
      goto LABEL_61;
    }
  }

  bundleId = [(STSchemaSTSpotlightResult *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_60;
  }

  bundleId3 = [(STSchemaSTSpotlightResult *)self bundleId];
  if (bundleId3)
  {
    v9 = bundleId3;
    bundleId4 = [(STSchemaSTSpotlightResult *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v12 = [bundleId4 isEqual:bundleId5];

    if (!v12)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = (*&has >> 1) & 1;
  v15 = equalCopy[44];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_61;
  }

  if (v14)
  {
    likelihood = self->_likelihood;
    [equalCopy likelihood];
    if (likelihood != v17)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v15 >> 2) & 1))
  {
    goto LABEL_61;
  }

  if (v18)
  {
    topicality = self->_topicality;
    [equalCopy topicality];
    if (topicality != v20)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v15 >> 3) & 1))
  {
    goto LABEL_61;
  }

  if (v21)
  {
    pommesL1Score = self->_pommesL1Score;
    [equalCopy pommesL1Score];
    if (pommesL1Score != v23)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v24 = (*&has >> 4) & 1;
  if (v24 != ((v15 >> 4) & 1))
  {
    goto LABEL_61;
  }

  if (v24)
  {
    pommesAdjustedL1Score = self->_pommesAdjustedL1Score;
    [equalCopy pommesAdjustedL1Score];
    if (pommesAdjustedL1Score != v26)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v27 = (*&has >> 5) & 1;
  if (v27 != ((v15 >> 5) & 1))
  {
    goto LABEL_61;
  }

  if (v27)
  {
    pommesCalibratedL1Score = self->_pommesCalibratedL1Score;
    [equalCopy pommesCalibratedL1Score];
    if (pommesCalibratedL1Score != v29)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v30 = (*&has >> 6) & 1;
  if (v30 != ((v15 >> 6) & 1))
  {
    goto LABEL_61;
  }

  if (v30)
  {
    embeddingSimilarity = self->_embeddingSimilarity;
    [equalCopy embeddingSimilarity];
    if (embeddingSimilarity != v32)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v33 = (*&has >> 7) & 1;
  if (v33 != ((v15 >> 7) & 1))
  {
    goto LABEL_61;
  }

  if (v33)
  {
    keywordMatchScore = self->_keywordMatchScore;
    [equalCopy keywordMatchScore];
    if (keywordMatchScore != v35)
    {
      goto LABEL_61;
    }

    has = self->_has;
    v15 = equalCopy[44];
  }

  v36 = (*&has >> 8) & 1;
  if (v36 != ((v15 >> 8) & 1))
  {
    goto LABEL_61;
  }

  if (v36)
  {
    freshness = self->_freshness;
    [equalCopy freshness];
    if (freshness != v38)
    {
      goto LABEL_61;
    }
  }

  bundleId = [(STSchemaSTSpotlightResult *)self queryAttributes];
  bundleId2 = [equalCopy queryAttributes];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_60;
  }

  queryAttributes = [(STSchemaSTSpotlightResult *)self queryAttributes];
  if (queryAttributes)
  {
    v40 = queryAttributes;
    queryAttributes2 = [(STSchemaSTSpotlightResult *)self queryAttributes];
    queryAttributes3 = [equalCopy queryAttributes];
    v43 = [queryAttributes2 isEqual:queryAttributes3];

    if (!v43)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  bundleId = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
  bundleId2 = [equalCopy quTokenParseInfo];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_60;
  }

  quTokenParseInfo = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
  if (quTokenParseInfo)
  {
    v45 = quTokenParseInfo;
    quTokenParseInfo2 = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
    quTokenParseInfo3 = [equalCopy quTokenParseInfo];
    v48 = [quTokenParseInfo2 isEqual:quTokenParseInfo3];

    if (!v48)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  bundleId = [(STSchemaSTSpotlightResult *)self documentAttributes];
  bundleId2 = [equalCopy documentAttributes];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_60;
  }

  documentAttributes = [(STSchemaSTSpotlightResult *)self documentAttributes];
  if (documentAttributes)
  {
    v50 = documentAttributes;
    documentAttributes2 = [(STSchemaSTSpotlightResult *)self documentAttributes];
    documentAttributes3 = [equalCopy documentAttributes];
    v53 = [documentAttributes2 isEqual:documentAttributes3];

    if (!v53)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  bundleId = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
  bundleId2 = [equalCopy topicalityAttributes];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
LABEL_60:

    goto LABEL_61;
  }

  topicalityAttributes = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
  if (!topicalityAttributes)
  {

LABEL_64:
    v59 = 1;
    goto LABEL_62;
  }

  v55 = topicalityAttributes;
  topicalityAttributes2 = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
  topicalityAttributes3 = [equalCopy topicalityAttributes];
  v58 = [topicalityAttributes2 isEqual:topicalityAttributes3];

  if (v58)
  {
    goto LABEL_64;
  }

LABEL_61:
  v59 = 0;
LABEL_62:

  return v59;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  bundleId = [(STSchemaSTSpotlightResult *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    PBDataWriterWriteFloatField();
  }

LABEL_14:
  queryAttributes = [(STSchemaSTSpotlightResult *)self queryAttributes];

  if (queryAttributes)
  {
    queryAttributes2 = [(STSchemaSTSpotlightResult *)self queryAttributes];
    PBDataWriterWriteSubmessage();
  }

  quTokenParseInfo = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];

  if (quTokenParseInfo)
  {
    quTokenParseInfo2 = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
    PBDataWriterWriteSubmessage();
  }

  documentAttributes = [(STSchemaSTSpotlightResult *)self documentAttributes];

  if (documentAttributes)
  {
    documentAttributes2 = [(STSchemaSTSpotlightResult *)self documentAttributes];
    PBDataWriterWriteSubmessage();
  }

  topicalityAttributes = [(STSchemaSTSpotlightResult *)self topicalityAttributes];

  v13 = toCopy;
  if (topicalityAttributes)
  {
    topicalityAttributes2 = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setHasFreshness:(BOOL)freshness
{
  if (freshness)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasKeywordMatchScore:(BOOL)score
{
  if (score)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEmbeddingSimilarity:(BOOL)similarity
{
  if (similarity)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPommesCalibratedL1Score:(BOOL)score
{
  if (score)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPommesAdjustedL1Score:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPommesL1Score:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTopicality:(BOOL)topicality
{
  if (topicality)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLikelihood:(BOOL)likelihood
{
  if (likelihood)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = STSchemaSTSpotlightResult;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(STSchemaSTSpotlightResult *)self deleteBundleId];
  }

  queryAttributes = [(STSchemaSTSpotlightResult *)self queryAttributes];
  v7 = [queryAttributes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTSpotlightResult *)self deleteQueryAttributes];
  }

  quTokenParseInfo = [(STSchemaSTSpotlightResult *)self quTokenParseInfo];
  v10 = [quTokenParseInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(STSchemaSTSpotlightResult *)self deleteQuTokenParseInfo];
  }

  documentAttributes = [(STSchemaSTSpotlightResult *)self documentAttributes];
  v13 = [documentAttributes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(STSchemaSTSpotlightResult *)self deleteDocumentAttributes];
  }

  topicalityAttributes = [(STSchemaSTSpotlightResult *)self topicalityAttributes];
  v16 = [topicalityAttributes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(STSchemaSTSpotlightResult *)self deleteTopicalityAttributes];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end