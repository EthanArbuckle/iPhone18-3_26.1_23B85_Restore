@interface SISchemaUEIDictationVoiceCommandUndoTapAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationVoiceCommandUndoTapAction

- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaUEIDictationVoiceCommandUndoTapAction;
  v5 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandUndoTapAction *)v5 setVoiceCommandId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isUndoTapAlternativeSelection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandUndoTapAction setIsUndoTapAlternativeSelection:](v5, "setIsUndoTapAlternativeSelection:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self dictionaryRepresentation];
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
  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandUndoTapAction isUndoTapAlternativeSelection](self, "isUndoTapAlternativeSelection")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isUndoTapAlternativeSelection"];
  }

  if (self->_voiceCommandId)
  {
    voiceCommandId = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
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
  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    v4 = 2654435761 * self->_isUndoTapAlternativeSelection;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  voiceCommandId = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
  voiceCommandId2 = [equalCopy voiceCommandId];
  v7 = voiceCommandId2;
  if ((voiceCommandId != 0) == (voiceCommandId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  voiceCommandId3 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
  if (voiceCommandId3)
  {
    v9 = voiceCommandId3;
    voiceCommandId4 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
    voiceCommandId5 = [equalCopy voiceCommandId];
    v12 = [voiceCommandId4 isEqual:voiceCommandId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    isUndoTapAlternativeSelection = self->_isUndoTapAlternativeSelection;
    if (isUndoTapAlternativeSelection != [equalCopy isUndoTapAlternativeSelection])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceCommandId = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];

  if (voiceCommandId)
  {
    voiceCommandId2 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationVoiceCommandUndoTapAction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self deleteVoiceCommandId];
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