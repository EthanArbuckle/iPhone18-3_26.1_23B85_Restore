@interface SISchemaUEIDictationVoiceCommandExecuted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandExecuted)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationVoiceCommandExecuted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandExecutionEndTimeInNs:(BOOL)ns;
- (void)setHasCommandExecutionStartTimeInNs:(BOOL)ns;
- (void)setHasCommandPayloadCharacterCount:(BOOL)count;
- (void)setHasCommandPayloadWordCount:(BOOL)count;
- (void)setHasCommandTargetCharacterCount:(BOOL)count;
- (void)setHasCommandTargetWordCount:(BOOL)count;
- (void)setHasCommandType:(BOOL)type;
- (void)setHasHasAdjacentEdit:(BOOL)edit;
- (void)setHasHasSpelling:(BOOL)spelling;
- (void)setHasHasTextSelection:(BOOL)selection;
- (void)setHasIsWfstParseable:(BOOL)parseable;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationVoiceCommandExecuted

- (SISchemaUEIDictationVoiceCommandExecuted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = SISchemaUEIDictationVoiceCommandExecuted;
  v5 = [(SISchemaUEIDictationVoiceCommandExecuted *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandExecuted *)v5 setVoiceCommandId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandStatus:](v5, "setCommandStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"commandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandType:](v5, "setCommandType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"commandTargetWordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandTargetWordCount:](v5, "setCommandTargetWordCount:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"commandPayloadWordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandPayloadWordCount:](v5, "setCommandPayloadWordCount:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"commandTargetCharacterCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandTargetCharacterCount:](v5, "setCommandTargetCharacterCount:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"commandPayloadCharacterCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandPayloadCharacterCount:](v5, "setCommandPayloadCharacterCount:", [v13 unsignedLongLongValue]);
    }

    v27 = v8;
    v14 = [dictionaryCopy objectForKeyedSubscript:{@"commandExecutionStartTimeInNs", v13}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandExecutionStartTimeInNs:](v5, "setCommandExecutionStartTimeInNs:", [v14 unsignedLongLongValue]);
    }

    v28 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"commandExecutionEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setCommandExecutionEndTimeInNs:](v5, "setCommandExecutionEndTimeInNs:", [v15 unsignedLongLongValue]);
    }

    v26 = v9;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"hasSpelling"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setHasSpelling:](v5, "setHasSpelling:", [v16 BOOLValue]);
    }

    v24 = v12;
    v25 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"hasTextSelection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setHasTextSelection:](v5, "setHasTextSelection:", [v17 BOOLValue]);
    }

    v18 = v11;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"isWfstParseable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setIsWfstParseable:](v5, "setIsWfstParseable:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasAdjacentEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandExecuted setHasAdjacentEdit:](v5, "setHasAdjacentEdit:", [v20 BOOLValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandExecuted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandExecuted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationVoiceCommandExecuted *)self dictionaryRepresentation];
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
  if ((has & 0x80) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandExecutionEndTimeInNs](self, "commandExecutionEndTimeInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"commandExecutionEndTimeInNs"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandExecutionStartTimeInNs](self, "commandExecutionStartTimeInNs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"commandExecutionStartTimeInNs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandPayloadCharacterCount](self, "commandPayloadCharacterCount")}];
  [dictionary setObject:v10 forKeyedSubscript:@"commandPayloadCharacterCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandPayloadWordCount](self, "commandPayloadWordCount")}];
  [dictionary setObject:v11 forKeyedSubscript:@"commandPayloadWordCount"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_21:
  v12 = [(SISchemaUEIDictationVoiceCommandExecuted *)self commandStatus]- 1;
  if (v12 > 2)
  {
    v13 = @"UEIVOICECOMMANDEXECUTIONSTATUS_UNKNOWN";
  }

  else
  {
    v13 = off_1E78E6610[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"commandStatus"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandTargetCharacterCount](self, "commandTargetCharacterCount")}];
  [dictionary setObject:v14 forKeyedSubscript:@"commandTargetCharacterCount"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaUEIDictationVoiceCommandExecuted commandTargetWordCount](self, "commandTargetWordCount")}];
  [dictionary setObject:v15 forKeyedSubscript:@"commandTargetWordCount"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_27:
  v16 = [(SISchemaUEIDictationVoiceCommandExecuted *)self commandType]- 1;
  if (v16 > 0x25)
  {
    v17 = @"UEIVOICECOMMANDTYPE_UNKNOWN";
  }

  else
  {
    v17 = off_1E78E6628[v16];
  }

  [dictionary setObject:v17 forKeyedSubscript:@"commandType"];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandExecuted hasAdjacentEdit](self, "hasAdjacentEdit")}];
  [dictionary setObject:v18 forKeyedSubscript:@"hasAdjacentEdit"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandExecuted hasSpelling](self, "hasSpelling")}];
  [dictionary setObject:v19 forKeyedSubscript:@"hasSpelling"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandExecuted hasTextSelection](self, "hasTextSelection")}];
  [dictionary setObject:v20 forKeyedSubscript:@"hasTextSelection"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandExecuted isWfstParseable](self, "isWfstParseable")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isWfstParseable"];
  }

LABEL_14:
  if (self->_voiceCommandId)
  {
    voiceCommandId = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];
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
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_commandStatus;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_commandType;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761u * self->_commandTargetWordCount;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761u * self->_commandPayloadWordCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761u * self->_commandTargetCharacterCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761u * self->_commandPayloadCharacterCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v11 = 2654435761u * self->_commandExecutionStartTimeInNs;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v12 = 2654435761u * self->_commandExecutionEndTimeInNs;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_hasSpelling;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v14 = 2654435761 * self->_hasTextSelection;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v15 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v16 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_23:
  v14 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v15 = 2654435761 * self->_isWfstParseable;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v16 = 2654435761 * self->_hasAdjacentEdit;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  voiceCommandId = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];
  voiceCommandId2 = [equalCopy voiceCommandId];
  v7 = voiceCommandId2;
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {

    goto LABEL_56;
  }

  voiceCommandId3 = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];
  if (voiceCommandId3)
  {
    v9 = voiceCommandId3;
    voiceCommandId4 = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];
    voiceCommandId5 = [equalCopy voiceCommandId];
    v12 = [voiceCommandId4 isEqual:voiceCommandId5];

    if (!v12)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[38];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_56:
    v38 = 0;
    goto LABEL_57;
  }

  if (*&has)
  {
    commandStatus = self->_commandStatus;
    if (commandStatus != [equalCopy commandStatus])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_56;
  }

  if (v16)
  {
    commandType = self->_commandType;
    if (commandType != [equalCopy commandType])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_56;
  }

  if (v18)
  {
    commandTargetWordCount = self->_commandTargetWordCount;
    if (commandTargetWordCount != [equalCopy commandTargetWordCount])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_56;
  }

  if (v20)
  {
    commandPayloadWordCount = self->_commandPayloadWordCount;
    if (commandPayloadWordCount != [equalCopy commandPayloadWordCount])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_56;
  }

  if (v22)
  {
    commandTargetCharacterCount = self->_commandTargetCharacterCount;
    if (commandTargetCharacterCount != [equalCopy commandTargetCharacterCount])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_56;
  }

  if (v24)
  {
    commandPayloadCharacterCount = self->_commandPayloadCharacterCount;
    if (commandPayloadCharacterCount != [equalCopy commandPayloadCharacterCount])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v26 = (*&has >> 6) & 1;
  if (v26 != ((v14 >> 6) & 1))
  {
    goto LABEL_56;
  }

  if (v26)
  {
    commandExecutionStartTimeInNs = self->_commandExecutionStartTimeInNs;
    if (commandExecutionStartTimeInNs != [equalCopy commandExecutionStartTimeInNs])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v28 = (*&has >> 7) & 1;
  if (v28 != ((v14 >> 7) & 1))
  {
    goto LABEL_56;
  }

  if (v28)
  {
    commandExecutionEndTimeInNs = self->_commandExecutionEndTimeInNs;
    if (commandExecutionEndTimeInNs != [equalCopy commandExecutionEndTimeInNs])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v30 = (*&has >> 8) & 1;
  if (v30 != ((v14 >> 8) & 1))
  {
    goto LABEL_56;
  }

  if (v30)
  {
    hasSpelling = self->_hasSpelling;
    if (hasSpelling != [equalCopy hasSpelling])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v32 = (*&has >> 9) & 1;
  if (v32 != ((v14 >> 9) & 1))
  {
    goto LABEL_56;
  }

  if (v32)
  {
    hasTextSelection = self->_hasTextSelection;
    if (hasTextSelection != [equalCopy hasTextSelection])
    {
      goto LABEL_56;
    }

    has = self->_has;
    v14 = equalCopy[38];
  }

  v34 = (*&has >> 10) & 1;
  if (v34 != ((v14 >> 10) & 1))
  {
    goto LABEL_56;
  }

  if (v34)
  {
    isWfstParseable = self->_isWfstParseable;
    if (isWfstParseable == [equalCopy isWfstParseable])
    {
      has = self->_has;
      v14 = equalCopy[38];
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_52:
  v36 = (*&has >> 11) & 1;
  if (v36 != ((v14 >> 11) & 1))
  {
    goto LABEL_56;
  }

  if (v36)
  {
    hasAdjacentEdit = self->_hasAdjacentEdit;
    if (hasAdjacentEdit != [equalCopy hasAdjacentEdit])
    {
      goto LABEL_56;
    }
  }

  v38 = 1;
LABEL_57:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceCommandId = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];

  if (voiceCommandId)
  {
    voiceCommandId2 = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_15:
    if ((has & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_16:
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }

LABEL_17:
}

- (void)setHasHasAdjacentEdit:(BOOL)edit
{
  if (edit)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsWfstParseable:(BOOL)parseable
{
  if (parseable)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasHasTextSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasHasSpelling:(BOOL)spelling
{
  if (spelling)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCommandExecutionEndTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCommandExecutionStartTimeInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCommandPayloadCharacterCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCommandTargetCharacterCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCommandPayloadWordCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCommandTargetWordCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCommandType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationVoiceCommandExecuted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUEIDictationVoiceCommandExecuted *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUEIDictationVoiceCommandExecuted *)self deleteVoiceCommandId];
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