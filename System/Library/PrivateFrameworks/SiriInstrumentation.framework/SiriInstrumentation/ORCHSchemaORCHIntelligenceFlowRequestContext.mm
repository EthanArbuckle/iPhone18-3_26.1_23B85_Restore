@interface ORCHSchemaORCHIntelligenceFlowRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithJSON:(id)n;
- (ORCHSchemaORCHIntelligenceFlowRequestEnded)ended;
- (ORCHSchemaORCHIntelligenceFlowRequestFailed)failed;
- (ORCHSchemaORCHIntelligenceFlowRequestStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHIntelligenceFlowRequestContext

- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ORCHSchemaORCHIntelligenceFlowRequestContext;
  v5 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setTrpId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setSubRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setTraceId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHIntelligenceFlowRequestStarted alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setStartedOrChanged:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ORCHSchemaORCHIntelligenceFlowRequestFailed alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setFailed:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ORCHSchemaORCHIntelligenceFlowRequestEnded alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHIntelligenceFlowRequestContext *)v5 setEnded:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self dictionaryRepresentation];
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
    ended = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
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
    failed = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
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

  if (self->_subRequestId)
  {
    subRequestId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    dictionaryRepresentation4 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_traceId)
  {
    traceId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
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

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
    dictionaryRepresentation6 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_trpId hash];
  v4 = [(SISchemaUUID *)self->_subRequestId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_traceId hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHIntelligenceFlowRequestStarted *)self->_startedOrChanged hash];
  v7 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self->_failed hash];
  return v6 ^ v7 ^ [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)self->_ended hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_33;
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  trpId2 = [equalCopy trpId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_32;
  }

  trpId3 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  if (trpId3)
  {
    v9 = trpId3;
    trpId4 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
    trpId5 = [equalCopy trpId];
    v12 = [trpId4 isEqual:trpId5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  trpId2 = [equalCopy subRequestId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_32;
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  if (subRequestId)
  {
    v14 = subRequestId;
    subRequestId2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v17 = [subRequestId2 isEqual:subRequestId3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  trpId2 = [equalCopy traceId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_32;
  }

  traceId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  if (traceId)
  {
    v19 = traceId;
    traceId2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
    traceId3 = [equalCopy traceId];
    v22 = [traceId2 isEqual:traceId3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  trpId2 = [equalCopy startedOrChanged];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_32;
  }

  startedOrChanged = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v24 = startedOrChanged;
    startedOrChanged2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v27 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  trpId2 = [equalCopy failed];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_32;
  }

  failed = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  if (failed)
  {
    v29 = failed;
    failed2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
    failed3 = [equalCopy failed];
    v32 = [failed2 isEqual:failed3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
  trpId2 = [equalCopy ended];
  if ((trpId != 0) != (trpId2 == 0))
  {
    ended = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    if (!ended)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = ended;
    ended2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    ended3 = [equalCopy ended];
    v37 = [ended2 isEqual:ended3];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  traceId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];

  if (traceId)
  {
    traceId2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];

  v15 = toCopy;
  if (ended)
  {
    ended2 = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 7)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestEnded)ended
{
  if (self->_whichContextevent == 7)
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

  v7 = 7;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 6)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestFailed)failed
{
  if (self->_whichContextevent == 6)
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

  v7 = 6;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 5)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHIntelligenceFlowRequestStarted)startedOrChanged
{
  if (self->_whichContextevent == 5)
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
  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 5;
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
  v25.receiver = self;
  v25.super_class = ORCHSchemaORCHIntelligenceFlowRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  trpId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self trpId];
  v7 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteTrpId];
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self subRequestId];
  v10 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteSubRequestId];
  }

  traceId = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self traceId];
  v13 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteTraceId];
  }

  startedOrChanged = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self startedOrChanged];
  v16 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteStartedOrChanged];
  }

  failed = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self failed];
  v19 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteFailed];
  }

  ended = [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self ended];
  v22 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self deleteEnded];
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