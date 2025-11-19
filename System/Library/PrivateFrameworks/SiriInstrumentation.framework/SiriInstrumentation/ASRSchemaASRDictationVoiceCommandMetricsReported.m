@interface ASRSchemaASRDictationVoiceCommandMetricsReported
- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithDictionary:(id)a3;
- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandParserEndTimeInNs:(BOOL)a3;
- (void)setHasCommandParserStartTimeInNs:(BOOL)a3;
- (void)setHasUtteranceEndTimeInNs:(BOOL)a3;
- (void)setHasUtteranceStartTimeInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRDictationVoiceCommandMetricsReported

- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ASRSchemaASRDictationVoiceCommandMetricsReported;
  v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRDictationVoiceCommandMetricsReported *)v5 setVoiceCommandId:v7];
    }

    v19 = v6;
    v8 = [v4 objectForKeyedSubscript:@"commandEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandEndTimeInNs:](v5, "setCommandEndTimeInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"commandParserStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandParserStartTimeInNs:](v5, "setCommandParserStartTimeInNs:", [v9 unsignedLongLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"commandParserEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setCommandParserEndTimeInNs:](v5, "setCommandParserEndTimeInNs:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"utteranceStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setUtteranceStartTimeInNs:](v5, "setUtteranceStartTimeInNs:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"utteranceEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRDictationVoiceCommandMetricsReported setUtteranceEndTimeInNs:](v5, "setUtteranceEndTimeInNs:", [v12 unsignedLongLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"recognitionResultLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(ASRSchemaASRDictationVoiceCommandMetricsReported *)v5 setRecognitionResultLinkId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"dictationVoiceCommandLinkId"];
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

- (ASRSchemaASRDictationVoiceCommandMetricsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported commandEndTimeInNs](self, "commandEndTimeInNs")}];
    [v3 setObject:v8 forKeyedSubscript:@"commandEndTimeInNs"];

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
  [v3 setObject:v9 forKeyedSubscript:@"commandParserEndTimeInNs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported commandParserStartTimeInNs](self, "commandParserStartTimeInNs")}];
    [v3 setObject:v5 forKeyedSubscript:@"commandParserStartTimeInNs"];
  }

LABEL_5:
  if (self->_dictationVoiceCommandLinkId)
  {
    v6 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }
  }

  if (self->_recognitionResultLinkId)
  {
    v11 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"recognitionResultLinkId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"recognitionResultLinkId"];
    }
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported utteranceEndTimeInNs](self, "utteranceEndTimeInNs")}];
    [v3 setObject:v15 forKeyedSubscript:@"utteranceEndTimeInNs"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRDictationVoiceCommandMetricsReported utteranceStartTimeInNs](self, "utteranceStartTimeInNs")}];
    [v3 setObject:v16 forKeyedSubscript:@"utteranceStartTimeInNs"];
  }

  if (self->_voiceCommandId)
  {
    v17 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"voiceCommandId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"voiceCommandId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  v6 = [v4 voiceCommandId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v7 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
    v10 = [v4 voiceCommandId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[72];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_36;
  }

  if (*&has)
  {
    commandEndTimeInNs = self->_commandEndTimeInNs;
    if (commandEndTimeInNs != [v4 commandEndTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = v4[72];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v15)
  {
    commandParserStartTimeInNs = self->_commandParserStartTimeInNs;
    if (commandParserStartTimeInNs != [v4 commandParserStartTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = v4[72];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v17)
  {
    commandParserEndTimeInNs = self->_commandParserEndTimeInNs;
    if (commandParserEndTimeInNs != [v4 commandParserEndTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = v4[72];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v19)
  {
    utteranceStartTimeInNs = self->_utteranceStartTimeInNs;
    if (utteranceStartTimeInNs != [v4 utteranceStartTimeInNs])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v13 = v4[72];
  }

  v21 = (*&has >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_36;
  }

  if (v21)
  {
    utteranceEndTimeInNs = self->_utteranceEndTimeInNs;
    if (utteranceEndTimeInNs != [v4 utteranceEndTimeInNs])
    {
      goto LABEL_36;
    }
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  v6 = [v4 recognitionResultLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v23 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  if (v23)
  {
    v24 = v23;
    v25 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    v26 = [v4 recognitionResultLinkId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  v6 = [v4 dictationVoiceCommandLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v28 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  if (!v28)
  {

LABEL_39:
    v33 = 1;
    goto LABEL_37;
  }

  v29 = v28;
  v30 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  v31 = [v4 dictationVoiceCommandLinkId];
  v32 = [v30 isEqual:v31];

  if (v32)
  {
    goto LABEL_39;
  }

LABEL_36:
  v33 = 0;
LABEL_37:

  return v33;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];

  if (v4)
  {
    v5 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
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
  v7 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];

  if (v7)
  {
    v8 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];

  v10 = v12;
  if (v9)
  {
    v11 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (void)setHasUtteranceEndTimeInNs:(BOOL)a3
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

- (void)setHasUtteranceStartTimeInNs:(BOOL)a3
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

- (void)setHasCommandParserEndTimeInNs:(BOOL)a3
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

- (void)setHasCommandParserStartTimeInNs:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASRSchemaASRDictationVoiceCommandMetricsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self voiceCommandId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self deleteVoiceCommandId];
  }

  v9 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self recognitionResultLinkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self deleteRecognitionResultLinkId];
  }

  v12 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self dictationVoiceCommandLinkId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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