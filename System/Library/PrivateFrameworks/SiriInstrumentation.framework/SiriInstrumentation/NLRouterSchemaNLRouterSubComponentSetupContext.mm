@interface NLRouterSchemaNLRouterSubComponentSetupContext
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentSetupContext)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentSetupContext)initWithJSON:(id)n;
- (NLRouterSchemaNLRouterSubComponentSetupEnded)ended;
- (NLRouterSchemaNLRouterSubComponentSetupFailed)failed;
- (NLRouterSchemaNLRouterSubComponentSetupStarted)startedOrChanged;
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

@implementation NLRouterSchemaNLRouterSubComponentSetupContext

- (NLRouterSchemaNLRouterSubComponentSetupStarted)startedOrChanged
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

- (NLRouterSchemaNLRouterSubComponentSetupEnded)ended
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

- (NLRouterSchemaNLRouterSubComponentSetupFailed)failed
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterSubComponentSetupContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NLRouterSchemaNLRouterSubComponentSetupContext;
  v5 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterSubComponentSetupContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLRouterSchemaNLRouterSubComponentSetupStarted alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterSubComponentSetupContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLRouterSchemaNLRouterSubComponentSetupEnded alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterSubComponentSetupContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLRouterSchemaNLRouterSubComponentSetupFailed alloc] initWithDictionary:v12];
      [(NLRouterSchemaNLRouterSubComponentSetupContext *)v5 setFailed:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(NLRouterSchemaNLRouterSubComponentSetupContext *)v5 setTraceId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentSetupContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self dictionaryRepresentation];
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
    contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
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
    ended = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
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
    failed = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
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
    startedOrChanged = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
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

  if (self->_traceId)
  {
    traceId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
    dictionaryRepresentation5 = [traceId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"traceId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"traceId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NLRouterSchemaNLRouterSubComponentSetupStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(NLRouterSchemaNLRouterSubComponentSetupEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(NLRouterSchemaNLRouterSubComponentSetupFailed *)self->_failed hash];
  return v6 ^ [(SISchemaUUID *)self->_traceId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_28;
  }

  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  contextId3 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
  if (failed)
  {
    v24 = failed;
    failed2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
    failed3 = [equalCopy failed];
    v27 = [failed2 isEqual:failed3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
  contextId2 = [equalCopy traceId];
  if ((contextId != 0) != (contextId2 == 0))
  {
    traceId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
    if (!traceId)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = traceId;
    traceId2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
    traceId3 = [equalCopy traceId];
    v32 = [traceId2 isEqual:traceId3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];

  if (ended)
  {
    ended2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];

  if (failed)
  {
    failed2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  traceId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];

  v13 = toCopy;
  if (traceId)
  {
    traceId2 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 4 * (failedCopy != 0);
  failed = self->_failed;
  self->_failed = failedCopy;
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 3;
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
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (changedCopy != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = NLRouterSchemaNLRouterSubComponentSetupContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupContext *)self deleteContextId];
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupContext *)self deleteStartedOrChanged];
  }

  ended = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupContext *)self deleteEnded];
  }

  failed = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupContext *)self deleteFailed];
  }

  traceId = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self traceId];
  v19 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLRouterSchemaNLRouterSubComponentSetupContext *)self deleteTraceId];
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