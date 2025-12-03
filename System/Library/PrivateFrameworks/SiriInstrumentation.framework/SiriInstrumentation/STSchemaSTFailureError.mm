@interface STSchemaSTFailureError
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTFailureError)initWithDictionary:(id)dictionary;
- (STSchemaSTFailureError)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTFailureError

- (STSchemaSTFailureError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = STSchemaSTFailureError;
  v5 = [(STSchemaSTFailureError *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(STSchemaSTFailureError *)v5 setDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTFailureError setCode:](v5, "setCode:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (STSchemaSTFailureError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTFailureError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTFailureError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STSchemaSTFailureError code](self, "code")}];
    [dictionary setObject:v4 forKeyedSubscript:@"code"];
  }

  if (self->_domain)
  {
    domain = [(STSchemaSTFailureError *)self domain];
    v6 = [domain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"domain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  domain = [(STSchemaSTFailureError *)self domain];
  domain2 = [equalCopy domain];
  v7 = domain2;
  if ((domain != 0) == (domain2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  domain3 = [(STSchemaSTFailureError *)self domain];
  if (domain3)
  {
    v9 = domain3;
    domain4 = [(STSchemaSTFailureError *)self domain];
    domain5 = [equalCopy domain];
    v12 = [domain4 isEqual:domain5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    code = self->_code;
    if (code != [equalCopy code])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  domain = [(STSchemaSTFailureError *)self domain];

  if (domain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end