@interface STSchemaSTHallucinationDetectionContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTHallucinationDetectionContext)initWithDictionary:(id)dictionary;
- (STSchemaSTHallucinationDetectionContext)initWithJSON:(id)n;
- (STSchemaSTHallucinationDetectionEnded)ended;
- (STSchemaSTHallucinationDetectionFailed)failed;
- (STSchemaSTHallucinationDetectionStarted)startedOrChanged;
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

@implementation STSchemaSTHallucinationDetectionContext

- (STSchemaSTHallucinationDetectionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = STSchemaSTHallucinationDetectionContext;
  v5 = [(STSchemaSTHallucinationDetectionContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[STSchemaSTHallucinationDetectionStarted alloc] initWithDictionary:v6];
      [(STSchemaSTHallucinationDetectionContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[STSchemaSTHallucinationDetectionEnded alloc] initWithDictionary:v8];
      [(STSchemaSTHallucinationDetectionContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaSTHallucinationDetectionFailed alloc] initWithDictionary:v10];
      [(STSchemaSTHallucinationDetectionContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(STSchemaSTHallucinationDetectionContext *)v5 setContextId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (STSchemaSTHallucinationDetectionContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTHallucinationDetectionContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTHallucinationDetectionContext *)self dictionaryRepresentation];
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
    contextId = [(STSchemaSTHallucinationDetectionContext *)self contextId];
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
    ended = [(STSchemaSTHallucinationDetectionContext *)self ended];
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
    failed = [(STSchemaSTHallucinationDetectionContext *)self failed];
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
    startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
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
  v3 = [(STSchemaSTHallucinationDetectionStarted *)self->_startedOrChanged hash];
  v4 = [(STSchemaSTHallucinationDetectionEnded *)self->_ended hash]^ v3;
  v5 = [(STSchemaSTHallucinationDetectionFailed *)self->_failed hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_contextId hash];
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

  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged3 = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(STSchemaSTHallucinationDetectionContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(STSchemaSTHallucinationDetectionContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(STSchemaSTHallucinationDetectionContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(STSchemaSTHallucinationDetectionContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self contextId];
  startedOrChanged2 = [equalCopy contextId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    contextId = [(STSchemaSTHallucinationDetectionContext *)self contextId];
    if (!contextId)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = contextId;
    contextId2 = [(STSchemaSTHallucinationDetectionContext *)self contextId];
    contextId3 = [equalCopy contextId];
    v27 = [contextId2 isEqual:contextId3];

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
  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(STSchemaSTHallucinationDetectionContext *)self ended];

  if (ended)
  {
    ended2 = [(STSchemaSTHallucinationDetectionContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(STSchemaSTHallucinationDetectionContext *)self failed];

  if (failed)
  {
    failed2 = [(STSchemaSTHallucinationDetectionContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  contextId = [(STSchemaSTHallucinationDetectionContext *)self contextId];

  v11 = toCopy;
  if (contextId)
  {
    contextId2 = [(STSchemaSTHallucinationDetectionContext *)self contextId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTHallucinationDetectionFailed)failed
{
  if (self->_whichContextevent == 3)
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

  v7 = 3;
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
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTHallucinationDetectionEnded)ended
{
  if (self->_whichContextevent == 2)
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

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTHallucinationDetectionStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
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

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = STSchemaSTHallucinationDetectionContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(STSchemaSTHallucinationDetectionContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTHallucinationDetectionContext *)self deleteStartedOrChanged];
  }

  ended = [(STSchemaSTHallucinationDetectionContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(STSchemaSTHallucinationDetectionContext *)self deleteEnded];
  }

  failed = [(STSchemaSTHallucinationDetectionContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(STSchemaSTHallucinationDetectionContext *)self deleteFailed];
  }

  contextId = [(STSchemaSTHallucinationDetectionContext *)self contextId];
  v16 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(STSchemaSTHallucinationDetectionContext *)self deleteContextId];
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