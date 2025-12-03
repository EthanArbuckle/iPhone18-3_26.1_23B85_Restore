@interface NLRouterSchemaNLRouterSubComponentHandleContext
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterSubComponentHandleContext)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterSubComponentHandleContext)initWithJSON:(id)n;
- (NLRouterSchemaNLRouterSubComponentHandleEnded)ended;
- (NLRouterSchemaNLRouterSubComponentHandleFailed)failed;
- (NLRouterSchemaNLRouterSubComponentHandleStarted)startedOrChanged;
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

@implementation NLRouterSchemaNLRouterSubComponentHandleContext

- (NLRouterSchemaNLRouterSubComponentHandleContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NLRouterSchemaNLRouterSubComponentHandleContext;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterSubComponentHandleContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLRouterSchemaNLRouterSubComponentHandleStarted alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterSubComponentHandleContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLRouterSchemaNLRouterSubComponentHandleEnded alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterSubComponentHandleContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLRouterSchemaNLRouterSubComponentHandleFailed alloc] initWithDictionary:v12];
      [(NLRouterSchemaNLRouterSubComponentHandleContext *)v5 setFailed:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(NLRouterSchemaNLRouterSubComponentHandleContext *)v5 setTraceId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterSubComponentHandleContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self dictionaryRepresentation];
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
    contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
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
    ended = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
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
    failed = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
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
    startedOrChanged = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
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
    traceId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
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
  v4 = [(NLRouterSchemaNLRouterSubComponentHandleStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(NLRouterSchemaNLRouterSubComponentHandleEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(NLRouterSchemaNLRouterSubComponentHandleFailed *)self->_failed hash];
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

  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  contextId3 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
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

  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
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

  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
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

  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
  if (failed)
  {
    v24 = failed;
    failed2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
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

  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
  contextId2 = [equalCopy traceId];
  if ((contextId != 0) != (contextId2 == 0))
  {
    traceId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
    if (!traceId)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = traceId;
    traceId2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
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
  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];

  if (ended)
  {
    ended2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];

  if (failed)
  {
    failed2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  traceId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];

  v13 = toCopy;
  if (traceId)
  {
    traceId2 = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
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

- (NLRouterSchemaNLRouterSubComponentHandleFailed)failed
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

- (NLRouterSchemaNLRouterSubComponentHandleEnded)ended
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

- (NLRouterSchemaNLRouterSubComponentHandleStarted)startedOrChanged
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
  v22.super_class = NLRouterSchemaNLRouterSubComponentHandleContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleContext *)self deleteContextId];
  }

  startedOrChanged = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleContext *)self deleteStartedOrChanged];
  }

  ended = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleContext *)self deleteEnded];
  }

  failed = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleContext *)self deleteFailed];
  }

  traceId = [(NLRouterSchemaNLRouterSubComponentHandleContext *)self traceId];
  v19 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLRouterSchemaNLRouterSubComponentHandleContext *)self deleteTraceId];
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