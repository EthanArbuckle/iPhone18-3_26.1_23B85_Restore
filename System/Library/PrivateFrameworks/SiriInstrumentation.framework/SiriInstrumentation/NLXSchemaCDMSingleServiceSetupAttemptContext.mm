@interface NLXSchemaCDMSingleServiceSetupAttemptContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSingleServiceSetupAttemptContext)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSingleServiceSetupAttemptContext)initWithJSON:(id)n;
- (NLXSchemaCDMSingleServiceSetupAttemptEnded)ended;
- (NLXSchemaCDMSingleServiceSetupAttemptStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSingleServiceSetupAttemptContext

- (NLXSchemaCDMSingleServiceSetupAttemptContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NLXSchemaCDMSingleServiceSetupAttemptContext;
  v5 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSingleServiceSetupAttemptContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaCDMSingleServiceSetupAttemptStarted alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSingleServiceSetupAttemptContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMSingleServiceSetupAttemptEnded alloc] initWithDictionary:v10];
      [(NLXSchemaCDMSingleServiceSetupAttemptContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSingleServiceSetupAttemptContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self dictionaryRepresentation];
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
    contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
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
    ended = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
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

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
    dictionaryRepresentation3 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NLXSchemaCDMSingleServiceSetupAttemptStarted *)self->_startedOrChanged hash]^ v3;
  return v4 ^ [(NLXSchemaCDMSingleServiceSetupAttemptEnded *)self->_ended hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  contextId3 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) != (contextId2 == 0))
  {
    ended = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
    if (!ended)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = ended;
    ended2 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];

  v9 = toCopy;
  if (ended)
  {
    ended2 = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSingleServiceSetupAttemptEnded)ended
{
  if (self->_whichContextevent == 3)
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

  v6 = 3;
  if (!endedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSingleServiceSetupAttemptStarted)startedOrChanged
{
  if (self->_whichContextevent == 2)
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

  self->_whichContextevent = 2 * (changedCopy != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMSingleServiceSetupAttemptContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self deleteContextId];
  }

  startedOrChanged = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self deleteStartedOrChanged];
  }

  ended = [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self deleteEnded];
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