@interface POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown

- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  v5 = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pommesSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)v5 setPommesSessionId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self dictionaryRepresentation];
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
  if (self->_pommesSessionId)
  {
    pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];
    dictionaryRepresentation = [pommesSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pommesSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pommesSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];
    pommesSessionId2 = [equalCopy pommesSessionId];
    v7 = pommesSessionId2;
    if ((pommesSessionId != 0) != (pommesSessionId2 == 0))
    {
      pommesSessionId3 = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];
      if (!pommesSessionId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = pommesSessionId3;
      pommesSessionId4 = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];
      pommesSessionId5 = [equalCopy pommesSessionId];
      v12 = [pommesSessionId4 isEqual:pommesSessionId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];

  if (pommesSessionId)
  {
    pommesSessionId2 = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self pommesSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self deletePommesSessionId];
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