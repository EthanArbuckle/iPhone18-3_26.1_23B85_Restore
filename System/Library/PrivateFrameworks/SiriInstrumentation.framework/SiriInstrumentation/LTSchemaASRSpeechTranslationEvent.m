@interface LTSchemaASRSpeechTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaASRSpeechTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaASRSpeechTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLatencyFinalResultMs:(BOOL)a3;
- (void)setHasNumAudioPacket:(BOOL)a3;
- (void)setHasTimeToFinalResultMs:(BOOL)a3;
- (void)setHasTimeToReceiveFirstAudioPacket:(BOOL)a3;
- (void)setHasTimeToSendFinishAudio:(BOOL)a3;
- (void)setHasTimeToSendFirstAudioPacket:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaASRSpeechTranslationEvent

- (LTSchemaASRSpeechTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = LTSchemaASRSpeechTranslationEvent;
  v5 = [(LTSchemaASRSpeechTranslationEvent *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaASRSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v20 = v6;
    v8 = [v4 objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaASRSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"timeToFirstPartialMs", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToFirstPartialMs:](v5, "setTimeToFirstPartialMs:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"timeToFinalResultMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToFinalResultMs:](v5, "setTimeToFinalResultMs:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"latencyFinalResultMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setLatencyFinalResultMs:](v5, "setLatencyFinalResultMs:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"timeToSendFirstAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToSendFirstAudioPacket:](v5, "setTimeToSendFirstAudioPacket:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"timeToReceiveFirstAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToReceiveFirstAudioPacket:](v5, "setTimeToReceiveFirstAudioPacket:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"numAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setNumAudioPacket:](v5, "setNumAudioPacket:", [v15 unsignedIntValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"timeToSendFinishAudio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToSendFinishAudio:](v5, "setTimeToSendFinishAudio:", [v16 unsignedIntValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (LTSchemaASRSpeechTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaASRSpeechTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaASRSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent latencyFinalResultMs](self, "latencyFinalResultMs")}];
    [v3 setObject:v5 forKeyedSubscript:@"latencyFinalResultMs"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent numAudioPacket](self, "numAudioPacket")}];
    [v3 setObject:v6 forKeyedSubscript:@"numAudioPacket"];
  }

  if (self->_requestID)
  {
    v7 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"requestID"];
  }

  if (self->_selectedLocale)
  {
    v9 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"selectedLocale"];
  }

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToFinalResultMs](self, "timeToFinalResultMs")}];
    [v3 setObject:v14 forKeyedSubscript:@"timeToFinalResultMs"];

    v11 = self->_has;
    if ((v11 & 1) == 0)
    {
LABEL_11:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToFirstPartialMs](self, "timeToFirstPartialMs")}];
  [v3 setObject:v15 forKeyedSubscript:@"timeToFirstPartialMs"];

  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_12:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToReceiveFirstAudioPacket](self, "timeToReceiveFirstAudioPacket")}];
  [v3 setObject:v16 forKeyedSubscript:@"timeToReceiveFirstAudioPacket"];

  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_13:
    if ((v11 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToSendFinishAudio](self, "timeToSendFinishAudio")}];
  [v3 setObject:v17 forKeyedSubscript:@"timeToSendFinishAudio"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToSendFirstAudioPacket](self, "timeToSendFirstAudioPacket")}];
    [v3 setObject:v12 forKeyedSubscript:@"timeToSendFirstAudioPacket"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(NSString *)self->_selectedLocale hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_timeToFirstPartialMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_timeToFinalResultMs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_latencyFinalResultMs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_timeToSendFirstAudioPacket;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_timeToReceiveFirstAudioPacket;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_13:
  v9 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = 2654435761 * self->_numAudioPacket;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v11 = 2654435761 * self->_timeToSendFinishAudio;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
    v10 = [v4 requestID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
  v6 = [v4 selectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
    v15 = [v4 selectedLocale];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[52];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      timeToFirstPartialMs = self->_timeToFirstPartialMs;
      if (timeToFirstPartialMs != [v4 timeToFirstPartialMs])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[52];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        timeToFinalResultMs = self->_timeToFinalResultMs;
        if (timeToFinalResultMs != [v4 timeToFinalResultMs])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[52];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (v24)
        {
          latencyFinalResultMs = self->_latencyFinalResultMs;
          if (latencyFinalResultMs != [v4 latencyFinalResultMs])
          {
            goto LABEL_12;
          }

          has = self->_has;
          v20 = v4[52];
        }

        v26 = (*&has >> 3) & 1;
        if (v26 == ((v20 >> 3) & 1))
        {
          if (v26)
          {
            timeToSendFirstAudioPacket = self->_timeToSendFirstAudioPacket;
            if (timeToSendFirstAudioPacket != [v4 timeToSendFirstAudioPacket])
            {
              goto LABEL_12;
            }

            has = self->_has;
            v20 = v4[52];
          }

          v28 = (*&has >> 4) & 1;
          if (v28 == ((v20 >> 4) & 1))
          {
            if (v28)
            {
              timeToReceiveFirstAudioPacket = self->_timeToReceiveFirstAudioPacket;
              if (timeToReceiveFirstAudioPacket != [v4 timeToReceiveFirstAudioPacket])
              {
                goto LABEL_12;
              }

              has = self->_has;
              v20 = v4[52];
            }

            v30 = (*&has >> 5) & 1;
            if (v30 == ((v20 >> 5) & 1))
            {
              if (v30)
              {
                numAudioPacket = self->_numAudioPacket;
                if (numAudioPacket != [v4 numAudioPacket])
                {
                  goto LABEL_12;
                }

                has = self->_has;
                v20 = v4[52];
              }

              v32 = (*&has >> 6) & 1;
              if (v32 == ((v20 >> 6) & 1))
              {
                if (!v32 || (timeToSendFinishAudio = self->_timeToSendFinishAudio, timeToSendFinishAudio == [v4 timeToSendFinishAudio]))
                {
                  v17 = 1;
                  goto LABEL_13;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }

LABEL_13:
}

- (void)setHasTimeToSendFinishAudio:(BOOL)a3
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

- (void)setHasNumAudioPacket:(BOOL)a3
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

- (void)setHasTimeToReceiveFirstAudioPacket:(BOOL)a3
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

- (void)setHasTimeToSendFirstAudioPacket:(BOOL)a3
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

- (void)setHasLatencyFinalResultMs:(BOOL)a3
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

- (void)setHasTimeToFinalResultMs:(BOOL)a3
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