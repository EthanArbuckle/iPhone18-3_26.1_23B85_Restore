@interface ODDSiriSchemaODDiOSAccessibilityProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAtypicalSpeechEnabled:(BOOL)enabled;
- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)enabled;
- (void)setHasIsTypeToSiriEnabled:(BOOL)enabled;
- (void)setHasIsVoiceOverEnabled:(BOOL)enabled;
- (void)setHasSiriPauseTimeState:(BOOL)state;
- (void)setHasSiriSpeechRate:(BOOL)rate;
- (void)setHasVoiceFeedback:(BOOL)feedback;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDiOSAccessibilityProperties

- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ODDSiriSchemaODDiOSAccessibilityProperties;
  v5 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsAlwaysListenForHeySiriEnabled:](v5, "setIsAlwaysListenForHeySiriEnabled:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"siriPauseTimeState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setSiriPauseTimeState:](v5, "setSiriPauseTimeState:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isShowAppsBehindSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsShowAppsBehindSiriEnabled:](v5, "setIsShowAppsBehindSiriEnabled:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(ODDSiriSchemaODDiOSAccessibilityProperties *)v5 setSiriSpeechRate:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isVoiceOverEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsVoiceOverEnabled:](v5, "setIsVoiceOverEnabled:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isTypeToSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsTypeToSiriEnabled:](v5, "setIsTypeToSiriEnabled:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"voiceFeedback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setVoiceFeedback:](v5, "setVoiceFeedback:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isAtypicalSpeechEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAccessibilityProperties setIsAtypicalSpeechEnabled:](v5, "setIsAtypicalSpeechEnabled:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDiOSAccessibilityProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self dictionaryRepresentation];
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
  v4 = *(&self->_isAtypicalSpeechEnabled + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAccessibilityProperties isAlwaysListenForHeySiriEnabled](self, "isAlwaysListenForHeySiriEnabled")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isAlwaysListenForHeySiriEnabled"];

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
  [dictionary setObject:v6 forKeyedSubscript:@"isAtypicalSpeechEnabled"];

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
  [dictionary setObject:v7 forKeyedSubscript:@"isShowAppsBehindSiriEnabled"];

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
  [dictionary setObject:v8 forKeyedSubscript:@"isTypeToSiriEnabled"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"isVoiceOverEnabled"];

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
    [dictionary setObject:v13 forKeyedSubscript:@"siriSpeechRate"];

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

    [dictionary setObject:v15 forKeyedSubscript:@"voiceFeedback"];
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

  [dictionary setObject:v11 forKeyedSubscript:@"siriPauseTimeState"];
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
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(&self->_isAtypicalSpeechEnabled + 1);
  v6 = equalCopy[41];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (v5)
  {
    isAlwaysListenForHeySiriEnabled = self->_isAlwaysListenForHeySiriEnabled;
    if (isAlwaysListenForHeySiriEnabled != [equalCopy isAlwaysListenForHeySiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    siriPauseTimeState = self->_siriPauseTimeState;
    if (siriPauseTimeState != [equalCopy siriPauseTimeState])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    isShowAppsBehindSiriEnabled = self->_isShowAppsBehindSiriEnabled;
    if (isShowAppsBehindSiriEnabled != [equalCopy isShowAppsBehindSiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    siriSpeechRate = self->_siriSpeechRate;
    [equalCopy siriSpeechRate];
    if (siriSpeechRate != v14)
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v15 = (v5 >> 4) & 1;
  if (v15 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v15)
  {
    isVoiceOverEnabled = self->_isVoiceOverEnabled;
    if (isVoiceOverEnabled != [equalCopy isVoiceOverEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v17 = (v5 >> 5) & 1;
  if (v17 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v17)
  {
    isTypeToSiriEnabled = self->_isTypeToSiriEnabled;
    if (isTypeToSiriEnabled != [equalCopy isTypeToSiriEnabled])
    {
      goto LABEL_34;
    }

    v5 = *(&self->_isAtypicalSpeechEnabled + 1);
    v6 = equalCopy[41];
  }

  v19 = (v5 >> 6) & 1;
  if (v19 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v19)
  {
    voiceFeedback = self->_voiceFeedback;
    if (voiceFeedback == [equalCopy voiceFeedback])
    {
      v5 = *(&self->_isAtypicalSpeechEnabled + 1);
      v6 = equalCopy[41];
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
    if (isAtypicalSpeechEnabled != [equalCopy isAtypicalSpeechEnabled])
    {
      goto LABEL_34;
    }
  }

  v22 = 1;
LABEL_35:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasIsAtypicalSpeechEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = v3 & 0x80 | *(&self->_isAtypicalSpeechEnabled + 1) & 0x7F;
}

- (void)setHasVoiceFeedback:(BOOL)feedback
{
  if (feedback)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xBF | v3;
}

- (void)setHasIsTypeToSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xDF | v3;
}

- (void)setHasIsVoiceOverEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xEF | v3;
}

- (void)setHasSiriSpeechRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xF7 | v3;
}

- (void)setHasIsShowAppsBehindSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAtypicalSpeechEnabled + 1) = *(&self->_isAtypicalSpeechEnabled + 1) & 0xFB | v3;
}

- (void)setHasSiriPauseTimeState:(BOOL)state
{
  if (state)
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