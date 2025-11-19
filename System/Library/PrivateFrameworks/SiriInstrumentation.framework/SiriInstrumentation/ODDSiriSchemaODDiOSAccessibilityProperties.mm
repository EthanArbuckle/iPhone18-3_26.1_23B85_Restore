@interface ODDSiriSchemaODDiOSAccessibilityProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAtypicalSpeechEnabled:(BOOL)a3;
- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)a3;
- (void)setHasIsTypeToSiriEnabled:(BOOL)a3;
- (void)setHasIsVoiceOverEnabled:(BOOL)a3;
- (void)setHasSiriPauseTimeState:(BOOL)a3;
- (void)setHasSiriSpeechRate:(BOOL)a3;
- (void)setHasVoiceFeedback:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDiOSAccessibilityProperties

- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ODDSiriSchemaODDiOSAccessibilityProperties;
  v5 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsAlwaysListenForHeySiriEnabled:](v5, "setIsAlwaysListenForHeySiriEnabled:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [v4 objectForKeyedSubscript:@"siriPauseTimeState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setSiriPauseTimeState:](v5, "setSiriPauseTimeState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isShowAppsBehindSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsShowAppsBehindSiriEnabled:](v5, "setIsShowAppsBehindSiriEnabled:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"siriSpeechRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(ODDSiriSchemaODDiOSAccessibilityProperties *)v5 setSiriSpeechRate:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"isVoiceOverEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsVoiceOverEnabled:](v5, "setIsVoiceOverEnabled:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isTypeToSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsTypeToSiriEnabled:](v5, "setIsTypeToSiriEnabled:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"voiceFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setVoiceFeedback:](v5, "setVoiceFeedback:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isAtypicalSpeechEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsAtypicalSpeechEnabled:](v5, "setIsAtypicalSpeechEnabled:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self dictionaryRepresentation];
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
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isAlwaysListenForHeySiriEnabled](self, "isAlwaysListenForHeySiriEnabled")}];
    [v3 setObject:v5 forKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];

    v4 = *(&self->_isAtypicalSpeechEnabled + 1);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isAtypicalSpeechEnabled](self, "isAtypicalSpeechEnabled")}];
  [v3 setObject:v6 forKeyedSubscript:@"isAtypicalSpeechEnabled"];

  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isShowAppsBehindSiriEnabled](self, "isShowAppsBehindSiriEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"isShowAppsBehindSiriEnabled"];

  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isTypeToSiriEnabled](self, "isTypeToSiriEnabled")}];
  [v3 setObject:v8 forKeyedSubscript:@"isTypeToSiriEnabled"];

  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isVoiceOverEnabled](self, "isVoiceOverEnabled")}];
  [v3 setObject:v9 forKeyedSubscript:@"isVoiceOverEnabled"];

  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v12 = MEMORY[0x1E696AD98];
    [(ODDSiriSchemaODDiOSAccessibilityProperties *)self siriSpeechRate];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"siriSpeechRate"];

    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v14 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self voiceFeedback]- 1;
    if (v14 > 5)
    {
      v15 = @"VOICEFEEDBACK_UNKNOWN";
    }

    else
    {
      v15 = off_1E78DD8E8[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"voiceFeedback"];
    goto LABEL_24;
  }

LABEL_15:
  v10 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self siriPauseTimeState]- 1;
  if (v10 > 2)
  {
    v11 = @"SIRIPAUSETIMESTATE_UNKNOWN";
  }

  else
  {
    v11 = off_1E78DD8D0[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"siriPauseTimeState"];
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isAtypicalSpeechEnabled + 1))
  {
    v4 = 2654435761 * self->_isAlwaysListenForHeySiriEnabled;
    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_siriPauseTimeState;
      if ((*(&self->_isAtypicalSpeechEnabled + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v6 = 0;
      if ((*(&self->_isAtypicalSpeechEnabled + 1) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*(&self->_isAtypicalSpeechEnabled + 1) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = 2654435761 * self->_isShowAppsBehindSiriEnabled;
  if ((*(&self->_isAtypicalSpeechEnabled + 1) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  siriSpeechRate = self->_siriSpeechRate;
  if (siriSpeechRate < 0.0)
  {
    siriSpeechRate = -siriSpeechRate;
  }

  *v2.i64 = floor(siriSpeechRate + 0.5);
  v8 = (siriSpeechRate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_13:
  if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x10) != 0)
  {
    v11 = 2654435761 * self->_isVoiceOverEnabled;
    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x20) != 0)
    {
LABEL_15:
      v12 = 2654435761 * self->_isTypeToSiriEnabled;
      if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x40) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v13 = 0;
      if (*(&self->_isAtypicalSpeechEnabled + 1) < 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v14 = 0;
      return v5 ^ v4 ^ v6 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
    }
  }

  else
  {
    v11 = 0;
    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x20) != 0)
    {
      goto LABEL_15;
    }
  }

  v12 = 0;
  if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v13 = 2654435761 * self->_voiceFeedback;
  if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v14 = 2654435761 * self->_isAtypicalSpeechEnabled;
  return v5 ^ v4 ^ v6 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(&self->_isAtypicalSpeechEnabled + 1);
  v6 = v4[41];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (v5)
  {
    isAlwaysListenForHeySiriEnabled = self->_isAlwaysListenForHeySiriEnabled;
    if (isAlwaysListenForHeySiriEnabled != [v4 isAlwaysListenForHeySiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    siriPauseTimeState = self->_siriPauseTimeState;
    if (siriPauseTimeState != [v4 siriPauseTimeState])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    isShowAppsBehindSiriEnabled = self->_isShowAppsBehindSiriEnabled;
    if (isShowAppsBehindSiriEnabled != [v4 isShowAppsBehindSiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    siriSpeechRate = self->_siriSpeechRate;
    [v4 siriSpeechRate];
    if (siriSpeechRate != v14)
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v15 = (v5 >> 4) & 1;
  if (v15 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v15)
  {
    isVoiceOverEnabled = self->_isVoiceOverEnabled;
    if (isVoiceOverEnabled != [v4 isVoiceOverEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v17 = (v5 >> 5) & 1;
  if (v17 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v17)
  {
    isTypeToSiriEnabled = self->_isTypeToSiriEnabled;
    if (isTypeToSiriEnabled != [v4 isTypeToSiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = v4[41];
  }

  v19 = (v5 >> 6) & 1;
  if (v19 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v19)
  {
    voiceFeedback = self->_voiceFeedback;
    if (voiceFeedback == [v4 voiceFeedback])
    {
      v5 = *(&self->_isAtypicalSpeechEnabled + 1);
      v6 = v4[41];
      goto LABEL_30;
    }

LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ v5) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((v5 & 0x80) != 0)
  {
    isAtypicalSpeechEnabled = self->_isAtypicalSpeechEnabled;
    if (isAtypicalSpeechEnabled != [v4 isAtypicalSpeechEnabled])
    {
      goto LABEL_34;
    }
  }

  v22 = 1;
LABEL_35:

  return v22;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isAtypicalSpeechEnabled + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(&self->_isAtypicalSpeechEnabled + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteInt32Field();
    if ((*(&self->_isAtypicalSpeechEnabled + 1) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
LABEL_9:
}

- (void)setHasIsAtypicalSpeechEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = v3 & 0x80 | *(&self->_isAtypicalSpeechEnabled + 1) & 0x7F;
}

- (void)setHasVoiceFeedback:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xBF | v3;
}

- (void)setHasIsTypeToSiriEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xDF | v3;
}

- (void)setHasIsVoiceOverEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xEF | v3;
}

- (void)setHasSiriSpeechRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xF7 | v3;
}

- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xFB | v3;
}

- (void)setHasSiriPauseTimeState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end