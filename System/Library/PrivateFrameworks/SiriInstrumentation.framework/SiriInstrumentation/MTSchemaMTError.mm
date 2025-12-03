@interface MTSchemaMTError
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTError)initWithDictionary:(id)dictionary;
- (MTSchemaMTError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTError

- (MTSchemaMTError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MTSchemaMTError;
  v5 = [(MTSchemaMTError *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MTSchemaMTError *)v5 setErrorDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MTSchemaMTError *)v5 setErrorMessage:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTError setErrorCode:](v5, "setErrorCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MTSchemaMTError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[MTSchemaMTError errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(MTSchemaMTError *)self errorDomain];
    v6 = [errorDomain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_errorMessage)
  {
    errorMessage = [(MTSchemaMTError *)self errorMessage];
    v8 = [errorMessage copy];
    [dictionary setObject:v8 forKeyedSubscript:@"errorMessage"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  v4 = [(NSString *)self->_errorMessage hash];
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

  errorDomain = [(MTSchemaMTError *)self errorDomain];
  errorDomain2 = [equalCopy errorDomain];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
    goto LABEL_11;
  }

  errorDomain3 = [(MTSchemaMTError *)self errorDomain];
  if (errorDomain3)
  {
    v8 = errorDomain3;
    errorDomain4 = [(MTSchemaMTError *)self errorDomain];
    errorDomain5 = [equalCopy errorDomain];
    v11 = [errorDomain4 isEqual:errorDomain5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  errorDomain = [(MTSchemaMTError *)self errorMessage];
  errorDomain2 = [equalCopy errorMessage];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  errorMessage = [(MTSchemaMTError *)self errorMessage];
  if (errorMessage)
  {
    v13 = errorMessage;
    errorMessage2 = [(MTSchemaMTError *)self errorMessage];
    errorMessage3 = [equalCopy errorMessage];
    v16 = [errorMessage2 isEqual:errorMessage3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
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
  errorDomain = [(MTSchemaMTError *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  errorMessage = [(MTSchemaMTError *)self errorMessage];

  if (errorMessage)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
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