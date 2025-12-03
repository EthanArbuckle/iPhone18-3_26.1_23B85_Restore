@interface MTSchemaMTInvocationEnded
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTInvocationEnded)initWithDictionary:(id)dictionary;
- (MTSchemaMTInvocationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTInvocationEnded

- (MTSchemaMTInvocationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MTSchemaMTInvocationEnded;
  v5 = [(MTSchemaMTInvocationEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTInvocationEnded setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(MTSchemaMTInvocationEnded *)v5 setQssSessionId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v9];
      [(MTSchemaMTInvocationEnded *)v5 setLocalePair:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MTSchemaMTInvocationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTInvocationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTInvocationEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTInvocationEnded exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_localePair)
  {
    localePair = [(MTSchemaMTInvocationEnded *)self localePair];
    dictionaryRepresentation = [localePair dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"localePair"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"localePair"];
    }
  }

  if (self->_qssSessionId)
  {
    qssSessionId = [(MTSchemaMTInvocationEnded *)self qssSessionId];
    dictionaryRepresentation2 = [qssSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"qssSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"qssSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_qssSessionId hash]^ v3;
  return v4 ^ [(MTSchemaMTLocalePair *)self->_localePair hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  qssSessionId = [(MTSchemaMTInvocationEnded *)self qssSessionId];
  qssSessionId2 = [equalCopy qssSessionId];
  if ((qssSessionId != 0) == (qssSessionId2 == 0))
  {
    goto LABEL_14;
  }

  qssSessionId3 = [(MTSchemaMTInvocationEnded *)self qssSessionId];
  if (qssSessionId3)
  {
    v9 = qssSessionId3;
    qssSessionId4 = [(MTSchemaMTInvocationEnded *)self qssSessionId];
    qssSessionId5 = [equalCopy qssSessionId];
    v12 = [qssSessionId4 isEqual:qssSessionId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  qssSessionId = [(MTSchemaMTInvocationEnded *)self localePair];
  qssSessionId2 = [equalCopy localePair];
  if ((qssSessionId != 0) != (qssSessionId2 == 0))
  {
    localePair = [(MTSchemaMTInvocationEnded *)self localePair];
    if (!localePair)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = localePair;
    localePair2 = [(MTSchemaMTInvocationEnded *)self localePair];
    localePair3 = [equalCopy localePair];
    v17 = [localePair2 isEqual:localePair3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  qssSessionId = [(MTSchemaMTInvocationEnded *)self qssSessionId];

  if (qssSessionId)
  {
    qssSessionId2 = [(MTSchemaMTInvocationEnded *)self qssSessionId];
    PBDataWriterWriteSubmessage();
  }

  localePair = [(MTSchemaMTInvocationEnded *)self localePair];

  v7 = toCopy;
  if (localePair)
  {
    localePair2 = [(MTSchemaMTInvocationEnded *)self localePair];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = MTSchemaMTInvocationEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  qssSessionId = [(MTSchemaMTInvocationEnded *)self qssSessionId];
  v7 = [qssSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTInvocationEnded *)self deleteQssSessionId];
  }

  localePair = [(MTSchemaMTInvocationEnded *)self localePair];
  v10 = [localePair applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTInvocationEnded *)self deleteLocalePair];
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