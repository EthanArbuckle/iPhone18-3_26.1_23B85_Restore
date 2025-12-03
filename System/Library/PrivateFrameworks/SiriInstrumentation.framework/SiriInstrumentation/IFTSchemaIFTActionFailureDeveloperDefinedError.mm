@interface IFTSchemaIFTActionFailureDeveloperDefinedError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionFailureDeveloperDefinedError

- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTActionFailureDeveloperDefinedError;
  v5 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureDeveloperDefinedError setCode:](v5, "setCode:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTActionFailureDeveloperDefinedError *)v5 setDomain:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionFailureDeveloperDefinedError code](self, "code")}];
    [dictionary setObject:v4 forKeyedSubscript:@"code"];
  }

  if (self->_domain)
  {
    domain = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
    v6 = [domain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"domain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_code;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_domain hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (code = self->_code, code == [equalCopy code]))
      {
        domain = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
        domain2 = [equalCopy domain];
        v8 = domain2;
        if ((domain != 0) != (domain2 == 0))
        {
          domain3 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
          if (!domain3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = domain3;
          domain4 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
          domain5 = [equalCopy domain];
          v13 = [domain4 isEqual:domain5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  domain = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];

  v5 = toCopy;
  if (domain)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end