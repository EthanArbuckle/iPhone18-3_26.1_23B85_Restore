@interface PEGASUSSchemaPEGASUSRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRequestEnded)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)otherProvidersAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addOtherProviders:(int)providers;
- (void)setHasIsFollowupResponse:(BOOL)response;
- (void)setHasIsHandOffExecution:(BOOL)execution;
- (void)setHasIsSnippetAnswerSeeking:(BOOL)seeking;
- (void)setHasPrimaryProvider:(BOOL)provider;
- (void)setHasProductArea:(BOOL)area;
- (void)setHasQueryConfidenceScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSRequestEnded

- (PEGASUSSchemaPEGASUSRequestEnded)initWithDictionary:(id)dictionary
{
  v65 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = PEGASUSSchemaPEGASUSRequestEnded;
  v5 = [(PEGASUSSchemaPEGASUSRequestEnded *)&v63 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v54 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setLinkId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"productArea"];
    objc_opt_class();
    v58 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setProductArea:](v5, "setProductArea:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"primaryProvider"];
    objc_opt_class();
    v57 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setPrimaryProvider:](v5, "setPrimaryProvider:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"otherProviders"];
    objc_opt_class();
    v56 = v11;
    if (objc_opt_isKindOfClass())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v60;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v60 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSRequestEnded addOtherProviders:](v5, "addOtherProviders:", [v17 intValue]);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v14);
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"intent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setIntent:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"queryConfidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setQueryConfidenceScore:?];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isFollowupResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsFollowupResponse:](v5, "setIsFollowupResponse:", [v21 BOOLValue]);
    }

    v51 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"isHandOffExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsHandOffExecution:](v5, "setIsHandOffExecution:", [v22 BOOLValue]);
    }

    v49 = v22;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"crossIntentRankerResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSCrossIntentRankerResponse alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setCrossIntentRankerResponse:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"kgQAExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSKGQAExecution alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setKgQAExecution:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"webAnswerExecution"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PEGASUSSchemaPEGASUSWebAnswerExecution alloc] initWithDictionary:v27];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setWebAnswerExecution:v28];
    }

    v48 = v23;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"sportsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PEGASUSSchemaPEGASUSSportsExecution alloc] initWithDictionary:v29];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setSportsExecution:v30];
    }

    v46 = v29;
    v47 = v25;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"mapsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PEGASUSSchemaPEGASUSMapsExecution alloc] initWithDictionary:v31];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setMapsExecution:v32];
    }

    v53 = v7;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"audioExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[PEGASUSSchemaPEGASUSAudioExecution alloc] initWithDictionary:v33];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setAudioExecution:v34];
    }

    v52 = v18;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"videoExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[PEGASUSSchemaPEGASUSVideoExecution alloc] initWithDictionary:v35];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setVideoExecution:v36];
    }

    v50 = v21;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"edge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 copy];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setEdge:v38];
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"alternateQuerySuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[PEGASUSSchemaPEGASUSAlternateQuerySuggestion alloc] initWithDictionary:v39];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setAlternateQuerySuggestion:v40];
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"isSnippetAnswerSeeking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsSnippetAnswerSeeking:](v5, "setIsSnippetAnswerSeeking:", [v41 BOOLValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"alternateQuerySuggestionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 alloc] initWithDictionary:v42];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setAlternateQuerySuggestionTier1:v43];
    }

    v44 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSRequestEnded *)self dictionaryRepresentation];
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
  if (self->_alternateQuerySuggestion)
  {
    alternateQuerySuggestion = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    dictionaryRepresentation = [alternateQuerySuggestion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alternateQuerySuggestion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alternateQuerySuggestion"];
    }
  }

  if (self->_alternateQuerySuggestionTier1)
  {
    alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
    dictionaryRepresentation2 = [alternateQuerySuggestionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }
  }

  if (self->_audioExecution)
  {
    audioExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    dictionaryRepresentation3 = [audioExecution dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"audioExecution"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"audioExecution"];
    }
  }

  if (self->_crossIntentRankerResponse)
  {
    crossIntentRankerResponse = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    dictionaryRepresentation4 = [crossIntentRankerResponse dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"crossIntentRankerResponse"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"crossIntentRankerResponse"];
    }
  }

  if (self->_edge)
  {
    edge = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
    v17 = [edge copy];
    [dictionary setObject:v17 forKeyedSubscript:@"edge"];
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded exists](self, "exists")}];
    [dictionary setObject:v18 forKeyedSubscript:@"exists"];
  }

  if (self->_intent)
  {
    intent = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
    dictionaryRepresentation5 = [intent dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"intent"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"intent"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded isFollowupResponse](self, "isFollowupResponse")}];
    [dictionary setObject:v26 forKeyedSubscript:@"isFollowupResponse"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_32:
      if ((has & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_32;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded isHandOffExecution](self, "isHandOffExecution")}];
  [dictionary setObject:v27 forKeyedSubscript:@"isHandOffExecution"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_33:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded isSnippetAnswerSeeking](self, "isSnippetAnswerSeeking")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isSnippetAnswerSeeking"];
  }

LABEL_34:
  if (self->_kgQAExecution)
  {
    kgQAExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    dictionaryRepresentation6 = [kgQAExecution dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"kgQAExecution"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"kgQAExecution"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
    dictionaryRepresentation7 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecution)
  {
    mapsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    dictionaryRepresentation8 = [mapsExecution dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"mapsExecution"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"mapsExecution"];
    }
  }

  if ([(NSArray *)self->_otherProviders count])
  {
    otherProviders = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
    v36 = [otherProviders copy];
    [dictionary setObject:v36 forKeyedSubscript:@"otherProviders"];
  }

  v37 = self->_has;
  if ((v37 & 4) != 0)
  {
    v42 = [(PEGASUSSchemaPEGASUSRequestEnded *)self primaryProvider]- 1;
    if (v42 > 0x10)
    {
      v43 = @"PEGASUSPROVIDER_UNKNOWN";
    }

    else
    {
      v43 = off_1E78DFB18[v42];
    }

    [dictionary setObject:v43 forKeyedSubscript:@"primaryProvider"];
    v37 = self->_has;
    if ((v37 & 2) == 0)
    {
LABEL_56:
      if ((v37 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_56;
  }

  v44 = [(PEGASUSSchemaPEGASUSRequestEnded *)self productArea]- 1;
  if (v44 > 0xF)
  {
    v45 = @"PEGASUSPRODUCTAREA_UNKNOWN";
  }

  else
  {
    v45 = off_1E78DFBA0[v44];
  }

  [dictionary setObject:v45 forKeyedSubscript:@"productArea"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_57:
    v38 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSRequestEnded *)self queryConfidenceScore];
    v39 = [v38 numberWithFloat:?];
    [dictionary setObject:v39 forKeyedSubscript:@"queryConfidenceScore"];
  }

LABEL_58:
  if (self->_sportsExecution)
  {
    sportsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    dictionaryRepresentation9 = [sportsExecution dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"sportsExecution"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"sportsExecution"];
    }
  }

  if (self->_videoExecution)
  {
    videoExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    dictionaryRepresentation10 = [videoExecution dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"videoExecution"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"videoExecution"];
    }
  }

  if (self->_webAnswerExecution)
  {
    webAnswerExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    dictionaryRepresentation11 = [webAnswerExecution dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"webAnswerExecution"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"webAnswerExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v53 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v29 = 2654435761 * self->_exists;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 2) != 0)
  {
    v27 = 2654435761 * self->_productArea;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v26 = 2654435761 * self->_primaryProvider;
      goto LABEL_9;
    }
  }

  v26 = 0;
LABEL_9:
  v25 = [(NSArray *)self->_otherProviders hash];
  v24 = [(PEGASUSSchemaPEGASUSIntent *)self->_intent hash];
  if ((*&self->_has & 8) != 0)
  {
    queryConfidenceScore = self->_queryConfidenceScore;
    if (queryConfidenceScore >= 0.0)
    {
      v7 = queryConfidenceScore;
    }

    else
    {
      v7 = -queryConfidenceScore;
    }

    *v3.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v4, v3).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v22 = 2654435761 * self->_isFollowupResponse;
  }

  else
  {
    v22 = 0;
  }

  v23 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    v21 = 2654435761 * self->_isHandOffExecution;
  }

  else
  {
    v21 = 0;
  }

  v10 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self->_crossIntentRankerResponse hash];
  v11 = [(PEGASUSSchemaPEGASUSKGQAExecution *)self->_kgQAExecution hash];
  v12 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self->_webAnswerExecution hash];
  v13 = [(PEGASUSSchemaPEGASUSSportsExecution *)self->_sportsExecution hash];
  v14 = [(PEGASUSSchemaPEGASUSMapsExecution *)self->_mapsExecution hash];
  v15 = [(PEGASUSSchemaPEGASUSAudioExecution *)self->_audioExecution hash];
  v16 = [(PEGASUSSchemaPEGASUSVideoExecution *)self->_videoExecution hash];
  v17 = [(NSString *)self->_edge hash];
  v18 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestion *)self->_alternateQuerySuggestion hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v19 = 2654435761 * self->_isSnippetAnswerSeeking;
  }

  else
  {
    v19 = 0;
  }

  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 *)self->_alternateQuerySuggestionTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 1) != (equalCopy[144] & 1))
  {
    goto LABEL_91;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_91;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = (*&has >> 1) & 1;
  v15 = equalCopy[144];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_91;
  }

  if (v14)
  {
    productArea = self->_productArea;
    if (productArea != [equalCopy productArea])
    {
      goto LABEL_91;
    }

    has = self->_has;
    v15 = equalCopy[144];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_91;
  }

  if (v17)
  {
    primaryProvider = self->_primaryProvider;
    if (primaryProvider != [equalCopy primaryProvider])
    {
      goto LABEL_91;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
  linkId2 = [equalCopy otherProviders];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  otherProviders = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
  if (otherProviders)
  {
    v20 = otherProviders;
    otherProviders2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
    otherProviders3 = [equalCopy otherProviders];
    v23 = [otherProviders2 isEqual:otherProviders3];

    if (!v23)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  linkId2 = [equalCopy intent];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  intent = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  if (intent)
  {
    v25 = intent;
    intent2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
    intent3 = [equalCopy intent];
    v28 = [intent2 isEqual:intent3];

    if (!v28)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v29 = self->_has;
  v30 = (*&v29 >> 3) & 1;
  v31 = equalCopy[144];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_91;
  }

  if (v30)
  {
    queryConfidenceScore = self->_queryConfidenceScore;
    [equalCopy queryConfidenceScore];
    if (queryConfidenceScore != v33)
    {
      goto LABEL_91;
    }

    v29 = self->_has;
    v31 = equalCopy[144];
  }

  v34 = (*&v29 >> 4) & 1;
  if (v34 != ((v31 >> 4) & 1))
  {
    goto LABEL_91;
  }

  if (v34)
  {
    isFollowupResponse = self->_isFollowupResponse;
    if (isFollowupResponse != [equalCopy isFollowupResponse])
    {
      goto LABEL_91;
    }

    v29 = self->_has;
    v31 = equalCopy[144];
  }

  v36 = (*&v29 >> 5) & 1;
  if (v36 != ((v31 >> 5) & 1))
  {
    goto LABEL_91;
  }

  if (v36)
  {
    isHandOffExecution = self->_isHandOffExecution;
    if (isHandOffExecution != [equalCopy isHandOffExecution])
    {
      goto LABEL_91;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  linkId2 = [equalCopy crossIntentRankerResponse];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  crossIntentRankerResponse = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  if (crossIntentRankerResponse)
  {
    v39 = crossIntentRankerResponse;
    crossIntentRankerResponse2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    crossIntentRankerResponse3 = [equalCopy crossIntentRankerResponse];
    v42 = [crossIntentRankerResponse2 isEqual:crossIntentRankerResponse3];

    if (!v42)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  linkId2 = [equalCopy kgQAExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  kgQAExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  if (kgQAExecution)
  {
    v44 = kgQAExecution;
    kgQAExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    kgQAExecution3 = [equalCopy kgQAExecution];
    v47 = [kgQAExecution2 isEqual:kgQAExecution3];

    if (!v47)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  linkId2 = [equalCopy webAnswerExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  webAnswerExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  if (webAnswerExecution)
  {
    v49 = webAnswerExecution;
    webAnswerExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    webAnswerExecution3 = [equalCopy webAnswerExecution];
    v52 = [webAnswerExecution2 isEqual:webAnswerExecution3];

    if (!v52)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  linkId2 = [equalCopy sportsExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  sportsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  if (sportsExecution)
  {
    v54 = sportsExecution;
    sportsExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    sportsExecution3 = [equalCopy sportsExecution];
    v57 = [sportsExecution2 isEqual:sportsExecution3];

    if (!v57)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  linkId2 = [equalCopy mapsExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  mapsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  if (mapsExecution)
  {
    v59 = mapsExecution;
    mapsExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    mapsExecution3 = [equalCopy mapsExecution];
    v62 = [mapsExecution2 isEqual:mapsExecution3];

    if (!v62)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  linkId2 = [equalCopy audioExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  audioExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  if (audioExecution)
  {
    v64 = audioExecution;
    audioExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    audioExecution3 = [equalCopy audioExecution];
    v67 = [audioExecution2 isEqual:audioExecution3];

    if (!v67)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  linkId2 = [equalCopy videoExecution];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  videoExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  if (videoExecution)
  {
    v69 = videoExecution;
    videoExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    videoExecution3 = [equalCopy videoExecution];
    v72 = [videoExecution2 isEqual:videoExecution3];

    if (!v72)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
  linkId2 = [equalCopy edge];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  edge = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
  if (edge)
  {
    v74 = edge;
    edge2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
    edge3 = [equalCopy edge];
    v77 = [edge2 isEqual:edge3];

    if (!v77)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  linkId2 = [equalCopy alternateQuerySuggestion];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_90;
  }

  alternateQuerySuggestion = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  if (alternateQuerySuggestion)
  {
    v79 = alternateQuerySuggestion;
    alternateQuerySuggestion2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    alternateQuerySuggestion3 = [equalCopy alternateQuerySuggestion];
    v82 = [alternateQuerySuggestion2 isEqual:alternateQuerySuggestion3];

    if (!v82)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v83 = (*&self->_has >> 6) & 1;
  if (v83 != ((equalCopy[144] >> 6) & 1))
  {
    goto LABEL_91;
  }

  if (v83)
  {
    isSnippetAnswerSeeking = self->_isSnippetAnswerSeeking;
    if (isSnippetAnswerSeeking != [equalCopy isSnippetAnswerSeeking])
    {
      goto LABEL_91;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  linkId2 = [equalCopy alternateQuerySuggestionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_90:

    goto LABEL_91;
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  if (!alternateQuerySuggestionTier1)
  {

LABEL_94:
    v90 = 1;
    goto LABEL_92;
  }

  v86 = alternateQuerySuggestionTier1;
  alternateQuerySuggestionTier12 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  alternateQuerySuggestionTier13 = [equalCopy alternateQuerySuggestionTier1];
  v89 = [alternateQuerySuggestionTier12 isEqual:alternateQuerySuggestionTier13];

  if (v89)
  {
    goto LABEL_94;
  }

LABEL_91:
  v90 = 0;
LABEL_92:

  return v90;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = self->_otherProviders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v35 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  intent = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];

  if (intent)
  {
    intent2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
    PBDataWriterWriteSubmessage();
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v15 = self->_has;
    if ((v15 & 0x10) == 0)
    {
LABEL_20:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    PBDataWriterWriteBOOLField();
  }

LABEL_22:
  crossIntentRankerResponse = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];

  if (crossIntentRankerResponse)
  {
    crossIntentRankerResponse2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    PBDataWriterWriteSubmessage();
  }

  kgQAExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];

  if (kgQAExecution)
  {
    kgQAExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    PBDataWriterWriteSubmessage();
  }

  webAnswerExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];

  if (webAnswerExecution)
  {
    webAnswerExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    PBDataWriterWriteSubmessage();
  }

  sportsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];

  if (sportsExecution)
  {
    sportsExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    PBDataWriterWriteSubmessage();
  }

  mapsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];

  if (mapsExecution)
  {
    mapsExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    PBDataWriterWriteSubmessage();
  }

  audioExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];

  if (audioExecution)
  {
    audioExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    PBDataWriterWriteSubmessage();
  }

  videoExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];

  if (videoExecution)
  {
    videoExecution2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    PBDataWriterWriteSubmessage();
  }

  edge = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];

  if (edge)
  {
    PBDataWriterWriteStringField();
  }

  alternateQuerySuggestion = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];

  if (alternateQuerySuggestion)
  {
    alternateQuerySuggestion2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];

  if (alternateQuerySuggestionTier1)
  {
    alternateQuerySuggestionTier12 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsSnippetAnswerSeeking:(BOOL)seeking
{
  if (seeking)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsHandOffExecution:(BOOL)execution
{
  if (execution)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsFollowupResponse:(BOOL)response
{
  if (response)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasQueryConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)otherProvidersAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_otherProviders objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addOtherProviders:(int)providers
{
  v3 = *&providers;
  otherProviders = self->_otherProviders;
  if (!otherProviders)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherProviders;
    self->_otherProviders = array;

    otherProviders = self->_otherProviders;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)otherProviders addObject:v8];
}

- (void)setHasPrimaryProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProductArea:(BOOL)area
{
  if (area)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = PEGASUSSchemaPEGASUSRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteLinkId];
  }

  intent = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  v10 = [intent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteIntent];
  }

  crossIntentRankerResponse = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  v13 = [crossIntentRankerResponse applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteCrossIntentRankerResponse];
  }

  kgQAExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  v16 = [kgQAExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteKgQAExecution];
  }

  webAnswerExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  v19 = [webAnswerExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteWebAnswerExecution];
  }

  sportsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  v22 = [sportsExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteSportsExecution];
  }

  mapsExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  v25 = [mapsExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteMapsExecution];
  }

  audioExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  v28 = [audioExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteAudioExecution];
  }

  videoExecution = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  v31 = [videoExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteVideoExecution];
  }

  alternateQuerySuggestion = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  v34 = [alternateQuerySuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteAlternateQuerySuggestion];
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  v37 = [alternateQuerySuggestionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteAlternateQuerySuggestionTier1];
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