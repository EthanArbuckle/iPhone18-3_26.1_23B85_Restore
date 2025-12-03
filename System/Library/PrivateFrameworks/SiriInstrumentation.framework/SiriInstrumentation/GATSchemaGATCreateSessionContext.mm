@interface GATSchemaGATCreateSessionContext
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATCreateSessionContext)initWithDictionary:(id)dictionary;
- (GATSchemaGATCreateSessionContext)initWithJSON:(id)n;
- (GATSchemaGATCreateSessionEventEnded)ended;
- (GATSchemaGATCreateSessionEventFailed)failed;
- (GATSchemaGATCreateSessionEventStarted)startedOrChanged;
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

@implementation GATSchemaGATCreateSessionContext

- (GATSchemaGATCreateSessionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GATSchemaGATCreateSessionContext;
  v5 = [(GATSchemaGATCreateSessionContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATCreateSessionEventStarted alloc] initWithDictionary:v6];
      [(GATSchemaGATCreateSessionContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATCreateSessionEventEnded alloc] initWithDictionary:v8];
      [(GATSchemaGATCreateSessionContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATCreateSessionEventFailed alloc] initWithDictionary:v10];
      [(GATSchemaGATCreateSessionContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GATSchemaGATCreateSessionContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATCreateSessionContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATCreateSessionContext *)self dictionaryRepresentation];
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
    ended = [(GATSchemaGATCreateSessionContext *)self ended];
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
    failed = [(GATSchemaGATCreateSessionContext *)self failed];
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
    startedOrChanged = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GATSchemaGATCreateSessionEventStarted *)self->_startedOrChanged hash];
  v4 = [(GATSchemaGATCreateSessionEventEnded *)self->_ended hash]^ v3;
  return v4 ^ [(GATSchemaGATCreateSessionEventFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContentevent = self->_whichContentevent;
  if (whichContentevent != [equalCopy whichContentevent])
  {
    goto LABEL_18;
  }

  startedOrChanged = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(GATSchemaGATCreateSessionContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(GATSchemaGATCreateSessionContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(GATSchemaGATCreateSessionContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(GATSchemaGATCreateSessionContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    failed = [(GATSchemaGATCreateSessionContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(GATSchemaGATCreateSessionContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  startedOrChanged = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(GATSchemaGATCreateSessionContext *)self ended];

  if (ended)
  {
    ended2 = [(GATSchemaGATCreateSessionContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(GATSchemaGATCreateSessionContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(GATSchemaGATCreateSessionContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContentevent == 3)
  {
    self->_whichContentevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATCreateSessionEventFailed)failed
{
  if (self->_whichContentevent == 3)
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

  self->_whichContentevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (self->_whichContentevent == 2)
  {
    self->_whichContentevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATCreateSessionEventEnded)ended
{
  if (self->_whichContentevent == 2)
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

  self->_whichContentevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContentevent == 1)
  {
    self->_whichContentevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATCreateSessionEventStarted)startedOrChanged
{
  if (self->_whichContentevent == 1)
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

  self->_whichContentevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = GATSchemaGATCreateSessionContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(GATSchemaGATCreateSessionContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GATSchemaGATCreateSessionContext *)self deleteStartedOrChanged];
  }

  ended = [(GATSchemaGATCreateSessionContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GATSchemaGATCreateSessionContext *)self deleteEnded];
  }

  failed = [(GATSchemaGATCreateSessionContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GATSchemaGATCreateSessionContext *)self deleteFailed];
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