@interface NLXSchemaCDMSpanMatcherContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSpanMatcherContext)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSpanMatcherContext)initWithJSON:(id)n;
- (NLXSchemaCDMSpanMatcherEnded)ended;
- (NLXSchemaCDMSpanMatcherStarted)startedOrChanged;
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

@implementation NLXSchemaCDMSpanMatcherContext

- (NLXSchemaCDMSpanMatcherContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NLXSchemaCDMSpanMatcherContext;
  v5 = [(NLXSchemaCDMSpanMatcherContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSpanMatcherContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaCDMSpanMatcherStarted alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSpanMatcherContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMSpanMatcherEnded alloc] initWithDictionary:v10];
      [(NLXSchemaCDMSpanMatcherContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSpanMatcherContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSpanMatcherContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSpanMatcherContext *)self dictionaryRepresentation];
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
    contextId = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
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
    ended = [(NLXSchemaCDMSpanMatcherContext *)self ended];
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
    startedOrChanged = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
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
  v4 = [(NLXSchemaCDMSpanMatcherStarted *)self->_startedOrChanged hash]^ v3;
  return v4 ^ [(NLXSchemaCDMSpanMatcherEnded *)self->_ended hash];
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

  contextId = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  contextId3 = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
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

  contextId = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
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

  contextId = [(NLXSchemaCDMSpanMatcherContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) != (contextId2 == 0))
  {
    ended = [(NLXSchemaCDMSpanMatcherContext *)self ended];
    if (!ended)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = ended;
    ended2 = [(NLXSchemaCDMSpanMatcherContext *)self ended];
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
  contextId = [(NLXSchemaCDMSpanMatcherContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(NLXSchemaCDMSpanMatcherContext *)self ended];

  v9 = toCopy;
  if (ended)
  {
    ended2 = [(NLXSchemaCDMSpanMatcherContext *)self ended];
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

- (NLXSchemaCDMSpanMatcherEnded)ended
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

- (NLXSchemaCDMSpanMatcherStarted)startedOrChanged
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
  v16.super_class = NLXSchemaCDMSpanMatcherContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLXSchemaCDMSpanMatcherContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSpanMatcherContext *)self deleteContextId];
  }

  startedOrChanged = [(NLXSchemaCDMSpanMatcherContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSpanMatcherContext *)self deleteStartedOrChanged];
  }

  ended = [(NLXSchemaCDMSpanMatcherContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMSpanMatcherContext *)self deleteEnded];
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