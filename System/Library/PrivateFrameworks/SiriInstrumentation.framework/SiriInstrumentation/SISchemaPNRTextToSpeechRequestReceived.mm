@interface SISchemaPNRTextToSpeechRequestReceived
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPNRTextToSpeechRequestReceived)initWithDictionary:(id)dictionary;
- (SISchemaPNRTextToSpeechRequestReceived)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSynthesisCached:(BOOL)cached;
- (void)setHasSourceOfTTS:(BOOL)s;
- (void)setHasSpeechError:(BOOL)error;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPNRTextToSpeechRequestReceived

- (SISchemaPNRTextToSpeechRequestReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SISchemaPNRTextToSpeechRequestReceived;
  v5 = [(SISchemaPNRTextToSpeechRequestReceived *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceAssetKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaPNRTextToSpeechRequestReceived *)v5 setVoiceAssetKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"voiceResourceAssetKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaPNRTextToSpeechRequestReceived *)v5 setVoiceResourceAssetKey:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isWarmStart"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPNRTextToSpeechRequestReceived setIsWarmStart:](v5, "setIsWarmStart:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isSynthesisCached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPNRTextToSpeechRequestReceived setIsSynthesisCached:](v5, "setIsSynthesisCached:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sourceOfTTS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPNRTextToSpeechRequestReceived setSourceOfTTS:](v5, "setSourceOfTTS:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"speechError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPNRTextToSpeechRequestReceived setSpeechError:](v5, "setSpeechError:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaPNRTextToSpeechRequestReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPNRTextToSpeechRequestReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPNRTextToSpeechRequestReceived *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPNRTextToSpeechRequestReceived isSynthesisCached](self, "isSynthesisCached")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isSynthesisCached"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPNRTextToSpeechRequestReceived isWarmStart](self, "isWarmStart")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isWarmStart"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_8:
  v7 = [(SISchemaPNRTextToSpeechRequestReceived *)self sourceOfTTS]- 1;
  if (v7 > 4)
  {
    v8 = @"PNRSOURCEOFTTS_UNKNOWN_SOURCE_OF_TTS";
  }

  else
  {
    v8 = off_1E78E6128[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"sourceOfTTS"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    v9 = [(SISchemaPNRTextToSpeechRequestReceived *)self speechError]- 1;
    if (v9 > 0xF)
    {
      v10 = @"PNRSPEECHERROR_UNKNOWN_SPEECH_ERROR";
    }

    else
    {
      v10 = off_1E78E6150[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"speechError"];
  }

LABEL_16:
  if (self->_voiceAssetKey)
  {
    voiceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceAssetKey];
    v12 = [voiceAssetKey copy];
    [dictionary setObject:v12 forKeyedSubscript:@"voiceAssetKey"];
  }

  if (self->_voiceResourceAssetKey)
  {
    voiceResourceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceResourceAssetKey];
    v14 = [voiceResourceAssetKey copy];
    [dictionary setObject:v14 forKeyedSubscript:@"voiceResourceAssetKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_voiceAssetKey hash];
  v4 = [(NSString *)self->_voiceResourceAssetKey hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isWarmStart;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_isSynthesisCached;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
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
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_sourceOfTTS;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761 * self->_speechError;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  voiceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceAssetKey];
  voiceAssetKey2 = [equalCopy voiceAssetKey];
  if ((voiceAssetKey != 0) == (voiceAssetKey2 == 0))
  {
    goto LABEL_11;
  }

  voiceAssetKey3 = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceAssetKey];
  if (voiceAssetKey3)
  {
    v8 = voiceAssetKey3;
    voiceAssetKey4 = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceAssetKey];
    voiceAssetKey5 = [equalCopy voiceAssetKey];
    v11 = [voiceAssetKey4 isEqual:voiceAssetKey5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  voiceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceResourceAssetKey];
  voiceAssetKey2 = [equalCopy voiceResourceAssetKey];
  if ((voiceAssetKey != 0) == (voiceAssetKey2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  voiceResourceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceResourceAssetKey];
  if (voiceResourceAssetKey)
  {
    v13 = voiceResourceAssetKey;
    voiceResourceAssetKey2 = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceResourceAssetKey];
    voiceResourceAssetKey3 = [equalCopy voiceResourceAssetKey];
    v16 = [voiceResourceAssetKey2 isEqual:voiceResourceAssetKey3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      isWarmStart = self->_isWarmStart;
      if (isWarmStart != [equalCopy isWarmStart])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        isSynthesisCached = self->_isSynthesisCached;
        if (isSynthesisCached != [equalCopy isSynthesisCached])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (v24)
        {
          sourceOfTTS = self->_sourceOfTTS;
          if (sourceOfTTS != [equalCopy sourceOfTTS])
          {
            goto LABEL_12;
          }

          has = self->_has;
          v20 = equalCopy[36];
        }

        v26 = (*&has >> 3) & 1;
        if (v26 == ((v20 >> 3) & 1))
        {
          if (!v26 || (speechError = self->_speechError, speechError == [equalCopy speechError]))
          {
            v17 = 1;
            goto LABEL_13;
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
  voiceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceAssetKey];

  if (voiceAssetKey)
  {
    PBDataWriterWriteStringField();
  }

  voiceResourceAssetKey = [(SISchemaPNRTextToSpeechRequestReceived *)self voiceResourceAssetKey];

  if (voiceResourceAssetKey)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  v7 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_10:
}

- (void)setHasSpeechError:(BOOL)error
{
  if (error)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSourceOfTTS:(BOOL)s
{
  if (s)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsSynthesisCached:(BOOL)cached
{
  if (cached)
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