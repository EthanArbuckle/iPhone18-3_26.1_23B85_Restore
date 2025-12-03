@interface SISchemaUEIDictationVoiceCommandDisambiguationAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDisambiguationIndex:(BOOL)index;
- (void)setHasTotalDisambiguationAlternatives:(BOOL)alternatives;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationVoiceCommandDisambiguationAction

- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaUEIDictationVoiceCommandDisambiguationAction;
  v5 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)v5 setVoiceCommandId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setDisambiguationType:](v5, "setDisambiguationType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setDisambiguationIndex:](v5, "setDisambiguationIndex:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"totalDisambiguationAlternatives"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setTotalDisambiguationAlternatives:](v5, "setTotalDisambiguationAlternatives:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandDisambiguationAction disambiguationIndex](self, "disambiguationIndex")}];
    [dictionary setObject:v8 forKeyedSubscript:@"disambiguationIndex"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  disambiguationType = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self disambiguationType];
  v10 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_UNKNOWN";
  if (disambiguationType == 1)
  {
    v10 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_TAP";
  }

  if (disambiguationType == 2)
  {
    v11 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_GAZE";
  }

  else
  {
    v11 = v10;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"disambiguationType"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandDisambiguationAction totalDisambiguationAlternatives](self, "totalDisambiguationAlternatives")}];
    [dictionary setObject:v5 forKeyedSubscript:@"totalDisambiguationAlternatives"];
  }

LABEL_5:
  if (self->_voiceCommandId)
  {
    voiceCommandId = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
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
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_disambiguationType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_disambiguationIndex;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_totalDisambiguationAlternatives;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  voiceCommandId = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
  voiceCommandId2 = [equalCopy voiceCommandId];
  v7 = voiceCommandId2;
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {

    goto LABEL_20;
  }

  voiceCommandId3 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
  if (voiceCommandId3)
  {
    v9 = voiceCommandId3;
    voiceCommandId4 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
    voiceCommandId5 = [equalCopy voiceCommandId];
    v12 = [voiceCommandId4 isEqual:voiceCommandId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    disambiguationType = self->_disambiguationType;
    if (disambiguationType != [equalCopy disambiguationType])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    disambiguationIndex = self->_disambiguationIndex;
    if (disambiguationIndex == [equalCopy disambiguationIndex])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    totalDisambiguationAlternatives = self->_totalDisambiguationAlternatives;
    if (totalDisambiguationAlternatives != [equalCopy totalDisambiguationAlternatives])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceCommandId = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];

  if (voiceCommandId)
  {
    voiceCommandId2 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
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
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasTotalDisambiguationAlternatives:(BOOL)alternatives
{
  if (alternatives)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDisambiguationIndex:(BOOL)index
{
  if (index)
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
  v9.super_class = SISchemaUEIDictationVoiceCommandDisambiguationAction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self deleteVoiceCommandId];
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