@interface INFERENCESchemaINFERENCEResolutionRequestContext
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEResolutionRequestContext)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEResolutionRequestContext)initWithJSON:(id)n;
- (INFERENCESchemaINFERENCEResolutionRequestEnded)ended;
- (INFERENCESchemaINFERENCEResolutionRequestFailed)failed;
- (INFERENCESchemaINFERENCEResolutionRequestStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEResolutionRequestContext

- (INFERENCESchemaINFERENCEResolutionRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCEResolutionRequestContext;
  v5 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEResolutionRequestContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEResolutionRequestStarted alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEResolutionRequestContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEResolutionRequestEnded alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEResolutionRequestContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCEResolutionRequestFailed alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCEResolutionRequestContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEResolutionRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self dictionaryRepresentation];
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
    contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
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

  if (self->_ended)
  {
    ended = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
    dictionaryRepresentation2 = [ended dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ended"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    failed = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
    dictionaryRepresentation3 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"failed"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
    dictionaryRepresentation4 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(INFERENCESchemaINFERENCEResolutionRequestEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(INFERENCESchemaINFERENCEResolutionRequestFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_23;
  }

  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  contextId3 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) != (contextId2 == 0))
  {
    failed = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
    if (!failed)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = failed;
    failed2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
    failed3 = [equalCopy failed];
    v27 = [failed2 isEqual:failed3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];

  if (ended)
  {
    ended2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];

  v11 = toCopy;
  if (failed)
  {
    failed2 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEResolutionRequestFailed)failed
{
  if (self->_whichContextevent == 102)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 102;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEResolutionRequestEnded)ended
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 101;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 100)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEResolutionRequestStarted)startedOrChanged
{
  if (self->_whichContextevent == 100)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 100;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = INFERENCESchemaINFERENCEResolutionRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestContext *)self deleteContextId];
  }

  startedOrChanged = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestContext *)self deleteStartedOrChanged];
  }

  ended = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestContext *)self deleteEnded];
  }

  failed = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestContext *)self deleteFailed];
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