@interface RRSchemaProvisionalRREntityPoolResolveContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveContext)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRREntityPoolResolveContext)initWithJSON:(id)n;
- (RRSchemaProvisionalRREntityPoolResolveEnded)ended;
- (RRSchemaProvisionalRREntityPoolResolveFailed)failed;
- (RRSchemaProvisionalRREntityPoolResolveStarted)startedOrChanged;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveContext

- (RRSchemaProvisionalRREntityPoolResolveContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = RRSchemaProvisionalRREntityPoolResolveContext;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaProvisionalRREntityPoolResolveStarted alloc] initWithDictionary:v6];
      [(RRSchemaProvisionalRREntityPoolResolveContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaProvisionalRREntityPoolResolveEnded alloc] initWithDictionary:v8];
      [(RRSchemaProvisionalRREntityPoolResolveContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RRSchemaProvisionalRREntityPoolResolveFailed alloc] initWithDictionary:v10];
      [(RRSchemaProvisionalRREntityPoolResolveContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRREntityPoolResolveContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRREntityPoolResolveContext *)self dictionaryRepresentation];
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
    ended = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];
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
    failed = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];
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
    startedOrChanged = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];
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

  [(RRSchemaProvisionalRREntityPoolResolveContext *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RRSchemaProvisionalRREntityPoolResolveStarted *)self->_startedOrChanged hash];
  v4 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self->_ended hash]^ v3;
  return v4 ^ [(RRSchemaProvisionalRREntityPoolResolveFailed *)self->_failed hash];
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

  startedOrChanged = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];
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

  startedOrChanged = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];
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

  startedOrChanged = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    failed = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];
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
  startedOrChanged = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];

  if (ended)
  {
    ended2 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(RRSchemaProvisionalRREntityPoolResolveContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (RRSchemaProvisionalRREntityPoolResolveFailed)failed
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
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

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

- (RRSchemaProvisionalRREntityPoolResolveEnded)ended
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
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

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

- (RRSchemaProvisionalRREntityPoolResolveStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
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

  v7 = 101;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

@end