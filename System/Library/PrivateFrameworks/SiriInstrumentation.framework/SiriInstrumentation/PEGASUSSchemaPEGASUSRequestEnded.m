@interface PEGASUSSchemaPEGASUSRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRequestEnded)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSRequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)otherProvidersAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addOtherProviders:(int)a3;
- (void)setHasIsFollowupResponse:(BOOL)a3;
- (void)setHasIsHandOffExecution:(BOOL)a3;
- (void)setHasIsSnippetAnswerSeeking:(BOOL)a3;
- (void)setHasPrimaryProvider:(BOOL)a3;
- (void)setHasProductArea:(BOOL)a3;
- (void)setHasQueryConfidenceScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSRequestEnded

- (PEGASUSSchemaPEGASUSRequestEnded)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = PEGASUSSchemaPEGASUSRequestEnded;
  v5 = [(PEGASUSSchemaPEGASUSRequestEnded *)&v63 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v54 = v6;
    v7 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setLinkId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"productArea"];
    objc_opt_class();
    v58 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setProductArea:](v5, "setProductArea:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"primaryProvider"];
    objc_opt_class();
    v57 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setPrimaryProvider:](v5, "setPrimaryProvider:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"otherProviders"];
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

    v18 = [v4 objectForKeyedSubscript:@"intent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSIntent alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setIntent:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"queryConfidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setQueryConfidenceScore:?];
    }

    v21 = [v4 objectForKeyedSubscript:@"isFollowupResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsFollowupResponse:](v5, "setIsFollowupResponse:", [v21 BOOLValue]);
    }

    v51 = v20;
    v22 = [v4 objectForKeyedSubscript:@"isHandOffExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsHandOffExecution:](v5, "setIsHandOffExecution:", [v22 BOOLValue]);
    }

    v49 = v22;
    v23 = [v4 objectForKeyedSubscript:@"crossIntentRankerResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSCrossIntentRankerResponse alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setCrossIntentRankerResponse:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"kgQAExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSKGQAExecution alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setKgQAExecution:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"webAnswerExecution"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PEGASUSSchemaPEGASUSWebAnswerExecution alloc] initWithDictionary:v27];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setWebAnswerExecution:v28];
    }

    v48 = v23;
    v29 = [v4 objectForKeyedSubscript:@"sportsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PEGASUSSchemaPEGASUSSportsExecution alloc] initWithDictionary:v29];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setSportsExecution:v30];
    }

    v46 = v29;
    v47 = v25;
    v31 = [v4 objectForKeyedSubscript:@"mapsExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PEGASUSSchemaPEGASUSMapsExecution alloc] initWithDictionary:v31];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setMapsExecution:v32];
    }

    v53 = v7;
    v33 = [v4 objectForKeyedSubscript:@"audioExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[PEGASUSSchemaPEGASUSAudioExecution alloc] initWithDictionary:v33];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setAudioExecution:v34];
    }

    v52 = v18;
    v35 = [v4 objectForKeyedSubscript:@"videoExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[PEGASUSSchemaPEGASUSVideoExecution alloc] initWithDictionary:v35];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setVideoExecution:v36];
    }

    v50 = v21;
    v37 = [v4 objectForKeyedSubscript:@"edge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 copy];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setEdge:v38];
    }

    v39 = [v4 objectForKeyedSubscript:@"alternateQuerySuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[PEGASUSSchemaPEGASUSAlternateQuerySuggestion alloc] initWithDictionary:v39];
      [(PEGASUSSchemaPEGASUSRequestEnded *)v5 setAlternateQuerySuggestion:v40];
    }

    v41 = [v4 objectForKeyedSubscript:@"isSnippetAnswerSeeking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRequestEnded setIsSnippetAnswerSeeking:](v5, "setIsSnippetAnswerSeeking:", [v41 BOOLValue]);
    }

    v42 = [v4 objectForKeyedSubscript:@"alternateQuerySuggestionTier1"];
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

- (PEGASUSSchemaPEGASUSRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSRequestEnded *)self dictionaryRepresentation];
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
  if (self->_alternateQuerySuggestion)
  {
    v4 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alternateQuerySuggestion"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alternateQuerySuggestion"];
    }
  }

  if (self->_alternateQuerySuggestionTier1)
  {
    v7 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }
  }

  if (self->_audioExecution)
  {
    v10 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"audioExecution"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"audioExecution"];
    }
  }

  if (self->_crossIntentRankerResponse)
  {
    v13 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"crossIntentRankerResponse"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"crossIntentRankerResponse"];
    }
  }

  if (self->_edge)
  {
    v16 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"edge"];
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded exists](self, "exists")}];
    [v3 setObject:v18 forKeyedSubscript:@"exists"];
  }

  if (self->_intent)
  {
    v19 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"intent"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"intent"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded isFollowupResponse](self, "isFollowupResponse")}];
    [v3 setObject:v26 forKeyedSubscript:@"isFollowupResponse"];

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
  [v3 setObject:v27 forKeyedSubscript:@"isHandOffExecution"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_33:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRequestEnded isSnippetAnswerSeeking](self, "isSnippetAnswerSeeking")}];
    [v3 setObject:v23 forKeyedSubscript:@"isSnippetAnswerSeeking"];
  }

LABEL_34:
  if (self->_kgQAExecution)
  {
    v24 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"kgQAExecution"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"kgQAExecution"];
    }
  }

  if (self->_linkId)
  {
    v29 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecution)
  {
    v32 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"mapsExecution"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"mapsExecution"];
    }
  }

  if ([(NSArray *)self->_otherProviders count])
  {
    v35 = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"otherProviders"];
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

    [v3 setObject:v43 forKeyedSubscript:@"primaryProvider"];
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

  [v3 setObject:v45 forKeyedSubscript:@"productArea"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_57:
    v38 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSRequestEnded *)self queryConfidenceScore];
    v39 = [v38 numberWithFloat:?];
    [v3 setObject:v39 forKeyedSubscript:@"queryConfidenceScore"];
  }

LABEL_58:
  if (self->_sportsExecution)
  {
    v40 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"sportsExecution"];
    }

    else
    {
      v46 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v46 forKeyedSubscript:@"sportsExecution"];
    }
  }

  if (self->_videoExecution)
  {
    v47 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"videoExecution"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"videoExecution"];
    }
  }

  if (self->_webAnswerExecution)
  {
    v50 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    v51 = [v50 dictionaryRepresentation];
    if (v51)
    {
      [v3 setObject:v51 forKeyedSubscript:@"webAnswerExecution"];
    }

    else
    {
      v52 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v52 forKeyedSubscript:@"webAnswerExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v53 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 1) != (v4[144] & 1))
  {
    goto LABEL_91;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_91;
    }
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v8 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

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
  v15 = v4[144];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_91;
  }

  if (v14)
  {
    productArea = self->_productArea;
    if (productArea != [v4 productArea])
    {
      goto LABEL_91;
    }

    has = self->_has;
    v15 = v4[144];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_91;
  }

  if (v17)
  {
    primaryProvider = self->_primaryProvider;
    if (primaryProvider != [v4 primaryProvider])
    {
      goto LABEL_91;
    }
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
  v7 = [v4 otherProviders];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v19 = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
  if (v19)
  {
    v20 = v19;
    v21 = [(PEGASUSSchemaPEGASUSRequestEnded *)self otherProviders];
    v22 = [v4 otherProviders];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  v7 = [v4 intent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v24 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  if (v24)
  {
    v25 = v24;
    v26 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
    v27 = [v4 intent];
    v28 = [v26 isEqual:v27];

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
  v31 = v4[144];
  if (v30 != ((v31 >> 3) & 1))
  {
    goto LABEL_91;
  }

  if (v30)
  {
    queryConfidenceScore = self->_queryConfidenceScore;
    [v4 queryConfidenceScore];
    if (queryConfidenceScore != v33)
    {
      goto LABEL_91;
    }

    v29 = self->_has;
    v31 = v4[144];
  }

  v34 = (*&v29 >> 4) & 1;
  if (v34 != ((v31 >> 4) & 1))
  {
    goto LABEL_91;
  }

  if (v34)
  {
    isFollowupResponse = self->_isFollowupResponse;
    if (isFollowupResponse != [v4 isFollowupResponse])
    {
      goto LABEL_91;
    }

    v29 = self->_has;
    v31 = v4[144];
  }

  v36 = (*&v29 >> 5) & 1;
  if (v36 != ((v31 >> 5) & 1))
  {
    goto LABEL_91;
  }

  if (v36)
  {
    isHandOffExecution = self->_isHandOffExecution;
    if (isHandOffExecution != [v4 isHandOffExecution])
    {
      goto LABEL_91;
    }
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  v7 = [v4 crossIntentRankerResponse];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v38 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  if (v38)
  {
    v39 = v38;
    v40 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    v41 = [v4 crossIntentRankerResponse];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  v7 = [v4 kgQAExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v43 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  if (v43)
  {
    v44 = v43;
    v45 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    v46 = [v4 kgQAExecution];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  v7 = [v4 webAnswerExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v48 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  if (v48)
  {
    v49 = v48;
    v50 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    v51 = [v4 webAnswerExecution];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  v7 = [v4 sportsExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v53 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  if (v53)
  {
    v54 = v53;
    v55 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    v56 = [v4 sportsExecution];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  v7 = [v4 mapsExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v58 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  if (v58)
  {
    v59 = v58;
    v60 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    v61 = [v4 mapsExecution];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  v7 = [v4 audioExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v63 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  if (v63)
  {
    v64 = v63;
    v65 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    v66 = [v4 audioExecution];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  v7 = [v4 videoExecution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v68 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  if (v68)
  {
    v69 = v68;
    v70 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    v71 = [v4 videoExecution];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
  v7 = [v4 edge];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v73 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
  if (v73)
  {
    v74 = v73;
    v75 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];
    v76 = [v4 edge];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  v7 = [v4 alternateQuerySuggestion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_90;
  }

  v78 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  if (v78)
  {
    v79 = v78;
    v80 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    v81 = [v4 alternateQuerySuggestion];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  v83 = (*&self->_has >> 6) & 1;
  if (v83 != ((v4[144] >> 6) & 1))
  {
    goto LABEL_91;
  }

  if (v83)
  {
    isSnippetAnswerSeeking = self->_isSnippetAnswerSeeking;
    if (isSnippetAnswerSeeking != [v4 isSnippetAnswerSeeking])
    {
      goto LABEL_91;
    }
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  v7 = [v4 alternateQuerySuggestionTier1];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_90:

    goto LABEL_91;
  }

  v85 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  if (!v85)
  {

LABEL_94:
    v90 = 1;
    goto LABEL_92;
  }

  v86 = v85;
  v87 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  v88 = [v4 alternateQuerySuggestionTier1];
  v89 = [v87 isEqual:v88];

  if (v89)
  {
    goto LABEL_94;
  }

LABEL_91:
  v90 = 0;
LABEL_92:

  return v90;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];

  if (v5)
  {
    v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
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

  v13 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];

  if (v13)
  {
    v14 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
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
  v16 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];

  if (v16)
  {
    v17 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];

  if (v18)
  {
    v19 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];

  if (v20)
  {
    v21 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];

  if (v22)
  {
    v23 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];

  if (v24)
  {
    v25 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];

  if (v26)
  {
    v27 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];

  if (v28)
  {
    v29 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(PEGASUSSchemaPEGASUSRequestEnded *)self edge];

  if (v30)
  {
    PBDataWriterWriteStringField();
  }

  v31 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];

  if (v31)
  {
    v32 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v33 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];

  if (v33)
  {
    v34 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsSnippetAnswerSeeking:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsHandOffExecution:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsFollowupResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasQueryConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)otherProvidersAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_otherProviders objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addOtherProviders:(int)a3
{
  v3 = *&a3;
  otherProviders = self->_otherProviders;
  if (!otherProviders)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherProviders;
    self->_otherProviders = v6;

    otherProviders = self->_otherProviders;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)otherProviders addObject:v8];
}

- (void)setHasPrimaryProvider:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProductArea:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PEGASUSSchemaPEGASUSRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSRequestEnded *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteLinkId];
  }

  v9 = [(PEGASUSSchemaPEGASUSRequestEnded *)self intent];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteIntent];
  }

  v12 = [(PEGASUSSchemaPEGASUSRequestEnded *)self crossIntentRankerResponse];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteCrossIntentRankerResponse];
  }

  v15 = [(PEGASUSSchemaPEGASUSRequestEnded *)self kgQAExecution];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteKgQAExecution];
  }

  v18 = [(PEGASUSSchemaPEGASUSRequestEnded *)self webAnswerExecution];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteWebAnswerExecution];
  }

  v21 = [(PEGASUSSchemaPEGASUSRequestEnded *)self sportsExecution];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteSportsExecution];
  }

  v24 = [(PEGASUSSchemaPEGASUSRequestEnded *)self mapsExecution];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteMapsExecution];
  }

  v27 = [(PEGASUSSchemaPEGASUSRequestEnded *)self audioExecution];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteAudioExecution];
  }

  v30 = [(PEGASUSSchemaPEGASUSRequestEnded *)self videoExecution];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteVideoExecution];
  }

  v33 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestion];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PEGASUSSchemaPEGASUSRequestEnded *)self deleteAlternateQuerySuggestion];
  }

  v36 = [(PEGASUSSchemaPEGASUSRequestEnded *)self alternateQuerySuggestionTier1];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
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