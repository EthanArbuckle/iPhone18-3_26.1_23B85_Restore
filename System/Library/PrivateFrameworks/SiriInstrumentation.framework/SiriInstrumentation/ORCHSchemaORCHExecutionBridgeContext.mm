@interface ORCHSchemaORCHExecutionBridgeContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHExecutionBridgeContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHExecutionBridgeContext)initWithJSON:(id)n;
- (ORCHSchemaORCHExecutionEnded)ended;
- (ORCHSchemaORCHExecutionFailed)failed;
- (ORCHSchemaORCHExecutionRequestReceived)startedOrChanged;
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

@implementation ORCHSchemaORCHExecutionBridgeContext

- (ORCHSchemaORCHExecutionRequestReceived)startedOrChanged
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

- (ORCHSchemaORCHExecutionEnded)ended
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

- (ORCHSchemaORCHExecutionFailed)failed
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

- (ORCHSchemaORCHExecutionBridgeContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHExecutionBridgeContext;
  v5 = [(ORCHSchemaORCHExecutionBridgeContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHExecutionRequestReceived alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHExecutionBridgeContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHExecutionEnded alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHExecutionBridgeContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHExecutionFailed alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHExecutionBridgeContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHExecutionBridgeContext *)v5 setTrpId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHExecutionBridgeContext *)v5 setSubRequestId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHExecutionBridgeContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHExecutionBridgeContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHExecutionBridgeContext *)self dictionaryRepresentation];
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
    ended = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
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
    failed = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
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
    subRequestId = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
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

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
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
  v3 = [(ORCHSchemaORCHExecutionRequestReceived *)self->_startedOrChanged hash];
  v4 = [(ORCHSchemaORCHExecutionEnded *)self->_ended hash]^ v3;
  v5 = [(ORCHSchemaORCHExecutionFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ [(SISchemaUUID *)self->_subRequestId hash];
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

  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged3 = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
  startedOrChanged2 = [equalCopy trpId];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  trpId = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
  if (trpId)
  {
    v24 = trpId;
    trpId2 = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
    trpId3 = [equalCopy trpId];
    v27 = [trpId2 isEqual:trpId3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
  startedOrChanged2 = [equalCopy subRequestId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    subRequestId = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
    if (!subRequestId)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = subRequestId;
    subRequestId2 = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v32 = [subRequestId2 isEqual:subRequestId3];

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
  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];

  v13 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
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
  v22.receiver = self;
  v22.super_class = ORCHSchemaORCHExecutionBridgeContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(ORCHSchemaORCHExecutionBridgeContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHExecutionBridgeContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHExecutionBridgeContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHExecutionBridgeContext *)self deleteEnded];
  }

  failed = [(ORCHSchemaORCHExecutionBridgeContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHExecutionBridgeContext *)self deleteFailed];
  }

  trpId = [(ORCHSchemaORCHExecutionBridgeContext *)self trpId];
  v16 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHExecutionBridgeContext *)self deleteTrpId];
  }

  subRequestId = [(ORCHSchemaORCHExecutionBridgeContext *)self subRequestId];
  v19 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHExecutionBridgeContext *)self deleteSubRequestId];
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