@interface LTSchemaASRSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaASRSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaASRSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLatencyFinalResultMs:(BOOL)ms;
- (void)setHasNumAudioPacket:(BOOL)packet;
- (void)setHasTimeToFinalResultMs:(BOOL)ms;
- (void)setHasTimeToReceiveFirstAudioPacket:(BOOL)packet;
- (void)setHasTimeToSendFinishAudio:(BOOL)audio;
- (void)setHasTimeToSendFirstAudioPacket:(BOOL)packet;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaASRSpeechTranslationEvent

- (LTSchemaASRSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = LTSchemaASRSpeechTranslationEvent;
  v5 = [(LTSchemaASRSpeechTranslationEvent *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaASRSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v20 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaASRSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"timeToFirstPartialMs", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToFirstPartialMs:](v5, "setTimeToFirstPartialMs:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timeToFinalResultMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToFinalResultMs:](v5, "setTimeToFinalResultMs:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"latencyFinalResultMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setLatencyFinalResultMs:](v5, "setLatencyFinalResultMs:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"timeToSendFirstAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToSendFirstAudioPacket:](v5, "setTimeToSendFirstAudioPacket:", [v13 unsignedIntValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"timeToReceiveFirstAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToReceiveFirstAudioPacket:](v5, "setTimeToReceiveFirstAudioPacket:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"numAudioPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setNumAudioPacket:](v5, "setNumAudioPacket:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"timeToSendFinishAudio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaASRSpeechTranslationEvent setTimeToSendFinishAudio:](v5, "setTimeToSendFinishAudio:", [v16 unsignedIntValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (LTSchemaASRSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaASRSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaASRSpeechTranslationEvent *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent latencyFinalResultMs](self, "latencyFinalResultMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"latencyFinalResultMs"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent numAudioPacket](self, "numAudioPacket")}];
    [dictionary setObject:v6 forKeyedSubscript:@"numAudioPacket"];
  }

  if (self->_requestID)
  {
    requestID = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
    v8 = [requestID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"requestID"];
  }

  if (self->_selectedLocale)
  {
    selectedLocale = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
    v10 = [selectedLocale copy];
    [dictionary setObject:v10 forKeyedSubscript:@"selectedLocale"];
  }

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToFinalResultMs](self, "timeToFinalResultMs")}];
    [dictionary setObject:v14 forKeyedSubscript:@"timeToFinalResultMs"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"timeToFirstPartialMs"];

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
  [dictionary setObject:v16 forKeyedSubscript:@"timeToReceiveFirstAudioPacket"];

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
  [dictionary setObject:v17 forKeyedSubscript:@"timeToSendFinishAudio"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaASRSpeechTranslationEvent timeToSendFirstAudioPacket](self, "timeToSendFirstAudioPacket")}];
    [dictionary setObject:v12 forKeyedSubscript:@"timeToSendFirstAudioPacket"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  requestID = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
  requestID2 = [equalCopy requestID];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_11;
  }

  requestID3 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
  if (requestID3)
  {
    v8 = requestID3;
    requestID4 = [(LTSchemaASRSpeechTranslationEvent *)self requestID];
    requestID5 = [equalCopy requestID];
    v11 = [requestID4 isEqual:requestID5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
  requestID2 = [equalCopy selectedLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  selectedLocale = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
  if (selectedLocale)
  {
    v13 = selectedLocale;
    selectedLocale2 = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];
    selectedLocale3 = [equalCopy selectedLocale];
    v16 = [selectedLocale2 isEqual:selectedLocale3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[52];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      timeToFirstPartialMs = self->_timeToFirstPartialMs;
      if (timeToFirstPartialMs != [equalCopy timeToFirstPartialMs])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[52];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        timeToFinalResultMs = self->_timeToFinalResultMs;
        if (timeToFinalResultMs != [equalCopy timeToFinalResultMs])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[52];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (v24)
        {
          latencyFinalResultMs = self->_latencyFinalResultMs;
          if (latencyFinalResultMs != [equalCopy latencyFinalResultMs])
          {
            goto LABEL_12;
          }

          has = self->_has;
          v20 = equalCopy[52];
        }

        v26 = (*&has >> 3) & 1;
        if (v26 == ((v20 >> 3) & 1))
        {
          if (v26)
          {
            timeToSendFirstAudioPacket = self->_timeToSendFirstAudioPacket;
            if (timeToSendFirstAudioPacket != [equalCopy timeToSendFirstAudioPacket])
            {
              goto LABEL_12;
            }

            has = self->_has;
            v20 = equalCopy[52];
          }

          v28 = (*&has >> 4) & 1;
          if (v28 == ((v20 >> 4) & 1))
          {
            if (v28)
            {
              timeToReceiveFirstAudioPacket = self->_timeToReceiveFirstAudioPacket;
              if (timeToReceiveFirstAudioPacket != [equalCopy timeToReceiveFirstAudioPacket])
              {
                goto LABEL_12;
              }

              has = self->_has;
              v20 = equalCopy[52];
            }

            v30 = (*&has >> 5) & 1;
            if (v30 == ((v20 >> 5) & 1))
            {
              if (v30)
              {
                numAudioPacket = self->_numAudioPacket;
                if (numAudioPacket != [equalCopy numAudioPacket])
                {
                  goto LABEL_12;
                }

                has = self->_has;
                v20 = equalCopy[52];
              }

              v32 = (*&has >> 6) & 1;
              if (v32 == ((v20 >> 6) & 1))
              {
                if (!v32 || (timeToSendFinishAudio = self->_timeToSendFinishAudio, timeToSendFinishAudio == [equalCopy timeToSendFinishAudio]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  requestID = [(LTSchemaASRSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  selectedLocale = [(LTSchemaASRSpeechTranslationEvent *)self selectedLocale];

  if (selectedLocale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

LABEL_13:
}

- (void)setHasTimeToSendFinishAudio:(BOOL)audio
{
  if (audio)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNumAudioPacket:(BOOL)packet
{
  if (packet)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimeToReceiveFirstAudioPacket:(BOOL)packet
{
  if (packet)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeToSendFirstAudioPacket:(BOOL)packet
{
  if (packet)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLatencyFinalResultMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeToFinalResultMs:(BOOL)ms
{
  if (ms)
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