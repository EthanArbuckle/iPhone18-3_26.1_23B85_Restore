@interface RRSchemaRRPullerContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRPullerContext)initWithDictionary:(id)dictionary;
- (RRSchemaRRPullerContext)initWithJSON:(id)n;
- (RRSchemaRRPullerEnded)ended;
- (RRSchemaRRPullerFailed)failed;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRPullerContext

- (RRSchemaRRPullerContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = RRSchemaRRPullerContext;
  v5 = [(RRSchemaRRPullerContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaRRPullerEnded alloc] initWithDictionary:v6];
      [(RRSchemaRRPullerContext *)v5 setEnded:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaRRPullerFailed alloc] initWithDictionary:v8];
      [(RRSchemaRRPullerContext *)v5 setFailed:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (RRSchemaRRPullerContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRPullerContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRPullerContext *)self dictionaryRepresentation];
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
    ended = [(RRSchemaRRPullerContext *)self ended];
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
    failed = [(RRSchemaRRPullerContext *)self failed];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_13;
  }

  ended = [(RRSchemaRRPullerContext *)self ended];
  ended2 = [equalCopy ended];
  if ((ended != 0) == (ended2 == 0))
  {
    goto LABEL_12;
  }

  ended3 = [(RRSchemaRRPullerContext *)self ended];
  if (ended3)
  {
    v9 = ended3;
    ended4 = [(RRSchemaRRPullerContext *)self ended];
    ended5 = [equalCopy ended];
    v12 = [ended4 isEqual:ended5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  ended = [(RRSchemaRRPullerContext *)self failed];
  ended2 = [equalCopy failed];
  if ((ended != 0) != (ended2 == 0))
  {
    failed = [(RRSchemaRRPullerContext *)self failed];
    if (!failed)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = failed;
    failed2 = [(RRSchemaRRPullerContext *)self failed];
    failed3 = [equalCopy failed];
    v17 = [failed2 isEqual:failed3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ended = [(RRSchemaRRPullerContext *)self ended];

  if (ended)
  {
    ended2 = [(RRSchemaRRPullerContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(RRSchemaRRPullerContext *)self failed];

  if (failed)
  {
    failed2 = [(RRSchemaRRPullerContext *)self failed];
    PBDataWriterWriteSubmessage();
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

- (RRSchemaRRPullerFailed)failed
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
  ended = self->_ended;
  self->_ended = 0;

  v6 = 3;
  if (!failedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
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

- (RRSchemaRRPullerEnded)ended
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
  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = RRSchemaRRPullerContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ended = [(RRSchemaRRPullerContext *)self ended];
  v7 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RRSchemaRRPullerContext *)self deleteEnded];
  }

  failed = [(RRSchemaRRPullerContext *)self failed];
  v10 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RRSchemaRRPullerContext *)self deleteFailed];
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