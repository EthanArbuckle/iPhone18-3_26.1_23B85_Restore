@interface ORCHSchemaORCHPommesBridgeContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHPommesBridgeContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHPommesBridgeContext)initWithJSON:(id)n;
- (ORCHSchemaORCHPommesRequestEnded)ended;
- (ORCHSchemaORCHPommesRequestFailed)failed;
- (ORCHSchemaORCHPommesRequestStarted)startedOrChanged;
- (ORCHSchemaORCHPommesRequestUnableToHandle)cancelled;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCancelled;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setCancelled:(id)cancelled;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHPommesBridgeContext

- (ORCHSchemaORCHPommesBridgeContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ORCHSchemaORCHPommesBridgeContext;
  v5 = [(ORCHSchemaORCHPommesBridgeContext *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHPommesRequestStarted alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHPommesRequestEnded alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHPommesRequestFailed alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHPommesRequestUnableToHandle alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setCancelled:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setTrpId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHPommesBridgeContext *)v5 setSubRequestId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHPommesBridgeContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHPommesBridgeContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHPommesBridgeContext *)self dictionaryRepresentation];
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
  if (self->_cancelled)
  {
    cancelled = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
    dictionaryRepresentation = [cancelled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cancelled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_ended)
  {
    ended = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
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
    failed = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
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
    subRequestId = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
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

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
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
  v3 = [(ORCHSchemaORCHPommesRequestStarted *)self->_startedOrChanged hash];
  v4 = [(ORCHSchemaORCHPommesRequestEnded *)self->_ended hash]^ v3;
  v5 = [(ORCHSchemaORCHPommesRequestFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHPommesRequestUnableToHandle *)self->_cancelled hash];
  v7 = [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
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

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_32;
  }

  startedOrChanged3 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_32;
  }

  ended = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_32;
  }

  failed = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  startedOrChanged2 = [equalCopy cancelled];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_32;
  }

  cancelled = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  if (cancelled)
  {
    v24 = cancelled;
    cancelled2 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v27 = [cancelled2 isEqual:cancelled3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  startedOrChanged2 = [equalCopy trpId];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_32;
  }

  trpId = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  if (trpId)
  {
    v29 = trpId;
    trpId2 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
    trpId3 = [equalCopy trpId];
    v32 = [trpId2 isEqual:trpId3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
  startedOrChanged2 = [equalCopy subRequestId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    subRequestId = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    if (!subRequestId)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = subRequestId;
    subRequestId2 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v37 = [subRequestId2 isEqual:subRequestId3];

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
  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHPommesBridgeContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHPommesBridgeContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];

  if (cancelled)
  {
    cancelled2 = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];

  v15 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHPommesRequestUnableToHandle)cancelled
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 4 * (cancelledCopy != 0);
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
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

- (ORCHSchemaORCHPommesRequestFailed)failed
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

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 3;
  if (!failedCopy)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
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

- (ORCHSchemaORCHPommesRequestEnded)ended
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

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

- (ORCHSchemaORCHPommesRequestStarted)startedOrChanged
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

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = ORCHSchemaORCHPommesBridgeContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(ORCHSchemaORCHPommesBridgeContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHPommesBridgeContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteEnded];
  }

  failed = [(ORCHSchemaORCHPommesBridgeContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteFailed];
  }

  cancelled = [(ORCHSchemaORCHPommesBridgeContext *)self cancelled];
  v16 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteCancelled];
  }

  trpId = [(ORCHSchemaORCHPommesBridgeContext *)self trpId];
  v19 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteTrpId];
  }

  subRequestId = [(ORCHSchemaORCHPommesBridgeContext *)self subRequestId];
  v22 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ORCHSchemaORCHPommesBridgeContext *)self deleteSubRequestId];
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