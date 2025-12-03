@interface SISchemaPNRFatalErrorInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPNRFatalErrorInfo)initWithDictionary:(id)dictionary;
- (SISchemaPNRFatalErrorInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPNRFatalErrorInfo

- (SISchemaPNRFatalErrorInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaPNRFatalErrorInfo;
  v5 = [(SISchemaPNRFatalErrorInfo *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaPNRFatalErrorInfo *)v5 setErrorDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaPNRFatalErrorInfo *)v5 setErrorCode:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaPNRFatalErrorInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPNRFatalErrorInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPNRFatalErrorInfo *)self dictionaryRepresentation];
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
  if (self->_errorCode)
  {
    errorCode = [(SISchemaPNRFatalErrorInfo *)self errorCode];
    v5 = [errorCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(SISchemaPNRFatalErrorInfo *)self errorDomain];
    v7 = [errorDomain copy];
    [dictionary setObject:v7 forKeyedSubscript:@"errorDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  errorDomain = [(SISchemaPNRFatalErrorInfo *)self errorDomain];
  errorDomain2 = [equalCopy errorDomain];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
    goto LABEL_11;
  }

  errorDomain3 = [(SISchemaPNRFatalErrorInfo *)self errorDomain];
  if (errorDomain3)
  {
    v8 = errorDomain3;
    errorDomain4 = [(SISchemaPNRFatalErrorInfo *)self errorDomain];
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

  errorDomain = [(SISchemaPNRFatalErrorInfo *)self errorCode];
  errorDomain2 = [equalCopy errorCode];
  if ((errorDomain != 0) != (errorDomain2 == 0))
  {
    errorCode = [(SISchemaPNRFatalErrorInfo *)self errorCode];
    if (!errorCode)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = errorCode;
    errorCode2 = [(SISchemaPNRFatalErrorInfo *)self errorCode];
    errorCode3 = [equalCopy errorCode];
    v16 = [errorCode2 isEqual:errorCode3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorDomain = [(SISchemaPNRFatalErrorInfo *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  errorCode = [(SISchemaPNRFatalErrorInfo *)self errorCode];

  if (errorCode)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end