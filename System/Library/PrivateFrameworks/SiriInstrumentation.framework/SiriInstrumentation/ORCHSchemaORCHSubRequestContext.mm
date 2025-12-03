@interface ORCHSchemaORCHSubRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHSubRequestContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHSubRequestContext)initWithJSON:(id)n;
- (ORCHSchemaORCHSubRequestEnded)ended;
- (ORCHSchemaORCHSubRequestFailed)failed;
- (ORCHSchemaORCHSubRequestStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHSubRequestContext

- (ORCHSchemaORCHSubRequestStarted)startedOrChanged
{
  if (self->_whichSubrequestevent == 101)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHSubRequestEnded)ended
{
  if (self->_whichSubrequestevent == 103)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHSubRequestFailed)failed
{
  if (self->_whichSubrequestevent == 102)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHSubRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHSubRequestContext;
  v5 = [(ORCHSchemaORCHSubRequestContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHSubRequestContext *)v5 setSubRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHSubRequestStarted alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHSubRequestContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHSubRequestFailed alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHSubRequestContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHSubRequestEnded alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHSubRequestContext *)v5 setEnded:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHSubRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHSubRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHSubRequestContext *)self dictionaryRepresentation];
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
    ended = [(ORCHSchemaORCHSubRequestContext *)self ended];
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
    failed = [(ORCHSchemaORCHSubRequestContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
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
    subRequestId = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_subRequestId hash];
  v4 = [(ORCHSchemaORCHSubRequestStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ORCHSchemaORCHSubRequestFailed *)self->_failed hash];
  return v4 ^ v5 ^ [(ORCHSchemaORCHSubRequestEnded *)self->_ended hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichSubrequestevent = self->_whichSubrequestevent;
  if (whichSubrequestevent != [equalCopy whichSubrequestevent])
  {
    goto LABEL_23;
  }

  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
  subRequestId2 = [equalCopy subRequestId];
  if ((subRequestId != 0) == (subRequestId2 == 0))
  {
    goto LABEL_22;
  }

  subRequestId3 = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
  if (subRequestId3)
  {
    v9 = subRequestId3;
    subRequestId4 = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
    subRequestId5 = [equalCopy subRequestId];
    v12 = [subRequestId4 isEqual:subRequestId5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
  subRequestId2 = [equalCopy startedOrChanged];
  if ((subRequestId != 0) == (subRequestId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self failed];
  subRequestId2 = [equalCopy failed];
  if ((subRequestId != 0) == (subRequestId2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(ORCHSchemaORCHSubRequestContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(ORCHSchemaORCHSubRequestContext *)self failed];
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

  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self ended];
  subRequestId2 = [equalCopy ended];
  if ((subRequestId != 0) != (subRequestId2 == 0))
  {
    ended = [(ORCHSchemaORCHSubRequestContext *)self ended];
    if (!ended)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = ended;
    ended2 = [(ORCHSchemaORCHSubRequestContext *)self ended];
    ended3 = [equalCopy ended];
    v27 = [ended2 isEqual:ended3];

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
  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHSubRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(ORCHSchemaORCHSubRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHSubRequestContext *)self ended];

  v11 = toCopy;
  if (ended)
  {
    ended2 = [(ORCHSchemaORCHSubRequestContext *)self ended];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichSubrequestevent == 103)
  {
    self->_whichSubrequestevent = 0;
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

  v7 = 103;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichSubrequestevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteFailed
{
  if (self->_whichSubrequestevent == 102)
  {
    self->_whichSubrequestevent = 0;
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

  v7 = 102;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichSubrequestevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichSubrequestevent == 101)
  {
    self->_whichSubrequestevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
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

  self->_whichSubrequestevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ORCHSchemaORCHSubRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  subRequestId = [(ORCHSchemaORCHSubRequestContext *)self subRequestId];
  v7 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHSubRequestContext *)self deleteSubRequestId];
  }

  startedOrChanged = [(ORCHSchemaORCHSubRequestContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHSubRequestContext *)self deleteStartedOrChanged];
  }

  failed = [(ORCHSchemaORCHSubRequestContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHSubRequestContext *)self deleteFailed];
  }

  ended = [(ORCHSchemaORCHSubRequestContext *)self ended];
  v16 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHSubRequestContext *)self deleteEnded];
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