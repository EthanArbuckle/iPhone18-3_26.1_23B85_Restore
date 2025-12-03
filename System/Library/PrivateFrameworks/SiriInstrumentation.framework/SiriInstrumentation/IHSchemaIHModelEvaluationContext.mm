@interface IHSchemaIHModelEvaluationContext
- (BOOL)isEqual:(id)equal;
- (IHSchemaIHModelEvaluationContext)initWithDictionary:(id)dictionary;
- (IHSchemaIHModelEvaluationContext)initWithJSON:(id)n;
- (IHSchemaIHModelEvaluationEnded)ended;
- (IHSchemaIHModelEvaluationFailed)failed;
- (IHSchemaIHModelEvaluationStarted)startedOrChanged;
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

@implementation IHSchemaIHModelEvaluationContext

- (IHSchemaIHModelEvaluationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IHSchemaIHModelEvaluationContext;
  v5 = [(IHSchemaIHModelEvaluationContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IHSchemaIHModelEvaluationContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IHSchemaIHModelEvaluationStarted alloc] initWithDictionary:v8];
      [(IHSchemaIHModelEvaluationContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IHSchemaIHModelEvaluationEnded alloc] initWithDictionary:v10];
      [(IHSchemaIHModelEvaluationContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IHSchemaIHModelEvaluationFailed alloc] initWithDictionary:v12];
      [(IHSchemaIHModelEvaluationContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IHSchemaIHModelEvaluationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IHSchemaIHModelEvaluationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IHSchemaIHModelEvaluationContext *)self dictionaryRepresentation];
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
    contextId = [(IHSchemaIHModelEvaluationContext *)self contextId];
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
    ended = [(IHSchemaIHModelEvaluationContext *)self ended];
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
    failed = [(IHSchemaIHModelEvaluationContext *)self failed];
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
    startedOrChanged = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
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
  v4 = [(IHSchemaIHModelEvaluationStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(IHSchemaIHModelEvaluationEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(IHSchemaIHModelEvaluationFailed *)self->_failed hash];
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

  contextId = [(IHSchemaIHModelEvaluationContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  contextId3 = [(IHSchemaIHModelEvaluationContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(IHSchemaIHModelEvaluationContext *)self contextId];
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

  contextId = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
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

  contextId = [(IHSchemaIHModelEvaluationContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(IHSchemaIHModelEvaluationContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(IHSchemaIHModelEvaluationContext *)self ended];
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

  contextId = [(IHSchemaIHModelEvaluationContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) != (contextId2 == 0))
  {
    failed = [(IHSchemaIHModelEvaluationContext *)self failed];
    if (!failed)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = failed;
    failed2 = [(IHSchemaIHModelEvaluationContext *)self failed];
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
  contextId = [(IHSchemaIHModelEvaluationContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(IHSchemaIHModelEvaluationContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(IHSchemaIHModelEvaluationContext *)self ended];

  if (ended)
  {
    ended2 = [(IHSchemaIHModelEvaluationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(IHSchemaIHModelEvaluationContext *)self failed];

  v11 = toCopy;
  if (failed)
  {
    failed2 = [(IHSchemaIHModelEvaluationContext *)self failed];
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

- (IHSchemaIHModelEvaluationFailed)failed
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

- (IHSchemaIHModelEvaluationEnded)ended
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

- (IHSchemaIHModelEvaluationStarted)startedOrChanged
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
  v19.super_class = IHSchemaIHModelEvaluationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(IHSchemaIHModelEvaluationContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IHSchemaIHModelEvaluationContext *)self deleteContextId];
  }

  startedOrChanged = [(IHSchemaIHModelEvaluationContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IHSchemaIHModelEvaluationContext *)self deleteStartedOrChanged];
  }

  ended = [(IHSchemaIHModelEvaluationContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IHSchemaIHModelEvaluationContext *)self deleteEnded];
  }

  failed = [(IHSchemaIHModelEvaluationContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IHSchemaIHModelEvaluationContext *)self deleteFailed];
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