@interface ORCHSchemaORCHNLRouterBridgeSubComponentContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithJSON:(id)n;
- (ORCHSchemaORCHNLRouterBridgeSubComponentEnded)ended;
- (ORCHSchemaORCHNLRouterBridgeSubComponentFailed)failed;
- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHNLRouterBridgeSubComponentContext

- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHNLRouterBridgeSubComponentContext;
  v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setTraceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHNLRouterBridgeSubComponentStarted alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHNLRouterBridgeSubComponentEnded alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHNLRouterBridgeSubComponentFailed alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setFailed:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)v5 setTrpId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    ended = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    failed = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
    dictionaryRepresentation2 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"failed"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
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

  if (self->_traceId)
  {
    traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    dictionaryRepresentation4 = [traceId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"traceId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"traceId"];
    }
  }

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    dictionaryRepresentation5 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_traceId hash];
  v4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ORCHSchemaORCHNLRouterBridgeSubComponentEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHNLRouterBridgeSubComponentFailed *)self->_failed hash];
  return v6 ^ [(SISchemaUUID *)self->_trpId hash];
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

  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  traceId2 = [equalCopy traceId];
  if ((traceId != 0) == (traceId2 == 0))
  {
    goto LABEL_27;
  }

  traceId3 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  if (traceId3)
  {
    v9 = traceId3;
    traceId4 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    traceId5 = [equalCopy traceId];
    v12 = [traceId4 isEqual:traceId5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  traceId2 = [equalCopy startedOrChanged];
  if ((traceId != 0) == (traceId2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
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

  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  traceId2 = [equalCopy ended];
  if ((traceId != 0) == (traceId2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
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

  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  traceId2 = [equalCopy failed];
  if ((traceId != 0) == (traceId2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  if (failed)
  {
    v24 = failed;
    failed2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
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

  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
  traceId2 = [equalCopy trpId];
  if ((traceId != 0) != (traceId2 == 0))
  {
    trpId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    if (!trpId)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = trpId;
    trpId2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
    trpId3 = [equalCopy trpId];
    v32 = [trpId2 isEqual:trpId3];

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
  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];

  if (traceId)
  {
    traceId2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];

  v13 = toCopy;
  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
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

- (ORCHSchemaORCHNLRouterBridgeSubComponentFailed)failed
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

- (ORCHSchemaORCHNLRouterBridgeSubComponentEnded)ended
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

- (ORCHSchemaORCHNLRouterBridgeSubComponentStarted)startedOrChanged
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
  v22.super_class = ORCHSchemaORCHNLRouterBridgeSubComponentContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  traceId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self traceId];
  v7 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteTraceId];
  }

  startedOrChanged = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteEnded];
  }

  failed = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteFailed];
  }

  trpId = [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self trpId];
  v19 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self deleteTrpId];
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