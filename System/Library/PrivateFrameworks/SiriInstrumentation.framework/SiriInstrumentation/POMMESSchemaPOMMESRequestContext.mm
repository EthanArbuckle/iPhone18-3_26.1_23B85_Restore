@interface POMMESSchemaPOMMESRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESRequestContext)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESRequestContext)initWithJSON:(id)n;
- (POMMESSchemaPOMMESRequestEnded)ended;
- (POMMESSchemaPOMMESRequestFailed)failed;
- (POMMESSchemaPOMMESRequestStarted)startedOrChanged;
- (POMMESSchemaPOMMESRequestUnableToHandle)cancelled;
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

@implementation POMMESSchemaPOMMESRequestContext

- (POMMESSchemaPOMMESRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = POMMESSchemaPOMMESRequestContext;
  v5 = [(POMMESSchemaPOMMESRequestContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[POMMESSchemaPOMMESRequestStarted alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESRequestContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESRequestEnded alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESRequestContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[POMMESSchemaPOMMESRequestFailed alloc] initWithDictionary:v10];
      [(POMMESSchemaPOMMESRequestContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[POMMESSchemaPOMMESRequestUnableToHandle alloc] initWithDictionary:v12];
      [(POMMESSchemaPOMMESRequestContext *)v5 setCancelled:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESRequestContext *)self dictionaryRepresentation];
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
    cancelled = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
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
    ended = [(POMMESSchemaPOMMESRequestContext *)self ended];
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
    failed = [(POMMESSchemaPOMMESRequestContext *)self failed];
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
    startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
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
  v3 = [(POMMESSchemaPOMMESRequestStarted *)self->_startedOrChanged hash];
  v4 = [(POMMESSchemaPOMMESRequestEnded *)self->_ended hash]^ v3;
  v5 = [(POMMESSchemaPOMMESRequestFailed *)self->_failed hash];
  return v4 ^ v5 ^ [(POMMESSchemaPOMMESRequestUnableToHandle *)self->_cancelled hash];
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

  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged3 = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(POMMESSchemaPOMMESRequestContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(POMMESSchemaPOMMESRequestContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(POMMESSchemaPOMMESRequestContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(POMMESSchemaPOMMESRequestContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
  startedOrChanged2 = [equalCopy cancelled];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    cancelled = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
    if (!cancelled)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = cancelled;
    cancelled2 = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v27 = [cancelled2 isEqual:cancelled3];

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
  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(POMMESSchemaPOMMESRequestContext *)self ended];

  if (ended)
  {
    ended2 = [(POMMESSchemaPOMMESRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(POMMESSchemaPOMMESRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(POMMESSchemaPOMMESRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(POMMESSchemaPOMMESRequestContext *)self cancelled];

  v11 = toCopy;
  if (cancelled)
  {
    cancelled2 = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (POMMESSchemaPOMMESRequestUnableToHandle)cancelled
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

- (POMMESSchemaPOMMESRequestFailed)failed
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

- (POMMESSchemaPOMMESRequestEnded)ended
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

- (POMMESSchemaPOMMESRequestStarted)startedOrChanged
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
  v19.receiver = self;
  v19.super_class = POMMESSchemaPOMMESRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(POMMESSchemaPOMMESRequestContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(POMMESSchemaPOMMESRequestContext *)self deleteStartedOrChanged];
  }

  ended = [(POMMESSchemaPOMMESRequestContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(POMMESSchemaPOMMESRequestContext *)self deleteEnded];
  }

  failed = [(POMMESSchemaPOMMESRequestContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(POMMESSchemaPOMMESRequestContext *)self deleteFailed];
  }

  cancelled = [(POMMESSchemaPOMMESRequestContext *)self cancelled];
  v16 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(POMMESSchemaPOMMESRequestContext *)self deleteCancelled];
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