@interface CLPInstSchemaCLPCurareAppIntentSampleClassificationContext
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)initWithJSON:(id)n;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)ended;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed)failed;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)startedOrChanged;
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

@implementation CLPInstSchemaCLPCurareAppIntentSampleClassificationContext

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPCurareAppIntentSampleClassificationContext;
  v5 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted alloc] initWithDictionary:v8];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded alloc] initWithDictionary:v10];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed alloc] initWithDictionary:v12];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self dictionaryRepresentation];
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
    contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
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
    ended = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
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
    failed = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
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
    startedOrChanged = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
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
  v4 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed *)self->_failed hash];
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

  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  contextId3 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
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

  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
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

  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
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

  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) != (contextId2 == 0))
  {
    failed = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
    if (!failed)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = failed;
    failed2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
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
  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];

  if (ended)
  {
    ended2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];

  v11 = toCopy;
  if (failed)
  {
    failed2 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed)failed
{
  if (self->_whichContextevent == 103)
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

  v7 = 103;
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
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)ended
{
  if (self->_whichContextevent == 102)
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

  v7 = 102;
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
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
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

  v7 = 101;
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
  v19.super_class = CLPInstSchemaCLPCurareAppIntentSampleClassificationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self deleteContextId];
  }

  startedOrChanged = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self deleteStartedOrChanged];
  }

  ended = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self deleteEnded];
  }

  failed = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self deleteFailed];
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