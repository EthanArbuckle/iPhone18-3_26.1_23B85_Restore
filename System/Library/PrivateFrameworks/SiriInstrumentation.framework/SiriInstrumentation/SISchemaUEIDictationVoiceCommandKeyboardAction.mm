@interface SISchemaUEIDictationVoiceCommandKeyboardAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandKeyboardAction)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationVoiceCommandKeyboardAction)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAlgorithmStatus:(BOOL)status;
- (void)setHasDeleted:(BOOL)deleted;
- (void)setHasSubstituted:(BOOL)substituted;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationVoiceCommandKeyboardAction

- (SISchemaUEIDictationVoiceCommandKeyboardAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaUEIDictationVoiceCommandKeyboardAction;
  v5 = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandKeyboardAction *)v5 setVoiceCommandId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"insertions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandKeyboardAction setInsertions:](v5, "setInsertions:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"substituted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandKeyboardAction setSubstituted:](v5, "setSubstituted:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandKeyboardAction setDeleted:](v5, "setDeleted:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"algorithmStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandKeyboardAction setAlgorithmStatus:](v5, "setAlgorithmStatus:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandKeyboardAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandKeyboardAction algorithmStatus](self, "algorithmStatus")}];
    [dictionary setObject:v8 forKeyedSubscript:@"algorithmStatus"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandKeyboardAction deleted](self, "deleted")}];
  [dictionary setObject:v9 forKeyedSubscript:@"deleted"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandKeyboardAction insertions](self, "insertions")}];
  [dictionary setObject:v10 forKeyedSubscript:@"insertions"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandKeyboardAction substituted](self, "substituted")}];
    [dictionary setObject:v5 forKeyedSubscript:@"substituted"];
  }

LABEL_6:
  if (self->_voiceCommandId)
  {
    voiceCommandId = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];
    dictionaryRepresentation = [voiceCommandId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceCommandId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceCommandId"];
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
    v4 = 2654435761 * self->_insertions;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_substituted;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
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
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_deleted;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_algorithmStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  voiceCommandId = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];
  voiceCommandId2 = [equalCopy voiceCommandId];
  v7 = voiceCommandId2;
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {

    goto LABEL_24;
  }

  voiceCommandId3 = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];
  if (voiceCommandId3)
  {
    v9 = voiceCommandId3;
    voiceCommandId4 = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];
    voiceCommandId5 = [equalCopy voiceCommandId];
    v12 = [voiceCommandId4 isEqual:voiceCommandId5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    insertions = self->_insertions;
    if (insertions != [equalCopy insertions])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    substituted = self->_substituted;
    if (substituted != [equalCopy substituted])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    deleted = self->_deleted;
    if (deleted == [equalCopy deleted])
    {
      has = self->_has;
      v14 = equalCopy[32];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    algorithmStatus = self->_algorithmStatus;
    if (algorithmStatus != [equalCopy algorithmStatus])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceCommandId = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];

  if (voiceCommandId)
  {
    voiceCommandId2 = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v7 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

LABEL_9:
}

- (void)setHasAlgorithmStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSubstituted:(BOOL)substituted
{
  if (substituted)
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
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationVoiceCommandKeyboardAction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self deleteVoiceCommandId];
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