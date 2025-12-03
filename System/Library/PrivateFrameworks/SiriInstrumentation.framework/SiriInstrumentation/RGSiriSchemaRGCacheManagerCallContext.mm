@interface RGSiriSchemaRGCacheManagerCallContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGCacheManagerCallContext)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGCacheManagerCallContext)initWithJSON:(id)n;
- (RGSiriSchemaRGCacheManagerCallEnded)ended;
- (RGSiriSchemaRGCacheManagerCallFailed)failed;
- (RGSiriSchemaRGCacheManagerCallStarted)startedOrChanged;
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

@implementation RGSiriSchemaRGCacheManagerCallContext

- (RGSiriSchemaRGCacheManagerCallContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = RGSiriSchemaRGCacheManagerCallContext;
  v5 = [(RGSiriSchemaRGCacheManagerCallContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RGSiriSchemaRGCacheManagerCallStarted alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGCacheManagerCallContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RGSiriSchemaRGCacheManagerCallEnded alloc] initWithDictionary:v8];
      [(RGSiriSchemaRGCacheManagerCallContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RGSiriSchemaRGCacheManagerCallFailed alloc] initWithDictionary:v10];
      [(RGSiriSchemaRGCacheManagerCallContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(RGSiriSchemaRGCacheManagerCallContext *)v5 setTraceId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGCacheManagerCallContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGCacheManagerCallContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGCacheManagerCallContext *)self dictionaryRepresentation];
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
    ended = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
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
    failed = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
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
    startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
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
    traceId = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RGSiriSchemaRGCacheManagerCallStarted *)self->_startedOrChanged hash];
  v4 = [(RGSiriSchemaRGCacheManagerCallEnded *)self->_ended hash]^ v3;
  v5 = [(RGSiriSchemaRGCacheManagerCallFailed *)self->_failed hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_traceId hash];
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

  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged3 = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
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

  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
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

  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
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

  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
  startedOrChanged2 = [equalCopy traceId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    traceId = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
    if (!traceId)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = traceId;
    traceId2 = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
    traceId3 = [equalCopy traceId];
    v27 = [traceId2 isEqual:traceId3];

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
  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];

  if (ended)
  {
    ended2 = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];

  if (failed)
  {
    failed2 = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  traceId = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];

  v11 = toCopy;
  if (traceId)
  {
    traceId2 = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (RGSiriSchemaRGCacheManagerCallFailed)failed
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

- (RGSiriSchemaRGCacheManagerCallEnded)ended
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

- (RGSiriSchemaRGCacheManagerCallStarted)startedOrChanged
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

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = RGSiriSchemaRGCacheManagerCallContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(RGSiriSchemaRGCacheManagerCallContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RGSiriSchemaRGCacheManagerCallContext *)self deleteStartedOrChanged];
  }

  ended = [(RGSiriSchemaRGCacheManagerCallContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RGSiriSchemaRGCacheManagerCallContext *)self deleteEnded];
  }

  failed = [(RGSiriSchemaRGCacheManagerCallContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RGSiriSchemaRGCacheManagerCallContext *)self deleteFailed];
  }

  traceId = [(RGSiriSchemaRGCacheManagerCallContext *)self traceId];
  v16 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RGSiriSchemaRGCacheManagerCallContext *)self deleteTraceId];
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