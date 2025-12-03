@interface GATSchemaGATRequestContext
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATRequestCanceled)canceled;
- (GATSchemaGATRequestContext)initWithDictionary:(id)dictionary;
- (GATSchemaGATRequestContext)initWithJSON:(id)n;
- (GATSchemaGATRequestEnded)ended;
- (GATSchemaGATRequestFailed)failed;
- (GATSchemaGATRequestHandoff)handoff;
- (GATSchemaGATRequestStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCanceled;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteHandoff;
- (void)deleteStartedOrChanged;
- (void)setCanceled:(id)canceled;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setHandoff:(id)handoff;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATRequestContext

- (GATSchemaGATRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = GATSchemaGATRequestContext;
  v5 = [(GATSchemaGATRequestContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATRequestStarted alloc] initWithDictionary:v6];
      [(GATSchemaGATRequestContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATRequestEnded alloc] initWithDictionary:v8];
      [(GATSchemaGATRequestContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATRequestFailed alloc] initWithDictionary:v10];
      [(GATSchemaGATRequestContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"canceled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GATSchemaGATRequestCanceled alloc] initWithDictionary:v12];
      [(GATSchemaGATRequestContext *)v5 setCanceled:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"handoff"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[GATSchemaGATRequestHandoff alloc] initWithDictionary:v14];
      [(GATSchemaGATRequestContext *)v5 setHandoff:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATRequestContext *)self dictionaryRepresentation];
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
  if (self->_canceled)
  {
    canceled = [(GATSchemaGATRequestContext *)self canceled];
    dictionaryRepresentation = [canceled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"canceled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"canceled"];
    }
  }

  if (self->_ended)
  {
    ended = [(GATSchemaGATRequestContext *)self ended];
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
    failed = [(GATSchemaGATRequestContext *)self failed];
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

  if (self->_handoff)
  {
    handoff = [(GATSchemaGATRequestContext *)self handoff];
    dictionaryRepresentation4 = [handoff dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"handoff"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"handoff"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(GATSchemaGATRequestContext *)self startedOrChanged];
    dictionaryRepresentation5 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GATSchemaGATRequestStarted *)self->_startedOrChanged hash];
  v4 = [(GATSchemaGATRequestEnded *)self->_ended hash]^ v3;
  v5 = [(GATSchemaGATRequestFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(GATSchemaGATRequestCanceled *)self->_canceled hash];
  return v6 ^ [(GATSchemaGATRequestHandoff *)self->_handoff hash];
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

  startedOrChanged = [(GATSchemaGATRequestContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged3 = [(GATSchemaGATRequestContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(GATSchemaGATRequestContext *)self startedOrChanged];
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

  startedOrChanged = [(GATSchemaGATRequestContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(GATSchemaGATRequestContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(GATSchemaGATRequestContext *)self ended];
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

  startedOrChanged = [(GATSchemaGATRequestContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(GATSchemaGATRequestContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(GATSchemaGATRequestContext *)self failed];
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

  startedOrChanged = [(GATSchemaGATRequestContext *)self canceled];
  startedOrChanged2 = [equalCopy canceled];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  canceled = [(GATSchemaGATRequestContext *)self canceled];
  if (canceled)
  {
    v24 = canceled;
    canceled2 = [(GATSchemaGATRequestContext *)self canceled];
    canceled3 = [equalCopy canceled];
    v27 = [canceled2 isEqual:canceled3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(GATSchemaGATRequestContext *)self handoff];
  startedOrChanged2 = [equalCopy handoff];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    handoff = [(GATSchemaGATRequestContext *)self handoff];
    if (!handoff)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = handoff;
    handoff2 = [(GATSchemaGATRequestContext *)self handoff];
    handoff3 = [equalCopy handoff];
    v32 = [handoff2 isEqual:handoff3];

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
  startedOrChanged = [(GATSchemaGATRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(GATSchemaGATRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(GATSchemaGATRequestContext *)self ended];

  if (ended)
  {
    ended2 = [(GATSchemaGATRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(GATSchemaGATRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(GATSchemaGATRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  canceled = [(GATSchemaGATRequestContext *)self canceled];

  if (canceled)
  {
    canceled2 = [(GATSchemaGATRequestContext *)self canceled];
    PBDataWriterWriteSubmessage();
  }

  handoff = [(GATSchemaGATRequestContext *)self handoff];

  v13 = toCopy;
  if (handoff)
  {
    handoff2 = [(GATSchemaGATRequestContext *)self handoff];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteHandoff
{
  if (self->_whichContextevent == 5)
  {
    self->_whichContextevent = 0;
    self->_handoff = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestHandoff)handoff
{
  if (self->_whichContextevent == 5)
  {
    v3 = self->_handoff;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHandoff:(id)handoff
{
  handoffCopy = handoff;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  canceled = self->_canceled;
  self->_canceled = 0;

  v9 = 5;
  if (!handoffCopy)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
  handoff = self->_handoff;
  self->_handoff = handoffCopy;
}

- (void)deleteCanceled
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_canceled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestCanceled)canceled
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_canceled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCanceled:(id)canceled
{
  canceledCopy = canceled;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  self->_whichContextevent = 4 * (canceledCopy != 0);
  canceled = self->_canceled;
  self->_canceled = canceledCopy;
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

- (GATSchemaGATRequestFailed)failed
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  v9 = 3;
  if (!failedCopy)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
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

- (GATSchemaGATRequestEnded)ended
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

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

- (GATSchemaGATRequestStarted)startedOrChanged
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

  canceled = self->_canceled;
  self->_canceled = 0;

  handoff = self->_handoff;
  self->_handoff = 0;

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = GATSchemaGATRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(GATSchemaGATRequestContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GATSchemaGATRequestContext *)self deleteStartedOrChanged];
  }

  ended = [(GATSchemaGATRequestContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GATSchemaGATRequestContext *)self deleteEnded];
  }

  failed = [(GATSchemaGATRequestContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GATSchemaGATRequestContext *)self deleteFailed];
  }

  canceled = [(GATSchemaGATRequestContext *)self canceled];
  v16 = [canceled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(GATSchemaGATRequestContext *)self deleteCanceled];
  }

  handoff = [(GATSchemaGATRequestContext *)self handoff];
  v19 = [handoff applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(GATSchemaGATRequestContext *)self deleteHandoff];
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