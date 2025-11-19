@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppAffinityScoreForMessagesReceived:(BOOL)a3;
- (void)setHasAppAffinityScoreForMessagesUsingSiri:(BOOL)a3;
- (void)setHasAppFreqForMessages:(BOOL)a3;
- (void)setHasAppFreqForMessagesForCountryCode:(BOOL)a3;
- (void)setHasAppFreqForMessagesUsingSiri:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appAffinityScoreForMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)v5 setAppAffinityScoreForMessages:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"appAffinityScoreForMessagesUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)v5 setAppAffinityScoreForMessagesUsingSiri:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"appAffinityScoreForMessagesReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)v5 setAppAffinityScoreForMessagesReceived:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"appFreqForMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals setAppFreqForMessages:](v5, "setAppFreqForMessages:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appFreqForMessagesUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals setAppFreqForMessagesUsingSiri:](v5, "setAppFreqForMessagesUsingSiri:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appFreqForMessagesForCountryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals setAppFreqForMessagesForCountryCode:](v5, "setAppFreqForMessagesForCountryCode:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self appAffinityScoreForMessages];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"appAffinityScoreForMessages"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self appAffinityScoreForMessagesReceived];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"appAffinityScoreForMessagesReceived"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self appAffinityScoreForMessagesUsingSiri];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"appAffinityScoreForMessagesUsingSiri"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals appFreqForMessages](self, "appFreqForMessages")}];
  [v3 setObject:v13 forKeyedSubscript:@"appFreqForMessages"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals appFreqForMessagesForCountryCode](self, "appFreqForMessagesForCountryCode")}];
  [v3 setObject:v14 forKeyedSubscript:@"appFreqForMessagesForCountryCode"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals appFreqForMessagesUsingSiri](self, "appFreqForMessagesUsingSiri")}];
    [v3 setObject:v5 forKeyedSubscript:@"appFreqForMessagesUsingSiri"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    appAffinityScoreForMessages = self->_appAffinityScoreForMessages;
    if (appAffinityScoreForMessages >= 0.0)
    {
      v6 = appAffinityScoreForMessages;
    }

    else
    {
      v6 = -appAffinityScoreForMessages;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    appAffinityScoreForMessagesUsingSiri = self->_appAffinityScoreForMessagesUsingSiri;
    if (appAffinityScoreForMessagesUsingSiri >= 0.0)
    {
      v11 = appAffinityScoreForMessagesUsingSiri;
    }

    else
    {
      v11 = -appAffinityScoreForMessagesUsingSiri;
    }

    *v2.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    appAffinityScoreForMessagesReceived = self->_appAffinityScoreForMessagesReceived;
    if (appAffinityScoreForMessagesReceived >= 0.0)
    {
      v16 = appAffinityScoreForMessagesReceived;
    }

    else
    {
      v16 = -appAffinityScoreForMessagesReceived;
    }

    *v2.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v3, v2).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 8) == 0)
  {
    v19 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v20 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v21 = 0;
    return v9 ^ v4 ^ v14 ^ v19 ^ v20 ^ v21;
  }

  v19 = 2654435761 * self->_appFreqForMessages;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v20 = 2654435761 * self->_appFreqForMessagesUsingSiri;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v21 = 2654435761 * self->_appFreqForMessagesForCountryCode;
  return v9 ^ v4 ^ v14 ^ v19 ^ v20 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    appAffinityScoreForMessages = self->_appAffinityScoreForMessages;
    [v4 appAffinityScoreForMessages];
    if (appAffinityScoreForMessages != v8)
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v9)
  {
    appAffinityScoreForMessagesUsingSiri = self->_appAffinityScoreForMessagesUsingSiri;
    [v4 appAffinityScoreForMessagesUsingSiri];
    if (appAffinityScoreForMessagesUsingSiri != v11)
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    appAffinityScoreForMessagesReceived = self->_appAffinityScoreForMessagesReceived;
    [v4 appAffinityScoreForMessagesReceived];
    if (appAffinityScoreForMessagesReceived != v14)
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v15 = (*&has >> 3) & 1;
  if (v15 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v15)
  {
    appFreqForMessages = self->_appFreqForMessages;
    if (appFreqForMessages != [v4 appFreqForMessages])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v17 = (*&has >> 4) & 1;
  if (v17 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v17)
  {
    appFreqForMessagesUsingSiri = self->_appFreqForMessagesUsingSiri;
    if (appFreqForMessagesUsingSiri == [v4 appFreqForMessagesUsingSiri])
    {
      has = self->_has;
      v6 = v4[32];
      goto LABEL_22;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v19 = (*&has >> 5) & 1;
  if (v19 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v19)
  {
    appFreqForMessagesForCountryCode = self->_appFreqForMessagesForCountryCode;
    if (appFreqForMessagesForCountryCode != [v4 appFreqForMessagesForCountryCode])
    {
      goto LABEL_26;
    }
  }

  v21 = 1;
LABEL_27:

  return v21;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)setHasAppFreqForMessagesForCountryCode:(BOOL)a3
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

- (void)setHasAppFreqForMessagesUsingSiri:(BOOL)a3
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

- (void)setHasAppFreqForMessages:(BOOL)a3
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

- (void)setHasAppAffinityScoreForMessagesReceived:(BOOL)a3
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

- (void)setHasAppAffinityScoreForMessagesUsingSiri:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end