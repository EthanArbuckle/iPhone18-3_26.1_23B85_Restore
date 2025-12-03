@interface NETSchemaNETError
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETError)initWithDictionary:(id)dictionary;
- (NETSchemaNETError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETError

- (NETSchemaNETError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NETSchemaNETError;
  v5 = [(NETSchemaNETError *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETError *)v5 setDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NETSchemaNETError *)v5 setDescription:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETError setErrorCode:](v5, "setErrorCode:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NETSchemaNETError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETError *)self dictionaryRepresentation];
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
  if (self->_description)
  {
    v4 = [(NETSchemaNETError *)self description];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_domain)
  {
    domain = [(NETSchemaNETError *)self domain];
    v7 = [domain copy];
    [dictionary setObject:v7 forKeyedSubscript:@"domain"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NETSchemaNETError errorCode](self, "errorCode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"errorCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_description hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  domain = [(NETSchemaNETError *)self domain];
  domain2 = [equalCopy domain];
  if ((domain != 0) == (domain2 == 0))
  {
    goto LABEL_11;
  }

  domain3 = [(NETSchemaNETError *)self domain];
  if (domain3)
  {
    v8 = domain3;
    domain4 = [(NETSchemaNETError *)self domain];
    domain5 = [equalCopy domain];
    v11 = [domain4 isEqual:domain5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  domain = [(NETSchemaNETError *)self description];
  domain2 = [equalCopy description];
  if ((domain != 0) == (domain2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NETSchemaNETError *)self description];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETError *)self description];
    v15 = [equalCopy description];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  domain = [(NETSchemaNETError *)self domain];

  if (domain)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(NETSchemaNETError *)self description];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end