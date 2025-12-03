@interface ASRSchemaASRDictationVoiceCommandMetricsReported
- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithDictionary:(id)dictionary;
- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandParserEndTimeInNs:(BOOL)ns;
- (void)setHasCommandParserStartTimeInNs:(BOOL)ns;
- (void)setHasUtteranceEndTimeInNs:(BOOL)ns;
- (void)setHasUtteranceStartTimeInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRDictationVoiceCommandMetricsReported

- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ASRSchemaASRDictationVoiceCommandMetricsReported;
  v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRDictationVoiceCommandMetricsReported *)v5 setVoiceCommandId:v7];
    }

    v19 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandEndTimeInNs:](v5, "setCommandEndTimeInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"commandParserStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandParserStartTimeInNs:](v5, "setCommandParserStartTimeInNs:", [v9 unsignedLongLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"commandParserEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandParserEndTimeInNs:](v5, "setCommandParserEndTimeInNs:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"utteranceStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setUtteranceStartTimeInNs:](v5, "setUtteranceStartTimeInNs:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"utteranceEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setUtteranceEndTimeInNs:](v5, "setUtteranceEndTimeInNs:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"recognitionResultLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(ASRSchemaASRDictationVoiceCommandMetricsReported *)v5 setRecognitionResultLinkId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"dictationVoiceCommandLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(ASRSchemaASRDictationVoiceCommandMetricsReported *)v5 setDictationVoiceCommandLinkId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictionaryRepresentation];
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
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported commandEndTimeInNs](self, "commandEndTimeInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"commandEndTimeInNs"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported commandParserEndTimeInNs](self, "commandParserEndTimeInNs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"commandParserEndTimeInNs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported commandParserStartTimeInNs](self, "commandParserStartTimeInNs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"commandParserStartTimeInNs"];
  }

LABEL_5:
  if (self->_dictationVoiceCommandLinkId)
  {
    dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
    dictionaryRepresentation = [dictationVoiceCommandLinkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }
  }

  if (self->_recognitionResultLinkId)
  {
    recognitionResultLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    dictionaryRepresentation2 = [recognitionResultLinkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"recognitionResultLinkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"recognitionResultLinkId"];
    }
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported utteranceEndTimeInNs](self, "utteranceEndTimeInNs")}];
    [dictionary setObject:v15 forKeyedSubscript:@"utteranceEndTimeInNs"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported utteranceStartTimeInNs](self, "utteranceStartTimeInNs")}];
    [dictionary setObject:v16 forKeyedSubscript:@"utteranceStartTimeInNs"];
  }

  if (self->_voiceCommandId)
  {
    voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
    dictionaryRepresentation3 = [voiceCommandId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"voiceCommandId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"voiceCommandId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_voiceCommandId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_commandEndTimeInNs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_commandParserStartTimeInNs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761u * self->_commandParserEndTimeInNs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761u * self->_utteranceStartTimeInNs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761u * self->_utteranceEndTimeInNs;
LABEL_12:
  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(SISchemaUUID *)self->_recognitionResultLinkId hash];
  return v9 ^ [(SISchemaUUID *)self->_dictationVoiceCommandLinkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  voiceCommandId2 = [equalCopy voiceCommandId];
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {
    goto LABEL_35;
  }

  voiceCommandId3 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  if (voiceCommandId3)
  {
    v8 = voiceCommandId3;
    voiceCommandId4 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
    voiceCommandId5 = [equalCopy voiceCommandId];
    v11 = [voiceCommandId4 isEqual:voiceCommandId5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[72];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_36;
  }

  if (*&has)
  {
    commandEndTimeInNs = self->_commandEndTimeInNs;
    if (commandEndTimeInNs != [equalCopy commandEndTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = equalCopy[72];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v15)
  {
    commandParserStartTimeInNs = self->_commandParserStartTimeInNs;
    if (commandParserStartTimeInNs != [equalCopy commandParserStartTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = equalCopy[72];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v17)
  {
    commandParserEndTimeInNs = self->_commandParserEndTimeInNs;
    if (commandParserEndTimeInNs != [equalCopy commandParserEndTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = equalCopy[72];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v19)
  {
    utteranceStartTimeInNs = self->_utteranceStartTimeInNs;
    if (utteranceStartTimeInNs != [equalCopy utteranceStartTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = equalCopy[72];
  }

  v21 = (*&has >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_36;
  }

  if (v21)
  {
    utteranceEndTimeInNs = self->_utteranceEndTimeInNs;
    if (utteranceEndTimeInNs != [equalCopy utteranceEndTimeInNs])
    {
      goto LABEL_36;
    }
  }

  voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  voiceCommandId2 = [equalCopy recognitionResultLinkId];
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {
    goto LABEL_35;
  }

  recognitionResultLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  if (recognitionResultLinkId)
  {
    v24 = recognitionResultLinkId;
    recognitionResultLinkId2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    recognitionResultLinkId3 = [equalCopy recognitionResultLinkId];
    v27 = [recognitionResultLinkId2 isEqual:recognitionResultLinkId3];

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  voiceCommandId2 = [equalCopy dictationVoiceCommandLinkId];
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  if (!dictationVoiceCommandLinkId)
  {

LABEL_39:
    v33 = 1;
    goto LABEL_37;
  }

  v29 = dictationVoiceCommandLinkId;
  dictationVoiceCommandLinkId2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  dictationVoiceCommandLinkId3 = [equalCopy dictationVoiceCommandLinkId];
  v32 = [dictationVoiceCommandLinkId2 isEqual:dictationVoiceCommandLinkId3];

  if (v32)
  {
    goto LABEL_39;
  }

LABEL_36:
  v33 = 0;
LABEL_37:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];

  if (voiceCommandId)
  {
    voiceCommandId2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint64Field();
  }

LABEL_9:
  recognitionResultLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];

  if (recognitionResultLinkId)
  {
    recognitionResultLinkId2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    PBDataWriterWriteSubmessage();
  }

  dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];

  v10 = toCopy;
  if (dictationVoiceCommandLinkId)
  {
    dictationVoiceCommandLinkId2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)setHasUtteranceEndTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUtteranceStartTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCommandParserEndTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCommandParserStartTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ASRSchemaASRDictationVoiceCommandMetricsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  voiceCommandId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  v7 = [voiceCommandId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self deleteVoiceCommandId];
  }

  recognitionResultLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  v10 = [recognitionResultLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self deleteRecognitionResultLinkId];
  }

  dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  v13 = [dictationVoiceCommandLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self deleteDictationVoiceCommandLinkId];
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