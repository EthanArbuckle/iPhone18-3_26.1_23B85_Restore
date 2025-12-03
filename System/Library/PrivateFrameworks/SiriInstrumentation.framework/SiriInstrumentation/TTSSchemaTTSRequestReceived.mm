@interface TTSSchemaTTSRequestReceived
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSRequestReceived)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSRequestReceived)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSRequestReceived

- (TTSSchemaTTSRequestReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = TTSSchemaTTSRequestReceived;
  v5 = [(TTSSchemaTTSRequestReceived *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTSSchemaTTSRequestReceived *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestedVoiceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSVoiceContext alloc] initWithDictionary:v8];
      [(TTSSchemaTTSRequestReceived *)v5 setRequestedVoiceContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"inputTextLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSRequestReceived setInputTextLength:](v5, "setInputTextLength:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(TTSSchemaTTSRequestReceived *)v5 setContextId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (TTSSchemaTTSRequestReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSRequestReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSRequestReceived *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    contextId = [(TTSSchemaTTSRequestReceived *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[TTSSchemaTTSRequestReceived inputTextLength](self, "inputTextLength")}];
    [dictionary setObject:v7 forKeyedSubscript:@"inputTextLength"];
  }

  if (self->_linkId)
  {
    linkId = [(TTSSchemaTTSRequestReceived *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_requestedVoiceContext)
  {
    requestedVoiceContext = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
    dictionaryRepresentation3 = [requestedVoiceContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"requestedVoiceContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"requestedVoiceContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(TTSSchemaTTSVoiceContext *)self->_requestedVoiceContext hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_inputTextLength;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_contextId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  linkId = [(TTSSchemaTTSRequestReceived *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_19;
  }

  linkId3 = [(TTSSchemaTTSRequestReceived *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(TTSSchemaTTSRequestReceived *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  linkId = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
  linkId2 = [equalCopy requestedVoiceContext];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_19;
  }

  requestedVoiceContext = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
  if (requestedVoiceContext)
  {
    v13 = requestedVoiceContext;
    requestedVoiceContext2 = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
    requestedVoiceContext3 = [equalCopy requestedVoiceContext];
    v16 = [requestedVoiceContext2 isEqual:requestedVoiceContext3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    inputTextLength = self->_inputTextLength;
    if (inputTextLength != [equalCopy inputTextLength])
    {
      goto LABEL_20;
    }
  }

  linkId = [(TTSSchemaTTSRequestReceived *)self contextId];
  linkId2 = [equalCopy contextId];
  if ((linkId != 0) != (linkId2 == 0))
  {
    contextId = [(TTSSchemaTTSRequestReceived *)self contextId];
    if (!contextId)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = contextId;
    contextId2 = [(TTSSchemaTTSRequestReceived *)self contextId];
    contextId3 = [equalCopy contextId];
    v22 = [contextId2 isEqual:contextId3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(TTSSchemaTTSRequestReceived *)self linkId];

  if (linkId)
  {
    linkId2 = [(TTSSchemaTTSRequestReceived *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  requestedVoiceContext = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];

  if (requestedVoiceContext)
  {
    requestedVoiceContext2 = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  contextId = [(TTSSchemaTTSRequestReceived *)self contextId];

  v9 = toCopy;
  if (contextId)
  {
    contextId2 = [(TTSSchemaTTSRequestReceived *)self contextId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = TTSSchemaTTSRequestReceived;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(TTSSchemaTTSRequestReceived *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSRequestReceived *)self deleteLinkId];
  }

  requestedVoiceContext = [(TTSSchemaTTSRequestReceived *)self requestedVoiceContext];
  v10 = [requestedVoiceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSRequestReceived *)self deleteRequestedVoiceContext];
  }

  contextId = [(TTSSchemaTTSRequestReceived *)self contextId];
  v13 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTSSchemaTTSRequestReceived *)self deleteContextId];
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