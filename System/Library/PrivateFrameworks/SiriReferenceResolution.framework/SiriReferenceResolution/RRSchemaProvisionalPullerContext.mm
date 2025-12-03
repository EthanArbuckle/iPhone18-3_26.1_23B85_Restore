@interface RRSchemaProvisionalPullerContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerContext)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalPullerContext)initWithJSON:(id)n;
- (RRSchemaProvisionalPullerEnded)ended;
- (RRSchemaProvisionalPullerFailed)failed;
- (RRSchemaProvisionalPullerStarted)started;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalPullerContext

- (RRSchemaProvisionalPullerContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = RRSchemaProvisionalPullerContext;
  v5 = [(RRSchemaProvisionalPullerContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaProvisionalPullerStarted alloc] initWithDictionary:v6];
      [(RRSchemaProvisionalPullerContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaProvisionalPullerEnded alloc] initWithDictionary:v8];
      [(RRSchemaProvisionalPullerContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RRSchemaProvisionalPullerFailed alloc] initWithDictionary:v10];
      [(RRSchemaProvisionalPullerContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalPullerContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalPullerContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalPullerContext *)self dictionaryRepresentation];
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
    ended = [(RRSchemaProvisionalPullerContext *)self ended];
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
    failed = [(RRSchemaProvisionalPullerContext *)self failed];
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
    started = [(RRSchemaProvisionalPullerContext *)self started];
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

  [(RRSchemaProvisionalPullerContext *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RRSchemaProvisionalPullerStarted *)self->_started hash];
  v4 = [(RRSchemaProvisionalPullerEnded *)self->_ended hash]^ v3;
  return v4 ^ [(RRSchemaProvisionalPullerFailed *)self->_failed hash];
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

  started = [(RRSchemaProvisionalPullerContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  started3 = [(RRSchemaProvisionalPullerContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(RRSchemaProvisionalPullerContext *)self started];
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

  started = [(RRSchemaProvisionalPullerContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(RRSchemaProvisionalPullerContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(RRSchemaProvisionalPullerContext *)self ended];
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

  started = [(RRSchemaProvisionalPullerContext *)self failed];
  started2 = [equalCopy failed];
  if ((started != 0) != (started2 == 0))
  {
    failed = [(RRSchemaProvisionalPullerContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(RRSchemaProvisionalPullerContext *)self failed];
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
  started = [(RRSchemaProvisionalPullerContext *)self started];

  if (started)
  {
    started2 = [(RRSchemaProvisionalPullerContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  ended = [(RRSchemaProvisionalPullerContext *)self ended];

  if (ended)
  {
    ended2 = [(RRSchemaProvisionalPullerContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(RRSchemaProvisionalPullerContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(RRSchemaProvisionalPullerContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (RRSchemaProvisionalPullerFailed)failed
{
  if (self->_whichContextevent == 103)
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

  v7 = 103;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (RRSchemaProvisionalPullerEnded)ended
{
  if (self->_whichContextevent == 102)
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

  v7 = 102;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (RRSchemaProvisionalPullerStarted)started
{
  if (self->_whichContextevent == 101)
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

  v7 = 101;
  if (!startedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  started = self->_started;
  self->_started = startedCopy;
}

@end