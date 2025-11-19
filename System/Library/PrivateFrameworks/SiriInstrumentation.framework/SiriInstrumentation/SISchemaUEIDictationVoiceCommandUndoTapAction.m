@interface SISchemaUEIDictationVoiceCommandUndoTapAction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithDictionary:(id)a3;
- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEIDictationVoiceCommandUndoTapAction

- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaUEIDictationVoiceCommandUndoTapAction;
  v5 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandUndoTapAction *)v5 setVoiceCommandId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isUndoTapAlternativeSelection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandUndoTapAction setIsUndoTapAlternativeSelection:](v5, "setIsUndoTapAlternativeSelection:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandUndoTapAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self dictionaryRepresentation];
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
  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationVoiceCommandUndoTapAction isUndoTapAlternativeSelection](self, "isUndoTapAlternativeSelection")}];
    [v3 setObject:v4 forKeyedSubscript:@"isUndoTapAlternativeSelection"];
  }

  if (self->_voiceCommandId)
  {
    v5 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"voiceCommandId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"voiceCommandId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
  v6 = [v4 voiceCommandId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
    v11 = [v4 voiceCommandId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    isUndoTapAlternativeSelection = self->_isUndoTapAlternativeSelection;
    if (isUndoTapAlternativeSelection != [v4 isUndoTapAlternativeSelection])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];

  if (v4)
  {
    v5 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isUndoTapAlternativeSelection + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationVoiceCommandUndoTapAction;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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