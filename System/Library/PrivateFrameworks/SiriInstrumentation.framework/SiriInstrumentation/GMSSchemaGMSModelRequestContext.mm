@interface GMSSchemaGMSModelRequestContext
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSModelRequestContext)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSModelRequestContext)initWithJSON:(id)n;
- (GMSSchemaGMSModelRequestEnded)ended;
- (GMSSchemaGMSModelRequestFailed)failed;
- (GMSSchemaGMSModelRequestStarted)started;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStarted;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSModelRequestContext

- (GMSSchemaGMSModelRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GMSSchemaGMSModelRequestContext;
  v5 = [(GMSSchemaGMSModelRequestContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GMSSchemaGMSModelRequestStarted alloc] initWithDictionary:v6];
      [(GMSSchemaGMSModelRequestContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GMSSchemaGMSModelRequestEnded alloc] initWithDictionary:v8];
      [(GMSSchemaGMSModelRequestContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GMSSchemaGMSModelRequestFailed alloc] initWithDictionary:v10];
      [(GMSSchemaGMSModelRequestContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GMSSchemaGMSModelRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSModelRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSModelRequestContext *)self dictionaryRepresentation];
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
    ended = [(GMSSchemaGMSModelRequestContext *)self ended];
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
    failed = [(GMSSchemaGMSModelRequestContext *)self failed];
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

  if (self->_started)
  {
    started = [(GMSSchemaGMSModelRequestContext *)self started];
    dictionaryRepresentation3 = [started dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"started"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"started"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GMSSchemaGMSModelRequestStarted *)self->_started hash];
  v4 = [(GMSSchemaGMSModelRequestEnded *)self->_ended hash]^ v3;
  return v4 ^ [(GMSSchemaGMSModelRequestFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  started = [(GMSSchemaGMSModelRequestContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  started3 = [(GMSSchemaGMSModelRequestContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(GMSSchemaGMSModelRequestContext *)self started];
    started5 = [equalCopy started];
    v12 = [started4 isEqual:started5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  started = [(GMSSchemaGMSModelRequestContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(GMSSchemaGMSModelRequestContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(GMSSchemaGMSModelRequestContext *)self ended];
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

  started = [(GMSSchemaGMSModelRequestContext *)self failed];
  started2 = [equalCopy failed];
  if ((started != 0) != (started2 == 0))
  {
    failed = [(GMSSchemaGMSModelRequestContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(GMSSchemaGMSModelRequestContext *)self failed];
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
  started = [(GMSSchemaGMSModelRequestContext *)self started];

  if (started)
  {
    started2 = [(GMSSchemaGMSModelRequestContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  ended = [(GMSSchemaGMSModelRequestContext *)self ended];

  if (ended)
  {
    ended2 = [(GMSSchemaGMSModelRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(GMSSchemaGMSModelRequestContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(GMSSchemaGMSModelRequestContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
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

- (GMSSchemaGMSModelRequestFailed)failed
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
  started = self->_started;
  self->_started = 0;

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

- (GMSSchemaGMSModelRequestEnded)ended
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
  started = self->_started;
  self->_started = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GMSSchemaGMSModelRequestStarted)started
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_started;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStarted:(id)started
{
  startedCopy = started;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = startedCopy != 0;
  started = self->_started;
  self->_started = startedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = GMSSchemaGMSModelRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  started = [(GMSSchemaGMSModelRequestContext *)self started];
  v7 = [started applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GMSSchemaGMSModelRequestContext *)self deleteStarted];
  }

  ended = [(GMSSchemaGMSModelRequestContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GMSSchemaGMSModelRequestContext *)self deleteEnded];
  }

  failed = [(GMSSchemaGMSModelRequestContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GMSSchemaGMSModelRequestContext *)self deleteFailed];
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