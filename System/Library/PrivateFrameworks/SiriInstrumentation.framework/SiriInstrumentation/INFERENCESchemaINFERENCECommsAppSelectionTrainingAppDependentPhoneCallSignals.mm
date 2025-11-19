@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppAffinityScoreForPhoneCallReceived:(BOOL)a3;
- (void)setHasAppAffinityScoreForPhoneCallUsingSiri:(BOOL)a3;
- (void)setHasAppFreqForPhoneCall:(BOOL)a3;
- (void)setHasAppFreqForPhoneCallForCountryCode:(BOOL)a3;
- (void)setHasAppFreqForPhoneCallUsingSiri:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appAffinityScoreForPhoneCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)v5 setAppAffinityScoreForPhoneCall:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"appAffinityScoreForPhoneCallUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)v5 setAppAffinityScoreForPhoneCallUsingSiri:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"appAffinityScoreForPhoneCallReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)v5 setAppAffinityScoreForPhoneCallReceived:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"appFreqForPhoneCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals setAppFreqForPhoneCall:](v5, "setAppFreqForPhoneCall:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appFreqForPhoneCallUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals setAppFreqForPhoneCallUsingSiri:](v5, "setAppFreqForPhoneCallUsingSiri:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appFreqForPhoneCallForCountryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals setAppFreqForPhoneCallForCountryCode:](v5, "setAppFreqForPhoneCallForCountryCode:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self dictionaryRepresentation];
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
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self appAffinityScoreForPhoneCall];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"appAffinityScoreForPhoneCall"];

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
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self appAffinityScoreForPhoneCallReceived];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"appAffinityScoreForPhoneCallReceived"];

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
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self appAffinityScoreForPhoneCallUsingSiri];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"appAffinityScoreForPhoneCallUsingSiri"];

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
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals appFreqForPhoneCall](self, "appFreqForPhoneCall")}];
  [v3 setObject:v13 forKeyedSubscript:@"appFreqForPhoneCall"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals appFreqForPhoneCallForCountryCode](self, "appFreqForPhoneCallForCountryCode")}];
  [v3 setObject:v14 forKeyedSubscript:@"appFreqForPhoneCallForCountryCode"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals appFreqForPhoneCallUsingSiri](self, "appFreqForPhoneCallUsingSiri")}];
    [v3 setObject:v5 forKeyedSubscript:@"appFreqForPhoneCallUsingSiri"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    appAffinityScoreForPhoneCall = self->_appAffinityScoreForPhoneCall;
    if (appAffinityScoreForPhoneCall >= 0.0)
    {
      v6 = appAffinityScoreForPhoneCall;
    }

    else
    {
      v6 = -appAffinityScoreForPhoneCall;
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
    appAffinityScoreForPhoneCallUsingSiri = self->_appAffinityScoreForPhoneCallUsingSiri;
    if (appAffinityScoreForPhoneCallUsingSiri >= 0.0)
    {
      v11 = appAffinityScoreForPhoneCallUsingSiri;
    }

    else
    {
      v11 = -appAffinityScoreForPhoneCallUsingSiri;
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
    appAffinityScoreForPhoneCallReceived = self->_appAffinityScoreForPhoneCallReceived;
    if (appAffinityScoreForPhoneCallReceived >= 0.0)
    {
      v16 = appAffinityScoreForPhoneCallReceived;
    }

    else
    {
      v16 = -appAffinityScoreForPhoneCallReceived;
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

  v19 = 2654435761 * self->_appFreqForPhoneCall;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v20 = 2654435761 * self->_appFreqForPhoneCallUsingSiri;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v21 = 2654435761 * self->_appFreqForPhoneCallForCountryCode;
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
    appAffinityScoreForPhoneCall = self->_appAffinityScoreForPhoneCall;
    [v4 appAffinityScoreForPhoneCall];
    if (appAffinityScoreForPhoneCall != v8)
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
    appAffinityScoreForPhoneCallUsingSiri = self->_appAffinityScoreForPhoneCallUsingSiri;
    [v4 appAffinityScoreForPhoneCallUsingSiri];
    if (appAffinityScoreForPhoneCallUsingSiri != v11)
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
    appAffinityScoreForPhoneCallReceived = self->_appAffinityScoreForPhoneCallReceived;
    [v4 appAffinityScoreForPhoneCallReceived];
    if (appAffinityScoreForPhoneCallReceived != v14)
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
    appFreqForPhoneCall = self->_appFreqForPhoneCall;
    if (appFreqForPhoneCall != [v4 appFreqForPhoneCall])
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
    appFreqForPhoneCallUsingSiri = self->_appFreqForPhoneCallUsingSiri;
    if (appFreqForPhoneCallUsingSiri == [v4 appFreqForPhoneCallUsingSiri])
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
    appFreqForPhoneCallForCountryCode = self->_appFreqForPhoneCallForCountryCode;
    if (appFreqForPhoneCallForCountryCode != [v4 appFreqForPhoneCallForCountryCode])
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

- (void)setHasAppFreqForPhoneCallForCountryCode:(BOOL)a3
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

- (void)setHasAppFreqForPhoneCallUsingSiri:(BOOL)a3
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

- (void)setHasAppFreqForPhoneCall:(BOOL)a3
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

- (void)setHasAppAffinityScoreForPhoneCallReceived:(BOOL)a3
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

- (void)setHasAppAffinityScoreForPhoneCallUsingSiri:(BOOL)a3
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