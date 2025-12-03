@interface SUGSchemaSUGSuggestion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestion)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGSuggestion)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasChannelScore:(BOOL)score;
- (void)setHasFinalRank:(BOOL)rank;
- (void)setHasFinalScore:(BOOL)score;
- (void)setHasGoal:(BOOL)goal;
- (void)setHasGoalSpecificScore:(BOOL)score;
- (void)setHasNumCharactersInSuggestion:(BOOL)suggestion;
- (void)setHasNumWordsInSuggestion:(BOOL)suggestion;
- (void)setHasSmartSuppressionScore:(BOOL)score;
- (void)setHasSuggestionTier:(BOOL)tier;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGSuggestion

- (SUGSchemaSUGSuggestion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = SUGSchemaSUGSuggestion;
  v5 = [(SUGSchemaSUGSuggestion *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUGSchemaSUGSuggestion *)v5 setSuggestionId:v7];
    }

    v35 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"subscribedSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGSiriHelpSignal alloc] initWithDictionary:v8];
      [(SUGSchemaSUGSuggestion *)v5 setSubscribedSignal:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deliveryVehicle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setDeliveryVehicle:](v5, "setDeliveryVehicle:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"goal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setGoal:](v5, "setGoal:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"finalRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setFinalRank:](v5, "setFinalRank:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"goalSpecificScore"];
    objc_opt_class();
    v40 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setGoalSpecificScore:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"finalScore"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setFinalScore:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"suggestionTier"];
    objc_opt_class();
    v38 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setSuggestionTier:](v5, "setSuggestionTier:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"suppressionResult"];
    objc_opt_class();
    v37 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SUGSchemaSUGSuppressionResult alloc] initWithDictionary:v16];
      [(SUGSchemaSUGSuggestion *)v5 setSuppressionResult:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"loggingActionId"];
    objc_opt_class();
    v36 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SUGSchemaSUGSuggestion *)v5 setLoggingActionId:v19];
    }

    v34 = v8;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"channel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setChannel:](v5, "setChannel:", [v20 intValue]);
    }

    v33 = v10;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"channelScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setChannelScore:?];
    }

    v32 = v11;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"smartSuppressionScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setSmartSuppressionScore:?];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:{@"numWordsInSuggestion", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setNumWordsInSuggestion:](v5, "setNumWordsInSuggestion:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"numCharactersInSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setNumCharactersInSuggestion:](v5, "setNumCharactersInSuggestion:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"autoCompleteSuggestionMetaData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SUGSchemaSUGAutoCompleteSuggestionMetaData alloc] initWithDictionary:v25];
      [(SUGSchemaSUGSuggestion *)v5 setAutoCompleteSuggestionMetaData:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[SISchemaUUID alloc] initWithDictionary:v27];
      [(SUGSchemaSUGSuggestion *)v5 setLinkId:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (SUGSchemaSUGSuggestion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGSuggestion *)self dictionaryRepresentation];
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
  if (self->_autoCompleteSuggestionMetaData)
  {
    autoCompleteSuggestionMetaData = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    dictionaryRepresentation = [autoCompleteSuggestionMetaData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"autoCompleteSuggestionMetaData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"autoCompleteSuggestionMetaData"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v8 = [(SUGSchemaSUGSuggestion *)self channel]- 1;
    if (v8 > 7)
    {
      v9 = @"SUGCHANNEL_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E7BE8[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"channel"];
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self channelScore];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:@"channelScore"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = [(SUGSchemaSUGSuggestion *)self deliveryVehicle]- 1;
  if (v16 > 9)
  {
    v17 = @"SUGDELIVERYVEHICLE_UNKNOWN";
  }

  else
  {
    v17 = off_1E78E7C28[v16];
  }

  [dictionary setObject:v17 forKeyedSubscript:@"deliveryVehicle"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGSuggestion finalRank](self, "finalRank")}];
  [dictionary setObject:v18 forKeyedSubscript:@"finalRank"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = MEMORY[0x1E696AD98];
  [(SUGSchemaSUGSuggestion *)self finalScore];
  v20 = [v19 numberWithDouble:?];
  [dictionary setObject:v20 forKeyedSubscript:@"finalScore"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_28:
  v21 = [(SUGSchemaSUGSuggestion *)self goal]- 1;
  if (v21 > 2)
  {
    v22 = @"SUGGOAL_UNKNOWN";
  }

  else
  {
    v22 = off_1E78E7C78[v21];
  }

  [dictionary setObject:v22 forKeyedSubscript:@"goal"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    v10 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self goalSpecificScore];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"goalSpecificScore"];
  }

LABEL_18:
  if (self->_linkId)
  {
    linkId = [(SUGSchemaSUGSuggestion *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_loggingActionId)
  {
    loggingActionId = [(SUGSchemaSUGSuggestion *)self loggingActionId];
    v25 = [loggingActionId copy];
    [dictionary setObject:v25 forKeyedSubscript:@"loggingActionId"];
  }

  v26 = self->_has;
  if ((v26 & 0x400) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[SUGSchemaSUGSuggestion numCharactersInSuggestion](self, "numCharactersInSuggestion")}];
    [dictionary setObject:v31 forKeyedSubscript:@"numCharactersInSuggestion"];

    v26 = self->_has;
    if ((v26 & 0x200) == 0)
    {
LABEL_39:
      if ((v26 & 0x100) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_39;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[SUGSchemaSUGSuggestion numWordsInSuggestion](self, "numWordsInSuggestion")}];
  [dictionary setObject:v32 forKeyedSubscript:@"numWordsInSuggestion"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_40:
    v27 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self smartSuppressionScore];
    v28 = [v27 numberWithDouble:?];
    [dictionary setObject:v28 forKeyedSubscript:@"smartSuppressionScore"];
  }

LABEL_41:
  if (self->_subscribedSignal)
  {
    subscribedSignal = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
    dictionaryRepresentation3 = [subscribedSignal dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subscribedSignal"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subscribedSignal"];
    }
  }

  if (self->_suggestionId)
  {
    suggestionId = [(SUGSchemaSUGSuggestion *)self suggestionId];
    v35 = [suggestionId copy];
    [dictionary setObject:v35 forKeyedSubscript:@"suggestionId"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v36 = [(SUGSchemaSUGSuggestion *)self suggestionTier]- 1;
    if (v36 > 2)
    {
      v37 = @"SUGTIERCATEGORY_UNKNOWN";
    }

    else
    {
      v37 = off_1E78E7C90[v36];
    }

    [dictionary setObject:v37 forKeyedSubscript:@"suggestionTier"];
  }

  if (self->_suppressionResult)
  {
    suppressionResult = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    dictionaryRepresentation4 = [suppressionResult dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"suppressionResult"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"suppressionResult"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v39 = [(NSString *)self->_suggestionId hash];
  v37 = [(SUGSchemaSUGSiriHelpSignal *)self->_subscribedSignal hash];
  has = self->_has;
  if (has)
  {
    v6 = 2654435761 * self->_deliveryVehicle;
    if ((has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_goal;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = 0;
      if ((has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = 2654435761 * self->_finalRank;
  if ((has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  goalSpecificScore = self->_goalSpecificScore;
  if (goalSpecificScore < 0.0)
  {
    goalSpecificScore = -goalSpecificScore;
  }

  *v3.i64 = floor(goalSpecificScore + 0.5);
  v10 = (goalSpecificScore - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v11), v4, v3);
  v12 = 2654435761u * *v3.i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_13:
  if ((has & 0x10) != 0)
  {
    finalScore = self->_finalScore;
    if (finalScore < 0.0)
    {
      finalScore = -finalScore;
    }

    *v3.i64 = floor(finalScore + 0.5);
    v15 = (finalScore - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v4, v3).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_suggestionTier;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(SUGSchemaSUGSuppressionResult *)self->_suppressionResult hash];
  v19 = [(NSString *)self->_loggingActionId hash];
  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v23 = 2654435761 * self->_channel;
    if ((v22 & 0x80) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    v27 = 0;
    goto LABEL_34;
  }

  v23 = 0;
  if ((v22 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  channelScore = self->_channelScore;
  if (channelScore < 0.0)
  {
    channelScore = -channelScore;
  }

  *v20.i64 = floor(channelScore + 0.5);
  v25 = (channelScore - *v20.i64) * 1.84467441e19;
  *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v26.f64[0] = NAN;
  v26.f64[1] = NAN;
  v20 = vbslq_s8(vnegq_f64(v26), v21, v20);
  v27 = 2654435761u * *v20.i64;
  if (v25 >= 0.0)
  {
    if (v25 > 0.0)
    {
      v27 += v25;
    }
  }

  else
  {
    v27 -= fabs(v25);
  }

LABEL_34:
  if ((*&self->_has & 0x100) != 0)
  {
    smartSuppressionScore = self->_smartSuppressionScore;
    if (smartSuppressionScore < 0.0)
    {
      smartSuppressionScore = -smartSuppressionScore;
    }

    *v20.i64 = floor(smartSuppressionScore + 0.5);
    v30 = (smartSuppressionScore - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v28 = 2654435761u * *vbslq_s8(vnegq_f64(v31), v21, v20).i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabs(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v32 = 2654435761 * self->_numWordsInSuggestion;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_46;
    }

LABEL_48:
    v33 = 0;
    goto LABEL_49;
  }

  v32 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  v33 = 2654435761 * self->_numCharactersInSuggestion;
LABEL_49:
  v34 = v38 ^ v39 ^ v6 ^ v7 ^ v8 ^ v12 ^ v13 ^ v17 ^ v18 ^ v19 ^ v23 ^ v27;
  v35 = v28 ^ v32 ^ v33 ^ [(SUGSchemaSUGAutoCompleteSuggestionMetaData *)self->_autoCompleteSuggestionMetaData hash];
  return v34 ^ v35 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_74;
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_73;
  }

  suggestionId3 = [(SUGSchemaSUGSuggestion *)self suggestionId];
  if (suggestionId3)
  {
    v8 = suggestionId3;
    suggestionId4 = [(SUGSchemaSUGSuggestion *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v11 = [suggestionId4 isEqual:suggestionId5];

    if (!v11)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  suggestionId2 = [equalCopy subscribedSignal];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_73;
  }

  subscribedSignal = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  if (subscribedSignal)
  {
    v13 = subscribedSignal;
    subscribedSignal2 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
    subscribedSignal3 = [equalCopy subscribedSignal];
    v16 = [subscribedSignal2 isEqual:subscribedSignal3];

    if (!v16)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[64];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_74;
  }

  if (*&has)
  {
    deliveryVehicle = self->_deliveryVehicle;
    if (deliveryVehicle != [equalCopy deliveryVehicle])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = equalCopy[64];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_74;
  }

  if (v20)
  {
    goal = self->_goal;
    if (goal != [equalCopy goal])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = equalCopy[64];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v18 >> 2) & 1))
  {
    goto LABEL_74;
  }

  if (v22)
  {
    finalRank = self->_finalRank;
    if (finalRank != [equalCopy finalRank])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = equalCopy[64];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v18 >> 3) & 1))
  {
    goto LABEL_74;
  }

  if (v24)
  {
    goalSpecificScore = self->_goalSpecificScore;
    [equalCopy goalSpecificScore];
    if (goalSpecificScore != v26)
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = equalCopy[64];
  }

  v27 = (*&has >> 4) & 1;
  if (v27 != ((v18 >> 4) & 1))
  {
    goto LABEL_74;
  }

  if (v27)
  {
    finalScore = self->_finalScore;
    [equalCopy finalScore];
    if (finalScore != v29)
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = equalCopy[64];
  }

  v30 = (*&has >> 5) & 1;
  if (v30 != ((v18 >> 5) & 1))
  {
    goto LABEL_74;
  }

  if (v30)
  {
    suggestionTier = self->_suggestionTier;
    if (suggestionTier != [equalCopy suggestionTier])
    {
      goto LABEL_74;
    }
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  suggestionId2 = [equalCopy suppressionResult];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_73;
  }

  suppressionResult = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  if (suppressionResult)
  {
    v33 = suppressionResult;
    suppressionResult2 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    suppressionResult3 = [equalCopy suppressionResult];
    v36 = [suppressionResult2 isEqual:suppressionResult3];

    if (!v36)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self loggingActionId];
  suggestionId2 = [equalCopy loggingActionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_73;
  }

  loggingActionId = [(SUGSchemaSUGSuggestion *)self loggingActionId];
  if (loggingActionId)
  {
    v38 = loggingActionId;
    loggingActionId2 = [(SUGSchemaSUGSuggestion *)self loggingActionId];
    loggingActionId3 = [equalCopy loggingActionId];
    v41 = [loggingActionId2 isEqual:loggingActionId3];

    if (!v41)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  v42 = self->_has;
  v43 = (*&v42 >> 6) & 1;
  v44 = equalCopy[64];
  if (v43 != ((v44 >> 6) & 1))
  {
    goto LABEL_74;
  }

  if (v43)
  {
    channel = self->_channel;
    if (channel != [equalCopy channel])
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = equalCopy[64];
  }

  v46 = (*&v42 >> 7) & 1;
  if (v46 != ((v44 >> 7) & 1))
  {
    goto LABEL_74;
  }

  if (v46)
  {
    channelScore = self->_channelScore;
    [equalCopy channelScore];
    if (channelScore != v48)
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = equalCopy[64];
  }

  v49 = (*&v42 >> 8) & 1;
  if (v49 != ((v44 >> 8) & 1))
  {
    goto LABEL_74;
  }

  if (v49)
  {
    smartSuppressionScore = self->_smartSuppressionScore;
    [equalCopy smartSuppressionScore];
    if (smartSuppressionScore != v51)
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = equalCopy[64];
  }

  v52 = (*&v42 >> 9) & 1;
  if (v52 != ((v44 >> 9) & 1))
  {
    goto LABEL_74;
  }

  if (v52)
  {
    numWordsInSuggestion = self->_numWordsInSuggestion;
    if (numWordsInSuggestion != [equalCopy numWordsInSuggestion])
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = equalCopy[64];
  }

  v54 = (*&v42 >> 10) & 1;
  if (v54 != ((v44 >> 10) & 1))
  {
    goto LABEL_74;
  }

  if (v54)
  {
    numCharactersInSuggestion = self->_numCharactersInSuggestion;
    if (numCharactersInSuggestion != [equalCopy numCharactersInSuggestion])
    {
      goto LABEL_74;
    }
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  suggestionId2 = [equalCopy autoCompleteSuggestionMetaData];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_73;
  }

  autoCompleteSuggestionMetaData = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  if (autoCompleteSuggestionMetaData)
  {
    v57 = autoCompleteSuggestionMetaData;
    autoCompleteSuggestionMetaData2 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    autoCompleteSuggestionMetaData3 = [equalCopy autoCompleteSuggestionMetaData];
    v60 = [autoCompleteSuggestionMetaData2 isEqual:autoCompleteSuggestionMetaData3];

    if (!v60)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  suggestionId = [(SUGSchemaSUGSuggestion *)self linkId];
  suggestionId2 = [equalCopy linkId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
LABEL_73:

    goto LABEL_74;
  }

  linkId = [(SUGSchemaSUGSuggestion *)self linkId];
  if (!linkId)
  {

LABEL_77:
    v66 = 1;
    goto LABEL_75;
  }

  v62 = linkId;
  linkId2 = [(SUGSchemaSUGSuggestion *)self linkId];
  linkId3 = [equalCopy linkId];
  v65 = [linkId2 isEqual:linkId3];

  if (v65)
  {
    goto LABEL_77;
  }

LABEL_74:
  v66 = 0;
LABEL_75:

  return v66;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionId = [(SUGSchemaSUGSuggestion *)self suggestionId];

  if (suggestionId)
  {
    PBDataWriterWriteStringField();
  }

  subscribedSignal = [(SUGSchemaSUGSuggestion *)self subscribedSignal];

  if (subscribedSignal)
  {
    subscribedSignal2 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
  suppressionResult = [(SUGSchemaSUGSuggestion *)self suppressionResult];

  if (suppressionResult)
  {
    suppressionResult2 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    PBDataWriterWriteSubmessage();
  }

  loggingActionId = [(SUGSchemaSUGSuggestion *)self loggingActionId];

  if (loggingActionId)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = self->_has;
    if ((v11 & 0x80) == 0)
    {
LABEL_18:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteDoubleField();
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_19:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteDoubleField();
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_20:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_38:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_21:
    PBDataWriterWriteInt32Field();
  }

LABEL_22:
  autoCompleteSuggestionMetaData = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];

  if (autoCompleteSuggestionMetaData)
  {
    autoCompleteSuggestionMetaData2 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(SUGSchemaSUGSuggestion *)self linkId];

  v15 = toCopy;
  if (linkId)
  {
    linkId2 = [(SUGSchemaSUGSuggestion *)self linkId];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)setHasNumCharactersInSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumWordsInSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSmartSuppressionScore:(BOOL)score
{
  if (score)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasChannelScore:(BOOL)score
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

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSuggestionTier:(BOOL)tier
{
  if (tier)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasFinalScore:(BOOL)score
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

- (void)setHasGoalSpecificScore:(BOOL)score
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

- (void)setHasFinalRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGoal:(BOOL)goal
{
  if (goal)
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
  v19.super_class = SUGSchemaSUGSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  subscribedSignal = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  v7 = [subscribedSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGSuggestion *)self deleteSubscribedSignal];
  }

  suppressionResult = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  v10 = [suppressionResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUGSchemaSUGSuggestion *)self deleteSuppressionResult];
  }

  autoCompleteSuggestionMetaData = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  v13 = [autoCompleteSuggestionMetaData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SUGSchemaSUGSuggestion *)self deleteAutoCompleteSuggestionMetaData];
  }

  linkId = [(SUGSchemaSUGSuggestion *)self linkId];
  v16 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SUGSchemaSUGSuggestion *)self deleteLinkId];
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