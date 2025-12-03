@interface ORCHSchemaORCHShimToolContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHShimToolContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHShimToolContext)initWithJSON:(id)n;
- (ORCHSchemaORCHShimToolEnded)ended;
- (ORCHSchemaORCHShimToolFailed)failed;
- (ORCHSchemaORCHShimToolStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHShimToolContext

- (ORCHSchemaORCHShimToolContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHShimToolContext;
  v5 = [(ORCHSchemaORCHShimToolContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHShimToolContext *)v5 setClientTraceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHShimToolContext *)v5 setSubRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHShimToolStarted alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHShimToolContext *)v5 setStartedOrChanged:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHShimToolFailed alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHShimToolContext *)v5 setFailed:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ORCHSchemaORCHShimToolEnded alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHShimToolContext *)v5 setEnded:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHShimToolContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHShimToolContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHShimToolContext *)self dictionaryRepresentation];
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
  if (self->_clientTraceId)
  {
    clientTraceId = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_ended)
  {
    ended = [(ORCHSchemaORCHShimToolContext *)self ended];
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
    failed = [(ORCHSchemaORCHShimToolContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
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

  if (self->_subRequestId)
  {
    subRequestId = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
    dictionaryRepresentation5 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientTraceId hash];
  v4 = [(SISchemaUUID *)self->_subRequestId hash]^ v3;
  v5 = [(ORCHSchemaORCHShimToolStarted *)self->_startedOrChanged hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHShimToolFailed *)self->_failed hash];
  return v6 ^ [(ORCHSchemaORCHShimToolEnded *)self->_ended hash];
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

  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
  clientTraceId2 = [equalCopy clientTraceId];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
    goto LABEL_27;
  }

  clientTraceId3 = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
  if (clientTraceId3)
  {
    v9 = clientTraceId3;
    clientTraceId4 = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
    clientTraceId5 = [equalCopy clientTraceId];
    v12 = [clientTraceId4 isEqual:clientTraceId5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
  clientTraceId2 = [equalCopy subRequestId];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
    goto LABEL_27;
  }

  subRequestId = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
  if (subRequestId)
  {
    v14 = subRequestId;
    subRequestId2 = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v17 = [subRequestId2 isEqual:subRequestId3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
  clientTraceId2 = [equalCopy startedOrChanged];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v19 = startedOrChanged;
    startedOrChanged2 = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v22 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self failed];
  clientTraceId2 = [equalCopy failed];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(ORCHSchemaORCHShimToolContext *)self failed];
  if (failed)
  {
    v24 = failed;
    failed2 = [(ORCHSchemaORCHShimToolContext *)self failed];
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

  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self ended];
  clientTraceId2 = [equalCopy ended];
  if ((clientTraceId != 0) != (clientTraceId2 == 0))
  {
    ended = [(ORCHSchemaORCHShimToolContext *)self ended];
    if (!ended)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = ended;
    ended2 = [(ORCHSchemaORCHShimToolContext *)self ended];
    ended3 = [equalCopy ended];
    v32 = [ended2 isEqual:ended3];

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
  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];

  if (clientTraceId)
  {
    clientTraceId2 = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(ORCHSchemaORCHShimToolContext *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHShimToolContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHShimToolContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHShimToolContext *)self ended];

  v13 = toCopy;
  if (ended)
  {
    ended2 = [(ORCHSchemaORCHShimToolContext *)self ended];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHShimToolEnded)ended
{
  if (self->_whichContextevent == 103)
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

  v7 = 103;
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
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHShimToolFailed)failed
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

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHShimToolStarted)startedOrChanged
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
  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

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
  v22.receiver = self;
  v22.super_class = ORCHSchemaORCHShimToolContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  clientTraceId = [(ORCHSchemaORCHShimToolContext *)self clientTraceId];
  v7 = [clientTraceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHShimToolContext *)self deleteClientTraceId];
  }

  subRequestId = [(ORCHSchemaORCHShimToolContext *)self subRequestId];
  v10 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHShimToolContext *)self deleteSubRequestId];
  }

  startedOrChanged = [(ORCHSchemaORCHShimToolContext *)self startedOrChanged];
  v13 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHShimToolContext *)self deleteStartedOrChanged];
  }

  failed = [(ORCHSchemaORCHShimToolContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHShimToolContext *)self deleteFailed];
  }

  ended = [(ORCHSchemaORCHShimToolContext *)self ended];
  v19 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHShimToolContext *)self deleteEnded];
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