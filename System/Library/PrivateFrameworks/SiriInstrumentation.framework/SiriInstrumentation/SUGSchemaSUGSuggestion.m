@interface SUGSchemaSUGSuggestion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestion)initWithDictionary:(id)a3;
- (SUGSchemaSUGSuggestion)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelScore:(BOOL)a3;
- (void)setHasFinalRank:(BOOL)a3;
- (void)setHasFinalScore:(BOOL)a3;
- (void)setHasGoal:(BOOL)a3;
- (void)setHasGoalSpecificScore:(BOOL)a3;
- (void)setHasNumCharactersInSuggestion:(BOOL)a3;
- (void)setHasNumWordsInSuggestion:(BOOL)a3;
- (void)setHasSmartSuppressionScore:(BOOL)a3;
- (void)setHasSuggestionTier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGSuggestion

- (SUGSchemaSUGSuggestion)initWithDictionary:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SUGSchemaSUGSuggestion;
  v5 = [(SUGSchemaSUGSuggestion *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUGSchemaSUGSuggestion *)v5 setSuggestionId:v7];
    }

    v35 = v6;
    v8 = [v4 objectForKeyedSubscript:@"subscribedSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGSiriHelpSignal alloc] initWithDictionary:v8];
      [(SUGSchemaSUGSuggestion *)v5 setSubscribedSignal:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"deliveryVehicle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setDeliveryVehicle:](v5, "setDeliveryVehicle:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"goal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setGoal:](v5, "setGoal:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"finalRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setFinalRank:](v5, "setFinalRank:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"goalSpecificScore"];
    objc_opt_class();
    v40 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setGoalSpecificScore:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"finalScore"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setFinalScore:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"suggestionTier"];
    objc_opt_class();
    v38 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setSuggestionTier:](v5, "setSuggestionTier:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"suppressionResult"];
    objc_opt_class();
    v37 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SUGSchemaSUGSuppressionResult alloc] initWithDictionary:v16];
      [(SUGSchemaSUGSuggestion *)v5 setSuppressionResult:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"loggingActionId"];
    objc_opt_class();
    v36 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SUGSchemaSUGSuggestion *)v5 setLoggingActionId:v19];
    }

    v34 = v8;
    v20 = [v4 objectForKeyedSubscript:@"channel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setChannel:](v5, "setChannel:", [v20 intValue]);
    }

    v33 = v10;
    v21 = [v4 objectForKeyedSubscript:@"channelScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setChannelScore:?];
    }

    v32 = v11;
    v22 = [v4 objectForKeyedSubscript:@"smartSuppressionScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      [(SUGSchemaSUGSuggestion *)v5 setSmartSuppressionScore:?];
    }

    v23 = [v4 objectForKeyedSubscript:{@"numWordsInSuggestion", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setNumWordsInSuggestion:](v5, "setNumWordsInSuggestion:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"numCharactersInSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestion setNumCharactersInSuggestion:](v5, "setNumCharactersInSuggestion:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"autoCompleteSuggestionMetaData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SUGSchemaSUGAutoCompleteSuggestionMetaData alloc] initWithDictionary:v25];
      [(SUGSchemaSUGSuggestion *)v5 setAutoCompleteSuggestionMetaData:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"linkId"];
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

- (SUGSchemaSUGSuggestion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGSuggestion *)self dictionaryRepresentation];
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
  if (self->_autoCompleteSuggestionMetaData)
  {
    v4 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"autoCompleteSuggestionMetaData"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"autoCompleteSuggestionMetaData"];
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

    [v3 setObject:v9 forKeyedSubscript:@"channel"];
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self channelScore];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"channelScore"];

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

  [v3 setObject:v17 forKeyedSubscript:@"deliveryVehicle"];
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
  [v3 setObject:v18 forKeyedSubscript:@"finalRank"];

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
  [v3 setObject:v20 forKeyedSubscript:@"finalScore"];

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

  [v3 setObject:v22 forKeyedSubscript:@"goal"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    v10 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self goalSpecificScore];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"goalSpecificScore"];
  }

LABEL_18:
  if (self->_linkId)
  {
    v12 = [(SUGSchemaSUGSuggestion *)self linkId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_loggingActionId)
  {
    v24 = [(SUGSchemaSUGSuggestion *)self loggingActionId];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"loggingActionId"];
  }

  v26 = self->_has;
  if ((v26 & 0x400) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[SUGSchemaSUGSuggestion numCharactersInSuggestion](self, "numCharactersInSuggestion")}];
    [v3 setObject:v31 forKeyedSubscript:@"numCharactersInSuggestion"];

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
  [v3 setObject:v32 forKeyedSubscript:@"numWordsInSuggestion"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_40:
    v27 = MEMORY[0x1E696AD98];
    [(SUGSchemaSUGSuggestion *)self smartSuppressionScore];
    v28 = [v27 numberWithDouble:?];
    [v3 setObject:v28 forKeyedSubscript:@"smartSuppressionScore"];
  }

LABEL_41:
  if (self->_subscribedSignal)
  {
    v29 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"subscribedSignal"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"subscribedSignal"];
    }
  }

  if (self->_suggestionId)
  {
    v34 = [(SUGSchemaSUGSuggestion *)self suggestionId];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"suggestionId"];
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

    [v3 setObject:v37 forKeyedSubscript:@"suggestionTier"];
  }

  if (self->_suppressionResult)
  {
    v38 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"suppressionResult"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"suppressionResult"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_74;
  }

  v5 = [(SUGSchemaSUGSuggestion *)self suggestionId];
  v6 = [v4 suggestionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_73;
  }

  v7 = [(SUGSchemaSUGSuggestion *)self suggestionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUGSchemaSUGSuggestion *)self suggestionId];
    v10 = [v4 suggestionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  v6 = [v4 subscribedSignal];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_73;
  }

  v12 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
    v15 = [v4 subscribedSignal];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[64];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_74;
  }

  if (*&has)
  {
    deliveryVehicle = self->_deliveryVehicle;
    if (deliveryVehicle != [v4 deliveryVehicle])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = v4[64];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_74;
  }

  if (v20)
  {
    goal = self->_goal;
    if (goal != [v4 goal])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = v4[64];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v18 >> 2) & 1))
  {
    goto LABEL_74;
  }

  if (v22)
  {
    finalRank = self->_finalRank;
    if (finalRank != [v4 finalRank])
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = v4[64];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v18 >> 3) & 1))
  {
    goto LABEL_74;
  }

  if (v24)
  {
    goalSpecificScore = self->_goalSpecificScore;
    [v4 goalSpecificScore];
    if (goalSpecificScore != v26)
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = v4[64];
  }

  v27 = (*&has >> 4) & 1;
  if (v27 != ((v18 >> 4) & 1))
  {
    goto LABEL_74;
  }

  if (v27)
  {
    finalScore = self->_finalScore;
    [v4 finalScore];
    if (finalScore != v29)
    {
      goto LABEL_74;
    }

    has = self->_has;
    v18 = v4[64];
  }

  v30 = (*&has >> 5) & 1;
  if (v30 != ((v18 >> 5) & 1))
  {
    goto LABEL_74;
  }

  if (v30)
  {
    suggestionTier = self->_suggestionTier;
    if (suggestionTier != [v4 suggestionTier])
    {
      goto LABEL_74;
    }
  }

  v5 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  v6 = [v4 suppressionResult];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_73;
  }

  v32 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  if (v32)
  {
    v33 = v32;
    v34 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    v35 = [v4 suppressionResult];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestion *)self loggingActionId];
  v6 = [v4 loggingActionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_73;
  }

  v37 = [(SUGSchemaSUGSuggestion *)self loggingActionId];
  if (v37)
  {
    v38 = v37;
    v39 = [(SUGSchemaSUGSuggestion *)self loggingActionId];
    v40 = [v4 loggingActionId];
    v41 = [v39 isEqual:v40];

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
  v44 = v4[64];
  if (v43 != ((v44 >> 6) & 1))
  {
    goto LABEL_74;
  }

  if (v43)
  {
    channel = self->_channel;
    if (channel != [v4 channel])
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = v4[64];
  }

  v46 = (*&v42 >> 7) & 1;
  if (v46 != ((v44 >> 7) & 1))
  {
    goto LABEL_74;
  }

  if (v46)
  {
    channelScore = self->_channelScore;
    [v4 channelScore];
    if (channelScore != v48)
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = v4[64];
  }

  v49 = (*&v42 >> 8) & 1;
  if (v49 != ((v44 >> 8) & 1))
  {
    goto LABEL_74;
  }

  if (v49)
  {
    smartSuppressionScore = self->_smartSuppressionScore;
    [v4 smartSuppressionScore];
    if (smartSuppressionScore != v51)
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = v4[64];
  }

  v52 = (*&v42 >> 9) & 1;
  if (v52 != ((v44 >> 9) & 1))
  {
    goto LABEL_74;
  }

  if (v52)
  {
    numWordsInSuggestion = self->_numWordsInSuggestion;
    if (numWordsInSuggestion != [v4 numWordsInSuggestion])
    {
      goto LABEL_74;
    }

    v42 = self->_has;
    v44 = v4[64];
  }

  v54 = (*&v42 >> 10) & 1;
  if (v54 != ((v44 >> 10) & 1))
  {
    goto LABEL_74;
  }

  if (v54)
  {
    numCharactersInSuggestion = self->_numCharactersInSuggestion;
    if (numCharactersInSuggestion != [v4 numCharactersInSuggestion])
    {
      goto LABEL_74;
    }
  }

  v5 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  v6 = [v4 autoCompleteSuggestionMetaData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_73;
  }

  v56 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  if (v56)
  {
    v57 = v56;
    v58 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    v59 = [v4 autoCompleteSuggestionMetaData];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_74;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestion *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_73:

    goto LABEL_74;
  }

  v61 = [(SUGSchemaSUGSuggestion *)self linkId];
  if (!v61)
  {

LABEL_77:
    v66 = 1;
    goto LABEL_75;
  }

  v62 = v61;
  v63 = [(SUGSchemaSUGSuggestion *)self linkId];
  v64 = [v4 linkId];
  v65 = [v63 isEqual:v64];

  if (v65)
  {
    goto LABEL_77;
  }

LABEL_74:
  v66 = 0;
LABEL_75:

  return v66;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(SUGSchemaSUGSuggestion *)self suggestionId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];

  if (v5)
  {
    v6 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
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
  v8 = [(SUGSchemaSUGSuggestion *)self suppressionResult];

  if (v8)
  {
    v9 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SUGSchemaSUGSuggestion *)self loggingActionId];

  if (v10)
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
  v12 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];

  if (v12)
  {
    v13 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(SUGSchemaSUGSuggestion *)self linkId];

  v15 = v17;
  if (v14)
  {
    v16 = [(SUGSchemaSUGSuggestion *)self linkId];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)setHasNumCharactersInSuggestion:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumWordsInSuggestion:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSmartSuppressionScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasChannelScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSuggestionTier:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasFinalScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasGoalSpecificScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasFinalRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGoal:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUGSchemaSUGSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(SUGSchemaSUGSuggestion *)self subscribedSignal];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SUGSchemaSUGSuggestion *)self deleteSubscribedSignal];
  }

  v9 = [(SUGSchemaSUGSuggestion *)self suppressionResult];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SUGSchemaSUGSuggestion *)self deleteSuppressionResult];
  }

  v12 = [(SUGSchemaSUGSuggestion *)self autoCompleteSuggestionMetaData];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SUGSchemaSUGSuggestion *)self deleteAutoCompleteSuggestionMetaData];
  }

  v15 = [(SUGSchemaSUGSuggestion *)self linkId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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