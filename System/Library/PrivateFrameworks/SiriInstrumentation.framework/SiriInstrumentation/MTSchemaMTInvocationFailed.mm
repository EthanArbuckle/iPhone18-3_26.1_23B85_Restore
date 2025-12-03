@interface MTSchemaMTInvocationFailed
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTInvocationFailed)initWithDictionary:(id)dictionary;
- (MTSchemaMTInvocationFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTInvocationFailed

- (MTSchemaMTInvocationFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MTSchemaMTInvocationFailed;
  v5 = [(MTSchemaMTInvocationFailed *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MTSchemaMTError alloc] initWithDictionary:v6];
      [(MTSchemaMTInvocationFailed *)v5 setError:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MTSchemaMTInvocationFailed *)v5 setQssSessionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v10];
      [(MTSchemaMTInvocationFailed *)v5 setLocalePair:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MTSchemaMTInvocationFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTInvocationFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTInvocationFailed *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    error = [(MTSchemaMTInvocationFailed *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  if (self->_localePair)
  {
    localePair = [(MTSchemaMTInvocationFailed *)self localePair];
    dictionaryRepresentation2 = [localePair dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"localePair"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"localePair"];
    }
  }

  if (self->_qssSessionId)
  {
    qssSessionId = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    dictionaryRepresentation3 = [qssSessionId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"qssSessionId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"qssSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(MTSchemaMTError *)self->_error hash];
  v4 = [(SISchemaUUID *)self->_qssSessionId hash]^ v3;
  return v4 ^ [(MTSchemaMTLocalePair *)self->_localePair hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  error = [(MTSchemaMTInvocationFailed *)self error];
  error2 = [equalCopy error];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_16;
  }

  error3 = [(MTSchemaMTInvocationFailed *)self error];
  if (error3)
  {
    v8 = error3;
    error4 = [(MTSchemaMTInvocationFailed *)self error];
    error5 = [equalCopy error];
    v11 = [error4 isEqual:error5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  error = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  error2 = [equalCopy qssSessionId];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_16;
  }

  qssSessionId = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  if (qssSessionId)
  {
    v13 = qssSessionId;
    qssSessionId2 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    qssSessionId3 = [equalCopy qssSessionId];
    v16 = [qssSessionId2 isEqual:qssSessionId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  error = [(MTSchemaMTInvocationFailed *)self localePair];
  error2 = [equalCopy localePair];
  if ((error != 0) != (error2 == 0))
  {
    localePair = [(MTSchemaMTInvocationFailed *)self localePair];
    if (!localePair)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = localePair;
    localePair2 = [(MTSchemaMTInvocationFailed *)self localePair];
    localePair3 = [equalCopy localePair];
    v21 = [localePair2 isEqual:localePair3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  error = [(MTSchemaMTInvocationFailed *)self error];

  if (error)
  {
    error2 = [(MTSchemaMTInvocationFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  qssSessionId = [(MTSchemaMTInvocationFailed *)self qssSessionId];

  if (qssSessionId)
  {
    qssSessionId2 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    PBDataWriterWriteSubmessage();
  }

  localePair = [(MTSchemaMTInvocationFailed *)self localePair];

  v9 = toCopy;
  if (localePair)
  {
    localePair2 = [(MTSchemaMTInvocationFailed *)self localePair];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = MTSchemaMTInvocationFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  error = [(MTSchemaMTInvocationFailed *)self error];
  v7 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTInvocationFailed *)self deleteError];
  }

  qssSessionId = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  v10 = [qssSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTInvocationFailed *)self deleteQssSessionId];
  }

  localePair = [(MTSchemaMTInvocationFailed *)self localePair];
  v13 = [localePair applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MTSchemaMTInvocationFailed *)self deleteLocalePair];
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