@interface ORCHSchemaORCHAceCommandContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHAceCommandContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHAceCommandContext)initWithJSON:(id)n;
- (ORCHSchemaORCHAceCommandEnded)ended;
- (ORCHSchemaORCHAceCommandFailed)failed;
- (ORCHSchemaORCHAceCommandStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHAceCommandContext

- (ORCHSchemaORCHAceCommandFailed)failed
{
  if (self->_whichCommandevent == 103)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAceCommandStarted)startedOrChanged
{
  if (self->_whichCommandevent == 101)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAceCommandEnded)ended
{
  if (self->_whichCommandevent == 102)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAceCommandContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHAceCommandContext;
  v5 = [(ORCHSchemaORCHAceCommandContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHAceCommandContext *)v5 setAceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHAceCommandStarted alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHAceCommandContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHAceCommandEnded alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHAceCommandContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHAceCommandFailed alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHAceCommandContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHAceCommandContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHAceCommandContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHAceCommandContext *)self dictionaryRepresentation];
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
  if (self->_aceId)
  {
    aceId = [(ORCHSchemaORCHAceCommandContext *)self aceId];
    dictionaryRepresentation = [aceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aceId"];
    }
  }

  if (self->_ended)
  {
    ended = [(ORCHSchemaORCHAceCommandContext *)self ended];
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
    failed = [(ORCHSchemaORCHAceCommandContext *)self failed];
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
    startedOrChanged = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
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
  v3 = [(SISchemaUUID *)self->_aceId hash];
  v4 = [(ORCHSchemaORCHAceCommandStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ORCHSchemaORCHAceCommandEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(ORCHSchemaORCHAceCommandFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichCommandevent = self->_whichCommandevent;
  if (whichCommandevent != [equalCopy whichCommandevent])
  {
    goto LABEL_23;
  }

  aceId = [(ORCHSchemaORCHAceCommandContext *)self aceId];
  aceId2 = [equalCopy aceId];
  if ((aceId != 0) == (aceId2 == 0))
  {
    goto LABEL_22;
  }

  aceId3 = [(ORCHSchemaORCHAceCommandContext *)self aceId];
  if (aceId3)
  {
    v9 = aceId3;
    aceId4 = [(ORCHSchemaORCHAceCommandContext *)self aceId];
    aceId5 = [equalCopy aceId];
    v12 = [aceId4 isEqual:aceId5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  aceId = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
  aceId2 = [equalCopy startedOrChanged];
  if ((aceId != 0) == (aceId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
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

  aceId = [(ORCHSchemaORCHAceCommandContext *)self ended];
  aceId2 = [equalCopy ended];
  if ((aceId != 0) == (aceId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(ORCHSchemaORCHAceCommandContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(ORCHSchemaORCHAceCommandContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  aceId = [(ORCHSchemaORCHAceCommandContext *)self failed];
  aceId2 = [equalCopy failed];
  if ((aceId != 0) != (aceId2 == 0))
  {
    failed = [(ORCHSchemaORCHAceCommandContext *)self failed];
    if (!failed)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = failed;
    failed2 = [(ORCHSchemaORCHAceCommandContext *)self failed];
    failed3 = [equalCopy failed];
    v27 = [failed2 isEqual:failed3];

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
  aceId = [(ORCHSchemaORCHAceCommandContext *)self aceId];

  if (aceId)
  {
    aceId2 = [(ORCHSchemaORCHAceCommandContext *)self aceId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHAceCommandContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHAceCommandContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ORCHSchemaORCHAceCommandContext *)self failed];

  v11 = toCopy;
  if (failed)
  {
    failed2 = [(ORCHSchemaORCHAceCommandContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichCommandevent == 103)
  {
    self->_whichCommandevent = 0;
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

  v7 = 103;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (self->_whichCommandevent == 102)
  {
    self->_whichCommandevent = 0;
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

  v7 = 102;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichCommandevent == 101)
  {
    self->_whichCommandevent = 0;
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

  v7 = 101;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichCommandevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ORCHSchemaORCHAceCommandContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  aceId = [(ORCHSchemaORCHAceCommandContext *)self aceId];
  v7 = [aceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHAceCommandContext *)self deleteAceId];
  }

  startedOrChanged = [(ORCHSchemaORCHAceCommandContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHAceCommandContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHAceCommandContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHAceCommandContext *)self deleteEnded];
  }

  failed = [(ORCHSchemaORCHAceCommandContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHAceCommandContext *)self deleteFailed];
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