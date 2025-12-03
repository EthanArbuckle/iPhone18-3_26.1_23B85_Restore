@interface TTSSchemaTTSVoiceFallbackOccurred
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSVoiceFallbackOccurred)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSVoiceFallbackOccurred)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSVoiceFallbackOccurred

- (TTSSchemaTTSVoiceFallbackOccurred)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = TTSSchemaTTSVoiceFallbackOccurred;
  v5 = [(TTSSchemaTTSVoiceFallbackOccurred *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVoiceSettings alloc] initWithDictionary:v6];
      [(TTSSchemaTTSVoiceFallbackOccurred *)v5 setVoiceSettings:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSVoiceContext alloc] initWithDictionary:v8];
      [(TTSSchemaTTSVoiceFallbackOccurred *)v5 setContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(TTSSchemaTTSVoiceFallbackOccurred *)v5 setContextId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (TTSSchemaTTSVoiceFallbackOccurred)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSVoiceFallbackOccurred *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSVoiceFallbackOccurred *)self dictionaryRepresentation];
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
  if (self->_context)
  {
    context = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
    dictionaryRepresentation = [context dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"context"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"context"];
    }
  }

  if (self->_contextId)
  {
    contextId = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
    dictionaryRepresentation2 = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contextId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_voiceSettings)
  {
    voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
    dictionaryRepresentation3 = [voiceSettings dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaVoiceSettings *)self->_voiceSettings hash];
  v4 = [(TTSSchemaTTSVoiceContext *)self->_context hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_contextId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
  voiceSettings2 = [equalCopy voiceSettings];
  if ((voiceSettings != 0) == (voiceSettings2 == 0))
  {
    goto LABEL_16;
  }

  voiceSettings3 = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
  if (voiceSettings3)
  {
    v8 = voiceSettings3;
    voiceSettings4 = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
    voiceSettings5 = [equalCopy voiceSettings];
    v11 = [voiceSettings4 isEqual:voiceSettings5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
  voiceSettings2 = [equalCopy context];
  if ((voiceSettings != 0) == (voiceSettings2 == 0))
  {
    goto LABEL_16;
  }

  context = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
  if (context)
  {
    v13 = context;
    context2 = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
    context3 = [equalCopy context];
    v16 = [context2 isEqual:context3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
  voiceSettings2 = [equalCopy contextId];
  if ((voiceSettings != 0) != (voiceSettings2 == 0))
  {
    contextId = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
    if (!contextId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = contextId;
    contextId2 = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
    contextId3 = [equalCopy contextId];
    v21 = [contextId2 isEqual:contextId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];

  if (voiceSettings)
  {
    voiceSettings2 = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
    PBDataWriterWriteSubmessage();
  }

  context = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];

  if (context)
  {
    context2 = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
    PBDataWriterWriteSubmessage();
  }

  contextId = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];

  v9 = toCopy;
  if (contextId)
  {
    contextId2 = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = TTSSchemaTTSVoiceFallbackOccurred;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  voiceSettings = [(TTSSchemaTTSVoiceFallbackOccurred *)self voiceSettings];
  v7 = [voiceSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSVoiceFallbackOccurred *)self deleteVoiceSettings];
  }

  context = [(TTSSchemaTTSVoiceFallbackOccurred *)self context];
  v10 = [context applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSVoiceFallbackOccurred *)self deleteContext];
  }

  contextId = [(TTSSchemaTTSVoiceFallbackOccurred *)self contextId];
  v13 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTSSchemaTTSVoiceFallbackOccurred *)self deleteContextId];
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